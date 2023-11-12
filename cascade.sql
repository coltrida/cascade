-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: cascade
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `album_sales`
--

DROP TABLE IF EXISTS `album_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_sales`
--

LOCK TABLES `album_sales` WRITE;
/*!40000 ALTER TABLE `album_sales` DISABLE KEYS */;
INSERT INTO `album_sales` VALUES (1,3,2,NULL,'2023-11-11 20:04:32'),(2,2,2,NULL,'2023-11-11 20:04:32'),(3,4,2,NULL,'2023-11-11 20:04:32'),(4,5,2,NULL,'2023-11-11 20:04:32'),(5,6,2,NULL,'2023-11-11 20:04:32'),(6,2,6,NULL,'2023-11-11 20:04:32'),(7,1,6,NULL,'2023-11-11 20:04:32'),(8,4,6,NULL,'2023-11-11 20:04:32'),(9,5,6,NULL,'2023-11-11 20:04:32'),(10,6,6,NULL,'2023-11-11 20:04:32'),(11,2,8,NULL,'2023-11-11 20:04:32'),(12,3,8,NULL,'2023-11-11 20:04:32'),(13,4,8,NULL,'2023-11-11 20:04:32'),(14,5,8,NULL,'2023-11-11 20:04:32'),(15,6,8,NULL,'2023-11-11 20:04:32'),(16,3,10,NULL,'2023-11-11 20:04:32'),(17,2,10,NULL,'2023-11-11 20:04:32'),(18,4,10,NULL,'2023-11-11 20:04:32'),(19,5,10,NULL,'2023-11-11 20:04:32'),(20,6,10,NULL,'2023-11-11 20:04:32'),(21,1,11,NULL,'2023-11-11 20:04:32'),(22,3,11,NULL,'2023-11-11 20:04:32'),(23,2,11,NULL,'2023-11-11 20:04:32'),(24,4,11,NULL,'2023-11-11 20:04:32'),(25,5,11,NULL,'2023-11-11 20:04:32'),(26,6,11,NULL,'2023-11-11 20:04:32'),(27,1,16,NULL,'2023-11-11 20:04:32'),(28,2,16,NULL,'2023-11-11 20:04:32'),(29,4,16,NULL,'2023-11-11 20:04:32'),(30,5,16,NULL,'2023-11-11 20:04:32'),(31,6,16,NULL,'2023-11-11 20:04:32'),(32,2,19,NULL,'2023-11-11 20:04:32'),(33,1,19,NULL,'2023-11-11 20:04:32'),(34,3,19,NULL,'2023-11-11 20:04:32'),(35,4,19,NULL,'2023-11-11 20:04:32'),(36,5,19,NULL,'2023-11-11 20:04:32'),(37,6,19,NULL,'2023-11-11 20:04:32'),(38,2,21,NULL,'2023-11-11 20:04:32'),(39,3,21,NULL,'2023-11-11 20:04:32'),(40,1,21,NULL,'2023-11-11 20:04:32'),(41,4,21,NULL,'2023-11-11 20:04:32'),(42,5,21,NULL,'2023-11-11 20:04:32'),(43,6,21,NULL,'2023-11-11 20:04:32'),(44,1,22,NULL,'2023-11-11 20:04:32'),(45,4,22,NULL,'2023-11-11 20:04:32'),(46,5,22,NULL,'2023-11-11 20:04:32'),(47,6,22,NULL,'2023-11-11 20:04:32'),(48,1,24,NULL,'2023-11-11 20:04:32'),(49,2,24,NULL,'2023-11-11 20:04:32'),(50,4,24,NULL,'2023-11-11 20:04:32'),(51,5,24,NULL,'2023-11-11 20:04:32'),(52,6,24,NULL,'2023-11-11 20:04:32'),(53,2,28,NULL,'2023-11-11 20:04:32'),(54,1,28,NULL,'2023-11-11 20:04:32'),(55,4,28,NULL,'2023-11-11 20:04:32'),(56,5,28,NULL,'2023-11-11 20:04:32'),(57,6,28,NULL,'2023-11-11 20:04:32'),(58,3,30,NULL,'2023-11-11 20:04:32'),(59,1,30,NULL,'2023-11-11 20:04:32'),(60,4,30,NULL,'2023-11-11 20:04:32'),(61,5,30,NULL,'2023-11-11 20:04:32'),(62,6,30,NULL,'2023-11-11 20:04:32'),(63,2,32,NULL,'2023-11-11 20:04:32'),(64,3,32,NULL,'2023-11-11 20:04:32'),(65,4,32,NULL,'2023-11-11 20:04:32'),(66,5,32,NULL,'2023-11-11 20:04:32'),(67,6,32,NULL,'2023-11-11 20:04:32'),(68,2,33,NULL,'2023-11-11 20:04:32'),(69,3,33,NULL,'2023-11-11 20:04:32'),(70,1,33,NULL,'2023-11-11 20:04:32'),(71,4,33,NULL,'2023-11-11 20:04:32'),(72,5,33,NULL,'2023-11-11 20:04:32'),(73,6,33,NULL,'2023-11-11 20:04:32'),(74,2,34,NULL,'2023-11-11 20:04:32'),(75,4,34,NULL,'2023-11-11 20:04:32'),(76,5,34,NULL,'2023-11-11 20:04:32'),(77,6,34,NULL,'2023-11-11 20:04:32'),(78,2,35,NULL,'2023-11-11 20:04:32'),(79,1,35,NULL,'2023-11-11 20:04:32'),(80,3,35,NULL,'2023-11-11 20:04:32'),(81,4,35,NULL,'2023-11-11 20:04:32'),(82,5,35,NULL,'2023-11-11 20:04:32'),(83,6,35,NULL,'2023-11-11 20:04:32'),(84,2,36,NULL,'2023-11-11 20:04:32'),(85,1,36,NULL,'2023-11-11 20:04:32'),(86,3,36,NULL,'2023-11-11 20:04:32'),(87,4,36,NULL,'2023-11-11 20:04:32'),(88,5,36,NULL,'2023-11-11 20:04:32'),(89,6,36,NULL,'2023-11-11 20:04:32'),(90,2,37,NULL,'2023-11-11 20:04:32'),(91,3,37,NULL,'2023-11-11 20:04:32'),(92,4,37,NULL,'2023-11-11 20:04:32'),(93,5,37,NULL,'2023-11-11 20:04:32'),(94,6,37,NULL,'2023-11-11 20:04:32'),(95,2,38,NULL,'2023-11-11 20:04:32'),(96,1,38,NULL,'2023-11-11 20:04:32'),(97,4,38,NULL,'2023-11-11 20:04:32'),(98,5,38,NULL,'2023-11-11 20:04:32'),(99,6,38,NULL,'2023-11-11 20:04:32'),(100,3,40,NULL,'2023-11-11 20:04:32'),(101,2,40,NULL,'2023-11-11 20:04:32'),(102,1,40,NULL,'2023-11-11 20:04:32'),(103,4,40,NULL,'2023-11-11 20:04:32'),(104,5,40,NULL,'2023-11-11 20:04:32'),(105,6,40,NULL,'2023-11-11 20:04:32'),(106,2,42,NULL,'2023-11-11 20:04:32'),(107,3,42,NULL,'2023-11-11 20:04:32'),(108,4,42,NULL,'2023-11-11 20:04:32'),(109,5,42,NULL,'2023-11-11 20:04:32'),(110,6,42,NULL,'2023-11-11 20:04:32'),(111,1,43,NULL,'2023-11-11 20:04:32'),(112,2,43,NULL,'2023-11-11 20:04:32'),(113,4,43,NULL,'2023-11-11 20:04:32'),(114,5,43,NULL,'2023-11-11 20:04:32'),(115,6,43,NULL,'2023-11-11 20:04:32'),(116,1,44,NULL,'2023-11-11 20:04:32'),(117,2,44,NULL,'2023-11-11 20:04:32'),(118,4,44,NULL,'2023-11-11 20:04:32'),(119,5,44,NULL,'2023-11-11 20:04:32'),(120,6,44,NULL,'2023-11-11 20:04:32'),(121,3,45,NULL,'2023-11-11 20:04:32'),(122,2,45,NULL,'2023-11-11 20:04:32'),(123,4,45,NULL,'2023-11-11 20:04:32'),(124,5,45,NULL,'2023-11-11 20:04:32'),(125,6,45,NULL,'2023-11-11 20:04:32'),(126,3,48,NULL,'2023-11-11 20:04:32'),(127,2,48,NULL,'2023-11-11 20:04:32'),(128,4,48,NULL,'2023-11-11 20:04:32'),(129,5,48,NULL,'2023-11-11 20:04:32'),(130,6,48,NULL,'2023-11-11 20:04:32'),(131,1,50,NULL,'2023-11-11 20:04:32'),(132,2,50,NULL,'2023-11-11 20:04:32'),(133,4,50,NULL,'2023-11-11 20:04:32'),(134,5,50,NULL,'2023-11-11 20:04:32'),(135,6,50,NULL,'2023-11-11 20:04:32'),(136,3,51,NULL,'2023-11-11 20:04:32'),(137,2,51,NULL,'2023-11-11 20:04:32'),(138,4,51,NULL,'2023-11-11 20:04:32'),(139,5,51,NULL,'2023-11-11 20:04:32'),(140,6,51,NULL,'2023-11-11 20:04:32'),(141,3,52,NULL,'2023-11-11 20:04:32'),(142,4,52,NULL,'2023-11-11 20:04:32'),(143,5,52,NULL,'2023-11-11 20:04:32'),(144,6,52,NULL,'2023-11-11 20:04:32');
/*!40000 ALTER TABLE `album_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `authorized` tinyint(1) DEFAULT '1',
  `stripeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'album1',42.00,1,1,NULL,NULL,NULL),(2,1,'album2',32.00,1,1,NULL,NULL,NULL),(3,1,'album3',52.00,1,1,NULL,NULL,NULL),(4,2,'Lisandro Predovic',39.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(5,3,'Adah Ebert',22.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(6,3,'Mr. Roy Swaniawski',16.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(7,3,'Prof. Janelle Deckow',10.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(8,4,'Misael Roob',33.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(9,4,'Adelia Veum',33.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(10,4,'Anibal Boyle MD',22.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(11,5,'Shanel Labadie',39.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(12,5,'Mr. Ryleigh Goodwin',26.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(13,5,'Carmela Harber',25.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(14,6,'Dr. Whitney Cummings',23.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(15,7,'Roosevelt Sawayn III',19.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(16,7,'Alf Cole',33.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(17,8,'Tierra Hudson I',28.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(18,9,'Rowan Feeney',28.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(19,10,'Mariano Fisher Jr.',47.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(20,11,'Milo Tromp Jr.',50.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(21,12,'Garret Treutel',40.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(22,12,'Dr. Garett Lang',15.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(23,13,'Dr. Clair Jacobson',31.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(24,13,'Krystel Bechtelar',12.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(25,14,'Colin Hauck',17.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(26,14,'Abbigail Hettinger I',38.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(27,14,'Prof. Sydnee Brakus II',47.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(28,15,'Boris Lubowitz',43.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(29,15,'Dr. Terence Prohaska',43.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(30,15,'Ottilie Daugherty',46.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(31,16,'Dr. Green Ryan',47.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(32,17,'Mr. Hester Monahan III',40.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(33,17,'Prof. Antone Rau DVM',12.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(34,18,'Morgan VonRueden',24.00,1,1,NULL,'2023-11-11 20:04:31','2023-11-11 20:04:31'),(35,19,'Anibal Swift',45.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(36,19,'Santina Schiller',31.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(37,19,'Kay Smitham',30.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(38,20,'Prof. Dejuan Breitenberg',34.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(39,21,'Darrell Armstrong Sr.',24.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(40,21,'Elvie Nitzsche IV',38.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(41,22,'Dr. Blair Cassin III',22.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(42,23,'Icie Graham MD',24.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(43,23,'Tyrell Rice',47.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(44,23,'Corrine Lemke',24.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(45,24,'Rosendo Schiller',45.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32'),(46,24,'Lennie Grimes',40.00,1,1,NULL,'2023-11-11 20:04:32','2023-11-11 20:04:32');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_sales`
--

DROP TABLE IF EXISTS `artist_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_sales`
--

LOCK TABLES `artist_sales` WRITE;
/*!40000 ALTER TABLE `artist_sales` DISABLE KEYS */;
INSERT INTO `artist_sales` VALUES (1,12,2,NULL,NULL),(2,15,2,NULL,NULL),(3,13,2,NULL,NULL),(4,1,2,NULL,NULL),(5,8,2,NULL,NULL),(6,9,2,NULL,NULL),(7,18,6,NULL,NULL),(8,3,6,NULL,NULL),(9,21,6,NULL,NULL),(10,1,6,NULL,NULL),(11,8,6,NULL,NULL),(12,9,6,NULL,NULL),(13,14,8,NULL,NULL),(14,15,8,NULL,NULL),(15,5,8,NULL,NULL),(16,1,8,NULL,NULL),(17,8,8,NULL,NULL),(18,9,8,NULL,NULL),(19,2,10,NULL,NULL),(20,10,10,NULL,NULL),(21,9,10,NULL,NULL),(22,1,10,NULL,NULL),(23,8,10,NULL,NULL),(24,7,11,NULL,NULL),(25,16,11,NULL,NULL),(26,11,11,NULL,NULL),(27,1,11,NULL,NULL),(28,8,11,NULL,NULL),(29,9,11,NULL,NULL),(30,23,16,NULL,NULL),(31,13,16,NULL,NULL),(32,6,16,NULL,NULL),(33,1,16,NULL,NULL),(34,8,16,NULL,NULL),(35,9,16,NULL,NULL),(36,8,19,NULL,NULL),(37,14,19,NULL,NULL),(38,7,19,NULL,NULL),(39,1,19,NULL,NULL),(40,9,19,NULL,NULL),(41,8,21,NULL,NULL),(42,2,21,NULL,NULL),(43,1,21,NULL,NULL),(44,9,21,NULL,NULL),(45,7,22,NULL,NULL),(46,11,22,NULL,NULL),(47,12,22,NULL,NULL),(48,1,22,NULL,NULL),(49,8,22,NULL,NULL),(50,9,22,NULL,NULL),(51,9,24,NULL,NULL),(52,2,24,NULL,NULL),(53,14,24,NULL,NULL),(54,1,24,NULL,NULL),(55,8,24,NULL,NULL),(56,5,28,NULL,NULL),(57,23,28,NULL,NULL),(58,3,28,NULL,NULL),(59,1,28,NULL,NULL),(60,8,28,NULL,NULL),(61,9,28,NULL,NULL),(62,5,30,NULL,NULL),(63,21,30,NULL,NULL),(64,22,30,NULL,NULL),(65,1,30,NULL,NULL),(66,8,30,NULL,NULL),(67,9,30,NULL,NULL),(68,6,32,NULL,NULL),(69,18,32,NULL,NULL),(70,15,32,NULL,NULL),(71,1,32,NULL,NULL),(72,8,32,NULL,NULL),(73,9,32,NULL,NULL),(74,15,33,NULL,NULL),(75,3,33,NULL,NULL),(76,4,33,NULL,NULL),(77,1,33,NULL,NULL),(78,8,33,NULL,NULL),(79,9,33,NULL,NULL),(80,14,34,NULL,NULL),(81,5,34,NULL,NULL),(82,9,34,NULL,NULL),(83,1,34,NULL,NULL),(84,8,34,NULL,NULL),(85,7,35,NULL,NULL),(86,9,35,NULL,NULL),(87,5,35,NULL,NULL),(88,1,35,NULL,NULL),(89,8,35,NULL,NULL),(90,6,36,NULL,NULL),(91,19,36,NULL,NULL),(92,7,36,NULL,NULL),(93,1,36,NULL,NULL),(94,8,36,NULL,NULL),(95,9,36,NULL,NULL),(96,9,37,NULL,NULL),(97,4,37,NULL,NULL),(98,21,37,NULL,NULL),(99,1,37,NULL,NULL),(100,8,37,NULL,NULL),(101,7,38,NULL,NULL),(102,5,38,NULL,NULL),(103,18,38,NULL,NULL),(104,1,38,NULL,NULL),(105,8,38,NULL,NULL),(106,9,38,NULL,NULL),(107,15,40,NULL,NULL),(108,21,40,NULL,NULL),(109,1,40,NULL,NULL),(110,8,40,NULL,NULL),(111,9,40,NULL,NULL),(112,10,42,NULL,NULL),(113,9,42,NULL,NULL),(114,1,42,NULL,NULL),(115,8,42,NULL,NULL),(116,18,43,NULL,NULL),(117,12,43,NULL,NULL),(118,23,43,NULL,NULL),(119,1,43,NULL,NULL),(120,8,43,NULL,NULL),(121,9,43,NULL,NULL),(122,9,44,NULL,NULL),(123,23,44,NULL,NULL),(124,22,44,NULL,NULL),(125,1,44,NULL,NULL),(126,8,44,NULL,NULL),(127,21,45,NULL,NULL),(128,17,45,NULL,NULL),(129,2,45,NULL,NULL),(130,1,45,NULL,NULL),(131,8,45,NULL,NULL),(132,9,45,NULL,NULL),(133,10,48,NULL,NULL),(134,20,48,NULL,NULL),(135,5,48,NULL,NULL),(136,1,48,NULL,NULL),(137,8,48,NULL,NULL),(138,9,48,NULL,NULL),(139,15,50,NULL,NULL),(140,4,50,NULL,NULL),(141,14,50,NULL,NULL),(142,1,50,NULL,NULL),(143,8,50,NULL,NULL),(144,9,50,NULL,NULL),(145,11,51,NULL,NULL),(146,8,51,NULL,NULL),(147,12,51,NULL,NULL),(148,1,51,NULL,NULL),(149,9,51,NULL,NULL),(150,14,52,NULL,NULL),(151,3,52,NULL,NULL),(152,16,52,NULL,NULL),(153,1,52,NULL,NULL),(154,8,52,NULL,NULL),(155,9,52,NULL,NULL);
/*!40000 ALTER TABLE `artist_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `emailPaypal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `artists_emailpaypal_unique` (`emailPaypal`),
  UNIQUE KEY `artists_stripe_id_unique` (`stripe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,3,1,'sb-e3jum27762599@business.example.com',NULL,'2023-10-06 11:34:09','2023-11-11 20:04:31'),(2,4,3,'sb-e4jum27762599@business.example.com',NULL,'2023-03-30 14:57:28','2023-11-11 20:04:31'),(3,5,5,'sb-e5jum27762599@business.example.com',NULL,'2023-07-16 20:20:12','2023-11-11 20:04:31'),(4,7,4,'sb-e7jum27762599@business.example.com',NULL,'2023-01-16 01:55:21','2023-11-11 20:04:31'),(5,9,3,'sb-e9jum27762599@business.example.com',NULL,'2023-06-25 14:17:32','2023-11-11 20:04:31'),(6,12,2,'sb-e12jum27762599@business.example.com',NULL,'2023-09-12 17:24:40','2023-11-11 20:04:31'),(7,13,4,'sb-e13jum27762599@business.example.com',NULL,'2023-01-07 04:28:41','2023-11-11 20:04:31'),(8,14,1,'sb-e14jum27762599@business.example.com',NULL,'2022-11-12 08:10:03','2023-11-11 20:04:31'),(9,15,5,'sb-e15jum27762599@business.example.com',NULL,'2023-02-12 17:01:29','2023-11-11 20:04:31'),(10,17,3,'sb-e17jum27762599@business.example.com',NULL,'2023-01-14 03:58:00','2023-11-11 20:04:31'),(11,18,2,'sb-e18jum27762599@business.example.com',NULL,'2023-03-11 18:33:02','2023-11-11 20:04:31'),(12,20,5,'sb-e20jum27762599@business.example.com',NULL,'2023-05-23 13:21:49','2023-11-11 20:04:31'),(13,23,1,'sb-e23jum27762599@business.example.com',NULL,'2023-06-28 20:05:28','2023-11-11 20:04:31'),(14,25,5,'sb-e25jum27762599@business.example.com',NULL,'2022-12-20 09:11:31','2023-11-11 20:04:31'),(15,26,2,'sb-e26jum27762599@business.example.com',NULL,'2023-10-06 05:25:17','2023-11-11 20:04:31'),(16,27,4,'sb-e27jum27762599@business.example.com',NULL,'2023-03-09 20:49:30','2023-11-11 20:04:31'),(17,29,2,'sb-e29jum27762599@business.example.com',NULL,'2022-11-23 21:40:35','2023-11-11 20:04:31'),(18,31,1,'sb-e31jum27762599@business.example.com',NULL,'2023-07-15 00:28:25','2023-11-11 20:04:31'),(19,39,2,'sb-e39jum27762599@business.example.com',NULL,'2023-05-01 21:36:02','2023-11-11 20:04:31'),(20,41,3,'sb-e41jum27762599@business.example.com',NULL,'2023-07-12 13:16:53','2023-11-11 20:04:31'),(21,46,5,'sb-e46jum27762599@business.example.com',NULL,'2023-01-03 10:18:34','2023-11-11 20:04:31'),(22,47,3,'sb-e47jum27762599@business.example.com',NULL,'2023-07-17 14:10:24','2023-11-11 20:04:31'),(23,49,2,'sb-e49jum27762599@business.example.com',NULL,'2023-04-16 19:25:55','2023-11-11 20:04:31'),(24,53,2,'sb-e53jum27762599@business.example.com',NULL,'2023-02-12 03:36:59','2023-11-11 20:04:31');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_song`
--

DROP TABLE IF EXISTS `favorite_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_song` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `song_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_song`
--

LOCK TABLES `favorite_song` WRITE;
/*!40000 ALTER TABLE `favorite_song` DISABLE KEYS */;
INSERT INTO `favorite_song` VALUES (4,2,4,NULL,NULL),(5,2,3,NULL,NULL),(6,2,6,NULL,NULL);
/*!40000 ALTER TABLE `favorite_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_10_160150_create_artists_table',1),(6,'2023_09_10_160206_create_albums_table',1),(7,'2023_09_10_160220_create_songs_table',1),(8,'2023_09_10_160345_create_album_sales_table',1),(9,'2023_09_10_160402_create_artist_sales_table',1),(10,'2023_09_16_202619_create_news_table',1),(11,'2023_09_16_202941_create_news_users_table',1),(12,'2023_10_03_201735_create_tags_table',1),(13,'2023_10_03_213138_create_tags_users_table',1),(14,'2023_10_08_120803_create_orders_table',1),(15,'2023_11_11_191300_create_favorite_song_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_users`
--

DROP TABLE IF EXISTS `news_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_users`
--

LOCK TABLES `news_users` WRITE;
/*!40000 ALTER TABLE `news_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `artist_id` bigint unsigned NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,1,'Scottie Rice','2023-11-11 20:04:32','2023-11-11 20:04:32'),(2,2,'Barbara Daugherty','2023-11-11 20:04:32','2023-11-11 20:04:32'),(3,3,'Irwin Strosin','2023-11-11 20:04:32','2023-11-11 20:04:32'),(4,3,'Ike Berge','2023-11-11 20:04:32','2023-11-11 20:04:32'),(5,3,'Gerardo Smith','2023-11-11 20:04:32','2023-11-11 20:04:32'),(6,4,'Miss Zoila Volkman III','2023-11-11 20:04:32','2023-11-11 20:04:32'),(7,4,'Dr. Braden Haley II','2023-11-11 20:04:32','2023-11-11 20:04:32'),(8,5,'Sofia Hayes','2023-11-11 20:04:32','2023-11-11 20:04:32'),(9,6,'Michele Bergstrom DDS','2023-11-11 20:04:32','2023-11-11 20:04:32'),(10,6,'Gabriella Kuvalis DVM','2023-11-11 20:04:32','2023-11-11 20:04:32'),(11,7,'Sandra Kassulke PhD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(12,7,'Ines Reilly','2023-11-11 20:04:32','2023-11-11 20:04:32'),(13,7,'Angie Durgan','2023-11-11 20:04:32','2023-11-11 20:04:32'),(14,7,'Wade Stehr','2023-11-11 20:04:32','2023-11-11 20:04:32'),(15,8,'Corrine Towne','2023-11-11 20:04:32','2023-11-11 20:04:32'),(16,8,'Ardella White','2023-11-11 20:04:32','2023-11-11 20:04:32'),(17,8,'Deja Heaney','2023-11-11 20:04:32','2023-11-11 20:04:32'),(18,9,'Rebecca Tromp DDS','2023-11-11 20:04:32','2023-11-11 20:04:32'),(19,9,'Mrs. Claudine Kuhic','2023-11-11 20:04:32','2023-11-11 20:04:32'),(20,9,'Albertha Bahringer','2023-11-11 20:04:32','2023-11-11 20:04:32'),(21,10,'Lillian Lemke','2023-11-11 20:04:32','2023-11-11 20:04:32'),(22,10,'Marty Halvorson','2023-11-11 20:04:32','2023-11-11 20:04:32'),(23,10,'Lowell Gislason','2023-11-11 20:04:32','2023-11-11 20:04:32'),(24,11,'Prof. Adolphus Walsh','2023-11-11 20:04:32','2023-11-11 20:04:32'),(25,12,'Mr. Cedrick Kessler','2023-11-11 20:04:32','2023-11-11 20:04:32'),(26,12,'Corene Gulgowski','2023-11-11 20:04:32','2023-11-11 20:04:32'),(27,13,'Nayeli Kessler','2023-11-11 20:04:32','2023-11-11 20:04:32'),(28,13,'Juliana Fahey','2023-11-11 20:04:32','2023-11-11 20:04:32'),(29,13,'Melba Willms','2023-11-11 20:04:32','2023-11-11 20:04:32'),(30,14,'Natasha Medhurst','2023-11-11 20:04:32','2023-11-11 20:04:32'),(31,14,'Katlynn Wehner','2023-11-11 20:04:32','2023-11-11 20:04:32'),(32,14,'Dr. Ludwig Kuhic DDS','2023-11-11 20:04:32','2023-11-11 20:04:32'),(33,15,'Dr. Dangelo Jast','2023-11-11 20:04:32','2023-11-11 20:04:32'),(34,15,'Prof. Madisen Nicolas','2023-11-11 20:04:32','2023-11-11 20:04:32'),(35,16,'Annabell Lockman','2023-11-11 20:04:32','2023-11-11 20:04:32'),(36,16,'Cletus Friesen PhD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(37,17,'Helen Abbott','2023-11-11 20:04:32','2023-11-11 20:04:32'),(38,17,'Annie Treutel PhD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(39,17,'Mr. Braden Treutel III','2023-11-11 20:04:32','2023-11-11 20:04:32'),(40,17,'Ms. Una Block DVM','2023-11-11 20:04:32','2023-11-11 20:04:32'),(41,18,'Chelsie Bradtke','2023-11-11 20:04:32','2023-11-11 20:04:32'),(42,18,'Merritt Kris','2023-11-11 20:04:32','2023-11-11 20:04:32'),(43,18,'Shayna Murphy','2023-11-11 20:04:32','2023-11-11 20:04:32'),(44,18,'Yadira Gleason','2023-11-11 20:04:32','2023-11-11 20:04:32'),(45,19,'Gudrun Douglas','2023-11-11 20:04:32','2023-11-11 20:04:32'),(46,19,'Roel Schimmel','2023-11-11 20:04:32','2023-11-11 20:04:32'),(47,19,'Pietro Kovacek','2023-11-11 20:04:32','2023-11-11 20:04:32'),(48,19,'Ashton Kirlin','2023-11-11 20:04:32','2023-11-11 20:04:32'),(49,20,'Chadd Hoppe','2023-11-11 20:04:32','2023-11-11 20:04:32'),(50,20,'Dr. Quinn Mann','2023-11-11 20:04:32','2023-11-11 20:04:32'),(51,20,'Mr. Ike McDermott','2023-11-11 20:04:32','2023-11-11 20:04:32'),(52,21,'Jude Anderson','2023-11-11 20:04:32','2023-11-11 20:04:32'),(53,22,'Adrien Hahn DVM','2023-11-11 20:04:32','2023-11-11 20:04:32'),(54,22,'Marianne Crooks','2023-11-11 20:04:32','2023-11-11 20:04:32'),(55,22,'Mrs. Jermaine Wilderman','2023-11-11 20:04:32','2023-11-11 20:04:32'),(56,23,'Mr. Steve Spinka II','2023-11-11 20:04:32','2023-11-11 20:04:32'),(57,24,'Mr. Pete Bode MD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(58,24,'Domenic Mosciski','2023-11-11 20:04:32','2023-11-11 20:04:32'),(59,25,'Dr. Conor Konopelski MD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(60,25,'Leanna Rau','2023-11-11 20:04:32','2023-11-11 20:04:32'),(61,26,'Dr. Jarret Corkery IV','2023-11-11 20:04:32','2023-11-11 20:04:32'),(62,26,'Jarrod Toy','2023-11-11 20:04:32','2023-11-11 20:04:32'),(63,26,'Dr. Johann Abshire','2023-11-11 20:04:32','2023-11-11 20:04:32'),(64,26,'Marilie Lind V','2023-11-11 20:04:32','2023-11-11 20:04:32'),(65,27,'Mireya Thompson','2023-11-11 20:04:32','2023-11-11 20:04:32'),(66,28,'Mr. Ross Reichel Sr.','2023-11-11 20:04:32','2023-11-11 20:04:32'),(67,28,'Fern Hessel','2023-11-11 20:04:32','2023-11-11 20:04:32'),(68,29,'Syble Little','2023-11-11 20:04:32','2023-11-11 20:04:32'),(69,29,'Norma Stracke IV','2023-11-11 20:04:32','2023-11-11 20:04:32'),(70,30,'Pascale Bechtelar','2023-11-11 20:04:32','2023-11-11 20:04:32'),(71,30,'Sammy Reynolds','2023-11-11 20:04:32','2023-11-11 20:04:32'),(72,30,'Jaleel Muller','2023-11-11 20:04:32','2023-11-11 20:04:32'),(73,31,'Cathrine Friesen','2023-11-11 20:04:32','2023-11-11 20:04:32'),(74,31,'Mr. Angus Batz Jr.','2023-11-11 20:04:32','2023-11-11 20:04:32'),(75,31,'Wilbert Kirlin','2023-11-11 20:04:32','2023-11-11 20:04:32'),(76,31,'Antonina Carroll','2023-11-11 20:04:32','2023-11-11 20:04:32'),(77,32,'Diana Watsica','2023-11-11 20:04:32','2023-11-11 20:04:32'),(78,32,'Ahmad Schimmel I','2023-11-11 20:04:32','2023-11-11 20:04:32'),(79,32,'Dr. Magdalen Klocko Sr.','2023-11-11 20:04:32','2023-11-11 20:04:32'),(80,32,'Lola Marquardt','2023-11-11 20:04:32','2023-11-11 20:04:32'),(81,33,'Geovany Greenholt','2023-11-11 20:04:32','2023-11-11 20:04:32'),(82,33,'Dr. Nathen Armstrong PhD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(83,33,'Carmella Harvey','2023-11-11 20:04:32','2023-11-11 20:04:32'),(84,34,'Alfreda Pagac II','2023-11-11 20:04:32','2023-11-11 20:04:32'),(85,35,'Mona Rogahn','2023-11-11 20:04:32','2023-11-11 20:04:32'),(86,35,'Prof. Electa Mills IV','2023-11-11 20:04:32','2023-11-11 20:04:32'),(87,36,'Coy Pfeffer','2023-11-11 20:04:32','2023-11-11 20:04:32'),(88,36,'Dallin Dare','2023-11-11 20:04:32','2023-11-11 20:04:32'),(89,36,'Mr. Coleman Beier','2023-11-11 20:04:32','2023-11-11 20:04:32'),(90,36,'Austen Weissnat','2023-11-11 20:04:32','2023-11-11 20:04:32'),(91,37,'Easter Hayes','2023-11-11 20:04:32','2023-11-11 20:04:32'),(92,37,'Mrs. Retta Torp','2023-11-11 20:04:32','2023-11-11 20:04:32'),(93,38,'Presley Hayes','2023-11-11 20:04:32','2023-11-11 20:04:32'),(94,38,'Mrs. Eunice Goodwin','2023-11-11 20:04:32','2023-11-11 20:04:32'),(95,38,'Nico Dickinson IV','2023-11-11 20:04:32','2023-11-11 20:04:32'),(96,39,'Mr. Johan Franecki DVM','2023-11-11 20:04:32','2023-11-11 20:04:32'),(97,39,'Sandra Torphy','2023-11-11 20:04:32','2023-11-11 20:04:32'),(98,39,'Dayana Ullrich','2023-11-11 20:04:32','2023-11-11 20:04:32'),(99,39,'Alia Kuhn','2023-11-11 20:04:32','2023-11-11 20:04:32'),(100,40,'Dr. Jillian Funk','2023-11-11 20:04:32','2023-11-11 20:04:32'),(101,40,'Vivianne Flatley','2023-11-11 20:04:32','2023-11-11 20:04:32'),(102,41,'Mr. Emory Steuber','2023-11-11 20:04:32','2023-11-11 20:04:32'),(103,42,'Mandy Stroman','2023-11-11 20:04:32','2023-11-11 20:04:32'),(104,42,'Tom Konopelski','2023-11-11 20:04:32','2023-11-11 20:04:32'),(105,43,'Joannie Wisoky MD','2023-11-11 20:04:32','2023-11-11 20:04:32'),(106,43,'Jamel Jerde','2023-11-11 20:04:32','2023-11-11 20:04:32'),(107,43,'Brain Mills','2023-11-11 20:04:32','2023-11-11 20:04:32'),(108,43,'Nicola Rau DVM','2023-11-11 20:04:32','2023-11-11 20:04:32'),(109,44,'Aylin Wilkinson','2023-11-11 20:04:32','2023-11-11 20:04:32'),(110,44,'Rahul Bernhard','2023-11-11 20:04:32','2023-11-11 20:04:32'),(111,44,'Edward Heller','2023-11-11 20:04:32','2023-11-11 20:04:32'),(112,45,'Coleman Kiehn','2023-11-11 20:04:32','2023-11-11 20:04:32'),(113,45,'Flossie Rath','2023-11-11 20:04:32','2023-11-11 20:04:32'),(114,45,'Izabella Ryan I','2023-11-11 20:04:32','2023-11-11 20:04:32'),(115,45,'Laron Gislason','2023-11-11 20:04:32','2023-11-11 20:04:32'),(116,46,'Kiana McKenzie','2023-11-11 20:04:32','2023-11-11 20:04:32'),(117,46,'Chet Hahn','2023-11-11 20:04:32','2023-11-11 20:04:32'),(118,46,'Uriel McKenzie DDS','2023-11-11 20:04:32','2023-11-11 20:04:32');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'rock',NULL,NULL),(2,'pop',NULL,NULL),(3,'latino',NULL,NULL),(4,'jazz',NULL,NULL),(5,'classic',NULL,NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_users`
--

DROP TABLE IF EXISTS `tags_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_users`
--

LOCK TABLES `tags_users` WRITE;
/*!40000 ALTER TABLE `tags_users` DISABLE KEYS */;
INSERT INTO `tags_users` VALUES (1,1,2,NULL,NULL),(2,2,2,NULL,NULL),(3,3,2,NULL,NULL),(4,1,6,NULL,NULL),(5,2,6,NULL,NULL),(6,3,6,NULL,NULL),(7,1,8,NULL,NULL),(8,2,8,NULL,NULL),(9,3,8,NULL,NULL),(10,1,10,NULL,NULL),(11,2,10,NULL,NULL),(12,3,10,NULL,NULL),(13,1,11,NULL,NULL),(14,2,11,NULL,NULL),(15,3,11,NULL,NULL),(16,1,16,NULL,NULL),(17,2,16,NULL,NULL),(18,3,16,NULL,NULL),(19,1,19,NULL,NULL),(20,2,19,NULL,NULL),(21,3,19,NULL,NULL),(22,1,21,NULL,NULL),(23,2,21,NULL,NULL),(24,3,21,NULL,NULL),(25,1,22,NULL,NULL),(26,2,22,NULL,NULL),(27,3,22,NULL,NULL),(28,1,24,NULL,NULL),(29,2,24,NULL,NULL),(30,3,24,NULL,NULL),(31,1,28,NULL,NULL),(32,2,28,NULL,NULL),(33,3,28,NULL,NULL),(34,1,30,NULL,NULL),(35,2,30,NULL,NULL),(36,3,30,NULL,NULL),(37,1,32,NULL,NULL),(38,2,32,NULL,NULL),(39,3,32,NULL,NULL),(40,1,33,NULL,NULL),(41,2,33,NULL,NULL),(42,3,33,NULL,NULL),(43,1,34,NULL,NULL),(44,2,34,NULL,NULL),(45,3,34,NULL,NULL),(46,1,35,NULL,NULL),(47,2,35,NULL,NULL),(48,3,35,NULL,NULL),(49,1,36,NULL,NULL),(50,2,36,NULL,NULL),(51,3,36,NULL,NULL),(52,1,37,NULL,NULL),(53,2,37,NULL,NULL),(54,3,37,NULL,NULL),(55,1,38,NULL,NULL),(56,2,38,NULL,NULL),(57,3,38,NULL,NULL),(58,1,40,NULL,NULL),(59,2,40,NULL,NULL),(60,3,40,NULL,NULL),(61,1,42,NULL,NULL),(62,2,42,NULL,NULL),(63,3,42,NULL,NULL),(64,1,43,NULL,NULL),(65,2,43,NULL,NULL),(66,3,43,NULL,NULL),(67,1,44,NULL,NULL),(68,2,44,NULL,NULL),(69,3,44,NULL,NULL),(70,1,45,NULL,NULL),(71,2,45,NULL,NULL),(72,3,45,NULL,NULL),(73,1,48,NULL,NULL),(74,2,48,NULL,NULL),(75,3,48,NULL,NULL),(76,1,50,NULL,NULL),(77,2,50,NULL,NULL),(78,3,50,NULL,NULL),(79,1,51,NULL,NULL),(80,2,51,NULL,NULL),(81,3,51,NULL,NULL),(82,1,52,NULL,NULL),(83,2,52,NULL,NULL),(84,3,52,NULL,NULL);
/*!40000 ALTER TABLE `tags_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'admin','admin@admin.it',NULL,NULL,'admin','2023-11-11 20:04:17','$2y$12$PXE3C6zp9CKh/sB0vk18HeGUJCVN1d0/zd47iM2j19bu.IDSQJle.',NULL,'2023-11-11 20:04:17','2023-11-11 20:04:17'),(2,NULL,'cacao','cacao@cacao.it','Italy','Florence','user','2023-11-11 20:04:17','$2y$12$wBKVqtAWGR6dRvhH6wWLIeFSlzrkpMIQvYL4/zP4f9fS6mKIvPpRG',NULL,'2023-11-11 20:04:17','2023-11-11 20:04:17'),(3,NULL,'vitali','coltrida@gmail.com',NULL,NULL,'artist','2023-11-11 20:04:17','$2y$12$N4uUs2jVjdmmLrECD.Lc2eXg7Tw.hYsBUM2kbhY9/mdTCn2U5iHB2',NULL,'2023-11-11 20:04:17','2023-11-11 20:04:17'),(4,NULL,'Bud Schaefer','kathlyn.rohan@example.org','Spain','Paris','artist','2023-11-11 20:04:17','$2y$12$c08FmlWKLbjgRTdriitBde.l/0vjFIWWW8iWbwQr7zw5aqNpI1SZa','xdbaq3kS0u','2023-04-06 06:29:57','2023-11-11 20:04:31'),(5,NULL,'Odie Rippin','roscoe17@example.com','Italy','Barcelona','artist','2023-11-11 20:04:18','$2y$12$41L.EK6kowlXePOCyXP5oeqT5581N7BF0cVoWQUcqyWq3D2HZTyUq','2vx47Cp7wj','2022-12-26 23:41:54','2023-11-11 20:04:31'),(6,NULL,'Modesta Swaniawski','kilback.dixie@example.org','Spain','Florence','user','2023-11-11 20:04:18','$2y$12$v/aLXE3LBT3HOsMenI8.IOAXpFYni4csnJHtAlIi75fHOuSI9sxXa','yyozb1Rq6z','2023-01-26 03:53:23','2023-11-11 20:04:31'),(7,NULL,'Dr. Vivienne Romaguera','claudia.botsford@example.org','Italy','Rome','artist','2023-11-11 20:04:18','$2y$12$bUCiNu3F1iRR5yYfIpwRi.FrvbQdqusjG.q00jh.vPm7OVQIXtpAa','OWbQg0nmMN','2023-09-18 21:17:40','2023-11-11 20:04:31'),(8,NULL,'Seamus Wehner','nigel80@example.net','Spain','Rome','user','2023-11-11 20:04:19','$2y$12$UodNGegM6D5yDn4xe1ifgeRCu6TdisKFi9eiqr2HBoc5HhhmOD8z.','2juv4kie9c','2023-07-10 14:24:43','2023-11-11 20:04:31'),(9,NULL,'Joel Bailey','qvandervort@example.net','Spain','Madrid','artist','2023-11-11 20:04:19','$2y$12$Cu6BX3ehnGdPZKM3wc8Mn.6I87A8nGjhNIGAbWY9c4Ha/TB1bq6/W','BBdaDtsapn','2023-04-04 14:10:36','2023-11-11 20:04:31'),(10,NULL,'Emily Thompson DDS','arnulfo04@example.net','France','San Francisco','user','2023-11-11 20:04:19','$2y$12$A2n1ADK1wauMhUWNeiH1Bea2JgG9Bzvfx5le5NEv/rtFwRMR6e6B2','B9NrrJiQvr','2023-10-22 23:28:37','2023-11-11 20:04:31'),(11,NULL,'Lilyan Satterfield','meghan.effertz@example.com','Germany','Rome','user','2023-11-11 20:04:19','$2y$12$iAcDcVBXY0VNZV57/dLIV.kKpjQQDKXx.cTQxDL1URbOQZo4rV/ZW','jtUemvN3rI','2023-03-26 00:41:24','2023-11-11 20:04:31'),(12,NULL,'Dr. Nels Schmitt III','ledner.rita@example.com','Germany','NY','artist','2023-11-11 20:04:20','$2y$12$GWyA6Rk7ZYSBGFot3L8sLekPjKoVb6m/Zvmyb5sd9Xfy6K8SoVbJu','TYJPK6Duj6','2023-09-15 15:12:24','2023-11-11 20:04:31'),(13,NULL,'Miss Melba Erdman V','ywalker@example.com','USA','Madrid','artist','2023-11-11 20:04:20','$2y$12$BvjMen0CPv7wNYYzXYn2bumIaa3lthHcWKX3SHrgnqa6xTjJ6JFJy','lMZTHeriWE','2023-04-06 06:57:51','2023-11-11 20:04:31'),(14,NULL,'Sonya Hackett','marshall38@example.net','Spain','San Francisco','artist','2023-11-11 20:04:20','$2y$12$hQpOU9/wGFYLLKKTUvbgEenz/anh/3FaeXPYt7Gxu8uVAIHFFJhtm','D1jyUR48ig','2023-07-18 01:24:22','2023-11-11 20:04:31'),(15,NULL,'Vanessa Blanda','watsica.reese@example.net','Spain','NY','artist','2023-11-11 20:04:21','$2y$12$z.lsr5Ax50h.rZ769/mj..XXjeu7rqGJdPWutgcUaN/Z6NrQE7z1.','Q1o0raxYz0','2023-04-17 15:22:00','2023-11-11 20:04:31'),(16,NULL,'Oren Gulgowski','hkling@example.com','Spain','Berlin','user','2023-11-11 20:04:21','$2y$12$jgPMmMduv3CHyOQKm/HlwO3zvYKMllnTExQoee2zx9xgaNByqdzA6','RHE9g8dswy','2023-03-08 06:08:47','2023-11-11 20:04:31'),(17,NULL,'Florian Dare DVM','wilhelmine.ernser@example.net','USA','San Francisco','artist','2023-11-11 20:04:21','$2y$12$s3biyemFIEF/u4rZnB.r.uMemQJySBsmF7gH1FFALyEpJ86qdkrmC','A4EUaQewTu','2022-11-29 10:26:45','2023-11-11 20:04:31'),(18,NULL,'Mr. Andre O\'Reilly','blanda.florence@example.org','Italy','NY','artist','2023-11-11 20:04:21','$2y$12$FnVcHjZqlx8LbYsCPxn7fe9eepmIEobZ/cBqBUDnkr/t6pjArK/aS','2AFhfzWhTY','2023-06-20 21:51:41','2023-11-11 20:04:31'),(19,NULL,'Prof. Aylin Schoen Sr.','keely.crooks@example.com','Spain','Madrid','user','2023-11-11 20:04:22','$2y$12$RQ0xlH1gsJYZDBT3s0SGVeLmCthcNI6A4QfwQjZ4fJQP1kNHp85gG','0Wf8OstNdd','2022-12-26 14:01:31','2023-11-11 20:04:31'),(20,NULL,'Laney Hane IV','fmckenzie@example.com','France','Paris','artist','2023-11-11 20:04:22','$2y$12$i887O1SkfbGhSOoWZ9QB5Oxhyona0PaT9HE13REpL/6PJZPUXrVR2','ESOoNEsf8n','2023-03-24 05:02:24','2023-11-11 20:04:31'),(21,NULL,'Chaim Thompson','oral.bauch@example.com','USA','Rome','user','2023-11-11 20:04:22','$2y$12$rigSYMSgTbnm5IEAcSfXD.YIAr17BzQGixqisKY0jMhSZjn.IT.4C','Brr9ahjWzU','2023-07-28 03:40:15','2023-11-11 20:04:31'),(22,NULL,'Dr. Krystel Paucek','bmayert@example.net','Italy','Madrid','user','2023-11-11 20:04:22','$2y$12$1Gy/.vYMxa/W3sh8Z6ItKeE2vjgk.tQobQJWUjqPtjl32h62bGmAW','qh5ZScjjoR','2023-03-15 03:28:22','2023-11-11 20:04:31'),(23,NULL,'Olin Becker','lubowitz.lois@example.org','Italy','Florence','artist','2023-11-11 20:04:23','$2y$12$ioQuIj483pCvPj4C6TP0p.9y.tQ7NiKogTiPY4yq8h9VfE7j1LAEm','vJgrPHg7bF','2023-01-26 13:57:41','2023-11-11 20:04:31'),(24,NULL,'Alize Murphy','adrain90@example.com','Spain','Berlin','user','2023-11-11 20:04:23','$2y$12$zCQEJWPU2O1oHyYZSkeiT.2cJVtstYnlh.ghG0Rb389DpBaQ9sL8q','sDtmSdukBt','2023-01-22 15:56:08','2023-11-11 20:04:31'),(25,NULL,'Miss Mandy Trantow','mraz.rey@example.com','France','Paris','artist','2023-11-11 20:04:23','$2y$12$ebYBvs6/sXdMSkU0.Sh2UuBReQNwEpCOH5uphTqV86j9WqWtkWZZK','ZA204Ce3nw','2023-08-07 13:02:14','2023-11-11 20:04:31'),(26,NULL,'Regan Buckridge','pagac.jarrett@example.com','Germany','Rome','artist','2023-11-11 20:04:24','$2y$12$.TIbtCkpyaiA2n/D69Ur..g4UDKrDAA1X5C1zKRkz0/eajbvO365O','wLbXJdKqbt','2023-03-25 10:45:11','2023-11-11 20:04:31'),(27,NULL,'Mr. Nathanial Hagenes','edibbert@example.net','Italy','Berlin','artist','2023-11-11 20:04:24','$2y$12$qwCF9xSc1BSUqSQpiYDkeuZ8IxNIxBoSQcxfT5ZXI9m8UVwVjv4Ri','JU4DjqDX8F','2023-10-23 03:29:01','2023-11-11 20:04:31'),(28,NULL,'Arnold Kozey','aprosacco@example.org','Italy','Madrid','user','2023-11-11 20:04:24','$2y$12$bUCf40uTsoT8VNGt5tal4.wk1TdGk8Eg7bfwZ2yCqLswJmWqli9j2','RWfrEWx0PP','2022-12-12 13:05:26','2023-11-11 20:04:31'),(29,NULL,'Omari Bergnaum','wilhelmine50@example.net','France','San Francisco','artist','2023-11-11 20:04:24','$2y$12$GGJRuf1ovB4Lb.lJr1W2FeJtw6SSrT44eLQQhD1srDcBkiPb.bK9K','feMesFAfB3','2023-11-04 07:12:25','2023-11-11 20:04:31'),(30,NULL,'Kieran Abbott Jr.','pprohaska@example.net','USA','Paris','user','2023-11-11 20:04:25','$2y$12$aJwaN7K6mYSQwad14C6OnuTVgbOZlm8bFNLyDjv2uckSuK39O54hi','RgocQjLHBD','2022-12-27 19:34:56','2023-11-11 20:04:31'),(31,NULL,'Kathryne Bailey','vveum@example.com','Spain','Berlin','artist','2023-11-11 20:04:25','$2y$12$.CClhVNvH.z3UK6V3mKYJuCjufDqfp/T0Z5WOO3tMLi1UM7TIbfIW','vdc7Cti5FR','2023-02-26 06:35:49','2023-11-11 20:04:31'),(32,NULL,'Ms. Maci Upton MD','melyna12@example.org','USA','San Francisco','user','2023-11-11 20:04:25','$2y$12$D.hpJ6fm/9dFtjVAAV0jguAU09Ltm4lfwveoO6H6OqQsly.tVAJ3.','nBWX160zkt','2022-11-25 18:46:10','2023-11-11 20:04:31'),(33,NULL,'Betsy Keeling','emann@example.net','Spain','Barcelona','user','2023-11-11 20:04:26','$2y$12$L2A/.5XM9.kVxpPbLPBG6OzzHev9VJGl3rV1t/MpGk7A3HExBUDR.','Oeo8UyLz4T','2023-10-11 23:26:25','2023-11-11 20:04:31'),(34,NULL,'Christy Greenfelder','schuster.pearl@example.net','Spain','Madrid','user','2023-11-11 20:04:26','$2y$12$o1tW2yyhnSpJtYaOTFYtfu9hgDsPPPAGpyLjpdmm/7B/.1vkTM0S2','9xLJarsSQf','2022-11-13 05:29:20','2023-11-11 20:04:31'),(35,NULL,'Rahul King','jledner@example.net','USA','Paris','user','2023-11-11 20:04:26','$2y$12$llLkqsgttAW1.3TKno5LyOalNGxYdT4RpxfZ/w0R4FF2A3a3RePXu','w5eKphua8l','2023-02-21 11:27:10','2023-11-11 20:04:31'),(36,NULL,'Mrs. Freida Krajcik III','corbin.bahringer@example.net','USA','NY','user','2023-11-11 20:04:26','$2y$12$QXp7XE5BYy7p5ncQ82hxpOR0xWiWkeyZUGFE1QeYdd0m7XYIdtQgW','SjQKeSlaEP','2023-04-18 20:17:48','2023-11-11 20:04:31'),(37,NULL,'Dorthy Littel','muhammad.balistreri@example.com','USA','Rome','user','2023-11-11 20:04:27','$2y$12$n9mmhOQJggCer3ANG5Kk2OuZwgJ4acA7YpwH54/ADWyg4cWcDWDm.','xScsxP16tR','2023-05-27 23:06:17','2023-11-11 20:04:31'),(38,NULL,'Neoma Labadie','nikolas.kub@example.com','USA','Berlin','user','2023-11-11 20:04:27','$2y$12$iQTaYNiLHAxqZ..BEF8r8uV7TVsI4aDcihAXnXt2yE83ajg7.1/Rm','xJ3tr0EWid','2023-06-04 03:26:08','2023-11-11 20:04:31'),(39,NULL,'Ernest Steuber','ruecker.hailey@example.net','Germany','Paris','artist','2023-11-11 20:04:27','$2y$12$G/z6KOJV20GLJY3dhRJN4.Ge0gTyXuQXAQnn4CmuJn3.jrmPoE5A2','KePVVrWtHH','2023-03-30 07:22:16','2023-11-11 20:04:31'),(40,NULL,'Dr. Nicolas Robel III','darion79@example.org','France','Paris','user','2023-11-11 20:04:28','$2y$12$BlJeNPpm9Wax4nPQiBNJheYPqozTI8bQOoNXi8Jr77NnhazpXP77G','rcw3aWdES5','2023-05-16 02:51:51','2023-11-11 20:04:31'),(41,NULL,'Prof. Esther Skiles II','afton.collier@example.net','France','Florence','artist','2023-11-11 20:04:28','$2y$12$Qtp1NV0qrMB1knqIDFhgzuMVp4Qn7QSbrlWDB4zRuWRNneNTVQfc2','lYCglqedLj','2023-06-11 14:35:34','2023-11-11 20:04:31'),(42,NULL,'Roger Wiza','dariana.feil@example.net','USA','Berlin','user','2023-11-11 20:04:28','$2y$12$hV.jW178WGy4zRWKGL.Y5eGsa3DIFYtyiNH1KdOz8vCuxGlX2NYge','9P6fkdWvIt','2023-05-28 18:57:09','2023-11-11 20:04:31'),(43,NULL,'Dr. Alexys Mueller','rconnelly@example.net','France','Madrid','user','2023-11-11 20:04:28','$2y$12$UlshhVJf0JIplmL26vI7OuG/oa9jeUjr5vXgSX.XjOtVVM0Nu55bC','PE8wcaeFcj','2023-02-05 06:48:35','2023-11-11 20:04:31'),(44,NULL,'Kaylah Wiza MD','ashanahan@example.com','Spain','Barcelona','user','2023-11-11 20:04:29','$2y$12$mPU4XpjWYVheUtKOl.EBWuJJWT3VK6/PSaju7vOP3LkxgjLQqo5g.','Ixd3th5T71','2023-03-16 18:58:21','2023-11-11 20:04:31'),(45,NULL,'Hannah Dare','nreilly@example.com','France','Barcelona','user','2023-11-11 20:04:29','$2y$12$c9yZAdf6Iv2/JkWC6qyo2OHwPi7aNfnVVanIF77x4jdQhyPlHe7Ky','KyHhdR9Q1W','2023-01-06 03:53:55','2023-11-11 20:04:31'),(46,NULL,'Rusty Kunde','marty.kerluke@example.com','Germany','Barcelona','artist','2023-11-11 20:04:29','$2y$12$6CazD0PlrnNGeZDGGccD7eK7tPiWabZJRJln.tOJM5C7W7hLBlbHu','Fae3FW9nez','2022-12-24 03:46:35','2023-11-11 20:04:31'),(47,NULL,'Donavon Borer','roman.haag@example.net','Italy','Madrid','artist','2023-11-11 20:04:29','$2y$12$qfLQnuw2gmhWwwriFxFNk.NB7URCHHi7GGmzWI4izBX8bzZyS28r6','OhMkrMFiW3','2023-01-05 09:24:31','2023-11-11 20:04:31'),(48,NULL,'Prof. Lydia Goyette','plittle@example.org','Spain','Barcelona','user','2023-11-11 20:04:30','$2y$12$SXy2S60ceZD5gX6xZDr7COSad8RkfmkUSTwQx9aNyHX/HGgtdFg56','wxWzrRpd8K','2023-03-27 04:22:59','2023-11-11 20:04:31'),(49,NULL,'Lambert Luettgen','ruecker.jace@example.com','France','Paris','artist','2023-11-11 20:04:30','$2y$12$a8OQ18HCew./XxcsohiDru2yqTBlE8VtAhauwOFGxGoYwVVAbkEyS','kPAQ8g9jV7','2023-03-20 03:43:43','2023-11-11 20:04:31'),(50,NULL,'Enid Conn','rpagac@example.net','Germany','Rome','user','2023-11-11 20:04:30','$2y$12$bGfYYWAiVD7N6EdfqgBvAebHXDg5hOvM3hMhRILDpgaRpttunWZAu','fEtZApro2N','2023-04-23 19:04:14','2023-11-11 20:04:31'),(51,NULL,'Trent Walsh I','roob.eula@example.net','USA','Berlin','user','2023-11-11 20:04:31','$2y$12$pRvMUvUVOQSJ6mMFcfi1iucyHcbBWdctXGNzp0mfkCktK9zU5Wqpq','rhnSYWaFf8','2023-06-27 23:56:47','2023-11-11 20:04:31'),(52,NULL,'Mr. Roderick Streich IV','usmitham@example.org','Italy','Berlin','user','2023-11-11 20:04:31','$2y$12$sOybRdTFsnx0lTmQYN/ftePKxI50hSVwHHEJoxiFPkMQE4PXPjdwe','DspGnW2FSe','2023-08-18 00:35:53','2023-11-11 20:04:31'),(53,NULL,'Dr. Hailey Bernhard','beau59@example.net','Spain','Rome','artist','2023-11-11 20:04:31','$2y$12$2xrxtYZ4Oa83kWOS3HpCBeoose8x75M4SRhIPNhQ1pDmTgI4fQqga','EVV99wTr8o','2022-12-19 19:05:42','2023-11-11 20:04:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11 23:59:06
