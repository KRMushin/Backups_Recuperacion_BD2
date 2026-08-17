# Manual Técnico 

# Proyecto Hotel MySQL

## 1. Descripción general

Este proyecto consiste en la implementación de un motor de base de datos MySQL 8.0 contenido dentro de Docker, con el propósito de simular el ciclo operativo de una base de datos hotelera. Se modelan tablas que representan clientes, habitaciones, empleados, reservas, pagos y un registro de estado de habitaciones. El trabajo cubre la creación del esquema, la carga progresiva de datos a lo largo de cinco días simulados, la generación de backups completos e incrementales, y la verificación de restauraciones midiendo tiempos.

---

## 2. Stack tecnológico

| Componente | Versión / Detalle |
|---|---|
| Motor de BD | MySQL 8.0 (imagen `mysql:8.0-debian`) |
| Contenedor Docker | `hotel_mysql` |
| Orquestación local | Docker Compose v2 |
| Generador de datos | Python 3 + librería Faker |
| Sistema operativo base | Debian (dentro del contenedor MySQL) |
| Zona horaria | America/Guatemala |

---

## 3. Arquitectura del contenedor

El servicio principal se define en `docker-compose.yml`:

```yaml
services:
  mysql:
    image: mysql:8.0-debian
    container_name: hotel_mysql
    restart: unless-stopped
    environment:
      TZ: "America/Guatemala"
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
    ports:
      - "3306:3306"
    command:
      - --log-bin=mysql-bin
      - --binlog-format=ROW
      - --server-id=1
      - --binlog-expire-logs-seconds=604800
    volumes:
      - mysql_data:/var/lib/mysql
      - ./scripts:/scripts:ro
      - ./backups:/backups
```

### 3.1 Parámetros del binlog

Los parámetros de arranque son importantes para el funcionamiento de los backups incrementales:

- `--log-bin=mysql-bin` :  Habilita la escritura de binary logs. Cada archivo lleva el sufijo `.000001`, `.000002`, etc.
- `--binlog-format=ROW` : Registra cada fila modificada individualmente, lo que permite reconstruir exactamente qué datos cambiaron.
- `--server-id=1` : Identificador del servidor dentro de una posible réplica.
- `--binlog-expire-logs-seconds=604800` : Los binary logs se eliminan automáticamente después de 7 días.

### 3.2 Volúmenes

| Volumen montado | Ruta en contenedor | Propósito |
|---|---|---|
| `mysql_data` | `/var/lib/mysql` | Almacenamiento persistente de datos MySQL |
| `./scripts` | `/scripts` | Acceso de solo lectura a los scripts SQL de carga |
| `./backups` | `/backups` | Directorio compartido para backups full e incremental |

El volumen `mysql_data` es persistente entre reinicios del contenedor. Los scripts se montan como `:ro` solo lectura para evitar modificaciones que puedan ocurrir por error.

---

## 4. Archivo de variables de entorno

El archivo `.env` en la raíz del proyecto contiene:

```
MYSQL_ROOT_PASSWORD=dev_user
MYSQL_DATABASE=hotel_db
```

Docker Compose lee estas variables automáticamente y las inyecta al contenedor. La contraseña del root es `dev_user` y la base de datos se crea automáticamente al iniciar el contenedor.

---

## 5. Modelo de base de datos

La base de datos `hotel_db` contiene 6 tablas. La creación está en `scripts/00_creacion_bd.sql`:

### CLIENTE
| Campo | Tipo | Restricción |
|---|---|---|
| id_cliente | INT | PRIMARY KEY, AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| correo | VARCHAR(100) | NOT NULL |
| telefono | VARCHAR(20) | — |

### HABITACION
| Campo | Tipo | Restricción |
|---|---|---|
| id_habitacion | INT | PRIMARY KEY, AUTO_INCREMENT |
| tipo | VARCHAR(50) | NOT NULL (Individual, Doble, Matrimonial, Suite Junior, Suite Presidencial) |
| precio | DECIMAL(10,2) | NOT NULL |

### EMPLEADO
| Campo | Tipo | Restricción |
|---|---|---|
| id_empleado | INT | PRIMARY KEY, AUTO_INCREMENT |
| nombre | VARCHAR(100) | NOT NULL |
| puesto | VARCHAR(50) | NOT NULL |

### RESERVA
| Campo | Tipo | Restricción |
|---|---|---|
| id_reserva | INT | PRIMARY KEY, AUTO_INCREMENT |
| fecha_entrada | DATE | NOT NULL |
| fecha_salida | DATE | NOT NULL |
| CLIENTE_id_cliente | INT | FK → CLIENTE(id_cliente) |
| HABITACION_id_habitacion | INT | FK → HABITACION(id_habitacion) |

### PAGO
| Campo | Tipo | Restricción |
|---|---|---|
| id_pago | INT | PRIMARY KEY, AUTO_INCREMENT |
| fecha_pago | DATETIME | NOT NULL |
| monto | DECIMAL(10,2) | NOT NULL |
| metodo_pago | VARCHAR(30) | NOT NULL |
| RESERVA_id_reserva | INT | FK → RESERVA(id_reserva) |
| EMPLEADO_id_empleado | INT | FK → EMPLEADO(id_empleado) |

