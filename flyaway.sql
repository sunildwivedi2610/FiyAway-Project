-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: flyaway
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
-- Table structure for table `flights_list`
--

DROP TABLE IF EXISTS `flights_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights_list` (
  `flight_id` varchar(30) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `source` varchar(35) DEFAULT NULL,
  `destination` varchar(35) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `ticket_price` varchar(25) DEFAULT NULL,
  `creation_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights_list`
--

LOCK TABLES `flights_list` WRITE;
/*!40000 ALTER TABLE `flights_list` DISABLE KEYS */;
INSERT INTO `flights_list` VALUES ('1','FlyAway-1F 7984','Bengaluru','New Delhi','Monday','7990',NULL),('2','FlyAway-2F 7983','New Delhi','Bengaluru','Monday','7990',NULL),('3','FlyAway-3F 6825','New Delhi','Bhopal','Tuesday','6850',NULL),('4','FlyAway-4F 6824','Bhopal','New Delhi','Wednesday','6850',NULL),('5','FlyAway-5F 5683','Bhopal','Bengaluru','Friday','5628',NULL),('6','FlyAway-6F 5684','Bengluru','Bhopal','Sunday','5628',NULL);
/*!40000 ALTER TABLE `flights_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-11 15:34:03
