# Análisis de Resultados

# Backups Hotel MySQL

## 1. Contexto

El objetivo de esta prueba fue comparar el rendimiento de dos estrategias de respaldo en un entorno MySQL 8.0: backups completos (full) y backups incrementales basados en binary logs. Se simuló la carga de datos de un hotel durante 5 días, generando entre 50 y 300+ registros por tabla, y se midió el tiempo que tarda cada tipo de backup en restaurarse a partir del estado del día 1 hasta el día 5.

## 2. Datos recopilados

### 2.1 Backups completos

| No. | Archivo | Tamaño | Tiempo restauración | Resultado |
|---|---|---|---|---|
| 1 | full_dia1 | 14 KB | 0.405 s | Correcto |
| 2 | full_dia2 | 16 KB | 0.322 s | Correcto |
| 3 | full_dia3 | 18 KB | 0.315 s | Correcto |
| 4 | full_dia4 | 21 KB | 0.410 s | Correcto |
| 5 | full_dia5 | 23 KB | 0.412 s | Correcto |

### 2.2 Backups incrementales

| No. | Archivo | Tamaño | Tiempo restauración | Resultado |
|---|---|---|---|---|
| 6 | incremental_dia1 | 15 KB | 0.218 s | Correcto |
| 7 | incremental_dia2 | 4.2 KB | 0.177 s | Correcto |
| 8 | incremental_dia3 | 4.5 KB | 0.187 s | Correcto |
| 9 | incremental_dia4 | 5.3 KB | 0.128 s | Correcto |
| 10 | incremental_dia5 | 4.5 KB | 0.128 s | Correcto |

### 2.3 Backup base (estructura)

| No. | Archivo | Tamaño | Tiempo restauración | Resultado |
|---|---|---|---|---|
| — | backup_base | 5.2 KB | 0.530 s | Correcto |

## 3. Observaciones

### 3.1 Tamaño de los archivos

Los backups completos crecen de forma directamente proporcional a la cantidad de datos en la base. Del día 1 al día 5, el tamaño pasa de 14 KB a 23 KB, lo que refleja la acumulación de tablas y registros (de 150 registros iniciales hasta más de 400 al final).

Los incrementales, en cambio, son bastante más pequeños despues del dia 2 los archivos se mantienen entre 4.2 KB y 5.3 KB, Esto tiene sentido: cada incremental solo captura los inserts del día, no toda la base la unica excepción es el incremental del día 1 (15 KB), que es grande porque incluye la primera carga de datos (CLIENTE, HABITACION, EMPLEADO) y el binary log probablemente aún no había sido rotado.

### 3.2 Tiempos de restauración

Todos los tiempos están en el orden de cientos de milisegundos (menos de medio segundo en casi todos los casos), lo cual es coherente con el tamaño reducido de los archivos (KB, no MB o GB).

**Backups completos:** Los tiempos se mueven entre 0.315 s (día 3) y 0.412 s (día 5). El día 2 y el día 3 son los más rápidos (~0.32 s), mientras que los días 1, 4 y 5 están alrededor de 0.41 s. No hay una tendencia de crecimiento con el tamaño del archivo.

**Backups incrementales:** Son, en general, más rápidos que los completos, el día 1 tarda 0.218 s (es el incremental más pesado, 15 KB), pero del día 2 al día 5 los tiempos están entre 0.128 s y 0.187 s. Los días 4 y 5 son idénticos en tiempo (0.128 s).

**Backup base:** Tomó 0.530 s, el tiempo más alto de todos los registros, incluso por encima de cualquier full backup. Esto es consistente con que el archivo contiene solo la estructura ,  MySQL necesita crear cada tabla, validar las foreign keys y preparar el esquema completo, mientras que un full restore ya trae los datos listos para insertarse en bloque.

### 3.3 Restauración incremental encadenada

