-- ====================================================================
-- ARCHIVO : 04_carga_dia4.sql
-- TABLAS  : PAGO
-- REGISTROS: 50
-- GENERADO POR: generador_datos.py (Faker es_MX, Faker.seed(42), random.seed(42))
-- FECHA DE GENERACION: 2026-08-15
--
-- NOTAS DE COHERENCIA:
--   * RESERVA_id_reserva apunta a los ids 1..50 del archivo 02.
--   * EMPLEADO_id_empleado apunta a los ids 1..50 del archivo 01.
--   * fecha_pago entre la fecha_entrada de la reserva y hoy (nunca antes de la entrada).
--   * monto = precio de la habitación x número de noches (coherencia extra).
-- ====================================================================

USE hotel_db;

-- ----------------------------- PAGO -------------------------------
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (1, '2026-07-12 12:32:42.000000', 16970.69, 'Tarjeta de débito', 1, 22);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (2, '2026-07-06 20:15:43.000000', 4894.75, 'Transferencia', 2, 15);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (3, '2026-07-18 10:01:02.000000', 17731.21, 'Efectivo', 3, 31);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (4, '2026-07-25 20:04:29.000000', 5585.34, 'PayPal', 4, 41);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (5, '2026-08-11 11:45:44.000000', 12529.80, 'PayPal', 5, 32);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (6, '2026-07-25 11:09:41.000000', 7874.55, 'Tarjeta de crédito', 6, 49);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (7, '2026-07-09 20:27:14.000000', 884.34, 'Efectivo', 7, 45);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (8, '2026-08-01 15:03:35.000000', 31191.36, 'Efectivo', 8, 8);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (9, '2026-07-16 10:51:29.000000', 13116.32, 'Tarjeta de débito', 9, 36);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (10, '2026-08-10 13:48:57.000000', 2792.67, 'PayPal', 10, 40);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (11, '2026-08-08 19:57:32.000000', 12665.15, 'PayPal', 11, 36);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (12, '2026-08-11 10:47:55.000000', 5161.68, 'PayPal', 12, 29);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (13, '2026-07-09 20:15:53.000000', 13963.29, 'Transferencia', 13, 50);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (14, '2026-08-12 15:40:15.000000', 10877.13, 'Transferencia', 14, 29);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (15, '2026-07-13 19:18:15.000000', 7759.29, 'Transferencia', 15, 22);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (16, '2026-07-31 16:05:08.000000', 12939.55, 'Efectivo', 16, 15);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (17, '2026-07-10 19:09:45.000000', 2739.84, 'Efectivo', 17, 5);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (18, '2026-08-06 14:21:34.000000', 17541.72, 'PayPal', 18, 27);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (19, '2026-07-14 11:53:26.000000', 10345.72, 'PayPal', 19, 50);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (20, '2026-07-12 20:36:24.000000', 30176.28, 'PayPal', 20, 1);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (21, '2026-08-04 12:48:24.000000', 1263.54, 'PayPal', 21, 35);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (22, '2026-08-08 19:34:51.000000', 17771.46, 'Tarjeta de débito', 22, 15);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (23, '2026-07-26 11:17:27.000000', 17689.56, 'PayPal', 23, 2);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (24, '2026-07-10 13:42:43.000000', 56648.79, 'PayPal', 24, 47);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (25, '2026-07-06 15:58:08.000000', 12923.90, 'Tarjeta de débito', 25, 35);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (26, '2026-06-25 14:37:36.000000', 9256.74, 'Tarjeta de crédito', 26, 6);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (27, '2026-08-08 14:08:55.000000', 10046.08, 'PayPal', 27, 12);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (28, '2026-07-17 12:24:20.000000', 951.00, 'Efectivo', 28, 30);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (29, '2026-07-11 13:48:56.000000', 25330.30, 'PayPal', 29, 18);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (30, '2026-08-06 14:16:53.000000', 12693.90, 'Tarjeta de crédito', 30, 31);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (31, '2026-07-10 19:34:03.000000', 11374.35, 'Transferencia', 31, 15);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (32, '2026-08-15 09:49:41.000000', 22632.21, 'Tarjeta de crédito', 32, 49);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (33, '2026-07-15 11:12:53.000000', 9510.00, 'Tarjeta de crédito', 33, 40);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (34, '2026-06-26 11:08:30.000000', 10808.52, 'Tarjeta de crédito', 34, 37);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (35, '2026-07-15 15:44:16.000000', 11183.64, 'Transferencia', 35, 11);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (36, '2026-07-16 20:52:10.000000', 30144.24, 'Transferencia', 36, 7);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (37, '2026-07-29 08:59:19.000000', 5306.04, 'Tarjeta de débito', 37, 44);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (38, '2026-08-14 14:25:45.000000', 13294.27, 'Efectivo', 38, 5);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (39, '2026-08-02 19:53:40.000000', 27906.23, 'Efectivo', 39, 7);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (40, '2026-08-02 18:38:51.000000', 4436.50, 'Tarjeta de crédito', 40, 37);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (41, '2026-07-09 13:34:27.000000', 36049.23, 'Transferencia', 41, 5);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (42, '2026-08-09 18:21:00.000000', 4654.45, 'PayPal', 42, 32);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (43, '2026-06-28 14:23:40.000000', 17602.83, 'PayPal', 43, 46);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (44, '2026-07-16 14:11:46.000000', 14502.84, 'Tarjeta de débito', 44, 42);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (45, '2026-07-21 17:51:58.000000', 7616.10, 'Tarjeta de débito', 45, 50);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (46, '2026-08-11 15:27:52.000000', 1609.23, 'Tarjeta de débito', 46, 18);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (47, '2026-07-12 11:53:59.000000', 17563.98, 'Tarjeta de crédito', 47, 18);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (48, '2026-08-03 11:48:29.000000', 9433.20, 'Tarjeta de débito', 48, 40);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (49, '2026-08-11 14:21:01.000000', 16970.69, 'PayPal', 49, 21);
INSERT INTO PAGO (id_pago, fecha_pago, monto, metodo_pago, RESERVA_id_reserva, EMPLEADO_id_empleado) VALUES (50, '2026-07-12 15:13:22.000000', 33623.59, 'Transferencia', 50, 22);
