
# Bitácora de Actividades

| No. | Fecha y hora | Actividad | Comando utilizado | Resultado | Evidencia |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 15/08/2026 21:05 | Creación de la base de datos y backup base | docker exec -it hotel_mysql sh <br />mysql -u root -p <br> USE hotel_db;<br>SOURCE /scripts/00_creacion_bd.sql;<br>SHOW TABLES;<br> exit; <br> mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --no-data --routines --triggers hotel_db > /backups/incremental/backup_base.sql <br>mysql -u root -p <br>FLUSH LOGS;<br>SHOW BINARY LOGS; |  Las base de datos fue creada correctamente con las 6 tablas, backup_base.sql fue generado, tambien se aplico FLUSH LOGS y se mostraron los logs binary para mostrar el resultado obtenido | [Creación de la base de datos y backup base](#e1) |
| 2 | 15/08/2026 <br />completa: 21:20<br />incremental:<br />21:29 | Carga del día 1, consultas y creación de backups | Cargar el archivo:<br>docker exec -it hotel_mysql sh<br>mysql -u root -p<br>USE hotel_db;<br /> SOURCE scripts/01_carga_dia1.sql;<br><br> Verificar la inserción:<br>SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br><br>backup completo: <br>docker exec -it hotel_mysql sh<br>mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --databases hotel_db --routines --triggers --single-transaction > backups/full/full_dia1.sql<br><br>backup incremental:<br>docker exec -it hotel_mysql sh<br>mysql -u root -p <br/>SHOW BINARY LOGS;<br>docker exec -it hotel_mysql sh<br>mysqlbinlog /var/lib/mysql/mysql-bin.000004 > backups/incremental/incremental_dia1.sql<br>mysql -u root -p -e "FLUSH LOGS;"<br><br>Registro tamaño fecha y hora:<br>ls -lh backups/full/full_dia1.sql<br>ls -lh backups/incremental/incremental_dia1.sql | Correcto: 150 registros cargados (50 CLIENTE, 50 HABITACION, 50 EMPLEADO); <br />backups:<br />full_dia1.sql  incremental_dia1.sql | [Carga del día 1, consultas y creación de backups](#e2) |
| 3 | 15/08/2026 <br />completa: 22:47<br />incremental:<br />22:51 | Carga del día 2, consultas y creación de backups | Cargar el archivo:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p<br/>USE hotel_db;<br /> SOURCE scripts/02_carga_dia2.sql;<br/><br/> Verificar la inserción:<br/>SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/><br />backup completo: <br/>docker exec -it hotel_mysql sh<br/>mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --databases hotel_db --routines --triggers --single-transaction > backups/full/full_dia2.sql<br/><br/>backup incremental:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p -e "SHOW BINARY LOGS;"<br/>mysqlbinlog /var/lib/mysql/mysql-bin.000005 > backups/incremental/incremental_dia2.sql<br/>mysql -u root -p -e "FLUSH LOGS;"<br/><br/>Registro tamaño fecha y hora:<br/>ls -lh backups/full/full_dia2.sql<br/>ls -lh backups/incremental/incremental_dia2.sql | Correcto: +50 registros en RESERVA con FKs válidas; full_dia2.sql e incremental_dia2.sql creados | [Carga del día 2, consultas y creación de backups](#e3) |
| 4 | 16/08/2026 <br />completa: 00:24<br />incremental:<br />00:27 | Carga del día 3, consultas y creación de backups | Cargar el archivo:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p<br/>USE hotel_db;<br /> SOURCE scripts/03_carga_dia3.sql;<br/><br/> Verificar la inserción:<br/>SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/><br />backup completo: <br/>docker exec -it hotel_mysql sh<br/>mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --databases hotel_db --routines --triggers --single-transaction > backups/full/full_dia3.sql<br/><br/>backup incremental:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p -e "SHOW BINARY LOGS;"<br/>docker exec -it hotel_mysql sh<br/>mysqlbinlog /var/lib/mysql/mysql-bin.000006> backups/incremental/incremental_dia3.sql<br/>mysql -u root -p -e "FLUSH LOGS;"<br/><br/>Registro tamaño fecha y hora:<br/>ls -lh backups/full/full_dia3.sql<br/>ls -lh backups/incremental/incremental_dia3.sql | Correcto: +50 registros en LOG_HABITACION ( primera carga ); full_dia3.sql e incremental_dia3.sql creados | [Carga del día 3, consultas y creación de backups](#e4) |
| 5 | 16/08/2026 completa: 02:27<br />incremental:<br />02:23 | Carga del día 4, consultas y creación de backups | Cargar el archivo:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p<br/>USE hotel_db;<br /> SOURCE scripts/04_carga_dia4.sql;<br/><br/> Verificar la inserción:<br/>SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br />SELECT COUNT(*) AS total_reservas FROM RESERVA;<br />SELECT * FROM LOG_HABITACION;<br >SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br />SELECT * FROM PAGO;<br />SELECT COUNT(*) AS total_pagos FROM PAGO;<br/><br />backup completo: <br/>docker exec -it hotel_mysql sh<br/>mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --databases hotel_db --routines --triggers --single-transaction > backups/full/full_dia4.sql<br/><br/>backup incremental:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p -e "SHOW BINARY LOGS;"<br/>docker exec -it hotel_mysql sh<br/>mysqlbinlog /var/lib/mysql/mysql-bin.000007 > backups/incremental/incremental_dia4.sql<br/>mysql -u root -p -e "FLUSH LOGS;"<br/><br/>Registro tamaño fecha y hora:<br/>ls -lh backups/full/full_dia4.sql<br/>ls -lh backups/incremental/incremental_dia4.sql | Correcto: +50 registros en PAGO; full_dia4.sql e incremental_dia4.sql creados | [Carga del día 4, consultas y creación de backups](#e5) |
|      | 16/08/2026 completa: 11:12<br />incremental:<br />11:30 | Carga del día 5, consultas y creación de backups | Cargar el archivo:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p<br/>USE hotel_db;<br /> SOURCE scripts/05_carga_dia5sql;<br/><br/> Verificar la inserción:<br/>SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO;<br/>SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/><br />backup completo: <br/>docker exec -it hotel_mysql sh<br/>mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" --databases hotel_db --routines --triggers --single-transaction > backups/full/full_dia5.sql<br/><br/>backup incremental:<br/>docker exec -it hotel_mysql sh<br/>mysql -u root -p -e "SHOW BINARY LOGS;"<br/>docker exec -it hotel_mysql sh<br/>mysqlbinlog /var/lib/mysql/mysql-bin.000008> backups/incremental/incremental_dia5.sql<br/>mysql -u root -p -e "FLUSH LOGS;"<br/><br/>Registro tamaño fecha y hora:<br/>ls -lh backups/full/full_dia5.sql<br/>ls -lh backups/incremental/incremental_dia5.sql | Correcto: +50 registros en LOG_HABITACION ( segunda carga ); full_dia5.sql e incremental_dia5.sql creados | [Carga del día 5, consultas y creación de backups](#e6) |
| 7 | 16/08/2026 14:31 | Restauración del backup completo del día 1 | docker exec -it hotel_mysql sh <br />mysql -u root -p <br />DROP DATABASE hotel_db;<br />**(la misma copia vuelve a crear la db)**<br>time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" ' < backups/full/full_dia1.sql<br><br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Datos del Día 1 restaurados y verificados (CLIENTE/HABITACION/EMPLEADO completos; RESERVA/PAGO/LOG en 0; tiempo anotado en tabla_tiempos.md | [Restauración del backup completo del día 1](#e7) |
| 8 | 16/08/2026 15_45 | Restauración del backup completo del día 2 | docker exec -it hotel_mysql sh <br />mysql -u root -p <br />DROP DATABASE hotel_db;<br />**(la misma copia vuelve a crear la db)**<br/>time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" ' < backups/full/full_dia2.sql<br/><br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Datos del Día 2 restaurados y verificados incluye RESERVA; tiempo anotado en tabla_tiempos.md | [Restauración del backup completo del día 2](#e8) |
| 9 | 16/08/2026 15:47 | Restauración del backup completo del día 3 | docker exec -it hotel_mysql sh <br />mysql -u root -p <br />DROP DATABASE hotel_db;<br />**(la misma copia vuelve a crear la db)**<br/>time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" ' < backups/full/full_dia3.sql<br/><br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Datos del Día 3 restaurados y verificados (incluye LOG_HABITACION la primera carga); tiempo anotado en tabla_tiempos.md | [Restauración del backup completo del día 3](#e9) |
| 10 | 16/08/2026 18:34 | Restauración del backup completo del día 4 | docker exec -it hotel_mysql sh <br />mysql -u root -p <br />DROP DATABASE hotel_db;<br />**(la misma copia vuelve a crear la db)**<br/>time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" ' < backups/full/full_dia4.sql<br/><br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Datos del Día 4 restaurados y verificados incluye PAGO | [Restauración del backup completo del día 4](#e10) |
| 11 | 16/08/2026 18:36 | Restauración del backup completo del día 5 | docker exec -it hotel_mysql sh <br />mysql -u root -p <br />DROP DATABASE hotel_db;<br />**(la misma copia vuelve a crear la db)**<br/>time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" ' < backups/full/full_dia5.sql<br/><br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Estado final del Día 5 restaurado y verificado las 6 tablas completas | [Restauración del backup completo del día 5](#e11) |
| 12 | 16/08/2026 19:25 | Restauración del incremental del día 1 | docker exec -it hotel_mysql sh<br />mysql -u root -p <br />DROP DATABASE hotel_db;<br /><br />CREATE DATABASE IF NOT EXISTS hotel_db;<br />time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD" hotel_db' < backups/incremental/backup_base.sql<br /><br />time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD"' < backups/incremental/incremental_dia1.sql<br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Cadena backup_base , incremental_dia1 aplicada en orden, datos del Día 1 verificados | [Restauración del incremental del día 1](#e12) |
| 13 | 16/08/2026 20:05 | Restauración del incremental del día 2 | time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD"' < backups/incremental/incremental_dia2.sql<br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Cadena backup_base, incremental_dia1, incremental_dia2 aplicada; datos del Día 2 verificados. | [Restauración del incremental del día 2](#e13) |
| 14 | 16/08/2026 20:08 | Restauración del incremental del día 3 | time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD"' < backups/incremental/incremental_dia3.sql<br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Cadena incremental hasta incremental_dia3 aplicada, datos del Día 3 verificados. | [Restauración del incremental del día 3](#e14) |
| 15 | 16/08/2026 20:31 | Restauración del incremental del día 4 | time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD"' < backups/incremental/incremental_dia4.sql<br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Cadena incremental hasta incremental_dia4 aplicada, datos del Día 4 verificados. | [Restauración del incremental del día 4](#e15) |
| 16 | 16/08/2026 20:34 | Restauración del incremental del día 5 | time docker exec -i hotel_mysql sh -c 'mysql -u root -p"$MYSQL_ROOT_PASSWORD"' < backups/incremental/incremental_dia5.sql<br />Verificacion:<br />SELECT \* FROM CLIENTE; <br />SELECT COUNT(\*) AS total_clientes FROM CLIENTE;<br/>SELECT \* FROM HABITACION;<br /> SELECT COUNT(\*) AS total_habitaciones FROM HABITACION;<br/>SELECT \* FROM EMPLEADO; <br />SELECT COUNT(\*) AS total_empleados FROM EMPLEADO;<br/>SELECT * FROM RESERVA;<br/>SELECT COUNT(*) AS total_reservas FROM RESERVA;<br/>SELECT * FROM PAGO;<br/>SELECT COUNT(*) AS total_pagos FROM PAGO; SELECT * FROM LOG_HABITACION;<br/>SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;<br/> | Cadena incremental completa backup_base,  incremental_dia1, incremental_dia2, incremental_dia3, incremental_dia4 incremental_dia5 aplicada, estado final del Día 5 verificado con 6 tablas completas | [Restauración del incremental del día 5](#e16) |
| 17 | 17/08/2026 10:00 | Comparación y análisis de resultados |  |  | [Captura No. 17](#e17) |

---
## Evidencias

<a id="e1"></a>
### 1 - Creación de la base de datos y backup base.

![sin img](capturas_bitacora/Imagen%20pegada.png)
![sin img](capturas_bitacora/Imagen%20pegada%20(2).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(3).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(4).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(5).png)


<a id="e2"></a>
### 2 - Carga del día 1, consultas y creación de backups.

![sin img](capturas_bitacora/Imagen%20pegada%20(6).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(7).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(8).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(9).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(10).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(11).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(12).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(13).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(14).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(15).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(16).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(17).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(18).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(19).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(20).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(21).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(136).png)

<a id="e3"></a>
### 3 - Carga del día 2, consultas y creación de backups.

![sin img](capturas_bitacora/Imagen%20pegada%20(28).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(29).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(30).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(31).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(32).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(33).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(34).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(35).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(36).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(37).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(38).png)

<a id="e4"></a>
### 4 - Carga del día 3, consultas y creación de backups.

![sin img](capturas_bitacora/Imagen%20pegada%20(39).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(40).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(41).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(42).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(43).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(44).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(45).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(46).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(47).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(48).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(49).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(50).png)

<a id="e5"></a>
### 5 - Carga del día 4, consultas y creación de backups.

![sin img](capturas_bitacora/Imagen%20pegada%20(51).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(52).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(53).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(54).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(55).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(56).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(57).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(58).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(59).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(60).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(61).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(62).png)

<a id="e6"></a>
### 6 - Carga del día 5, consultas y creación de backups.

![sin img](capturas_bitacora/Imagen%20pegada%20(63).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(64).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(65).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(66).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(67).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(68).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(69).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(70).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(71).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(72).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(73).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(74).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(75).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(76).png)

<a id="e7"></a>
### 7 - Restauración del backup completo del día 1.

![sin img](capturas_bitacora/Imagen%20pegada%20(77).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(78).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(79).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(80).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(81).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(82).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(83).png)
<a id="e8"></a>
### 8 - Restauración del backup completo del día 2.

![sin img](capturas_bitacora/Imagen%20pegada%20(84).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(85).png)
<a id="e9"></a>
### 9 - Restauración del backup completo del día 3.

![sin img](capturas_bitacora/Imagen%20pegada%20(86).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(87).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(88).png)

<a id="e10"></a>
### 10 - Restauración del backup completo del día 4.

![sin img](capturas_bitacora/Imagen%20pegada%20(89).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(90).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(91).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(92).png)
<a id="e11"></a>
### 11 - Restauración del backup completo del día 5.

![sin img](capturas_bitacora/Imagen%20pegada%20(93).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(94).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(95).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(96).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(97).png)
<a id="e12"></a>
### 12 - Restauración del incremental del día 1.

![sin img](capturas_bitacora/Imagen%20pegada%20(98).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(99).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(100).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(101).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(102).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(103).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(104).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(105).png)

<a id="e13"></a>
### 13 - Restauración del incremental del día 2.

![sin img](capturas_bitacora/Imagen%20pegada%20(106).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(107).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(108).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(109).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(110).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(111).png)
<a id="e14"></a>
### 14 - Restauración del incremental del día 3.

![sin img](capturas_bitacora/Imagen%20pegada%20(112).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(113).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(114).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(115).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(116).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(117).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(118).png)
<a id="e15"></a>
### 15 - Restauración del incremental del día 4.

![sin img](capturas_bitacora/Imagen%20pegada%20(119).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(120).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(121).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(122).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(123).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(124).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(125).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(126).png)
<a id="e16"></a>
### 16 - Restauración del incremental del día 5.

![sin img](capturas_bitacora/Imagen%20pegada%20(127).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(128).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(129).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(130).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(131).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(132).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(133).png)
![sin img](capturas_bitacora/Imagen%20pegada%20(134).png)
<a id="e17"></a>
### 17 - Comparación y análisis de resultados.
