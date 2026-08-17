-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: hotel_db
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hotel_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hotel_db`;

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'Alberto HernÃ¡n Guevara','alberto.hernan.91@example.com','+502 0435 6886'),(2,'DarÃ­o Canales','dario.canales.45@example.com','+502 3095 8838'),(3,'Araceli Villanueva','araceli.villanueva.27@live.com','+502 1475 6669'),(4,'Alma Alicia CabÃ¡n','alma.alicia.96@live.com','+502 7419 7857'),(5,'Gabriel Santiago','gabriel.santiago.21@live.com','+502 5762 9388'),(6,'Sra. NoemÃ­ FarÃ­as','noemi.farias.14@example.com','+502 1357 5562'),(7,'Linda Garay','linda.garay.37@example.com','+502 6882 7638'),(8,'Patricia Eugenia Aguayo Crespo','patricia.eugenia.87@example.com','+502 7632 9037'),(9,'Indira Eugenia CortÃ©s','indira.eugenia.35@live.com','+502 8822 6012'),(10,'JonÃ¡s Canales','jonas.canales.99@live.com','+502 5730 6997'),(11,'Juan Bernardo MuÃ±oz','juan.bernardo.38@hotmail.com','+502 8008 9901'),(12,'Raquel Jaime Armas','raquel.jaime.45@example.com','+502 2242 9110'),(13,'Nancy Blanca Ochoa BerrÃ­os','nancy.blanca.99@hotmail.com','+502 4666 7651'),(14,'Francisca NÃ¡jera','francisca.najera.45@example.com','+502 2989 8923'),(15,'Srita. Virginia Barrios','virginia.barrios.53@example.com','+502 1344 8136'),(16,'Gabino Longoria BÃ©tancourt','gabino.longoria.58@example.com','+502 4918 1396'),(17,'Bruno Olivares','bruno.olivares.54@live.com','+502 3650 3389'),(18,'Lic. JosÃ© Emilio Curiel','jose.emilio.15@live.com','+502 6266 2963'),(19,'Irma Fuentes Jaramillo','irma.fuentes.78@example.com','+502 5180 6024'),(20,'Uriel Enrique Tejeda','uriel.enrique.20@live.com','+502 4034 9722'),(21,'Emiliano RÃ­os','emiliano.rios.90@live.com','+502 4953 7831'),(22,'Estela Sandra ValdÃ©s','estela.sandra.83@example.com','+502 9556 6031'),(23,'JerÃ³nimo Badillo','jeronimo.badillo.18@example.com','+502 8975 3260'),(24,'Alejandro Mata','alejandro.mata.39@hotmail.com','+502 1170 9497'),(25,'Estela Anabel Galarza','estela.anabel.39@example.com','+502 5201 9678'),(26,'Dra. Dolores Sanabria','dolores.sanabria.45@hotmail.com','+502 8632 0121'),(27,'Sara MarÃ­a Cristina Collazo','sara.maria.56@example.com','+502 5068 4848'),(28,'Dr. GerÃ³nimo ValentÃ­n','geronimo.valentin.55@example.com','+502 9094 9389'),(29,'EstefanÃ­a Viera','estefania.viera.44@live.com','+502 9274 4214'),(30,'Paola Laura NÃ¡jera','paola.laura.92@example.com','+502 8275 6179'),(31,'DarÃ­o Saucedo','dario.saucedo.91@example.com','+502 7269 1040'),(32,'Arcelia Amelia Carmona Corral','arcelia.amelia.41@example.com','+502 6304 3515'),(33,'Manuel Teodoro Barela Olmos','manuel.teodoro.58@hotmail.com','+502 8689 9313'),(34,'Perla MarÃ­a Elena Tafoya','perla.maria.98@live.com','+502 3047 6249'),(35,'Sr. Claudio TerÃ¡n','claudio.teran.97@hotmail.com','+502 0850 7864'),(36,'Ing. CÃ©sar Lozada','cesar.lozada.39@example.com','+502 4333 9391'),(37,'Celia MarÃ­a Acosta','celia.maria.61@hotmail.com','+502 0988 3684'),(38,'Dr. Patricio Caraballo','patricio.caraballo.37@live.com','+502 9735 6822'),(39,'Dr. Elias NiÃ±o','elias.nino.50@example.com','+502 8897 1488'),(40,'Reynaldo RaÃºl Abrego Zamudio','reynaldo.raul.73@hotmail.com','+502 8728 2117'),(41,'Marisela Almaraz Carrasco','marisela.almaraz.68@example.com','+502 3655 1614'),(42,'Georgina Grijalva Baeza','georgina.grijalva.27@example.com','+502 7634 5555'),(43,'Rufino BerrÃ­os','rufino.berrios.78@hotmail.com','+502 7946 1803'),(44,'Omar Armando Tejada','omar.armando.64@live.com','+502 5460 6628'),(45,'Cristian NicolÃ¡s Ulloa de JesÃºs','cristian.nicolas.56@example.com','+502 1956 6572'),(46,'Lic. Fidel Tirado','fidel.tirado.75@hotmail.com','+502 1320 1654'),(47,'Jacinto Ozuna','jacinto.ozuna.16@example.com','+502 2151 4014'),(48,'Luz Sierra Razo','luz.sierra.90@example.com','+502 9233 2642'),(49,'GerÃ³nimo Francisco Javier Barela','geronimo.francisco.64@live.com','+502 0952 6544'),(50,'Alejandra Villalobos Urrutia','alejandra.villalobos.59@hotmail.com','+502 8097 8790');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADO`
--

