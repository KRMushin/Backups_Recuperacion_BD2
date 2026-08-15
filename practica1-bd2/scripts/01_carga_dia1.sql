-- ====================================================================
-- ARCHIVO : 01_carga_dia1.sql
-- TABLAS  : CLIENTE, HABITACION, EMPLEADO
-- REGISTROS: 50 + 50 + 50
-- GENERADO POR: generador_datos.py (Faker es_MX, Faker.seed(42), random.seed(42))
-- FECHA DE GENERACION: 2026-08-15
--
-- NOTAS DE COHERENCIA:
--   * Todos los ids son secuenciales del 1 al 50 por tabla.
--   * Estos ids son los únicos referenciados por RESERVA, PAGO y LOG_HABITACION.
-- ====================================================================

USE hotel_db;

-- ----------------------------- CLIENTE -----------------------------
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (1, 'Alberto Hernán Guevara', 'alberto.hernan.91@gmail.com', '+52 55 3791 3810');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (2, 'Darío Canales', 'dario.canales.41@hotmail.com', '+52 81 9984 7493');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (3, 'Araceli Villanueva', 'araceli.villanueva.23@live.com', '+52 56 8025 4563');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (4, 'Alma Alicia Cabán', 'alma.alicia.64@gmail.com', '+52 55 1357 5562');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (5, 'Gabriel Santiago', 'gabriel.santiago.37@hotmail.com', '+52 614 8180 1586');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (6, 'Sra. Noemí Farías', 'noemi.farias.13@live.com', '+52 33 9710 2525');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (7, 'Linda Garay', 'linda.garay.93@live.com', '+52 99 3058 7039');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (8, 'Patricia Eugenia Aguayo Crespo', 'patricia.eugenia.67@live.com', '+52 44 0187 2248');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (9, 'Indira Eugenia Cortés', 'indira.eugenia.30@yahoo.com.mx', '+52 22 3829 5260');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (10, 'Jonás Canales', 'jonas.canales.29@hotmail.com', '+52 22 1471 8431');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (11, 'Juan Bernardo Muñoz', 'juan.bernardo.21@yahoo.com.mx', '+52 56 4918 1396');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (12, 'Raquel Jaime Armas', 'raquel.jaime.54@live.com', '+52 44 0683 1819');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (13, 'Nancy Blanca Ochoa Berríos', 'nancy.blanca.68@live.com', '+52 56 5180 6024');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (14, 'Francisca Nájera', 'francisca.najera.20@live.com', '+52 44 8537 4605');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (15, 'Srita. Virginia Barrios', 'virginia.barrios.89@outlook.com', '+52 33 9556 6031');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (16, 'Gabino Longoria Bétancourt', 'gabino.longoria.18@gmail.com', '+52 33 3984 0994');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (17, 'Bruno Olivares', 'bruno.olivares.20@hotmail.com', '+52 56 5201 9678');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (18, 'Lic. José Emilio Curiel', 'jose.emilio.45@yahoo.com.mx', '+52 22 2283 1063');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (19, 'Irma Fuentes Jaramillo', 'irma.fuentes.57@outlook.com', '+52 33 9094 9389');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (20, 'Uriel Enrique Tejeda', 'uriel.enrique.44@gmail.com', '+52 81 7269 1040');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (21, 'Emiliano Ríos', 'emiliano.rios.41@hotmail.com', '+52 662 5192 9647');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (22, 'Estela Sandra Valdés', 'estela.sandra.44@live.com', '+52 33 9288 7369');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (23, 'Jerónimo Badillo', 'jeronimo.badillo.51@gmail.com', '+52 33 0530 8421');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (24, 'Alejandro Mata', 'alejandro.mata.50@yahoo.com.mx', '+52 44 0988 3684');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (25, 'Estela Anabel Galarza', 'estela.anabel.37@live.com', '+52 22 2953 8251');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (26, 'Dra. Dolores Sanabria', 'dolores.sanabria.93@yahoo.com.mx', '+52 99 8728 2117');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (27, 'Sara María Cristina Collazo', 'sara.maria.68@hotmail.com', '+52 44 1974 0864');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (28, 'Dr. Gerónimo Valentín', 'geronimo.valentin.41@live.com', '+52 614 3626 4581');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (29, 'Estefanía Viera', 'estefania.viera.84@yahoo.com.mx', '+52 99 4958 6340');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (30, 'Paola Laura Nájera', 'paola.laura.38@hotmail.com', '+52 614 6723 8574');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (31, 'Darío Saucedo', 'dario.saucedo.21@gmail.com', '+52 56 2151 4014');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (32, 'Arcelia Amelia Carmona Corral', 'arcelia.amelia.90@hotmail.com', '+52 99 8104 8665');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (33, 'Manuel Teodoro Barela Olmos', 'manuel.teodoro.18@yahoo.com.mx', '+52 99 8097 8790');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (34, 'Perla María Elena Tafoya', 'perla.maria.69@live.com', '+52 44 7525 2722');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (35, 'Sr. Claudio Terán', 'claudio.teran.11@gmail.com', '+52 614 3681 2670');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (36, 'Ing. César Lozada', 'cesar.lozada.92@outlook.com', '+52 56 4039 2920');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (37, 'Celia María Acosta', 'celia.maria.65@hotmail.com', '+52 662 0143 5578');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (38, 'Dr. Patricio Caraballo', 'patricio.caraballo.43@live.com', '+52 81 6913 9880');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (39, 'Dr. Elias Niño', 'elias.nino.23@outlook.com', '+52 614 8273 4598');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (40, 'Reynaldo Raúl Abrego Zamudio', 'reynaldo.raul.35@hotmail.com', '+52 22 2268 2744');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (41, 'Marisela Almaraz Carrasco', 'marisela.almaraz.79@live.com', '+52 55 8138 8981');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (42, 'Georgina Grijalva Baeza', 'georgina.grijalva.51@yahoo.com.mx', '+52 55 1601 4631');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (43, 'Rufino Berríos', 'rufino.berrios.56@outlook.com', '+52 33 0877 4584');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (44, 'Omar Armando Tejada', 'omar.armando.40@live.com', '+52 56 1249 6211');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (45, 'Cristian Nicolás Ulloa de Jesús', 'cristian.nicolas.72@gmail.com', '+52 614 1787 9290');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (46, 'Lic. Fidel Tirado', 'fidel.tirado.26@yahoo.com.mx', '+52 614 2316 2965');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (47, 'Jacinto Ozuna', 'jacinto.ozuna.43@live.com', '+52 99 2942 7073');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (48, 'Luz Sierra Razo', 'luz.sierra.79@hotmail.com', '+52 44 5455 1839');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (49, 'Gerónimo Francisco Javier Barela', 'geronimo.francisco.95@outlook.com', '+52 662 7046 7853');
INSERT INTO CLIENTE (id_cliente, nombre, correo, telefono) VALUES (50, 'Alejandra Villalobos Urrutia', 'alejandra.villalobos.67@gmail.com', '+52 33 3115 8366');

