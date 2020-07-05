-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: ctsprojectdb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Flight_Brand` varchar(255) DEFAULT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `DOJ` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Seats` int(11) DEFAULT NULL,
  `Flight_Number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'Indigo','Chennai','Kolkata','01/07/2020',4500,80,'6E 747'),(2,'Indigo','Chennai','Kolkata','02/07/2020',4500,60,'6E 823'),(3,'Indigo','Chennai','Kolkata','02/07/2020',5000,150,'6E 545'),(4,'Indigo','Kolkata','Chennai','02/07/2020',5000,150,'6E 545'),(5,'Indigo','Kolkata','Mumbai','02/07/2020',8000,90,'6E 323'),(6,'SpiceJet','Kolkata','Mumbai','02/07/2020',6000,90,'SG 444'),(7,'SpiceJet','Delhi','Kolkata','03/07/2020',6000,90,'SG 378'),(8,'SpiceJet','Delhi','Kolkata','03/07/2020',5800,90,'SG 377'),(9,'SpiceJet','Delhi','Mumbai','04/07/2020',6300,100,'SG 678'),(10,'Air India','Delhi','Mumbai','05/07/2020',8000,100,'AI 689'),(11,'Air India','Delhi','Rajastha','06/07/2020',7000,70,'AI 555');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-05 20:41:25
