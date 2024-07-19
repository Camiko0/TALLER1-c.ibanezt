-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tablas
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `perros`
--

DROP TABLE IF EXISTS `perros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perros` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `RAZA` varchar(255) DEFAULT NULL,
  `EDAD` int DEFAULT NULL,
  `PESO` decimal(10,2) DEFAULT NULL,
  `IDPERRO_GUARDERIA` int NOT NULL,
  `IDPERRO_CUIDADOR` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_GUARDERIA_idx` (`IDPERRO_GUARDERIA`),
  KEY `ID_CUIDADOR_idx` (`IDPERRO_CUIDADOR`),
  CONSTRAINT `ID_CUIDADOR` FOREIGN KEY (`IDPERRO_CUIDADOR`) REFERENCES `cuidadores` (`ID`),
  CONSTRAINT `ID_GUARDERIA` FOREIGN KEY (`IDPERRO_GUARDERIA`) REFERENCES `guarderias` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perros`
--

LOCK TABLES `perros` WRITE;
/*!40000 ALTER TABLE `perros` DISABLE KEYS */;
INSERT INTO `perros` VALUES (1,'Toby','Labrador Retriever',2,25.50,15,12),(2,'Luna','Pastor Alemán',1,32.00,10,8),(3,'Max','Golden Retriever',3,27.00,5,14),(4,'Bella','Beagle',4,18.50,12,6),(5,'Rocky','Bulldog Francés',5,15.00,8,19),(6,'Buddy','Yorkshire Terrier',1,5.50,17,3),(7,'Charlie','Caniche',2,9.00,4,16),(8,'Molly','Doberman Pinscher',3,35.00,19,11),(9,'Jack','Boxer',4,28.00,15,2),(10,'Bailey','Schnauzer Miniatura',5,12.00,1,18),(11,'Daisy','Rottweiler',2,45.00,10,15),(12,'Duke','Dálmata',3,22.00,12,9),(13,'Maggie','Chihuahua',1,2.50,6,21),(14,'Chloe','Pug',2,2.00,19,21),(15,'Cooper','Poodle',3,15.00,8,13),(16,'Buddy','Bulldog Inglés',4,24.00,17,5),(17,'Lucy','Husky Siberiano',5,30.00,1,10),(18,'Lady','Shih Tzu',1,4.00,12,14),(19,'Bear','Pastor Australiano',2,22.00,4,2),(20,'Lola','Corgi',3,11.00,15,1),(21,'Sadie','Basset Hound',4,25.00,6,9),(22,'Maggie','Galgo',5,27.00,19,11),(23,'Max','Labrador Retriever',1,30.00,10,15),(24,'Charlie','Pastor Alemán',2,28.00,12,6),(25,'Cooper','Golden Retriever',3,25.00,8,19),(26,'Buddy','Beagle',4,18.00,17,13),(27,'Lucy','Bulldog Francés',5,15.50,1,5),(28,'Lady','Yorkshire Terrier',1,6.00,12,10),(29,'Bear','Caniche',2,9.50,4,14),(30,'Lola','Doberman Pinscher',3,36.00,15,2),(31,'Sadie','Boxer',4,29.00,6,16),(32,'Maggie','Schnauzer Miniatura',5,12.50,19,9),(33,'Max','Rottweiler',2,46.00,10,11),(34,'Charlie','Dálmata',3,23.00,12,7),(35,'Cooper','Chihuahua',1,2.00,8,21),(36,'Buddy','Pug',2,2.50,17,21),(37,'Lucy','Poodle',3,16.00,1,5),(38,'Lady','Bulldog Inglés',4,25.50,12,10),(39,'Lassie','Husky Siberiano',5,31.00,4,14),(40,'Lola','Shih Tzu',1,4.50,15,2),(41,'Lassie','Pug',2,2.80,12,21);
/*!40000 ALTER TABLE `perros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-18 19:30:55
