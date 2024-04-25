CREATE DATABASE  IF NOT EXISTS `gestioninscripcion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestioninscripcion`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gestioninscripcion
-- ------------------------------------------------------
-- Server version	8.0.36

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
  PRIMARY KEY (`Id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Juan','Perez','juan@example.com','123456789'),(2,'María','González','maria@example.com','987654321'),(3,'Pedro','Ramírez','pedro@example.com','555123456'),(4,'Laura','López','laura@example.com','555987654'),(5,'Luis','García','luis@example.com','555456789'),(6,'Ana','Martínez','ana@example.com','111222333'),(7,'José','Rodríguez','jose@example.com','444555666'),(8,'Carolina','Sánchez','carolina@example.com','777888999'),(9,'Diego','Martín','diego@example.com','1011121314'),(10,'Sofía','Hernández','sofia@example.com','1516171819'),(11,'Martín','López','martin@example.com','2021222324'),(12,'Lucía','Gómez','lucia@example.com','2526272829');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Carlos','López'),(2,'Ana','Martínez'),(3,'Elena','Martínez'),(4,'Miguel','Gómez'),(5,'Sara','Hernández'),(6,'Luis','Gómez'),(7,'María','López'),(8,'Alejandro','Hernández'),(9,'Laura','Martínez'),(10,'Pedro','García');
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
  `Id_alumno` int DEFAULT NULL,
  `Id_examen` int DEFAULT NULL,
  PRIMARY KEY (`Id_inscripciones`),
  KEY `Id_alumno` (`Id_alumno`),
  KEY `Id_examen` (`Id_examen`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`Id_alumno`) REFERENCES `alumnos` (`Id_alumno`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`Id_examen`) REFERENCES `mesasexamen` (`Id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,1,1),(2,2,2),(3,3,1),(4,1,3),(5,2,2),(6,4,1),(7,5,2),(8,3,4),(9,4,3),(10,5,5),(11,1,2),(12,2,1),(13,3,5),(14,4,2);
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Id_docente` int DEFAULT NULL,
  PRIMARY KEY (`Id_materias`),
  KEY `Id_docente` (`Id_docente`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`Id_docente`) REFERENCES `docente` (`Id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas',1),(2,'Historia',2),(3,'Biología',3),(4,'Geografía',2),(5,'Física',1),(6,'Química',4),(7,'Literatura',5),(8,'Arte',3),(9,'Economía',1),(10,'Informática',2);
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
  `fecha` datetime DEFAULT NULL,
  `Id_materias` int DEFAULT NULL,
  PRIMARY KEY (`Id_examen`),
  KEY `Id_materias` (`Id_materias`),
  CONSTRAINT `mesasexamen_ibfk_1` FOREIGN KEY (`Id_materias`) REFERENCES `materias` (`Id_materias`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesasexamen`
--

LOCK TABLES `mesasexamen` WRITE;
/*!40000 ALTER TABLE `mesasexamen` DISABLE KEYS */;
INSERT INTO `mesasexamen` VALUES (1,'2024-03-10 09:00:00',1),(2,'2024-03-12 10:00:00',2),(3,'2024-03-15 09:00:00',3),(4,'2024-03-20 10:00:00',1),(5,'2024-03-25 11:00:00',2),(6,'2024-04-05 14:00:00',4),(7,'2024-04-08 09:00:00',5),(8,'2024-04-10 10:00:00',2),(9,'2024-04-15 11:00:00',3),(10,'2024-04-20 09:00:00',1);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 18:35:45