-- --------------------------- HABITACION ----------------------------
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (1, 'Individual', 900.71);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (2, 'Suite Junior', 2583.09);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (3, 'Suite Junior', 2533.03);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (4, 'Individual', 956.18);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (5, 'Individual', 884.34);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (6, 'Individual', 978.95);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (7, 'Individual', 927.12);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (8, 'Doble', 1300.35);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (9, 'Individual', 930.89);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (10, 'Suite Presidencial', 5140.33);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (11, 'Suite Junior', 2586.43);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (12, 'Individual', 967.69);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (13, 'Matrimonial', 1528.56);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (14, 'Individual', 948.85);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (15, 'Doble', 1263.54);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (16, 'Matrimonial', 1629.58);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (17, 'Individual', 951.00);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (18, 'Suite Presidencial', 5014.76);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (19, 'Matrimonial', 1609.23);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (20, 'Individual', 887.30);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (21, 'Individual', 930.44);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (22, 'Individual', 913.28);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (23, 'Doble', 1269.39);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (24, 'Individual', 916.47);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (25, 'Suite Junior', 2514.69);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (26, 'Suite Presidencial', 5149.89);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (27, 'Individual', 995.35);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (28, 'Individual', 874.95);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (29, 'Matrimonial', 1572.20);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (30, 'Matrimonial', 1635.37);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (31, 'Individual', 906.85);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (32, 'Matrimonial', 1539.78);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (33, 'Matrimonial', 1542.79);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (34, 'Suite Presidencial', 5143.60);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (35, 'Suite Junior', 2599.28);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (36, 'Matrimonial', 1523.22);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (37, 'Doble', 1232.66);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (38, 'Individual', 936.88);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (39, 'Suite Junior', 2509.14);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (40, 'Doble', 1208.57);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (41, 'Suite Junior', 2571.52);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (42, 'Suite Junior', 2523.61);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (43, 'Suite Junior', 2512.02);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (44, 'Individual', 860.28);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (45, 'Individual', 951.28);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (46, 'Individual', 910.57);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (47, 'Suite Junior', 2536.93);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (48, 'Suite Junior', 2505.96);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (49, 'Individual', 912.88);
INSERT INTO HABITACION (id_habitacion, tipo, precio) VALUES (50, 'Suite Junior', 2584.78);