DROP TABLE IF EXISTS `EMPLEADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLEADO` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADO`
--

LOCK TABLES `EMPLEADO` WRITE;
/*!40000 ALTER TABLE `EMPLEADO` DISABLE KEYS */;
INSERT INTO `EMPLEADO` VALUES (1,'Sergio Garay','Contador'),(2,'Arturo Bahena GirÃ³n','Recepcionista'),(3,'Alejandro JesÃºs Batista','Camarista'),(4,'Elsa Leiva','Recepcionista'),(5,'Dolores Natalia Centeno VÃ¡squez','Mantenimiento'),(6,'Ing. Elvira Rojas','Conserje'),(7,'Cynthia Ariadna CalderÃ³n','Camarista'),(8,'Irma Lorena Partida','Cocinero'),(9,'Ana Tania Calvillo Ballesteros','Cocinero'),(10,'Ilse Barbara GuzmÃ¡n','Cocinero'),(11,'Eugenio TerÃ¡n','Botones'),(12,'Carlota Lorena Elizondo Leiva','Contador'),(13,'Emilia Ãngela Quintero Urbina','Mesero'),(14,'Alvaro Reynaldo Alejandro','Mantenimiento'),(15,'Genaro Emilio Palomo','Mesero'),(16,'MarÃ­a Teresa Dolores Pacheco Bahena','Gerente'),(17,'Juan Abel Orellana Jaimes','Contador'),(18,'Fabiola Lorena Valadez Ruiz','Cocinero'),(19,'Eugenio Ignacio Gamboa Baeza','Camarista'),(20,'Lic. Ana MarÃ­a MartÃ­nez','Contador'),(21,'Alvaro Viera Romero','Botones'),(22,'MÃ³nica Cotto','Camarista'),(23,'Pedro Blanco Escamilla','Recepcionista'),(24,'Teodoro Armando Gollum','Botones'),(25,'Bianca Ofelia Gurule','Recepcionista'),(26,'Lic. Amalia Bonilla','Camarista'),(27,'SofÃ­a Paola Vallejo','Cocinero'),(28,'Graciela Ibarra','Mesero'),(29,'Jacobo Griego','Mantenimiento'),(30,'Lic. Cristobal MacÃ­as','Contador'),(31,'Graciela Anel Aguirre Reynoso','Contador'),(32,'Lic. AsunciÃ³n Benavides','Cocinero'),(33,'Dolores SantillÃ¡n','Mantenimiento'),(34,'Dr. Jos Barrientos','Recepcionista'),(35,'JosÃ© Luis Linares','Mesero'),(36,'Mario Ricardo Madrid Tafoya','Mantenimiento'),(37,'Rodolfo Luna Cano','Recepcionista'),(38,'Guillermo Claudio Carbajal Uribe','Mantenimiento'),(39,'HÃ©ctor Horacio Zedillo GaitÃ¡n','Gerente'),(40,'Delia Jaime Santiago','Contador'),(41,'Esmeralda Ana Caballero PiÃ±a','Gerente'),(42,'Sr. Abel Merino','Mantenimiento'),(43,'Guillermo Emiliano Quintanilla UreÃ±a','Botones'),(44,'NoemÃ­ Adela Carrasco','Contador'),(45,'Eduardo Ricardo Aranda','Mesero'),(46,'Paola UrÃ­as Cordero','Cocinero'),(47,'Camila Amalia Manzanares','Gerente'),(48,'Amalia MuÃ±iz GaitÃ¡n','Cocinero'),(49,'Camilo Moreno','Recepcionista'),(50,'Leticia Correa','Chef');
/*!40000 ALTER TABLE `EMPLEADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HABITACION`
--

DROP TABLE IF EXISTS `HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HABITACION` (
  `id_habitacion` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HABITACION`