### LOG_HABITACION
| Campo | Tipo | Restricción |
|---|---|---|
| timestamp + id_habitacion | DATETIME(6) | PRIMARY KEY compuesta |
| status | VARCHAR(30) | NOT NULL (disponible, ocupada, mantenimiento, limpieza) |
| HABITACION_id_habitacion | INT | FK → HABITACION(id_habitacion), PRIMARY KEY compuesto |

La clave primaria compuesta en LOG_HABITACION evita registros duplicados para la misma habitación en el mismo microsegundo.

---

## 6. Generador de datos (Python)

El script `scripts/python_script/generador_datos.py` genera los archivos SQL de carga diaria. Utiliza la librería `Faker` con locale `es_MX` para datos en español mexicano ya que no existe una para guatemala especificamente.

### 6.1 Dependencia

```bash
pip install faker
```

### 6.2 Configuración interna

| Parámetro | Valor |
|---|---|
| Semilla Faker |  |
| Semilla random |  |
| Registros por tabla catálogo | 50 (CLIENTE, HABITACION, EMPLEADO) |
| Registros transaccionales | 50 (RESERVA, PAGO) |
| Fechas base | 60 días antes de la fecha de ejecución |

### 6.3 Lógica de generación

- **Reservaciones:** Se evita que se junten fechas por habitación. El algoritmo intenta hasta 200 veces encontrar un rango libre, si no lo logra, inserta de todas formas para no perder el registro.
- **Pagos:** Un pago por cada reserva, El monto se calcula multiplicando el precio de la habitación por el número de noches.
- **Logs de habitación:** Se generan eventos de check-in/check-out con timestamps que incluyen microsegundos. Se agregan eventos de mantenimiento para habitaciones sin reserva en el período.

### 6.4 Archivos generados

| Archivo | Contenido |
|---|---|
| `01_carga_dia1.sql` | INSERT de CLIENTE, HABITACION, EMPLEADO |
| `02_carga_dia2.sql` | INSERT de RESERVA |
| `03_carga_dia3.sql` | INSERT de LOG_HABITACION (rango de fechas 1) |
| `04_carga_dia4.sql` | INSERT de PAGO |
| `05_carga_dia5.sql` | INSERT de LOG_HABITACION (rango de fechas 2) |

### 6.5 Ejecución

Denntro de un entorno virtual generado con  venv

```bash
cd scripts/python_script
python generador_datos.py
```

Esto regenera los archivos `.sql` en `scripts/`.

---

## 7. Flujo de trabajo diario

Cada día simulado sigue el mismo patrón:

### Paso 1 — Carga de datos

```bash
# Entrar al contenedor
docker exec -it hotel_mysql sh

# Desde dentro del contenedor
mysql -u root -p
USE hotel_db;
SOURCE scripts/0_carga_dia.sql;
```

### Paso 2 — Verificación

```sql
SELECT COUNT(*) AS total_clientes FROM CLIENTE;
SELECT COUNT(*) AS total_habitaciones FROM HABITACION;
SELECT COUNT(*) AS total_empleados FROM EMPLEADO;
SELECT COUNT(*) AS total_reservas FROM RESERVA;
SELECT COUNT(*) AS total_pagos FROM PAGO;
SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;
```

### Paso 3 — Backup completo (full)

```bash
docker exec -it hotel_mysql sh
mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" \
  --databases hotel_db \
  --routines \
  --triggers \
  --single-transaction \
  > backups/full/full_diaX.sql
```

Parámetros clave:
- `--single-transaction` : Usa InnoDB consistency para hacer un backup sin bloquear tablas.
- `--routines` : Incluye stored procedures y functions.
- `--triggers` : Incluye triggers.

### Paso 4 — Backup incremental

```bash
# Ver logs binarios disponibles
docker exec -it hotel_mysql sh
mysql -u root -p -e "SHOW BINARY LOGS;"

# Exportar el log binario correspondiente
docker exec -it hotel_mysql sh
mysqlbinlog /var/lib/mysql/mysql-bin.00000X \
  > backups/incremental/incremental_diaX.sql

# Rotar logs
mysql -u root -p -e "FLUSH LOGS;"
```

### Paso 5 — Registro de métricas

```bash
ls -lh backups/full/full_diaX.sql
ls -lh backups/incremental/incremental_diaX.sql
```

### 8 ¿Por qué se necesita `backup_base`?

El backup incremental solo contiene los cambios (binlog). No incluye la definición de tablas ni los datos anteriores. Por eso primero se aplica `backup_base.sql` que contiene la estructura vacía creado con `--no-data --routines --triggers`, y luego se van apando los incrementales encima.

### 9 Cadena completa de restauración incremental

```
backup_base.sql → incremental_dia1.sql → incremental_dia2.sql → incremental_dia3.sql → incremental_dia4.sql → incremental_dia5.sql
```

Cada archivo depende de que todos los anteriores se hayan aplicado correctamente.

---

## 10. Comandos de referencia Docker

| Acción | Comando |
|---|---|
| Levantar servicios | `docker compose up -d` |
| Detener servicios | `docker compose down` |
| Ver logs del contenedor | `docker compose logs mysql` |
| Entrar al contenedor | `docker exec -it hotel_mysql sh` |
| Ver contenedores activos | `docker ps` |
| Reiniciar MySQL | `docker compose restart mysql` |
| Verificar volumen | `docker volume inspect <nombre_volumen>` |