-- ---------------------------- EMPLEADO -----------------------------
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (1, 'Sergio Garay', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (2, 'Arturo Bahena Girón', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (3, 'Alejandro Jesús Batista', 'Cocinero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (4, 'Elsa Leiva', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (5, 'Dolores Natalia Centeno Vásquez', 'Cocinero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (6, 'Ing. Elvira Rojas', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (7, 'Cynthia Ariadna Calderón', 'Mantenimiento');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (8, 'Irma Lorena Partida', 'Mesero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (9, 'Ana Tania Calvillo Ballesteros', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (10, 'Ilse Barbara Guzmán', 'Contador');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (11, 'Eugenio Terán', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (12, 'Carlota Lorena Elizondo Leiva', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (13, 'Emilia Ángela Quintero Urbina', 'Recepcionista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (14, 'Alvaro Reynaldo Alejandro', 'Contador');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (15, 'Genaro Emilio Palomo', 'Chef');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (16, 'María Teresa Dolores Pacheco Bahena', 'Chef');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (17, 'Juan Abel Orellana Jaimes', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (18, 'Fabiola Lorena Valadez Ruiz', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (19, 'Eugenio Ignacio Gamboa Baeza', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (20, 'Lic. Ana María Martínez', 'Cocinero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (21, 'Alvaro Viera Romero', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (22, 'Mónica Cotto', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (23, 'Pedro Blanco Escamilla', 'Mesero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (24, 'Teodoro Armando Gollum', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (25, 'Bianca Ofelia Gurule', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (26, 'Lic. Amalia Bonilla', 'Cocinero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (27, 'Sofía Paola Vallejo', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (28, 'Graciela Ibarra', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (29, 'Jacobo Griego', 'Mesero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (30, 'Lic. Cristobal Macías', 'Contador');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (31, 'Graciela Anel Aguirre Reynoso', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (32, 'Lic. Asunción Benavides', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (33, 'Dolores Santillán', 'Chef');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (34, 'Dr. Jos Barrientos', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (35, 'José Luis Linares', 'Recepcionista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (36, 'Mario Ricardo Madrid Tafoya', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (37, 'Rodolfo Luna Cano', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (38, 'Guillermo Claudio Carbajal Uribe', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (39, 'Héctor Horacio Zedillo Gaitán', 'Mesero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (40, 'Delia Jaime Santiago', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (41, 'Esmeralda Ana Caballero Piña', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (42, 'Sr. Abel Merino', 'Camarista');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (43, 'Guillermo Emiliano Quintanilla Ureña', 'Botones');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (44, 'Noemí Adela Carrasco', 'Mesero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (45, 'Eduardo Ricardo Aranda', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (46, 'Paola Urías Cordero', 'Gerente');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (47, 'Camila Amalia Manzanares', 'Chef');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (48, 'Amalia Muñiz Gaitán', 'Cocinero');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (49, 'Camilo Moreno', 'Conserje');
INSERT INTO EMPLEADO (id_empleado, nombre, puesto) VALUES (50, 'Leticia Correa', 'Cocinero');
