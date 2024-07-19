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
-- Table structure for table `guarderias`
--

DROP TABLE IF EXISTS `guarderias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarderias` (
  `ID` int NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarderias`
--

LOCK TABLES `guarderias` WRITE;
/*!40000 ALTER TABLE `guarderias` DISABLE KEYS */;
INSERT INTO `guarderias` VALUES (1,'La favorita','Calle 123,#456,Barrio ABC','+57 1 2345678'),(2,'Jardín Infantil ArcoIris','Avenida Principal,Manzana 10,Lote 12','+57 1 87654321'),(3,'Ludoteca Los Aventureros','Carrera 7,Transversal 34,Edificio El Sol','+57 1 98765432'),(4,'Guardería Happy Feet','Diagonal 19,Conjunto Residencial Los Robles','+57 1 12345678'),(5,'Jardín Infantil El Girasol','Calle 10,#200,Urbanización Las Flores','+57 1 23456789'),(6,'Ludoteca Creciendo Juntos','Avenida 20,Edificio La Paz,Piso 5','+57 1 34567890'),(7,'Guardería Sonrisas del Sol','Calle 5,#150,Barrio Primavera','+57 1 45678901'),(8,'Jardín Infantil Alegría Infantil','Avenida Principal,Centro Comercial Los Sauces','+57 1 56789012'),(9,'Ludoteca Los Exploradores','Carrera 15,Urbanización El Bosque','+57 1 67890123'),(10,'Guardería Happy Days','Diagonal 25,Conjunto Residencial Los Almendros','+57 1 78901234'),(11,'Jardín Infantil El Trébol','Calle 20,#300,Urbanización La Pradera','+57 1 89012345'),(12,'Ludoteca Creciendo con Amor','Avenida 30,Edificio El Paraíso','+57 1 90123456'),(13,'Guardería Sonrisas y Sueños','Calle 15,#100,Barrio La Esperanza','+57 1 10123457'),(14,'Jardín Infantil Arcoíris de Colores','Avenida Principal,Centro Comercial Las Brisas','+57 1 20123458'),(15,'Ludoteca Los Pequeños Genios','Carrera 20,Urbanización El Mirador','+57 1 30123459'),(16,'Guardería Happy Stars','Diagonal 35,Conjunto Residencial Los Girasoles','+57 1 40123460'),(17,'Jardín Infantil El Sol Naciente','Calle 25,#400,Urbanización La Colina','+57 1 50123461'),(18,'Ludoteca Creciendo en Familia','Avenida 40,Edificio La Alegría','+57 1 60123462'),(19,'Guardería Sonrisas de Esperanza','Calle 30,#250,Barrio La Unión','+57 1 70123463'),(20,'Jardín Infantil Sueños Mágicos','Avenida Principal,Centro Comercial Los Jardines','+57 1 80123464');
/*!40000 ALTER TABLE `guarderias` ENABLE KEYS */;
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
