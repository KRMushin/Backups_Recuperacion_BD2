-- ====================================================================
-- ARCHIVO : 03_carga_dia3.sql
-- TABLAS  : LOG_HABITACION (primera carga)
-- REGISTROS: 50
-- GENERADO POR: generador_datos.py (Faker es_MX, Faker.seed(42), random.seed(42))
-- FECHA DE GENERACION: 2026-08-15
--
-- NOTAS DE COHERENCIA:
--   * Timestamps con precisión de microsegundos y únicos (incremento controlado).
--   * HABITACION_id_habitacion apunta a los ids 1..50 del archivo 01.
--   * Status: disponible, ocupada, mantenimiento o limpieza.
-- ====================================================================

USE hotel_db;

-- ------------------------- LOG_HABITACION (1) ----------------------
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 03:56:38.735245', 'mantenimiento', 36);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 05:29:50.825017', 'ocupada', 47);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 10:01:26.620011', 'ocupada', 45);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 14:43:12.134675', 'limpieza', 2);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 16:01:26.558721', 'ocupada', 20);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-16 21:24:57.139080', 'mantenimiento', 28);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 02:46:19.876077', 'limpieza', 18);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 06:02:34.002594', 'ocupada', 21);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 07:50:08.999662', 'ocupada', 13);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 10:37:39.289593', 'mantenimiento', 7);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 12:55:53.668005', 'ocupada', 20);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 14:41:27.800737', 'mantenimiento', 3);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 16:16:46.532033', 'ocupada', 41);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-17 20:23:41.544895', 'mantenimiento', 31);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 00:52:02.738215', 'disponible', 17);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 04:59:54.806733', 'limpieza', 32);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 06:36:35.526530', 'disponible', 10);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 09:28:12.521761', 'mantenimiento', 6);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 11:35:48.323339', 'limpieza', 39);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 17:26:27.559990', 'limpieza', 29);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-18 21:46:23.177104', 'limpieza', 20);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 03:25:26.816349', 'disponible', 49);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 06:05:40.093851', 'disponible', 11);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 08:17:15.172563', 'ocupada', 1);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 12:45:59.795220', 'limpieza', 19);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 14:00:18.536517', 'mantenimiento', 45);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 18:05:01.781280', 'mantenimiento', 41);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-19 23:47:53.760303', 'ocupada', 28);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 01:22:08.439398', 'ocupada', 18);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 03:26:11.613381', 'mantenimiento', 39);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 09:24:30.073867', 'disponible', 30);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 13:08:56.062335', 'mantenimiento', 33);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 18:40:24.146685', 'disponible', 28);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-20 22:18:40.173807', 'disponible', 15);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 03:55:41.975717', 'mantenimiento', 37);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 05:44:30.159418', 'limpieza', 34);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 10:42:47.349724', 'limpieza', 41);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 14:48:17.714588', 'limpieza', 22);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 18:30:24.613987', 'ocupada', 22);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-21 23:14:55.916206', 'limpieza', 49);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 04:17:25.008544', 'mantenimiento', 17);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 07:25:14.432353', 'disponible', 43);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 12:54:40.489191', 'ocupada', 34);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 16:34:29.011899', 'limpieza', 49);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 17:47:46.587798', 'ocupada', 19);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-22 22:44:31.096056', 'disponible', 2);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 04:35:46.840318', 'ocupada', 20);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 09:36:22.268128', 'disponible', 15);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 11:05:29.947301', 'ocupada', 32);
INSERT INTO LOG_HABITACION (timestamp, status, HABITACION_id_habitacion) VALUES ('2026-06-23 14:38:15.234008', 'limpieza', 31);
