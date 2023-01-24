-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: docdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `doctorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctorId` (`doctorId`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'Square','23','squaregmail.com','1234567890','Shapes','Check-up','2023-01-17','08:30:00','2022-12-27 10:13:05','2022-12-27 10:13:05',1),(2,'Circle','35','circle@gmail.com','9876543213','qwerty','Checkup','2022-12-31','17:30:00','2022-12-28 07:43:24','2022-12-28 07:43:24',1),(3,'Example','33','example@gmail.com','9876543216','Example Address','Some reason','2022-12-29','13:30:00','2022-12-28 08:06:52','2022-12-28 08:06:52',5),(4,'Demo Appointment','40','demo@gmail.com','9876543218','Bangalore','Consulting','2023-01-09','10:30:00','2023-01-02 04:52:21','2023-01-02 04:52:21',4),(5,'Demo Appointment','35','demoapp@gmail.com','9876543218','Bangalore','Check-up','2023-01-10','14:30:00','2023-01-02 05:02:37','2023-01-02 05:02:37',5);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `spl` varchar(255) NOT NULL,
  `exp` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr.Red','Ortho','2','9876543210','red@gmail.com','$2b$10$5G8AyV/mzCtOibN4NVetk./aoWa8ELkey3XIglFEDbiV8qwQ0ap/y','2022-12-27 10:12:27','2022-12-27 10:12:27'),(2,'Dr.Blue','General','4','9876543211','blue@gmail.com','$2b$10$BDGFZT6B7Mfx9vW/wZoPOOOo2vQGW/Kt7JPm8FSoN726fxNTO8ZHu','2022-12-27 10:12:50','2022-12-27 10:12:50'),(4,'Dr.Green','Pediatrics','1','9876543212','green@gmail.com','$2b$10$hwcFwQQZyeOiexGy1sluYe/cWig9FmsaJx8O1FmA0lt54q0hof4zO','2022-12-28 05:56:30','2022-12-28 05:56:30'),(5,'Dr.Yellow','General','5','9876543215','yellow@gmail.com','$2b$10$Ahx4Idg7dxhBWAyL3zIrjuMb8fBJ7flV.Sk1m.3UqdR2IMKlogZK2','2022-12-28 07:48:21','2022-12-28 07:48:21'),(6,'Dr.Orange','Cardiology','4','9876543218','orange@gmail.com','$2b$10$eIDwjdjZ7KeRpClF3mPyNOCTuVQ0FsRJwI6XZ5Vn6JPALp7qc5GGG','2022-12-28 08:13:48','2022-12-28 08:13:48'),(7,'Dr.Indigo','Pediatrics','5','9876543215','indigo@gmail.com','$2b$10$LpwOp3zyzlOYWOgMIrGFHebD9SPSmD9wa6glW93AA0/6H6Klqu.mC','2023-01-02 04:56:10','2023-01-02 04:56:10');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Pat Red','40','9876543212','patred@gmail.com','$2b$10$Ma4rnWYJRL5VXgvU/fNJc.cOT7.Uf667BJg9MArRcbsXxQ.uxa1WK','2023-01-02 06:41:14','2023-01-02 06:41:14'),(2,'Demo Patient','40','9876543213','demopat@gmail.com','$2b$10$69Kn7tODwjpj7X6SLlozH.c3/0/WE9kCcN8fRO6CFTq.0AxtwbL56','2023-01-02 06:57:30','2023-01-02 06:57:30');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 13:19:00