--

LOCK TABLES `HABITACION` WRITE;
/*!40000 ALTER TABLE `HABITACION` DISABLE KEYS */;
INSERT INTO `HABITACION` VALUES (1,'Suite Junior',2579.37),(2,'Individual',979.12),(3,'Individual',952.04),(4,'Individual',952.26),(5,'Individual',962.63),(6,'Suite Presidencial',5051.03),(7,'Matrimonial',1565.21),(8,'Suite Junior',2500.49),(9,'Suite Presidencial',5131.38),(10,'Matrimonial',1645.78),(11,'Doble',1276.15),(12,'Individual',980.58),(13,'Matrimonial',1626.25),(14,'Individual',941.35),(15,'Doble',1256.09),(16,'Doble',1280.91),(17,'Individual',987.77),(18,'Individual',898.62),(19,'Individual',866.78),(20,'Matrimonial',1631.81),(21,'Matrimonial',1535.92),(22,'Doble',1331.70),(23,'Individual',862.85),(24,'Suite Junior',2622.40),(25,'Individual',964.88),(26,'Doble',1298.96),(27,'Individual',874.77),(28,'Individual',980.86),(29,'Suite Junior',2644.65),(30,'Individual',963.29),(31,'Suite Presidencial',5030.17),(32,'Matrimonial',1559.85),(33,'Suite Presidencial',5097.48),(34,'Suite Junior',2634.94),(35,'Suite Junior',2518.15),(36,'Doble',1209.60),(37,'Individual',938.25),(38,'Doble',1288.27),(39,'Individual',860.65),(40,'Suite Presidencial',5008.83),(41,'Individual',985.81),(42,'Matrimonial',1510.63),(43,'Doble',1241.77),(44,'Suite Junior',2532.14),(45,'Doble',1308.50),(46,'Individual',936.43),(47,'Doble',1317.69),(48,'Suite Junior',2528.56),(49,'Individual',948.85),(50,'Matrimonial',1563.54);
/*!40000 ALTER TABLE `HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_HABITACION`
--

DROP TABLE IF EXISTS `LOG_HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_HABITACION` (
  `timestamp` datetime(6) NOT NULL,
  `status` varchar(30) NOT NULL,
  `HABITACION_id_habitacion` int NOT NULL,
  PRIMARY KEY (`timestamp`,`HABITACION_id_habitacion`),
  KEY `HABITACION_id_habitacion` (`HABITACION_id_habitacion`),
  CONSTRAINT `LOG_HABITACION_ibfk_1` FOREIGN KEY (`HABITACION_id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_HABITACION`
--

LOCK TABLES `LOG_HABITACION` WRITE;
/*!40000 ALTER TABLE `LOG_HABITACION` DISABLE KEYS */;
INSERT INTO `LOG_HABITACION` VALUES ('2026-06-16 03:10:38.636746','disponible',50),('2026-06-16 05:29:45.243541','disponible',20),('2026-06-16 11:13:43.637079','limpieza',46),('2026-06-16 13:18:21.361241','ocupada',7),('2026-06-16 17:13:04.990819','disponible',37),('2026-06-16 18:35:39.440006','mantenimiento',5),('2026-06-17 00:17:00.453273','limpieza',32),('2026-06-17 01:44:24.119733','limpieza',46),('2026-06-17 04:11:35.889174','mantenimiento',40),('2026-06-17 10:01:06.376630','limpieza',47),('2026-06-17 15:18:27.269716','ocupada',6),('2026-06-17 19:14:55.525426','limpieza',37),('2026-06-18 00:57:19.878164','disponible',32),('2026-06-18 04:08:51.100588','mantenimiento',17),('2026-06-18 07:26:47.725702','mantenimiento',36),('2026-06-18 08:59:59.815474','ocupada',47),('2026-06-18 13:31:35.610468','ocupada',45),('2026-06-18 18:13:21.125132','limpieza',2),('2026-06-18 19:31:35.549178','ocupada',20),('2026-06-19 00:55:06.129537','mantenimiento',28),('2026-06-19 06:16:28.866534','limpieza',18),('2026-06-19 09:32:42.993051','ocupada',21),('2026-06-19 11:20:17.990119','ocupada',13),('2026-06-19 14:07:48.280050','mantenimiento',7),('2026-06-19 16:26:02.658462','ocupada',20),('2026-06-19 18:11:36.791194','mantenimiento',3),('2026-06-19 19:46:55.522490','ocupada',41),('2026-06-19 23:53:50.535352','mantenimiento',31),('2026-06-20 04:22:11.728672','disponible',17),('2026-06-20 08:30:03.797190','limpieza',32),('2026-06-20 10:06:44.516987','disponible',10),('2026-06-20 12:58:21.512218','mantenimiento',6),('2026-06-20 15:05:57.313796','limpieza',39),('2026-06-20 20:56:36.550447','limpieza',29),('2026-06-21 01:16:32.167561','limpieza',20),('2026-06-21 06:55:35.806806','disponible',49),('2026-06-21 09:35:49.084308','disponible',11),('2026-06-21 11:47:24.163020','ocupada',1),('2026-06-21 16:16:08.785677','limpieza',19),('2026-06-21 17:30:27.526974','mantenimiento',45),('2026-06-21 21:35:10.771737','mantenimiento',41),('2026-06-22 03:18:02.750760','ocupada',28),('2026-06-22 04:52:17.429855','ocupada',18),('2026-06-22 06:56:20.603838','mantenimiento',39),('2026-06-22 12:54:39.064324','disponible',30),('2026-06-22 16:39:05.052792','mantenimiento',33),('2026-06-22 22:10:33.137142','disponible',28),('2026-06-23 01:48:49.164264','disponible',15),('2026-06-23 07:25:50.966174','mantenimiento',37),('2026-06-23 09:14:39.149875','limpieza',34);
/*!40000 ALTER TABLE `LOG_HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGO`
--

DROP TABLE IF EXISTS `PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGO` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `fecha_pago` datetime NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(30) NOT NULL,
  `RESERVA_id_reserva` int NOT NULL,
  `EMPLEADO_id_empleado` int NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `RESERVA_id_reserva` (`RESERVA_id_reserva`),
  KEY `EMPLEADO_id_empleado` (`EMPLEADO_id_empleado`),
  CONSTRAINT `PAGO_ibfk_1` FOREIGN KEY (`RESERVA_id_reserva`) REFERENCES `RESERVA` (`id_reserva`),
  CONSTRAINT `PAGO_ibfk_2` FOREIGN KEY (`EMPLEADO_id_empleado`) REFERENCES `EMPLEADO` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGO`
--

LOCK TABLES `PAGO` WRITE;
/*!40000 ALTER TABLE `PAGO` DISABLE KEYS */;
INSERT INTO `PAGO` VALUES (1,'2026-07-13 13:41:32',22757.04,'PayPal',1,44),(2,'2026-06-30 13:01:07',1288.27,'Transferencia',2,12),(3,'2026-07-10 12:02:06',11485.35,'Tarjeta de dÃ©bito',3,28),(4,'2026-06-22 19:50:20',8825.22,'PayPal',4,39),(5,'2026-06-26 09:24:57',25321.40,'Tarjeta de dÃ©bito',5,13),(6,'2026-07-17 08:45:27',10001.96,'Tarjeta de crÃ©dito',6,34),(7,'2026-07-28 16:43:46',12882.70,'Efectivo',7,24),(8,'2026-07-08 09:42:58',5051.03,'Transferencia',8,40),(9,'2026-07-04 18:54:07',10320.75,'Transferencia',9,33),(10,'2026-07-06 18:26:20',5648.10,'PayPal',10,45),(11,'2026-07-16 16:08:12',15370.92,'PayPal',11,43),(12,'2026-06-30 18:47:57',8692.39,'Efectivo',12,40),(13,'2026-07-10 14:35:53',7679.60,'Tarjeta de crÃ©dito',13,20),(14,'2026-07-24 11:27:50',33531.81,'Tarjeta de dÃ©bito',14,39),(15,'2026-07-10 13:29:28',15652.10,'PayPal',15,44),(16,'2026-06-21 16:30:50',45877.32,'Efectivo',16,43),(17,'2026-06-24 12:32:42',2887.89,'Tarjeta de dÃ©bito',17,22),(18,'2026-07-15 20:15:43',3467.12,'Transferencia',18,15),(19,'2026-06-24 10:01:02',7491.44,'Efectivo',19,31),(20,'2026-07-04 20:04:29',26349.40,'PayPal',20,41),(21,'2026-06-25 11:45:44',17949.91,'PayPal',21,32),(22,'2026-07-21 11:09:41',56445.18,'Tarjeta de crÃ©dito',22,49),(23,'2026-06-24 20:27:14',5057.12,'Efectivo',23,45),(24,'2026-07-07 15:03:35',2600.34,'Efectivo',24,8),(25,'2026-07-12 10:51:29',5326.80,'Tarjeta de dÃ©bito',25,36),(26,'2026-07-01 13:48:57',10865.47,'PayPal',26,40),(27,'2026-07-13 16:27:53',7618.08,'Tarjeta de dÃ©bito',27,29),(28,'2026-07-02 10:47:55',9884.82,'PayPal',28,29),(29,'2026-06-19 20:15:53',1563.54,'Transferencia',29,50),(30,'2026-07-02 16:31:40',14037.65,'Efectivo',30,18),(31,'2026-07-16 09:45:18',7491.44,'Efectivo',31,18),(32,'2026-07-04 13:57:34',22504.41,'Tarjeta de crÃ©dito',32,9),(33,'2026-06-22 11:24:44',30217.80,'Efectivo',33,46),(34,'2026-06-23 09:26:26',18035.78,'Transferencia',34,35),(35,'2026-07-06 14:03:13',15394.14,'PayPal',35,25),(36,'2026-06-17 20:36:24',4760.20,'PayPal',36,1),(37,'2026-07-19 12:48:24',15192.84,'PayPal',37,35),(38,'2026-07-04 19:34:51',9491.35,'Tarjeta de dÃ©bito',38,15),(39,'2026-07-17 11:17:27',45079.47,'PayPal',39,2),(40,'2026-07-12 13:42:43',3828.45,'PayPal',40,47),(41,'2026-07-16 15:58:08',11372.01,'Tarjeta de dÃ©bito',41,35),(42,'2026-06-16 14:37:36',3995.10,'Tarjeta de crÃ©dito',42,6),(43,'2026-07-21 14:08:55',17699.92,'PayPal',43,12),(44,'2026-07-11 12:24:20',5104.60,'Efectivo',44,30),(45,'2026-07-21 13:48:56',11578.56,'PayPal',45,18),(46,'2026-07-16 12:53:05',1256.09,'PayPal',46,2),(47,'2026-07-09 08:22:14',12079.90,'Tarjeta de crÃ©dito',47,50),(48,'2026-06-26 20:01:15',17585.26,'Efectivo',48,2),(49,'2026-06-25 10:15:08',14288.56,'PayPal',49,43),(50,'2026-06-27 17:13:29',7817.70,'Transferencia',50,50);
/*!40000 ALTER TABLE `PAGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVA`
--

DROP TABLE IF EXISTS `RESERVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESERVA` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `CLIENTE_id_cliente` int NOT NULL,
  `HABITACION_id_habitacion` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `CLIENTE_id_cliente` (`CLIENTE_id_cliente`),
  KEY `HABITACION_id_habitacion` (`HABITACION_id_habitacion`),
  CONSTRAINT `RESERVA_ibfk_1` FOREIGN KEY (`CLIENTE_id_cliente`) REFERENCES `CLIENTE` (`id_cliente`),
  CONSTRAINT `RESERVA_ibfk_2` FOREIGN KEY (`HABITACION_id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVA`
--

LOCK TABLES `RESERVA` WRITE;
/*!40000 ALTER TABLE `RESERVA` DISABLE KEYS */;
INSERT INTO `RESERVA` VALUES (1,'2026-07-09','2026-07-18',4,48),(2,'2026-06-26','2026-06-27',4,38),(3,'2026-07-01','2026-07-10',34,11),(4,'2026-06-17','2026-06-26',6,12),(5,'2026-06-18','2026-06-28',5,44),(6,'2026-07-13','2026-07-17',26,8),(7,'2026-07-16','2026-07-26',16,38),(8,'2026-07-05','2026-07-06',40,6),(9,'2026-06-29','2026-07-10',38,37),(10,'2026-07-02','2026-07-08',17,14),(11,'2026-07-07','2026-07-19',21,16),(12,'2026-06-24','2026-07-01',9,43),(13,'2026-07-06','2026-07-11',30,21),(14,'2026-07-15','2026-07-28',5,1),(15,'2026-06-30','2026-07-10',37,7),(16,'2026-06-18','2026-06-27',14,33),(17,'2026-06-24','2026-06-27',23,5),(18,'2026-07-14','2026-07-18',24,19),(19,'2026-06-21','2026-06-29',35,46),(20,'2026-06-25','2026-07-05',42,34),(21,'2026-06-16','2026-06-27',36,20),(22,'2026-07-15','2026-07-26',7,9),(23,'2026-06-24','2026-06-26',7,48),(24,'2026-07-03','2026-07-06',18,19),(25,'2026-07-05','2026-07-09',46,22),(26,'2026-06-22','2026-07-03',41,17),(27,'2026-07-02','2026-07-10',17,4),(28,'2026-06-18','2026-06-29',28,18),(29,'2026-06-17','2026-06-18',22,50),(30,'2026-06-20','2026-07-01',17,11),(31,'2026-07-09','2026-07-17',36,46),(32,'2026-06-29','2026-07-08',1,8),(33,'2026-06-18','2026-06-30',10,35),(34,'2026-06-17','2026-07-01',24,38),(35,'2026-07-03','2026-07-06',28,9),(36,'2026-06-17','2026-06-22',24,3),(37,'2026-07-14','2026-07-20',14,44),(38,'2026-06-23','2026-07-04',7,23),(39,'2026-07-10','2026-07-19',27,40),(40,'2026-07-09','2026-07-12',16,11),(41,'2026-07-11','2026-07-24',12,27),(42,'2026-06-16','2026-06-19',48,22),(43,'2026-07-11','2026-07-18',43,48),(44,'2026-07-11','2026-07-15',18,11),(45,'2026-07-11','2026-07-23',7,25),(46,'2026-07-13','2026-07-14',31,15),(47,'2026-06-22','2026-07-06',30,23),(48,'2026-06-25','2026-07-09',15,15),(49,'2026-06-16','2026-06-27',13,26),(50,'2026-06-26','2026-07-01',5,50);
/*!40000 ALTER TABLE `RESERVA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hotel_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-16  2:23:38
