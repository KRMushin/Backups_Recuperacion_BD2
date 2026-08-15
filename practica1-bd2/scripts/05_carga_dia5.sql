-- ====================================================================
-- ARCHIVO : 05_carga_dia5.sql
-- TABLAS  : LOG_HABITACION (segunda carga)
-- REGISTROS: 50
-- GENERADO POR: generador_datos.py (Faker es_MX, Faker.seed(42), random.seed(42))
-- FECHA DE GENERACION: 2026-08-15
--
-- NOTAS DE COHERENCIA:
--   * Segunda carga de estado: timestamps posteriores a los del archivo 03.
--   * Ningún timestamp coincide con los del archivo 03 (ver generador).
--   * HABITACION_id_habitacion apunta a los ids 1..50 del archivo 01.
-- ====================================================================

USE hotel_db;

-- ------------------------- LOG_HABITACION (2) ----------------------
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 19:53:44.812052', 'ocupada', 25);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 22:52:23.344982', 'ocupada', 5);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-24 02:42:14.240899', 'limpieza', 22);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-24 08:00:06.243589', 'mantenimiento', 47);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-24 11:53:43.851683', 'limpieza', 10);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-24 16:28:14.213572', 'mantenimiento', 36);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-24 21:52:44.191739', 'mantenimiento', 13);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 00:29:08.436647', 'limpieza', 3);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 04:16:39.176133', 'limpieza', 25);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 06:47:41.308512', 'mantenimiento', 7);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 10:54:15.263180', 'limpieza', 1);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 13:21:10.949768', 'ocupada', 5);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 18:11:27.304776', 'limpieza', 42);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-25 20:05:49.198521', 'limpieza', 21);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 01:01:23.236164', 'disponible', 16);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 04:16:10.330934', 'limpieza', 7);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 05:44:21.058647', 'mantenimiento', 2);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 07:05:11.117493', 'mantenimiento', 23);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 10:32:20.373553', 'limpieza', 37);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 12:42:31.456358', 'limpieza', 40);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 15:14:30.067843', 'ocupada', 15);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 19:54:46.549738', 'mantenimiento', 43);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-26 21:52:38.037592', 'mantenimiento', 44);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 03:02:42.500780', 'mantenimiento', 38);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 06:43:10.224627', 'mantenimiento', 30);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 09:55:35.119415', 'limpieza', 7);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 12:20:11.495811', 'mantenimiento', 45);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 15:22:05.186015', 'limpieza', 18);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 16:59:00.905128', 'disponible', 39);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-27 21:52:58.851924', 'mantenimiento', 50);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 00:31:50.221360', 'ocupada', 41);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 03:11:06.932048', 'ocupada', 41);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 05:08:47.609786', 'disponible', 20);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 09:11:24.992371', 'ocupada', 6);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 12:32:12.428058', 'ocupada', 13);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 15:22:47.347094', 'mantenimiento', 34);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-28 21:21:05.217908', 'ocupada', 17);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 02:12:24.000733', 'mantenimiento', 8);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 06:16:33.791519', 'ocupada', 44);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 11:11:25.375904', 'mantenimiento', 6);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 15:11:41.938541', 'disponible', 30);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 18:55:29.643542', 'mantenimiento', 38);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-29 23:48:10.629510', 'mantenimiento', 7);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 02:18:12.279152', 'mantenimiento', 40);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 04:59:16.945422', 'limpieza', 45);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 08:40:43.067766', 'ocupada', 3);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 10:00:14.189528', 'disponible', 16);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 15:08:38.665208', 'mantenimiento', 43);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 20:35:16.443534', 'ocupada', 27);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-30 22:28:48.089093', 'limpieza', 18);
