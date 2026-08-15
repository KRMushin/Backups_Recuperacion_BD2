-- ====================================================================
-- ARCHIVO : 02_carga_dia2.sql
-- TABLAS  : RESERVA
-- REGISTROS: 50
-- GENERADO POR: generador_datos.py (Faker es_MX, Faker.seed(42), random.seed(42))
-- FECHA DE GENERACION: 2026-08-15
--
-- NOTAS DE COHERENCIA:
--   * CLIENTE_id_cliente y HABITACION_id_habitacion apuntan a los ids 1..50 del archivo 01.
--   * fecha_salida = fecha_entrada + 1..14 días (siempre posterior).
--   * La habitación se asigna al azar con repetición (varias reservas pueden usar la misma).
-- ====================================================================

USE hotel_db;

-- ---------------------------- RESERVA -----------------------------
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (1, '2026-07-07', '2026-07-18', 17, 33);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (2, '2026-07-01', '2026-07-06', 4, 6);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (3, '2026-07-06', '2026-07-13', 18, 3);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (4, '2026-06-16', '2026-06-22', 50, 9);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (5, '2026-07-06', '2026-07-11', 11, 48);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (6, '2026-06-30', '2026-07-09', 46, 28);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (7, '2026-07-03', '2026-07-04', 8, 5);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (8, '2026-07-16', '2026-07-28', 10, 35);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (9, '2026-06-17', '2026-07-01', 24, 38);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (10, '2026-07-03', '2026-07-06', 28, 9);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (11, '2026-06-17', '2026-06-22', 24, 3);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (12, '2026-07-14', '2026-07-20', 14, 44);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (13, '2026-06-23', '2026-07-04', 7, 23);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (14, '2026-07-10', '2026-07-19', 27, 40);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (15, '2026-07-09', '2026-07-12', 16, 11);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (16, '2026-07-11', '2026-07-24', 12, 27);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (17, '2026-06-16', '2026-06-19', 48, 22);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (18, '2026-07-11', '2026-07-18', 43, 48);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (19, '2026-07-11', '2026-07-15', 18, 11);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (20, '2026-07-11', '2026-07-23', 7, 25);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (21, '2026-07-13', '2026-07-14', 31, 15);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (22, '2026-06-22', '2026-07-06', 30, 23);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (23, '2026-06-25', '2026-07-09', 15, 15);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (24, '2026-06-16', '2026-06-27', 13, 26);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (25, '2026-06-26', '2026-07-01', 5, 50);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (26, '2026-06-24', '2026-06-30', 42, 33);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (27, '2026-06-28', '2026-07-09', 35, 22);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (28, '2026-07-16', '2026-07-17', 8, 17);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (29, '2026-06-21', '2026-07-01', 17, 3);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (30, '2026-06-19', '2026-06-29', 28, 23);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (31, '2026-07-09', '2026-07-22', 21, 28);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (32, '2026-07-05', '2026-07-14', 8, 25);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (33, '2026-07-14', '2026-07-24', 13, 17);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (34, '2026-06-17', '2026-06-29', 28, 1);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (35, '2026-07-02', '2026-07-15', 35, 44);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (36, '2026-07-09', '2026-07-21', 48, 43);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (37, '2026-06-22', '2026-06-28', 28, 5);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (38, '2026-07-16', '2026-07-27', 22, 40);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (39, '2026-06-26', '2026-07-07', 8, 47);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (40, '2026-07-14', '2026-07-19', 33, 20);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (41, '2026-07-07', '2026-07-14', 21, 26);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (42, '2026-07-08', '2026-07-13', 36, 9);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (43, '2026-06-22', '2026-06-29', 43, 25);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (44, '2026-07-07', '2026-07-19', 12, 40);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (45, '2026-07-04', '2026-07-09', 26, 36);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (46, '2026-07-12', '2026-07-13', 20, 19);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (47, '2026-06-22', '2026-06-29', 38, 39);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (48, '2026-07-06', '2026-07-12', 30, 29);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (49, '2026-06-30', '2026-07-11', 14, 33);
INSERT INTO RESERVA (id_reserva, fecha_entrada, fecha_salida, CLIENTE_id_cliente, HABITACION_id_habitacion) VALUES (50, '2026-07-01', '2026-07-14', 48, 11);
