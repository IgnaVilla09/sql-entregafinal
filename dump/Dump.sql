CREATE DATABASE  IF NOT EXISTS `gestioninscripcion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestioninscripcion`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestioninscripcion
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `Id_alumno` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Id_carrera` int NOT NULL,
  PRIMARY KEY (`Id_alumno`),
  KEY `Id_carrera` (`Id_carrera`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Id_carrera`) REFERENCES `carreras` (`Id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Juan','Pérez','juan.perez@correo.com','1234567890',1),(2,'María','García','maria.garcia@correo.com','9876543210',1),(3,'Pedro','López','pedro.lopez@correo.com','1112223334',1),(4,'Ana','Martínez','ana.martinez@correo.com','5556667778',2),(5,'Roberto','Gómez','roberto.gomez@correo.com','4443332221',2),(6,'Laura','Rodríguez','laura.rodriguez@correo.com','3332221110',2),(7,'David','Sánchez','david.sanchez@correo.com','7776665554',3),(8,'Sandra','Flores','sandra.flores@correo.com','6665554443',3),(9,'Carlos','Ramírez','carlos.ramirez@correo.com','5554443332',3),(10,'Jessica','Navarro','jessica.navarro@correo.com','4443332221',4),(11,'Luis','Jiménez','luis.jimenez@correo.com','3332221110',4),(12,'Diana','Ruiz','diana.ruiz@correo.com','2221110009',4),(13,'Alejandro','Moreno','alejandro.moreno@correo.com','1110009998',5),(14,'Patricia','Blanco','patricia.blanco@correo.com','0009998887',5),(15,'José','Fernández','jose.fernandez@correo.com','9998887776',5),(16,'Andrea','Muñoz','andrea.munoz@correo.com','8887776665',6),(17,'Francisco','Alvarez','francisco.alvarez@correo.com','7776665554',6),(18,'Cristina','Soria','cristina.soria@correo.com','6665554443',6),(19,'Marcos','Vega','marcos.vega@correo.com','5554443332',7),(20,'Carolina','Domínguez','carolina.dominguez@correo.com','4443332221',7);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_trigger_alumno` AFTER INSERT ON `alumnos` FOR EACH ROW BEGIN
    INSERT INTO log_alumnos 
    VALUES (DEFAULT, NEW.nombre, NEW.apellido, NEW.email, NEW.telefono, 'CREACIÓN POR INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `alumnos_inscritos`
--

DROP TABLE IF EXISTS `alumnos_inscritos`;
/*!50001 DROP VIEW IF EXISTS `alumnos_inscritos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alumnos_inscritos` AS SELECT 
 1 AS `Id_alumno`,
 1 AS `Nombre_Alumno`,
 1 AS `Apellido_Alumno`,
 1 AS `Id_examen`,
 1 AS `Fecha_Examen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `Id_carrera` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'Licenciatura en Ciencias de la Computación','Forma profesionales con sólidas habilidades en programación, análisis y desarrollo de software.'),(2,'Ingeniería Informática','Prepara profesionales expertos en el diseño, implementación y gestión de sistemas informáticos.'),(3,'Tecnicatura en Desarrollo Web','Brinda las competencias necesarias para crear y mantener sitios web dinámicos e interactivos.'),(4,'Licenciatura en Administración de Empresas','Desarrolla profesionales capaces de liderar y gestionar organizaciones de manera eficiente.'),(5,'Contaduría Pública','Forma profesionales expertos en la gestión financiera, contable y fiscal de empresas e instituciones.'),(6,'Derecho','Prepara abogados con sólidas bases jurídicas para desempeñarse en diversos ámbitos del derecho.'),(7,'Psicología','Forma profesionales capaces de comprender y atender las necesidades psicológicas de las personas.'),(8,'Medicina','Prepara médicos con los conocimientos y habilidades necesarios para diagnosticar, tratar y prevenir enfermedades.'),(9,'Arquitectura','Forma profesionales creativos y competentes para diseñar y construir espacios habitables y funcionales.'),(10,'Ingeniería Civil','Prepara ingenieros expertos en el diseño, construcción y mantenimiento de obras civiles.'),(11,'Licenciatura en Educación','Forma docentes con las competencias necesarias para impartir educación de calidad en diversos niveles.'),(12,'Licenciatura en Letras','Desarrolla profesionales con habilidades en el análisis, interpretación y producción de textos literarios.'),(13,'Licenciatura en Comunicación Social','Forma profesionales capaces de comunicar de manera efectiva en diversos contextos.'),(14,'Periodismo','Prepara periodistas con las competencias necesarias para investigar, redactar y difundir información de manera veraz y objetiva.'),(15,'Publicidad y Marketing','Forma profesionales expertos en la creación y gestión de estrategias de marketing para promocionar productos y servicios.'),(16,'Diseño Gráfico','Desarrolla profesionales creativos con habilidades para diseñar y comunicar ideas a través de imágenes y elementos visuales.'),(17,'Gastronomía','Forma profesionales con las competencias necesarias para preparar y servir alimentos de alta calidad.'),(18,'Turismo','Prepara profesionales expertos en la gestión de servicios turísticos y la atención al cliente.'),(19,'Hotelería','Forma profesionales con las habilidades necesarias para administrar y operar hoteles y establecimientos de hospedaje.');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `Id_docente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Mariana','Lopez'),(2,'Alejandro','Diaz'),(3,'Patricia','Fernandez'),(4,'Carlos','Gonzalez'),(5,'Sofia','Martinez'),(6,'Roberto','Perez'),(7,'Laura','Blanco'),(8,'David','Romero'),(9,'Sandra','Torres'),(10,'Miguel','Suarez'),(11,'Natalia','Garcia'),(12,'Enrique','Alvarez'),(13,'Maria','Moreno'),(14,'Daniel','Sanchez'),(15,'Claudia','Ruiz'),(16,'Pablo','Navarro'),(17,'Veronica','Jimenez'),(18,'Sebastian','Muñoz'),(19,'Araceli','Hernandez'),(20,'Esteban','Olivares');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `Id_inscripciones` int NOT NULL AUTO_INCREMENT,
  `Id_alumno` int NOT NULL,
  `Id_examen` int NOT NULL,
  PRIMARY KEY (`Id_inscripciones`),
  KEY `Id_alumno` (`Id_alumno`),
  KEY `Id_examen` (`Id_examen`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`Id_alumno`) REFERENCES `alumnos` (`Id_alumno`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`Id_examen`) REFERENCES `mesasexamen` (`Id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,3),(5,3,1),(6,3,4),(7,4,3),(8,4,4),(9,4,5),(10,4,6),(11,5,5),(12,5,6),(13,1,6),(14,3,8),(15,7,9),(16,2,11),(17,9,12),(18,6,14),(19,8,15),(20,10,17),(21,12,19),(22,11,10),(23,14,16),(24,13,18),(25,15,20),(26,15,19),(27,17,7),(28,16,12),(29,16,13);
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `inscripcionesinfo`
--

DROP TABLE IF EXISTS `inscripcionesinfo`;
/*!50001 DROP VIEW IF EXISTS `inscripcionesinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inscripcionesinfo` AS SELECT 
 1 AS `Id_inscripciones`,
 1 AS `Nombre_Alumno`,
 1 AS `Apellido_Alumno`,
 1 AS `Fecha_Examen`,
 1 AS `Nota`,
 1 AS `Comentarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_alumnos`
--

DROP TABLE IF EXISTS `log_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_alumnos` (
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `acciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_alumnos`
--

LOCK TABLES `log_alumnos` WRITE;
/*!40000 ALTER TABLE `log_alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `Id_materias` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Id_plan` int NOT NULL,
  `Id_docente` int NOT NULL,
  PRIMARY KEY (`Id_materias`),
  KEY `Id_plan` (`Id_plan`),
  KEY `Id_docente` (`Id_docente`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`Id_plan`) REFERENCES `planes` (`Id_plan`),
  CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`Id_docente`) REFERENCES `docente` (`Id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Programación I',1,1),(2,'Fundamentos de Computación',1,2),(3,'Base de Datos I',1,3),(4,'Introducción a la Inteligencia Artificial',2,1),(5,'Aprendizaje Automático',2,4),(6,'Computación en la Nube',3,2),(7,'Arquitectura de Software',4,3),(8,'Pruebas de Software',4,5),(9,'Desarrollo Web Front-end I',5,6),(10,'Desarrollo Web Back-end I',5,7),(11,'Administración de Empresas I',6,8),(12,'Marketing',6,9),(13,'Finanzas para Empresas',6,10),(14,'Contabilidad General',7,11),(15,'Costos y Presupuestos',7,12),(16,'Derecho Civil I',8,13),(17,'Derecho Penal I',8,14),(18,'Psicología General',9,15),(19,'Psicología del Aprendizaje',9,16),(20,'Evaluación Psicológica',10,15);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `materias_con_docentes`
--

DROP TABLE IF EXISTS `materias_con_docentes`;
/*!50001 DROP VIEW IF EXISTS `materias_con_docentes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `materias_con_docentes` AS SELECT 
 1 AS `Id_materias`,
 1 AS `Nombre_Materia`,
 1 AS `Nombre_Docente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mesas_examenes_docentes`
--

DROP TABLE IF EXISTS `mesas_examenes_docentes`;
/*!50001 DROP VIEW IF EXISTS `mesas_examenes_docentes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mesas_examenes_docentes` AS SELECT 
 1 AS `Id_examen`,
 1 AS `Fecha_Examen`,
 1 AS `Nombre_Materia`,
 1 AS `Nombre_Docente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mesasexamen`
--

DROP TABLE IF EXISTS `mesasexamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesasexamen` (
  `Id_examen` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `Id_materias` int NOT NULL,
  PRIMARY KEY (`Id_examen`),
  KEY `Id_materias` (`Id_materias`),
  CONSTRAINT `mesasexamen_ibfk_1` FOREIGN KEY (`Id_materias`) REFERENCES `materias` (`Id_materias`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesasexamen`
--

LOCK TABLES `mesasexamen` WRITE;
/*!40000 ALTER TABLE `mesasexamen` DISABLE KEYS */;
INSERT INTO `mesasexamen` VALUES (1,'2024-06-10 10:00:00',1),(2,'2024-06-12 15:00:00',2),(3,'2024-06-14 09:00:00',3),(4,'2024-06-17 11:00:00',4),(5,'2024-06-19 14:00:00',5),(6,'2024-06-21 10:00:00',6),(7,'2024-06-24 15:00:00',7),(8,'2024-06-26 09:00:00',8),(9,'2024-06-28 11:00:00',9),(10,'2024-07-01 14:00:00',10),(11,'2024-07-03 10:00:00',11),(12,'2024-07-05 15:00:00',12),(13,'2024-07-08 09:00:00',13),(14,'2024-07-10 11:00:00',14),(15,'2024-07-12 14:00:00',15),(16,'2024-07-15 10:00:00',16),(17,'2024-07-17 15:00:00',17),(18,'2024-07-19 09:00:00',18),(19,'2024-07-22 11:00:00',19),(20,'2024-07-24 14:00:00',20);
/*!40000 ALTER TABLE `mesasexamen` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `evitar_borrar_examen_con_inscriptos` BEFORE DELETE ON `mesasexamen` FOR EACH ROW BEGIN
    DECLARE cant_inscriptos INT;
  
    SELECT COUNT(*) INTO cant_inscriptos
    FROM Inscripciones
    WHERE Id_examen = OLD.Id_examen;
  
    IF cant_inscriptos > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar la mesa de examen. Hay alumnos inscriptos.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `Id_nota` int NOT NULL AUTO_INCREMENT,
  `Id_inscripcion` int NOT NULL,
  `Nota` decimal(3,1) NOT NULL,
  `Comentarios` text,
  `Fecha_nota` datetime NOT NULL,
  PRIMARY KEY (`Id_nota`),
  KEY `Id_inscripcion` (`Id_inscripcion`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`Id_inscripcion`) REFERENCES `inscripciones` (`Id_inscripciones`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,8.5,'Excelente desempeño en el examen.','2024-06-12 15:00:00'),(2,2,7.2,'Buen desempeño, con algunas áreas de mejora.','2024-06-14 11:00:00'),(3,3,9.0,'Sobresaliente dominio de los conceptos.','2024-06-16 13:00:00'),(4,4,6.8,'Aprobaría con mayor estudio y dedicación.','2024-06-19 16:00:00'),(5,5,10.0,'Excelente trabajo, superando las expectativas.','2024-06-21 12:00:00'),(6,6,8.0,'Buen desempeño, con potencial para mejorar.','2024-06-26 16:00:00'),(7,3,7.5,'Se observa progreso en comparación con exámenes anteriores.','2024-06-28 10:00:00'),(8,7,9.2,'Excelente comprensión de los temas evaluados.','2024-07-03 14:00:00'),(9,2,8.8,'Demuestra un alto nivel de conocimiento.','2024-07-05 11:00:00'),(10,9,4.5,'Necesita mayor dedicación al estudio.','2024-07-10 15:00:00'),(11,6,9.5,'Sobresaliente desempeño, demostrando dominio del tema.','2024-07-12 10:00:00'),(12,8,7.0,'Aprobó el examen, pero con margen de mejora.','2024-07-17 16:00:00'),(13,10,8.2,'Buen desempeño, con una base sólida de conocimientos.','2024-07-19 13:00:00'),(14,12,5.3,'Necesita reforzar algunos conceptos.','2024-07-22 11:00:00'),(15,11,9.8,'Excelente desempeño, destacándose en el examen.','2024-07-24 15:00:00'),(16,14,7.6,'Aprobó el examen, pero se recomienda seguir estudiando.','2024-07-26 10:00:00'),(17,13,8.9,'Buen desempeño, con habilidades para resolver problemas.','2024-07-28 14:00:00'),(18,14,8.1,'Buen desempeño, con habilidades para el análisis de datos.','2024-07-24 15:00:00'),(19,15,9.1,'Excelente trabajo, demostrando gran habilidad analítica.','2024-07-31 11:00:00'),(20,16,7.4,'Buen desempeño, con potencial para destacar en el futuro.','2024-07-31 15:00:00'),(21,17,5.9,'Necesita mayor dedicación al estudio, pero tiene potencial.','2024-08-03 10:00:00'),(22,18,8.6,'Excelente comprensión de los conceptos evaluados.','2024-08-03 14:00:00'),(23,19,9.7,'Sobresaliente desempeño, superando las expectativas.','2024-08-05 11:00:00'),(24,20,7.8,'Buen desempeño, con áreas de mejora en la resolución de problemas.','2024-08-05 15:00:00');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `Id_plan` int NOT NULL AUTO_INCREMENT,
  `Id_carrera` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_plan`),
  KEY `Id_carrera` (`Id_carrera`),
  CONSTRAINT `planes_ibfk_1` FOREIGN KEY (`Id_carrera`) REFERENCES `carreras` (`Id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,1,'Plan Tradicional','Formación integral en ciencias de la computación con énfasis en programación, análisis y desarrollo de software.'),(2,1,'Plan de Especialización en Inteligencia Artificial','Enfoque en el desarrollo de sistemas inteligentes y aplicaciones de machine learning.'),(3,1,'Plan de Computación en la Nube','Especialización en el uso de tecnologías de computación en la nube para el desarrollo y despliegue de aplicaciones.'),(4,2,'Plan de Ingeniería de Software','Énfasis en el diseño, implementación y mantenimiento de software de alta calidad.'),(5,2,'Plan de Desarrollo de Sistemas Móviles','Formación en el desarrollo de aplicaciones para dispositivos móviles con iOS y Android.'),(6,2,'Plan de Redes y Seguridad Informática','Enfoque en el diseño, implementación y administración de redes informáticas seguras.'),(7,3,'Plan de Desarrollo Web Front-end','Formación en tecnologías front-end para la creación de interfaces web dinámicas e interactivas.'),(8,3,'Plan de Desarrollo Web Back-end','Enfoque en el desarrollo de aplicaciones web del lado del servidor y bases de datos.'),(9,3,'Plan de Diseño Gráfico Web','Especialización en el diseño de interfaces web y experiencias de usuario (UX).'),(10,4,'Plan de Administración General','Formación integral en gestión empresarial con énfasis en liderazgo, finanzas y marketing.'),(11,4,'Plan de Gestión de Proyectos','Enfoque en la planificación, ejecución y control de proyectos empresariales.'),(12,4,'Plan de Administración de Empresas Internacionales','Especialización en comercio exterior, negocios internacionales y gestión multicultural.'),(13,5,'Plan de Contabilidad Financiera','Formación en contabilidad financiera, estados financieros y análisis financiero.'),(14,5,'Plan de Contabilidad de Costos','Enfoque en la contabilidad de costos, presupuestos y control de gastos.'),(15,5,'Plan de Auditoría y Contabilidad Gubernamental','Especialización en auditoría, control interno y contabilidad pública.'),(16,6,'Plan de Derecho Civil','Formación en el derecho civil, contratos, obligaciones y propiedad.'),(17,6,'Plan de Derecho Penal','Enfoque en el derecho penal, delitos, penas y procedimientos penales.'),(18,6,'Plan de Derecho Constitucional','Especialización en derecho constitucional, derechos fundamentales y organización del Estado.'),(19,7,'Plan de Psicología Clínica','Formación en evaluación, diagnóstico y tratamiento de problemas psicológicos.'),(20,7,'Plan de Psicología Educativa','Enfoque en la psicología del aprendizaje, desarrollo humano y educación.');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `planesmaterias`
--

DROP TABLE IF EXISTS `planesmaterias`;
/*!50001 DROP VIEW IF EXISTS `planesmaterias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `planesmaterias` AS SELECT 
 1 AS `Nombre_Plan`,
 1 AS `Total_Materias`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gestioninscripcion'
--

--
-- Dumping routines for database 'gestioninscripcion'
--
/*!50003 DROP FUNCTION IF EXISTS `alumno_inscripto_materia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `alumno_inscripto_materia`(alumno_id INT, materia_id INT) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE inscripto BOOLEAN;
  DECLARE respuesta VARCHAR(50);
  SELECT COUNT(*) INTO inscripto
  FROM Inscripciones
  WHERE TRUE 
	AND Id_alumno = alumno_id
	AND Id_examen IN (
		SELECT 
			Id_examen 
        FROM MesasExamen 
        WHERE Id_materias = materia_id
    );
  
	IF inscripto > 0 THEN 
			SET respuesta = "Esta inscripto";
	ELSE 
		SET respuesta = "No esta inscripto";
	END IF;
  
  RETURN respuesta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `cantidad_inscriptos_examen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_inscriptos_examen`(examen_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE cantidad_inscriptos INT;
  
  SELECT COUNT(*) INTO cantidad_inscriptos
  FROM Inscripciones
  WHERE Id_examen = examen_id;
  
  RETURN cantidad_inscriptos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `EvaluarInscripcionAprobada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `EvaluarInscripcionAprobada`(Id_inscripcion INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE notaF FLOAT;
    DECLARE mensaje VARCHAR(100);

    
    SELECT 
		n.Nota 
	INTO 
		notaF 
    FROM gestioninscripcion.notas AS n 
    WHERE n.Id_inscripcion = Id_inscripcion;

    
    IF notaF >= 6.0 THEN
        SET mensaje = CONCAT('Aprobado - Nota: ', notaF);
    ELSE
        SET mensaje = CONCAT('No Aprobado - Nota: ', notaF);
    END IF;

    RETURN mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_alumno_examenes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_alumno_examenes`(IN alumno_id INT)
BEGIN
	SELECT
		CONCAT(A.Nombre, ' ', A.Apellido) AS Nombre_Completo,
		COUNT(DISTINCT I.Id_examen) AS Cantidad_Examenes
	FROM Alumnos AS A
JOIN Inscripciones AS I 
	ON A.Id_alumno = I.Id_alumno
WHERE TRUE 
	AND A.Id_alumno = alumno_id
GROUP BY A.Id_alumno;  

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `orden_examenes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `orden_examenes`()
BEGIN
  SELECT
    ME.fecha AS Fecha_Examen
,	COUNT(I.Id_alumno) AS Cantidad_Inscriptos
FROM MesasExamen AS ME
LEFT JOIN Inscripciones AS I  
	ON ME.Id_examen = I.Id_examen
GROUP BY ME.Id_examen
ORDER BY ME.fecha ASC; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `alumnos_inscritos`
--

/*!50001 DROP VIEW IF EXISTS `alumnos_inscritos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnos_inscritos` AS select `a`.`Id_alumno` AS `Id_alumno`,`a`.`Nombre` AS `Nombre_Alumno`,`a`.`Apellido` AS `Apellido_Alumno`,`m`.`Id_examen` AS `Id_examen`,`m`.`fecha` AS `Fecha_Examen` from ((`alumnos` `a` join `inscripciones` `i` on((`a`.`Id_alumno` = `i`.`Id_alumno`))) join `mesasexamen` `m` on((`i`.`Id_examen` = `m`.`Id_examen`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inscripcionesinfo`
--

/*!50001 DROP VIEW IF EXISTS `inscripcionesinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inscripcionesinfo` AS select `i`.`Id_inscripciones` AS `Id_inscripciones`,`a`.`Nombre` AS `Nombre_Alumno`,`a`.`Apellido` AS `Apellido_Alumno`,`e`.`fecha` AS `Fecha_Examen`,`n`.`Nota` AS `Nota`,`n`.`Comentarios` AS `Comentarios` from (((`inscripciones` `i` join `alumnos` `a` on((`i`.`Id_alumno` = `a`.`Id_alumno`))) join `mesasexamen` `e` on((`i`.`Id_examen` = `e`.`Id_examen`))) left join `notas` `n` on((`i`.`Id_inscripciones` = `n`.`Id_inscripcion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `materias_con_docentes`
--

/*!50001 DROP VIEW IF EXISTS `materias_con_docentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `materias_con_docentes` AS select `m`.`Id_materias` AS `Id_materias`,`m`.`Nombre` AS `Nombre_Materia`,concat(`d`.`Nombre`,' ',`d`.`Apellido`) AS `Nombre_Docente` from (`materias` `m` join `docente` `d` on((`m`.`Id_docente` = `d`.`Id_docente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mesas_examenes_docentes`
--

/*!50001 DROP VIEW IF EXISTS `mesas_examenes_docentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mesas_examenes_docentes` AS select `me`.`Id_examen` AS `Id_examen`,`me`.`fecha` AS `Fecha_Examen`,`m`.`Nombre` AS `Nombre_Materia`,concat(`d`.`Nombre`,' ',`d`.`Apellido`) AS `Nombre_Docente` from ((`mesasexamen` `me` join `materias` `m` on((`me`.`Id_materias` = `m`.`Id_materias`))) join `docente` `d` on((`m`.`Id_docente` = `d`.`Id_docente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `planesmaterias`
--

/*!50001 DROP VIEW IF EXISTS `planesmaterias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `planesmaterias` AS select `p`.`Nombre` AS `Nombre_Plan`,count(`m`.`Id_materias`) AS `Total_Materias` from (`planes` `p` left join `materias` `m` on((`p`.`Id_plan` = `m`.`Id_plan`))) group by `p`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 12:41:44