Un aspecto clave del restore incremental es que requiere aplicar los archivos en orden estricto. Si se omite un día o se aplica en desorden, la restauración falla porque las foreign keys no se cumplirían. En la práctica, el procedimiento fue:

1. DROP DATABASE + CREATE DATABASE
2. Aplicar backup_base (estructura)
3. Aplicar incremental_dia1
4. Aplicar incremental_dia2
5. hasta incremental_dia5

Cada paso se verificó con COUNTs de todas las tablas, y en todos los casos los datos quedaron correctos.

---

## 4. Comparación directa

### 4.1 Restaurar el estado final del día 5

Hay dos formas de llegar al estado del día 5:

**Opción A — Backup completo:**
- Restaurar `full_dia5.sql`
- Tiempo total: 0.412 s
- Un solo paso

**Opción B — Restauración incremental:**
- Aplicar `backup_base.sql` + 5 incrementales
- Tiempo total acumulado: 0.530 s + 0.218 s + 0.177 s + 0.187 s + 0.128 s + 0.128 s = **1.368 s**
- Seis pasos

### 4.2 Análisis

A primera vista, la restauración completa del día 5 (0.412 s) es más rápida que la cadena incremental completa (1.368 s). Sin embargo, con archivos de este tamaño (KB), la diferencia absoluta es de apenas ~1 segundo, prácticamente imperceptible en la práctica.

Lo que explica la diferencia no es tanto el volumen de datos a procesar, que es mínimo en ambos casos sino el overhead fijo por invocación cada paso implica abrir un `docker exec`, autenticar contra MySQL y cerrar la conexión. El backup completo paga ese overhead una sola vez; la cadena incremental lo paga seis veces.

Esto no significa que los incrementales sean inferiores. El punto principal de los incrementales es la flexibilidad de punto en el tiempo con los incrementales, puedes restaurar la base a cualquier día intermedio sin necesidad de tener un backup completo para cada día. Si solo necesitamos llegar al día 3, aplicamos base + dia1 + dia2 + dia3 (3 archivos) en vez de tener un full_dia3 separado.

También está el tema del espacio en disco, los incrementales ocupan mucho menos en total que tener 5 backups completos.

### 4.3 Resumen de ventajas

| Criterio | Backup completo | Backup incremental |
|---|---|---|
| Tiempo de restore (un paso) | ~0.3–0.41 s | ~0.13–0.22 s por incremento (+ 0.53 s del base inicial) |
| Espacio en disco (total 5 días) | ~92 KB (14+16+18+21+23) | ~38.7 KB (15+4.2+4.5+5.3+4.5 = 33.5 KB de incrementales + 5.2 KB base) |
| Flexibilidad de punto en tiempo | Solo el día específico respaldado | Cualquier día, siempre que se apliquen todos los anteriores |
| Simplicidad de restore | Un solo comando | Múltiples comandos en orden |
| Riesgo de error | Bajo | Medio (depende del orden correcto) |

---

## 5. Conclusiones

1. **Para restaurar un día específico, el backup completo es la opción más rápida ** (0.412 s vs 1.368 s de la cadena incremental).

2. **Los backups incrementales son más eficientes en espacio** y ofrecen granularidad para recuperar puntos específicos en el tiempo, pero su restauración es más compleja y requiere disciplina para mantener el orden de los archivos.

3. **El crecimiento de tamaño es bajo en ambos casos** porque el volumen de datos simulado es reducido (decenas de registros). En un escenario real con millones de filas, la diferencia de tamaño entre full e incremental sería mucho más significativa a favor de los incrementales.

4. **Todos los restores completaron exitosamente** en ambos modos. No se detectaron errores de integridad, foreign keys rotas, o datos faltantes en ninguna de las verificaciones.

5. **La estrategia recomendada para producción** sería usar backups completos periódicamente (por ejemplo, semanalmente) e incrementales diarios entre ellos, combinando la rapidez de restauración de los full con la granularidad de los incrementales.
