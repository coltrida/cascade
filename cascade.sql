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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_sales`
--

LOCK TABLES `album_sales` WRITE;
/*!40000 ALTER TABLE `album_sales` DISABLE KEYS */;
INSERT INTO `album_sales` VALUES (1,2,2,NULL,'2023-11-04 13:44:31'),(2,4,2,NULL,'2023-11-04 13:44:31'),(3,5,2,NULL,'2023-11-04 13:44:31'),(4,6,2,NULL,'2023-11-04 13:44:31'),(5,1,4,NULL,'2023-11-04 13:44:31'),(6,3,4,NULL,'2023-11-04 13:44:31'),(7,4,4,NULL,'2023-11-04 13:44:31'),(8,5,4,NULL,'2023-11-04 13:44:31'),(9,6,4,NULL,'2023-11-04 13:44:31'),(10,3,5,NULL,'2023-11-04 13:44:31'),(11,2,5,NULL,'2023-11-04 13:44:31'),(12,4,5,NULL,'2023-11-04 13:44:31'),(13,5,5,NULL,'2023-11-04 13:44:31'),(14,6,5,NULL,'2023-11-04 13:44:31'),(15,1,7,NULL,'2023-11-04 13:44:31'),(16,3,7,NULL,'2023-11-04 13:44:31'),(17,4,7,NULL,'2023-11-04 13:44:31'),(18,5,7,NULL,'2023-11-04 13:44:31'),(19,6,7,NULL,'2023-11-04 13:44:31'),(20,1,11,NULL,'2023-11-04 13:44:31'),(21,2,11,NULL,'2023-11-04 13:44:31'),(22,4,11,NULL,'2023-11-04 13:44:31'),(23,5,11,NULL,'2023-11-04 13:44:31'),(24,6,11,NULL,'2023-11-04 13:44:31'),(25,3,12,NULL,'2023-11-04 13:44:31'),(26,2,12,NULL,'2023-11-04 13:44:31'),(27,4,12,NULL,'2023-11-04 13:44:31'),(28,5,12,NULL,'2023-11-04 13:44:31'),(29,6,12,NULL,'2023-11-04 13:44:31'),(30,3,14,NULL,'2023-11-04 13:44:31'),(31,2,14,NULL,'2023-11-04 13:44:31'),(32,1,14,NULL,'2023-11-04 13:44:31'),(33,4,14,NULL,'2023-11-04 13:44:31'),(34,5,14,NULL,'2023-11-04 13:44:31'),(35,6,14,NULL,'2023-11-04 13:44:31'),(36,1,16,NULL,'2023-11-04 13:44:31'),(37,3,16,NULL,'2023-11-04 13:44:31'),(38,2,16,NULL,'2023-11-04 13:44:31'),(39,4,16,NULL,'2023-11-04 13:44:31'),(40,5,16,NULL,'2023-11-04 13:44:31'),(41,6,16,NULL,'2023-11-04 13:44:31'),(42,3,17,NULL,'2023-11-04 13:44:31'),(43,1,17,NULL,'2023-11-04 13:44:31'),(44,4,17,NULL,'2023-11-04 13:44:31'),(45,5,17,NULL,'2023-11-04 13:44:31'),(46,6,17,NULL,'2023-11-04 13:44:31'),(47,3,18,NULL,'2023-11-04 13:44:31'),(48,2,18,NULL,'2023-11-04 13:44:31'),(49,1,18,NULL,'2023-11-04 13:44:31'),(50,4,18,NULL,'2023-11-04 13:44:31'),(51,5,18,NULL,'2023-11-04 13:44:31'),(52,6,18,NULL,'2023-11-04 13:44:31'),(53,3,20,NULL,'2023-11-04 13:44:31'),(54,1,20,NULL,'2023-11-04 13:44:31'),(55,4,20,NULL,'2023-11-04 13:44:31'),(56,5,20,NULL,'2023-11-04 13:44:31'),(57,6,20,NULL,'2023-11-04 13:44:31'),(58,2,21,NULL,'2023-11-04 13:44:31'),(59,1,21,NULL,'2023-11-04 13:44:31'),(60,4,21,NULL,'2023-11-04 13:44:31'),(61,5,21,NULL,'2023-11-04 13:44:31'),(62,6,21,NULL,'2023-11-04 13:44:31'),(63,1,22,NULL,'2023-11-04 13:44:31'),(64,2,22,NULL,'2023-11-04 13:44:31'),(65,4,22,NULL,'2023-11-04 13:44:31'),(66,5,22,NULL,'2023-11-04 13:44:31'),(67,6,22,NULL,'2023-11-04 13:44:31'),(68,3,23,NULL,'2023-11-04 13:44:31'),(69,2,23,NULL,'2023-11-04 13:44:31'),(70,1,23,NULL,'2023-11-04 13:44:31'),(71,4,23,NULL,'2023-11-04 13:44:31'),(72,5,23,NULL,'2023-11-04 13:44:31'),(73,6,23,NULL,'2023-11-04 13:44:31'),(74,1,25,NULL,'2023-11-04 13:44:31'),(75,2,25,NULL,'2023-11-04 13:44:31'),(76,3,25,NULL,'2023-11-04 13:44:31'),(77,4,25,NULL,'2023-11-04 13:44:31'),(78,5,25,NULL,'2023-11-04 13:44:31'),(79,6,25,NULL,'2023-11-04 13:44:31'),(80,1,26,NULL,'2023-11-04 13:44:31'),(81,3,26,NULL,'2023-11-04 13:44:31'),(82,4,26,NULL,'2023-11-04 13:44:31'),(83,5,26,NULL,'2023-11-04 13:44:31'),(84,6,26,NULL,'2023-11-04 13:44:31'),(85,1,28,NULL,'2023-11-04 13:44:31'),(86,2,28,NULL,'2023-11-04 13:44:31'),(87,4,28,NULL,'2023-11-04 13:44:31'),(88,5,28,NULL,'2023-11-04 13:44:31'),(89,6,28,NULL,'2023-11-04 13:44:31'),(90,1,29,NULL,'2023-11-04 13:44:31'),(91,2,29,NULL,'2023-11-04 13:44:31'),(92,3,29,NULL,'2023-11-04 13:44:31'),(93,4,29,NULL,'2023-11-04 13:44:31'),(94,5,29,NULL,'2023-11-04 13:44:31'),(95,6,29,NULL,'2023-11-04 13:44:31'),(96,3,34,NULL,'2023-11-04 13:44:31'),(97,4,34,NULL,'2023-11-04 13:44:31'),(98,5,34,NULL,'2023-11-04 13:44:31'),(99,6,34,NULL,'2023-11-04 13:44:31'),(100,3,35,NULL,'2023-11-04 13:44:31'),(101,2,35,NULL,'2023-11-04 13:44:31'),(102,4,35,NULL,'2023-11-04 13:44:31'),(103,5,35,NULL,'2023-11-04 13:44:31'),(104,6,35,NULL,'2023-11-04 13:44:31'),(105,1,36,NULL,'2023-11-04 13:44:31'),(106,3,36,NULL,'2023-11-04 13:44:31'),(107,4,36,NULL,'2023-11-04 13:44:31'),(108,5,36,NULL,'2023-11-04 13:44:31'),(109,6,36,NULL,'2023-11-04 13:44:31'),(110,3,38,NULL,'2023-11-04 13:44:31'),(111,1,38,NULL,'2023-11-04 13:44:31'),(112,4,38,NULL,'2023-11-04 13:44:31'),(113,5,38,NULL,'2023-11-04 13:44:31'),(114,6,38,NULL,'2023-11-04 13:44:31'),(115,2,39,NULL,'2023-11-04 13:44:31'),(116,1,39,NULL,'2023-11-04 13:44:31'),(117,4,39,NULL,'2023-11-04 13:44:31'),(118,5,39,NULL,'2023-11-04 13:44:31'),(119,6,39,NULL,'2023-11-04 13:44:31'),(120,2,41,NULL,'2023-11-04 13:44:31'),(121,1,41,NULL,'2023-11-04 13:44:31'),(122,4,41,NULL,'2023-11-04 13:44:31'),(123,5,41,NULL,'2023-11-04 13:44:31'),(124,6,41,NULL,'2023-11-04 13:44:31'),(125,3,43,NULL,'2023-11-04 13:44:31'),(126,2,43,NULL,'2023-11-04 13:44:31'),(127,4,43,NULL,'2023-11-04 13:44:31'),(128,5,43,NULL,'2023-11-04 13:44:31'),(129,6,43,NULL,'2023-11-04 13:44:31'),(130,2,45,NULL,'2023-11-04 13:44:31'),(131,3,45,NULL,'2023-11-04 13:44:31'),(132,4,45,NULL,'2023-11-04 13:44:31'),(133,5,45,NULL,'2023-11-04 13:44:31'),(134,6,45,NULL,'2023-11-04 13:44:31'),(135,1,46,NULL,'2023-11-04 13:44:31'),(136,4,46,NULL,'2023-11-04 13:44:31'),(137,5,46,NULL,'2023-11-04 13:44:31'),(138,6,46,NULL,'2023-11-04 13:44:31'),(139,2,48,NULL,'2023-11-04 13:44:31'),(140,3,48,NULL,'2023-11-04 13:44:31'),(141,4,48,NULL,'2023-11-04 13:44:31'),(142,5,48,NULL,'2023-11-04 13:44:31'),(143,6,48,NULL,'2023-11-04 13:44:31'),(144,2,51,NULL,'2023-11-04 13:44:31'),(145,4,51,NULL,'2023-11-04 13:44:31'),(146,5,51,NULL,'2023-11-04 13:44:31'),(147,6,51,NULL,'2023-11-04 13:44:31');
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
  `visible` tinyint(1) DEFAULT '0',
  `stripeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'album1',42.00,1,NULL,NULL,NULL),(2,1,'album2',32.00,1,NULL,NULL,NULL),(3,1,'album3',52.00,1,NULL,NULL,NULL),(4,2,'Mr. Stewart Ruecker',22.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(5,2,'Prof. Harley Hodkiewicz Jr.',17.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(6,2,'Antonette Bode',18.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(7,3,'Dr. Sandrine Luettgen',17.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(8,3,'Prof. Justen Gleichner V',26.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(9,4,'Evie Reinger',40.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(10,4,'Hayley Friesen',31.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(11,5,'Prof. Jaycee Corwin',23.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(12,5,'Prof. Meta Powlowski V',31.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(13,6,'Jerry Schuppe',40.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(14,7,'Prof. Hope Hessel II',29.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(15,7,'Dr. Ezequiel Lueilwitz',32.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(16,7,'Ambrose Reichel',23.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(17,8,'Eldridge Tillman DVM',48.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(18,9,'Bobbie Mann',24.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(19,10,'Theresa Krajcik',48.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(20,10,'Percival Moen V',29.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(21,11,'Pablo Bode',37.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(22,11,'Katlyn Grant',38.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(23,11,'Prof. Jackie Considine I',36.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(24,12,'Lucas Effertz',45.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(25,12,'Prof. Maria Paucek',24.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(26,12,'Prof. Saul Becker',26.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(27,13,'Alberta McClure',33.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(28,14,'Lucious Zulauf DDS',11.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(29,14,'Dr. Nikko Howe I',46.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(30,14,'Miss Charlene Crist I',36.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(31,15,'Mr. Kenny Leannon III',45.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(32,15,'Fabian Botsford',43.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(33,15,'Mrs. Alba Lebsack',27.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(34,16,'Abigail Legros',36.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(35,17,'Isaac Strosin',18.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(36,17,'Prof. Easter Rutherford Sr.',50.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(37,18,'Birdie Ernser PhD',45.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(38,18,'Jacques Quitzon',16.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(39,18,'Vicky Kuhn',38.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(40,19,'Mrs. Kelli Hartmann III',22.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(41,20,'Dr. Jerrold Schimmel PhD',19.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(42,20,'Emmet Senger DDS',20.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(43,20,'Mr. Aurelio Lemke',15.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(44,21,'Mrs. Rubie Kertzmann II',19.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(45,21,'Prof. Rhett Heathcote',48.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(46,21,'Roselyn Wilderman',43.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(47,22,'Mrs. Retta Kerluke DVM',48.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(48,23,'Cortez Herman',13.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31'),(49,23,'Mr. Harmon Flatley',10.00,1,NULL,'2023-11-04 13:44:31','2023-11-04 13:44:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_sales`
--

LOCK TABLES `artist_sales` WRITE;
/*!40000 ALTER TABLE `artist_sales` DISABLE KEYS */;
INSERT INTO `artist_sales` VALUES (1,18,2,NULL,NULL),(2,5,2,NULL,NULL),(3,19,2,NULL,NULL),(4,1,2,NULL,NULL),(5,8,2,NULL,NULL),(6,9,2,NULL,NULL),(7,16,4,NULL,NULL),(8,19,4,NULL,NULL),(9,5,4,NULL,NULL),(10,1,4,NULL,NULL),(11,8,4,NULL,NULL),(12,9,4,NULL,NULL),(13,20,5,NULL,NULL),(14,15,5,NULL,NULL),(15,19,5,NULL,NULL),(16,1,5,NULL,NULL),(17,8,5,NULL,NULL),(18,9,5,NULL,NULL),(19,10,7,NULL,NULL),(20,14,7,NULL,NULL),(21,13,7,NULL,NULL),(22,1,7,NULL,NULL),(23,8,7,NULL,NULL),(24,9,7,NULL,NULL),(25,7,11,NULL,NULL),(26,18,11,NULL,NULL),(27,17,11,NULL,NULL),(28,1,11,NULL,NULL),(29,8,11,NULL,NULL),(30,9,11,NULL,NULL),(31,22,12,NULL,NULL),(32,12,12,NULL,NULL),(33,10,12,NULL,NULL),(34,1,12,NULL,NULL),(35,8,12,NULL,NULL),(36,9,12,NULL,NULL),(37,14,14,NULL,NULL),(38,2,14,NULL,NULL),(39,13,14,NULL,NULL),(40,1,14,NULL,NULL),(41,8,14,NULL,NULL),(42,9,14,NULL,NULL),(43,17,16,NULL,NULL),(44,20,16,NULL,NULL),(45,14,16,NULL,NULL),(46,1,16,NULL,NULL),(47,8,16,NULL,NULL),(48,9,16,NULL,NULL),(49,2,17,NULL,NULL),(50,11,17,NULL,NULL),(51,19,17,NULL,NULL),(52,1,17,NULL,NULL),(53,8,17,NULL,NULL),(54,9,17,NULL,NULL),(55,5,18,NULL,NULL),(56,17,18,NULL,NULL),(57,1,18,NULL,NULL),(58,8,18,NULL,NULL),(59,9,18,NULL,NULL),(60,20,20,NULL,NULL),(61,18,20,NULL,NULL),(62,7,20,NULL,NULL),(63,1,20,NULL,NULL),(64,8,20,NULL,NULL),(65,9,20,NULL,NULL),(66,16,21,NULL,NULL),(67,15,21,NULL,NULL),(68,1,21,NULL,NULL),(69,8,21,NULL,NULL),(70,9,21,NULL,NULL),(71,15,22,NULL,NULL),(72,22,22,NULL,NULL),(73,16,22,NULL,NULL),(74,1,22,NULL,NULL),(75,8,22,NULL,NULL),(76,9,22,NULL,NULL),(77,20,23,NULL,NULL),(78,9,23,NULL,NULL),(79,21,23,NULL,NULL),(80,1,23,NULL,NULL),(81,8,23,NULL,NULL),(82,15,25,NULL,NULL),(83,12,25,NULL,NULL),(84,4,25,NULL,NULL),(85,1,25,NULL,NULL),(86,8,25,NULL,NULL),(87,9,25,NULL,NULL),(88,19,26,NULL,NULL),(89,15,26,NULL,NULL),(90,10,26,NULL,NULL),(91,1,26,NULL,NULL),(92,8,26,NULL,NULL),(93,9,26,NULL,NULL),(94,14,28,NULL,NULL),(95,19,28,NULL,NULL),(96,17,28,NULL,NULL),(97,1,28,NULL,NULL),(98,8,28,NULL,NULL),(99,9,28,NULL,NULL),(100,19,29,NULL,NULL),(101,7,29,NULL,NULL),(102,5,29,NULL,NULL),(103,1,29,NULL,NULL),(104,8,29,NULL,NULL),(105,9,29,NULL,NULL),(106,6,34,NULL,NULL),(107,16,34,NULL,NULL),(108,12,34,NULL,NULL),(109,1,34,NULL,NULL),(110,8,34,NULL,NULL),(111,9,34,NULL,NULL),(112,19,35,NULL,NULL),(113,16,35,NULL,NULL),(114,1,35,NULL,NULL),(115,8,35,NULL,NULL),(116,9,35,NULL,NULL),(117,3,36,NULL,NULL),(118,7,36,NULL,NULL),(119,14,36,NULL,NULL),(120,1,36,NULL,NULL),(121,8,36,NULL,NULL),(122,9,36,NULL,NULL),(123,14,38,NULL,NULL),(124,17,38,NULL,NULL),(125,19,38,NULL,NULL),(126,1,38,NULL,NULL),(127,8,38,NULL,NULL),(128,9,38,NULL,NULL),(129,17,39,NULL,NULL),(130,18,39,NULL,NULL),(131,14,39,NULL,NULL),(132,1,39,NULL,NULL),(133,8,39,NULL,NULL),(134,9,39,NULL,NULL),(135,5,41,NULL,NULL),(136,10,41,NULL,NULL),(137,11,41,NULL,NULL),(138,1,41,NULL,NULL),(139,8,41,NULL,NULL),(140,9,41,NULL,NULL),(141,12,43,NULL,NULL),(142,16,43,NULL,NULL),(143,7,43,NULL,NULL),(144,1,43,NULL,NULL),(145,8,43,NULL,NULL),(146,9,43,NULL,NULL),(147,7,45,NULL,NULL),(148,15,45,NULL,NULL),(149,14,45,NULL,NULL),(150,1,45,NULL,NULL),(151,8,45,NULL,NULL),(152,9,45,NULL,NULL),(153,3,46,NULL,NULL),(154,12,46,NULL,NULL),(155,11,46,NULL,NULL),(156,1,46,NULL,NULL),(157,8,46,NULL,NULL),(158,9,46,NULL,NULL),(159,20,48,NULL,NULL),(160,13,48,NULL,NULL),(161,22,48,NULL,NULL),(162,1,48,NULL,NULL),(163,8,48,NULL,NULL),(164,9,48,NULL,NULL),(165,21,51,NULL,NULL),(166,7,51,NULL,NULL),(167,14,51,NULL,NULL),(168,1,51,NULL,NULL),(169,8,51,NULL,NULL),(170,9,51,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,3,5,'sb-e3jum27762599@business.example.com',NULL,'2023-01-31 03:15:17','2023-11-04 13:44:31'),(2,6,3,'sb-e6jum27762599@business.example.com',NULL,'2023-03-27 10:44:44','2023-11-04 13:44:31'),(3,8,2,'sb-e8jum27762599@business.example.com',NULL,'2023-05-26 05:53:35','2023-11-04 13:44:31'),(4,9,4,'sb-e9jum27762599@business.example.com',NULL,'2023-05-08 11:25:39','2023-11-04 13:44:31'),(5,10,4,'sb-e10jum27762599@business.example.com',NULL,'2023-03-30 22:40:02','2023-11-04 13:44:31'),(6,13,5,'sb-e13jum27762599@business.example.com',NULL,'2023-01-30 11:52:29','2023-11-04 13:44:31'),(7,15,1,'sb-e15jum27762599@business.example.com',NULL,'2023-02-04 23:36:25','2023-11-04 13:44:31'),(8,19,2,'sb-e19jum27762599@business.example.com',NULL,'2023-04-17 05:35:32','2023-11-04 13:44:31'),(9,24,3,'sb-e24jum27762599@business.example.com',NULL,'2023-07-09 14:04:02','2023-11-04 13:44:31'),(10,27,5,'sb-e27jum27762599@business.example.com',NULL,'2023-01-27 21:29:38','2023-11-04 13:44:31'),(11,30,3,'sb-e30jum27762599@business.example.com',NULL,'2023-07-25 06:52:57','2023-11-04 13:44:31'),(12,31,4,'sb-e31jum27762599@business.example.com',NULL,'2023-06-08 10:22:24','2023-11-04 13:44:31'),(13,32,5,'sb-e32jum27762599@business.example.com',NULL,'2022-12-06 00:34:14','2023-11-04 13:44:31'),(14,33,2,'sb-e33jum27762599@business.example.com',NULL,'2023-05-23 02:30:36','2023-11-04 13:44:31'),(15,37,2,'sb-e37jum27762599@business.example.com',NULL,'2023-08-07 14:38:58','2023-11-04 13:44:31'),(16,40,2,'sb-e40jum27762599@business.example.com',NULL,'2023-05-23 23:50:55','2023-11-04 13:44:31'),(17,42,2,'sb-e42jum27762599@business.example.com',NULL,'2023-01-24 17:19:45','2023-11-04 13:44:31'),(18,44,4,'sb-e44jum27762599@business.example.com',NULL,'2023-10-16 08:20:40','2023-11-04 13:44:31'),(19,47,3,'sb-e47jum27762599@business.example.com',NULL,'2023-04-29 03:19:19','2023-11-04 13:44:31'),(20,49,3,'sb-e49jum27762599@business.example.com',NULL,'2023-04-16 03:17:58','2023-11-04 13:44:31'),(21,50,2,'sb-e50jum27762599@business.example.com',NULL,'2023-10-23 11:02:50','2023-11-04 13:44:31'),(22,52,1,'sb-e52jum27762599@business.example.com',NULL,'2023-09-25 09:53:43','2023-11-04 13:44:31'),(23,53,2,'sb-e53jum27762599@business.example.com',NULL,'2022-11-05 15:33:03','2023-11-04 13:44:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_10_160150_create_artists_table',1),(6,'2023_09_10_160206_create_albums_table',1),(7,'2023_09_10_160220_create_songs_table',1),(8,'2023_09_10_160345_create_album_sales_table',1),(9,'2023_09_10_160402_create_artist_sales_table',1),(10,'2023_09_16_202619_create_news_table',1),(11,'2023_09_16_202941_create_news_users_table',1),(12,'2023_10_03_201735_create_tags_table',1),(13,'2023_10_03_213138_create_tags_users_table',1),(14,'2023_10_08_120803_create_orders_table',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,1,'Blaise Spinka','2023-11-04 13:44:31','2023-11-04 13:44:31'),(2,1,'Dortha Rogahn','2023-11-04 13:44:31','2023-11-04 13:44:31'),(3,1,'Prof. Tess Feest','2023-11-04 13:44:31','2023-11-04 13:44:31'),(4,2,'Dr. Estevan Ullrich Jr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(5,2,'Ms. Gilda Nienow','2023-11-04 13:44:31','2023-11-04 13:44:31'),(6,3,'Arch Yundt DVM','2023-11-04 13:44:31','2023-11-04 13:44:31'),(7,3,'Dillon Howell','2023-11-04 13:44:31','2023-11-04 13:44:31'),(8,4,'Lula Raynor III','2023-11-04 13:44:31','2023-11-04 13:44:31'),(9,4,'Angie Christiansen','2023-11-04 13:44:31','2023-11-04 13:44:31'),(10,4,'Keely McClure','2023-11-04 13:44:31','2023-11-04 13:44:31'),(11,5,'Dorcas Hoeger','2023-11-04 13:44:31','2023-11-04 13:44:31'),(12,6,'Oliver Marquardt','2023-11-04 13:44:31','2023-11-04 13:44:31'),(13,6,'Mrs. Ethelyn O\'Connell MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(14,6,'Hipolito Schaefer','2023-11-04 13:44:31','2023-11-04 13:44:31'),(15,6,'Theodora Wisozk','2023-11-04 13:44:31','2023-11-04 13:44:31'),(16,7,'Shirley Cronin','2023-11-04 13:44:31','2023-11-04 13:44:31'),(17,8,'Dr. Tomas Senger','2023-11-04 13:44:31','2023-11-04 13:44:31'),(18,8,'Mr. Jaylan Hane Jr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(19,8,'Dr. Winfield Gerhold','2023-11-04 13:44:31','2023-11-04 13:44:31'),(20,9,'Mrs. Scarlett McDermott','2023-11-04 13:44:31','2023-11-04 13:44:31'),(21,9,'Miss Ova Gibson','2023-11-04 13:44:31','2023-11-04 13:44:31'),(22,10,'Izabella Farrell','2023-11-04 13:44:31','2023-11-04 13:44:31'),(23,10,'Dr. Annetta Paucek III','2023-11-04 13:44:31','2023-11-04 13:44:31'),(24,10,'Ricky Russel','2023-11-04 13:44:31','2023-11-04 13:44:31'),(25,10,'Kenneth Hyatt V','2023-11-04 13:44:31','2023-11-04 13:44:31'),(26,11,'Bell Stiedemann','2023-11-04 13:44:31','2023-11-04 13:44:31'),(27,11,'Ofelia Skiles','2023-11-04 13:44:31','2023-11-04 13:44:31'),(28,12,'Bernardo Schoen','2023-11-04 13:44:31','2023-11-04 13:44:31'),(29,12,'Dr. Rowland Rippin','2023-11-04 13:44:31','2023-11-04 13:44:31'),(30,12,'Mrs. Fanny Heller MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(31,12,'Ms. Maxie Bins DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(32,13,'Leola Kerluke V','2023-11-04 13:44:31','2023-11-04 13:44:31'),(33,13,'Vince Collins','2023-11-04 13:44:31','2023-11-04 13:44:31'),(34,14,'Mitchell Greenholt','2023-11-04 13:44:31','2023-11-04 13:44:31'),(35,14,'Raina Windler','2023-11-04 13:44:31','2023-11-04 13:44:31'),(36,15,'Gage Fahey','2023-11-04 13:44:31','2023-11-04 13:44:31'),(37,15,'Miss Bria Lesch','2023-11-04 13:44:31','2023-11-04 13:44:31'),(38,15,'Dr. Fritz Leffler','2023-11-04 13:44:31','2023-11-04 13:44:31'),(39,16,'Dr. Molly Bode','2023-11-04 13:44:31','2023-11-04 13:44:31'),(40,16,'Kathlyn Haag','2023-11-04 13:44:31','2023-11-04 13:44:31'),(41,16,'Miss Joana Marks Sr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(42,17,'Mr. Buddy Stamm III','2023-11-04 13:44:31','2023-11-04 13:44:31'),(43,17,'Clark Reichert','2023-11-04 13:44:31','2023-11-04 13:44:31'),(44,17,'Ms. Keira Konopelski','2023-11-04 13:44:31','2023-11-04 13:44:31'),(45,18,'Prof. Ida Hermiston PhD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(46,19,'Prof. Shania Cruickshank','2023-11-04 13:44:31','2023-11-04 13:44:31'),(47,20,'Orin DuBuque','2023-11-04 13:44:31','2023-11-04 13:44:31'),(48,20,'Louvenia Walker','2023-11-04 13:44:31','2023-11-04 13:44:31'),(49,21,'Jasmin Hudson','2023-11-04 13:44:31','2023-11-04 13:44:31'),(50,21,'Gail Ward','2023-11-04 13:44:31','2023-11-04 13:44:31'),(51,21,'Nora Kihn IV','2023-11-04 13:44:31','2023-11-04 13:44:31'),(52,21,'Bradford Upton I','2023-11-04 13:44:31','2023-11-04 13:44:31'),(53,22,'Mia Powlowski','2023-11-04 13:44:31','2023-11-04 13:44:31'),(54,22,'Melyna Reichert','2023-11-04 13:44:31','2023-11-04 13:44:31'),(55,23,'Faye Wyman','2023-11-04 13:44:31','2023-11-04 13:44:31'),(56,23,'Conrad Balistreri','2023-11-04 13:44:31','2023-11-04 13:44:31'),(57,24,'Eleonore Hettinger DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(58,24,'Jovan Windler DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(59,25,'Earline Daugherty','2023-11-04 13:44:31','2023-11-04 13:44:31'),(60,25,'Mr. Zachariah Lakin IV','2023-11-04 13:44:31','2023-11-04 13:44:31'),(61,25,'Thaddeus Metz','2023-11-04 13:44:31','2023-11-04 13:44:31'),(62,26,'Jessica Labadie MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(63,26,'Prof. Kade Kemmer','2023-11-04 13:44:31','2023-11-04 13:44:31'),(64,26,'Harmony Lynch DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(65,26,'Prof. Omer Hodkiewicz','2023-11-04 13:44:31','2023-11-04 13:44:31'),(66,27,'Lonie Barton','2023-11-04 13:44:31','2023-11-04 13:44:31'),(67,28,'Shyann Dickinson','2023-11-04 13:44:31','2023-11-04 13:44:31'),(68,28,'Cordell Hyatt Sr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(69,28,'Romaine Labadie IV','2023-11-04 13:44:31','2023-11-04 13:44:31'),(70,28,'Prof. Emilia Aufderhar','2023-11-04 13:44:31','2023-11-04 13:44:31'),(71,29,'Prof. Lester Okuneva I','2023-11-04 13:44:31','2023-11-04 13:44:31'),(72,29,'Noel Deckow','2023-11-04 13:44:31','2023-11-04 13:44:31'),(73,29,'Mariano Hammes','2023-11-04 13:44:31','2023-11-04 13:44:31'),(74,29,'Zora Hoppe','2023-11-04 13:44:31','2023-11-04 13:44:31'),(75,30,'Marjory Abbott II','2023-11-04 13:44:31','2023-11-04 13:44:31'),(76,30,'Jaydon Emmerich','2023-11-04 13:44:31','2023-11-04 13:44:31'),(77,30,'Chadrick Zemlak','2023-11-04 13:44:31','2023-11-04 13:44:31'),(78,31,'Judd Weber','2023-11-04 13:44:31','2023-11-04 13:44:31'),(79,31,'Maudie Runte','2023-11-04 13:44:31','2023-11-04 13:44:31'),(80,32,'Dr. Jeremie Nolan Sr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(81,32,'Toni Thompson','2023-11-04 13:44:31','2023-11-04 13:44:31'),(82,33,'Ethelyn Toy','2023-11-04 13:44:31','2023-11-04 13:44:31'),(83,33,'Kiel Adams','2023-11-04 13:44:31','2023-11-04 13:44:31'),(84,33,'Bettie Gulgowski','2023-11-04 13:44:31','2023-11-04 13:44:31'),(85,33,'Dr. Dee Gleason Jr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(86,34,'Ms. Zaria Ward IV','2023-11-04 13:44:31','2023-11-04 13:44:31'),(87,34,'Ms. Mylene Nikolaus III','2023-11-04 13:44:31','2023-11-04 13:44:31'),(88,34,'Jody Barrows','2023-11-04 13:44:31','2023-11-04 13:44:31'),(89,34,'Mrs. Ramona Ondricka MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(90,35,'Dr. Broderick Weimann','2023-11-04 13:44:31','2023-11-04 13:44:31'),(91,35,'Verda Luettgen','2023-11-04 13:44:31','2023-11-04 13:44:31'),(92,35,'Mrs. Leila Doyle','2023-11-04 13:44:31','2023-11-04 13:44:31'),(93,36,'Dr. Reyna Douglas DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(94,36,'Gia Weber','2023-11-04 13:44:31','2023-11-04 13:44:31'),(95,37,'Mr. Dave Terry','2023-11-04 13:44:31','2023-11-04 13:44:31'),(96,38,'Prof. Natasha Powlowski MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(97,38,'Ricky Hodkiewicz','2023-11-04 13:44:31','2023-11-04 13:44:31'),(98,39,'Antwan Kuhlman','2023-11-04 13:44:31','2023-11-04 13:44:31'),(99,39,'Jennifer Schowalter','2023-11-04 13:44:31','2023-11-04 13:44:31'),(100,39,'Eleanora Hermiston Jr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(101,39,'Audra Grant','2023-11-04 13:44:31','2023-11-04 13:44:31'),(102,40,'Ms. Elsie Hansen','2023-11-04 13:44:31','2023-11-04 13:44:31'),(103,40,'Nico Ferry','2023-11-04 13:44:31','2023-11-04 13:44:31'),(104,40,'Reese Douglas PhD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(105,41,'Misael Harris','2023-11-04 13:44:31','2023-11-04 13:44:31'),(106,41,'Dr. Evan Will DVM','2023-11-04 13:44:31','2023-11-04 13:44:31'),(107,41,'Lambert Doyle','2023-11-04 13:44:31','2023-11-04 13:44:31'),(108,41,'Miss Sharon Denesik DDS','2023-11-04 13:44:31','2023-11-04 13:44:31'),(109,42,'Jamarcus Baumbach','2023-11-04 13:44:31','2023-11-04 13:44:31'),(110,42,'Charity Parker','2023-11-04 13:44:31','2023-11-04 13:44:31'),(111,42,'Kellen Goodwin IV','2023-11-04 13:44:31','2023-11-04 13:44:31'),(112,43,'Mrs. Angelita Lockman','2023-11-04 13:44:31','2023-11-04 13:44:31'),(113,44,'Jasen Hagenes','2023-11-04 13:44:31','2023-11-04 13:44:31'),(114,44,'Rosie Kessler','2023-11-04 13:44:31','2023-11-04 13:44:31'),(115,44,'Colt Kunze MD','2023-11-04 13:44:31','2023-11-04 13:44:31'),(116,45,'Zella Gerhold','2023-11-04 13:44:31','2023-11-04 13:44:31'),(117,45,'Eldred Considine','2023-11-04 13:44:31','2023-11-04 13:44:31'),(118,45,'Darrell Jast','2023-11-04 13:44:31','2023-11-04 13:44:31'),(119,45,'Isabel Waelchi','2023-11-04 13:44:31','2023-11-04 13:44:31'),(120,46,'Moshe Doyle','2023-11-04 13:44:31','2023-11-04 13:44:31'),(121,46,'Blaze Cruickshank Jr.','2023-11-04 13:44:31','2023-11-04 13:44:31'),(122,47,'Aliya Langworth','2023-11-04 13:44:31','2023-11-04 13:44:31'),(123,48,'Chanelle Parisian','2023-11-04 13:44:31','2023-11-04 13:44:31'),(124,48,'Jeremie Hodkiewicz','2023-11-04 13:44:31','2023-11-04 13:44:31'),(125,49,'Felicity Gorczany','2023-11-04 13:44:31','2023-11-04 13:44:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_users`
--

LOCK TABLES `tags_users` WRITE;
/*!40000 ALTER TABLE `tags_users` DISABLE KEYS */;
INSERT INTO `tags_users` VALUES (1,1,2,NULL,NULL),(2,1,4,NULL,NULL),(3,1,5,NULL,NULL),(4,1,7,NULL,NULL),(5,1,11,NULL,NULL),(6,1,12,NULL,NULL),(7,1,14,NULL,NULL),(8,1,16,NULL,NULL),(9,1,17,NULL,NULL),(10,1,18,NULL,NULL),(11,1,20,NULL,NULL),(12,1,21,NULL,NULL),(13,1,22,NULL,NULL),(14,1,23,NULL,NULL),(15,1,25,NULL,NULL),(16,1,26,NULL,NULL),(17,1,28,NULL,NULL),(18,1,29,NULL,NULL),(19,1,34,NULL,NULL),(20,1,35,NULL,NULL),(21,1,36,NULL,NULL),(22,1,38,NULL,NULL),(23,1,39,NULL,NULL),(24,1,41,NULL,NULL),(25,1,43,NULL,NULL),(26,1,45,NULL,NULL),(27,1,46,NULL,NULL),(28,1,48,NULL,NULL),(29,1,51,NULL,NULL);
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
INSERT INTO `users` VALUES (1,NULL,'admin','admin@admin.it',NULL,NULL,'admin','2023-11-04 13:44:17','$2y$12$6ojJcNIvy6zMzJetHKA2W.Xj68GwoMPeU5ph5jwIqcuxbBbhhlKbm',NULL,'2023-11-04 13:44:18','2023-11-04 13:44:18'),(2,NULL,'cacao','cacao@cacao.it','Italy','Florence','user','2023-11-04 13:44:18','$2y$12$7p8r2dFg8E7zWtSTkJsKMuS7oDZAX4mUN8iIbuCB8tg59p/ulAwpm',NULL,'2023-11-04 13:44:18','2023-11-04 13:44:18'),(3,NULL,'vitali','vitali@vitali.it',NULL,NULL,'artist','2023-11-04 13:44:18','$2y$12$.X1fi6FOwtXuerkA6hgbdudNFeG1rAfe52ofvQNAhkJ7NRBEkS1y2',NULL,'2023-11-04 13:44:18','2023-11-04 13:44:18'),(4,NULL,'Emma Quitzon','lowe.conrad@example.net','France','San Francisco','user','2023-11-04 13:44:18','$2y$12$nX9EZfDYLPikHbMqTKq/wueXsIT6j1NK4fVU.eg/J9DATrDfOnjl6','wDjQ2sPLaL','2022-12-09 19:01:53','2023-11-04 13:44:30'),(5,NULL,'Enoch Bednar II','wuckert.felipe@example.net','France','Barcelona','user','2023-11-04 13:44:18','$2y$12$cbbFcvbl3oUkCzk2EeRuMuEhdRAhtS5OEYGVbIndZHnUpyjkNMMPu','gbrUN2rUfH','2023-08-21 00:34:54','2023-11-04 13:44:30'),(6,NULL,'Carleton Hegmann III','allie.pfeffer@example.com','USA','NY','artist','2023-11-04 13:44:19','$2y$12$TSnQosRVGICu9.Ai7iBsW.O3SXCbMPvgbKjnukdnE7/JIlDC9Y.ku','lXk7pfj0Yo','2023-06-22 20:02:01','2023-11-04 13:44:30'),(7,NULL,'Roxanne Yundt','river.jaskolski@example.net','USA','San Francisco','user','2023-11-04 13:44:19','$2y$12$KlS3SWUO87PGNi2H./M5aOIiS0Aj0kt7rjt2mH2SaQf1QbCj8C7Tu','DM4KyzIyNV','2023-06-08 17:47:28','2023-11-04 13:44:30'),(8,NULL,'Afton Wolff','katheryn.pfeffer@example.com','Italy','Berlin','artist','2023-11-04 13:44:19','$2y$12$DCwmFZqkG1LUmWrlhIFd/.WTb78vAEJi2P3wEh8Dj4cQpecE.0hhm','TBSvEuyud5','2023-04-20 12:23:44','2023-11-04 13:44:30'),(9,NULL,'Braxton Kreiger','bethany42@example.org','France','Berlin','artist','2023-11-04 13:44:20','$2y$12$gngEt0rmCvbhZRRmaeWXPeAX9uxwnO/Z7R8QGb3/CbQ.JLlY9basC','xDIJ2Oyb74','2023-11-01 18:19:44','2023-11-04 13:44:30'),(10,NULL,'Madonna Cremin','dominic.carter@example.org','Italy','Paris','artist','2023-11-04 13:44:20','$2y$12$B1Rhwu1wBlp25S2GToELF.yr5s/7o9pra5Q6brIOtkz4CRdOsUR62','qB6GDz7k24','2023-06-22 21:04:43','2023-11-04 13:44:30'),(11,NULL,'Mable Gerhold DVM','evangeline04@example.org','Spain','San Francisco','user','2023-11-04 13:44:20','$2y$12$UFbJOwjffF.mjORK94OZY.Z4csqim59pCkN7iCVN39iaU/K9TEsCu','mhoT4Yy1jr','2023-06-03 20:40:05','2023-11-04 13:44:30'),(12,NULL,'Davion Beier','kassulke.ciara@example.net','France','Paris','user','2023-11-04 13:44:20','$2y$12$u7I84yH5mylef0iegONY7e79TfJ1trcICS3AeZ7Fl3Mm8SCM1V2hS','Ye4ZfUWUuM','2022-11-19 21:52:05','2023-11-04 13:44:30'),(13,NULL,'Mrs. Asia Stokes','vwest@example.com','Germany','Rome','artist','2023-11-04 13:44:20','$2y$12$sZpMe3Ck7sH9EtRkj1F65.Atq0GeKe9SW.M6rYvwK36WiBQJmEIIO','qv55YLzPrz','2023-03-01 20:05:15','2023-11-04 13:44:30'),(14,NULL,'Eryn Batz','bosco.eunice@example.com','France','NY','user','2023-11-04 13:44:21','$2y$12$wWg.mNR87IITntfVb40hTOcnyIY/VMZ45F4HwCJ9ynKFEQJUxkKE.','tHISGYjUmw','2023-07-02 22:38:54','2023-11-04 13:44:30'),(15,NULL,'Mazie Emmerich','zbergstrom@example.org','USA','Paris','artist','2023-11-04 13:44:21','$2y$12$H94cRFiyC.OoY5/tlTE5beogFGrVycFz1c4MDgChS0nCzUQV6nhmK','UF2S6Rrwq9','2023-03-05 10:10:40','2023-11-04 13:44:30'),(16,NULL,'Elliot Flatley','garnet38@example.net','France','Berlin','user','2023-11-04 13:44:21','$2y$12$I63DiPnM6Znwno6r.qx55ufch0HMdMaiDGn8X8pZwrJ8lIXf5nI/O','Zgcapy0EBo','2023-10-18 01:56:44','2023-11-04 13:44:30'),(17,NULL,'Donald West','fahey.verla@example.org','France','Madrid','user','2023-11-04 13:44:21','$2y$12$ffwM.KHp/0BCA2yhCqOGwe0BoWF5Y79azh0gg7WH4sMvXpvDzS44m','j06TaFGrJV','2023-02-08 01:47:17','2023-11-04 13:44:30'),(18,NULL,'Ed Lindgren','rudolph35@example.net','Spain','Florence','user','2023-11-04 13:44:22','$2y$12$XhZSyxpZ3CD4f5CqwVzacO.KxaMAkEVeKSKElVVjNYYRb1jHC4a6u','HnVmbMxqnE','2022-11-15 22:35:52','2023-11-04 13:44:30'),(19,NULL,'Dr. Amelie Davis III','hegmann.wyman@example.org','USA','Madrid','artist','2023-11-04 13:44:22','$2y$12$7dCUhcNMvzgVFRB7b1RJd.7uUn6cmO1.VUA2vmiyUxJrfU0TkT7RO','x68H7k0KBn','2022-12-29 12:15:17','2023-11-04 13:44:30'),(20,NULL,'Jackeline Hansen','legros.emely@example.org','USA','Paris','user','2023-11-04 13:44:22','$2y$12$w4U6s8Xn8psaUUfFwbGqt.VQx52GEjpF8K/oUUGLU5fVmiFYT71eS','kOBgjcciW8','2023-07-23 01:09:13','2023-11-04 13:44:30'),(21,NULL,'Darrion Bayer MD','marquardt.selmer@example.org','Italy','Paris','user','2023-11-04 13:44:22','$2y$12$VmNSc3zZmiiB7JpU5e8Zj.5sqVdUESKSGcZ2/EjWsQcY6NNXRtdPO','xKRTIMbMCc','2023-08-21 21:33:58','2023-11-04 13:44:30'),(22,NULL,'Mr. Howell Torp I','ehauck@example.net','USA','NY','user','2023-11-04 13:44:23','$2y$12$CoTM.v1ncN82qA8r4stMuevIR6H3Fpj2i.RCQBcLvacYwuMx3JML6','qG0PFCNb8g','2023-03-20 03:26:13','2023-11-04 13:44:30'),(23,NULL,'Hollie Williamson','samanta.mccullough@example.net','USA','Berlin','user','2023-11-04 13:44:23','$2y$12$xcwd3TzcZi9ojQq8fNCJOeKsiAdOh1P/s9soB2qFqMotE/aq78Fmq','wMxXp2D1GM','2022-11-20 13:33:19','2023-11-04 13:44:30'),(24,NULL,'Miss Muriel Schuster III','ustoltenberg@example.net','France','San Francisco','artist','2023-11-04 13:44:23','$2y$12$ZDmNdIC2rJbyHWCW1yYFO.W5jR8qGOQGPPa4HTvW7nvF.MCIzo.J2','F4S5VhFYOj','2022-12-09 03:38:29','2023-11-04 13:44:30'),(25,NULL,'Mrs. Noelia Rath','steuber.vincenza@example.org','Germany','San Francisco','user','2023-11-04 13:44:23','$2y$12$tYO3xA09P5OB/1M0gmWw7uwJZgEwvfEkaD49GmfNfIMbJ0a9CRnmC','SMeOkX6Vdc','2023-09-06 08:57:10','2023-11-04 13:44:30'),(26,NULL,'Hobart Kuhn','uondricka@example.com','Germany','Paris','user','2023-11-04 13:44:24','$2y$12$ELqBYzzzY8EpshgzYl3tMOsaKfiTxEZ39PebS4NySdSS46ohowoRy','FZPaEr2BIp','2023-09-10 08:28:09','2023-11-04 13:44:30'),(27,NULL,'Mr. Terry Hayes','ayden.gorczany@example.org','USA','Berlin','artist','2023-11-04 13:44:24','$2y$12$oJGItFFlEx3U1ePUz3ojrOeBtgz0nvb./itYCb1.yVgmduLa9yMxe','JuVHFGbMK3','2023-04-10 23:56:25','2023-11-04 13:44:30'),(28,NULL,'Prof. Morton Dietrich I','issac.feil@example.net','Spain','Rome','user','2023-11-04 13:44:24','$2y$12$qExmz1UCa7kQAOs3uo0vU..MlujMYAwZ52s0IwWDjv6HmYfUELHf2','Y7nEWx8NTn','2023-07-02 20:20:52','2023-11-04 13:44:30'),(29,NULL,'Leora Keeling','jude89@example.net','France','Paris','user','2023-11-04 13:44:25','$2y$12$89OLxHM4R6Yz0psVliTYpOeTykHGbOu3oUsMT0A07.D99N2.1zVqG','btBZjLqr5v','2022-12-29 21:15:53','2023-11-04 13:44:30'),(30,NULL,'Ansley O\'Kon','gconn@example.net','France','San Francisco','artist','2023-11-04 13:44:25','$2y$12$pT6kZ4VbNAuCaihALNexbekS90v5JWbCZj3jpo8KSG89C3dyifNcS','UAnhmU7yg3','2023-01-31 18:10:28','2023-11-04 13:44:30'),(31,NULL,'Francesca Williamson','bartoletti.jovany@example.net','France','NY','artist','2023-11-04 13:44:25','$2y$12$TZsId/i6ltj3Zcv3bA8kKexcVOghZk5RghlrZR1HRVDgH48k/SXPy','LzVv0WCQ7a','2023-04-14 15:36:18','2023-11-04 13:44:30'),(32,NULL,'Jarvis Toy','stamm.hershel@example.com','USA','Paris','artist','2023-11-04 13:44:25','$2y$12$uj0fvReUXStnkQ63qTYNN.borEvl2Uf8j7wjoFedtjPCY2/spWTNC','fQT8pqOKVs','2023-10-19 05:10:12','2023-11-04 13:44:30'),(33,NULL,'Clifton Bruen Sr.','jazmyn.okeefe@example.com','USA','Florence','artist','2023-11-04 13:44:26','$2y$12$3xesw9KdWvTMPNYE0cCLNuEMrTRL/0yP5Oxfw8nfATL/AnExQrZDC','zAoazeL636','2022-11-15 11:48:50','2023-11-04 13:44:30'),(34,NULL,'Miss Dejah Mertz DDS','cathy03@example.com','France','Rome','user','2023-11-04 13:44:26','$2y$12$K9mWDZi/uqBYK03V3O3tF.Vlmo0PSzG/mxQWDSomnA99herxdoHk.','LKSpRl3HwO','2023-01-10 17:56:47','2023-11-04 13:44:30'),(35,NULL,'Ashleigh Tromp','sonny.cole@example.org','Spain','Barcelona','user','2023-11-04 13:44:26','$2y$12$9RaSs.g9ck4BA56Uij2XkuMWm4b2dnFBmCKmAA4xD3XR4HwrymqvW','Er7xTPwZRc','2023-08-04 12:59:10','2023-11-04 13:44:30'),(36,NULL,'Alexys Romaguera','aferry@example.net','Germany','Rome','user','2023-11-04 13:44:26','$2y$12$6SU68IP32wNz10KXLYmfVuy8QsMJEkZBGApB0i/Q79pD6NxsuyyFO','niunKErMe2','2023-05-06 11:46:36','2023-11-04 13:44:30'),(37,NULL,'Donavon Koch','lenny.mcclure@example.com','Spain','Madrid','artist','2023-11-04 13:44:27','$2y$12$tON6tgW20HK/EGoF6smNreTKubfH9BbE8RnczhO5Po4K3kWtQyR1q','8uzVEt1LNg','2023-09-29 06:54:19','2023-11-04 13:44:30'),(38,NULL,'Dr. Ansel Becker','oreilly@example.net','USA','Florence','user','2023-11-04 13:44:27','$2y$12$Drt2HZMWQAWSYHpJ7.F2GOs4lLkKzcQljQJKgdZtCNlKix/CYVsp.','n8rjd83byR','2023-04-04 22:45:58','2023-11-04 13:44:30'),(39,NULL,'Sandra Harber','boyle.odell@example.net','USA','Florence','user','2023-11-04 13:44:27','$2y$12$j0WCBYp29cvl0h8sP5pM9.mSpV4fSsj7byjKxTwjKXleJnAqBncK2','XHufmiHeCf','2023-05-09 20:11:41','2023-11-04 13:44:30'),(40,NULL,'Willa Sawayn II','emiliano.eichmann@example.org','Italy','Berlin','artist','2023-11-04 13:44:27','$2y$12$sCLdwesy5k91Tkr5MkC89OXgFxoI6JNdPcaVARwe6DFjIQqnCYsRW','pIAfhgI38A','2023-08-03 15:30:03','2023-11-04 13:44:30'),(41,NULL,'Bernice Boyle','aosinski@example.org','USA','Rome','user','2023-11-04 13:44:28','$2y$12$67d.u/0osbm4Be8/vkwJteLLnsP8f31/nGNFXGDkttj.KazFr36Uy','Rzmkvjlkb2','2023-08-09 16:35:06','2023-11-04 13:44:30'),(42,NULL,'Laurianne Orn Jr.','kjacobs@example.net','Spain','Madrid','artist','2023-11-04 13:44:28','$2y$12$o778XjhOn8wpSXfdx3Gjh.9rzMPmmGABz0uvXeefFPwmu4zC2x/v2','9bzlfcpeJx','2023-02-01 02:32:13','2023-11-04 13:44:30'),(43,NULL,'Felicity DuBuque Sr.','brisa.mayert@example.org','France','NY','user','2023-11-04 13:44:28','$2y$12$WAULTZ2lRYMjn8KQUdGqfOwcffIluSoju/VF/UnDg8TjSiZtwOiOu','nQsw0xGRKN','2022-11-23 16:24:49','2023-11-04 13:44:30'),(44,NULL,'Kieran Vandervort','tyson.hammes@example.net','France','Rome','artist','2023-11-04 13:44:28','$2y$12$xf5hro.coDkcTkpeXgts6OMoces.P8D8DzwsqynxJjE0a9oXNfik6','UzynsR2VRz','2023-11-02 14:53:31','2023-11-04 13:44:30'),(45,NULL,'Dr. Cecil McClure Sr.','israel76@example.org','USA','Berlin','user','2023-11-04 13:44:28','$2y$12$twr5dkhMXRTs5IGR4RcwWeEieBIwLmSwRbY0S1CegYA0CsyEYnz92','2VkCwngTLU','2023-09-30 19:22:44','2023-11-04 13:44:30'),(46,NULL,'Brooklyn Mayer','zhaag@example.com','Spain','Madrid','user','2023-11-04 13:44:29','$2y$12$gLmxELhRdArEuk28JMkSHOGRfA04mtI/d61wXRcjV8pXFYuUnIyNG','5ya6v97uU3','2023-06-01 23:13:09','2023-11-04 13:44:30'),(47,NULL,'Titus Morar','ahmed.doyle@example.org','Germany','Barcelona','artist','2023-11-04 13:44:29','$2y$12$tghKlNrXASX/Yr.ktO7AEOmwV8scDWe2hSuPSLCcY1zbPBmdrCDPu','1iWMWRRWXR','2023-03-28 17:41:09','2023-11-04 13:44:30'),(48,NULL,'Miss Kasandra Thiel','ykunde@example.org','Germany','Madrid','user','2023-11-04 13:44:29','$2y$12$OEBBqvhooUsUjkzTVyCOJu4vn2UCGsG46OwhAre7cWNptwK7bTLRq','O8iiRooDd5','2023-01-31 09:57:13','2023-11-04 13:44:30'),(49,NULL,'Karianne Ratke','rlueilwitz@example.org','USA','San Francisco','artist','2023-11-04 13:44:29','$2y$12$h4EBOmFv19SaygkIfZ3S4OasYFqSjqpfQEdqKuDslqKzeo./qae4a','cC2GpjSlD0','2023-07-30 19:15:11','2023-11-04 13:44:30'),(50,NULL,'Brock Douglas','rodolfo96@example.net','USA','Berlin','artist','2023-11-04 13:44:30','$2y$12$232lTJRkQv9tHA3dWs.GBOHnz4NlezVkV0x2tq602.5QX76nFwxKm','802qe3HOjU','2023-07-30 18:53:43','2023-11-04 13:44:30'),(51,NULL,'Percy O\'Hara I','meta.jacobi@example.net','Germany','Barcelona','user','2023-11-04 13:44:30','$2y$12$f40uwZ7g5/F289Vg/diio.xA8czU7YxgWKz9ZJF8Yc3aBDTXzAcGK','VB0xE8QmlL','2022-11-19 04:17:19','2023-11-04 13:44:30'),(52,NULL,'Uriel Okuneva','hodkiewicz.omari@example.com','France','NY','artist','2023-11-04 13:44:30','$2y$12$mA1YVr7PKqB.yqu2atl3qeqURjOdc6IuZchXrH4Ph.Gfq/pVSmHZO','4YpIFV342L','2023-09-10 20:58:18','2023-11-04 13:44:30'),(53,NULL,'Rudolph Roberts','huels.telly@example.org','Spain','Madrid','artist','2023-11-04 13:44:30','$2y$12$fU2hdVJzMPjMdYbCYt0iWOTBsGoo7oXjyH3SXU93C5qMsOvat6Tzm','eA1Jg7TQLK','2023-02-11 14:23:50','2023-11-04 13:44:30');
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

-- Dump completed on 2023-11-04 18:17:55
