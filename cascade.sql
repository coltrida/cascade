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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_sales`
--

LOCK TABLES `album_sales` WRITE;
/*!40000 ALTER TABLE `album_sales` DISABLE KEYS */;
INSERT INTO `album_sales` VALUES (1,2,2,NULL,'2023-11-12 20:47:14'),(2,3,2,NULL,'2023-11-12 20:47:14'),(3,4,2,NULL,'2023-11-12 20:47:14'),(4,5,2,NULL,'2023-11-12 20:47:14'),(5,6,2,NULL,'2023-11-12 20:47:14'),(6,1,8,NULL,'2023-11-12 20:47:14'),(7,2,8,NULL,'2023-11-12 20:47:14'),(8,4,8,NULL,'2023-11-12 20:47:14'),(9,5,8,NULL,'2023-11-12 20:47:14'),(10,6,8,NULL,'2023-11-12 20:47:14'),(11,2,10,NULL,'2023-11-12 20:47:14'),(12,3,10,NULL,'2023-11-12 20:47:14'),(13,4,10,NULL,'2023-11-12 20:47:14'),(14,5,10,NULL,'2023-11-12 20:47:14'),(15,6,10,NULL,'2023-11-12 20:47:14'),(16,1,11,NULL,'2023-11-12 20:47:14'),(17,2,11,NULL,'2023-11-12 20:47:14'),(18,4,11,NULL,'2023-11-12 20:47:14'),(19,5,11,NULL,'2023-11-12 20:47:14'),(20,6,11,NULL,'2023-11-12 20:47:14'),(21,1,12,NULL,'2023-11-12 20:47:14'),(22,2,12,NULL,'2023-11-12 20:47:14'),(23,4,12,NULL,'2023-11-12 20:47:14'),(24,5,12,NULL,'2023-11-12 20:47:14'),(25,6,12,NULL,'2023-11-12 20:47:14'),(26,3,14,NULL,'2023-11-12 20:47:14'),(27,1,14,NULL,'2023-11-12 20:47:14'),(28,4,14,NULL,'2023-11-12 20:47:14'),(29,5,14,NULL,'2023-11-12 20:47:14'),(30,6,14,NULL,'2023-11-12 20:47:14'),(31,1,15,NULL,'2023-11-12 20:47:14'),(32,3,15,NULL,'2023-11-12 20:47:14'),(33,4,15,NULL,'2023-11-12 20:47:14'),(34,5,15,NULL,'2023-11-12 20:47:14'),(35,6,15,NULL,'2023-11-12 20:47:14'),(36,3,18,NULL,'2023-11-12 20:47:14'),(37,4,18,NULL,'2023-11-12 20:47:14'),(38,5,18,NULL,'2023-11-12 20:47:14'),(39,6,18,NULL,'2023-11-12 20:47:14'),(40,2,20,NULL,'2023-11-12 20:47:14'),(41,3,20,NULL,'2023-11-12 20:47:14'),(42,4,20,NULL,'2023-11-12 20:47:14'),(43,5,20,NULL,'2023-11-12 20:47:14'),(44,6,20,NULL,'2023-11-12 20:47:14'),(45,3,23,NULL,'2023-11-12 20:47:14'),(46,1,23,NULL,'2023-11-12 20:47:14'),(47,2,23,NULL,'2023-11-12 20:47:14'),(48,4,23,NULL,'2023-11-12 20:47:14'),(49,5,23,NULL,'2023-11-12 20:47:14'),(50,6,23,NULL,'2023-11-12 20:47:14'),(51,1,26,NULL,'2023-11-12 20:47:14'),(52,3,26,NULL,'2023-11-12 20:47:14'),(53,2,26,NULL,'2023-11-12 20:47:14'),(54,4,26,NULL,'2023-11-12 20:47:14'),(55,5,26,NULL,'2023-11-12 20:47:14'),(56,6,26,NULL,'2023-11-12 20:47:14'),(57,2,30,NULL,'2023-11-12 20:47:14'),(58,3,30,NULL,'2023-11-12 20:47:14'),(59,4,30,NULL,'2023-11-12 20:47:14'),(60,5,30,NULL,'2023-11-12 20:47:14'),(61,6,30,NULL,'2023-11-12 20:47:14'),(62,3,31,NULL,'2023-11-12 20:47:14'),(63,2,31,NULL,'2023-11-12 20:47:14'),(64,4,31,NULL,'2023-11-12 20:47:14'),(65,5,31,NULL,'2023-11-12 20:47:14'),(66,6,31,NULL,'2023-11-12 20:47:14'),(67,2,32,NULL,'2023-11-12 20:47:14'),(68,1,32,NULL,'2023-11-12 20:47:14'),(69,4,32,NULL,'2023-11-12 20:47:14'),(70,5,32,NULL,'2023-11-12 20:47:14'),(71,6,32,NULL,'2023-11-12 20:47:14'),(72,1,33,NULL,'2023-11-12 20:47:14'),(73,3,33,NULL,'2023-11-12 20:47:14'),(74,2,33,NULL,'2023-11-12 20:47:14'),(75,4,33,NULL,'2023-11-12 20:47:14'),(76,5,33,NULL,'2023-11-12 20:47:14'),(77,6,33,NULL,'2023-11-12 20:47:14'),(78,1,35,NULL,'2023-11-12 20:47:14'),(79,2,35,NULL,'2023-11-12 20:47:14'),(80,3,35,NULL,'2023-11-12 20:47:14'),(81,4,35,NULL,'2023-11-12 20:47:14'),(82,5,35,NULL,'2023-11-12 20:47:14'),(83,6,35,NULL,'2023-11-12 20:47:14'),(84,1,37,NULL,'2023-11-12 20:47:14'),(85,2,37,NULL,'2023-11-12 20:47:14'),(86,4,37,NULL,'2023-11-12 20:47:14'),(87,5,37,NULL,'2023-11-12 20:47:14'),(88,6,37,NULL,'2023-11-12 20:47:14'),(89,1,40,NULL,'2023-11-12 20:47:14'),(90,2,40,NULL,'2023-11-12 20:47:14'),(91,3,40,NULL,'2023-11-12 20:47:14'),(92,4,40,NULL,'2023-11-12 20:47:14'),(93,5,40,NULL,'2023-11-12 20:47:14'),(94,6,40,NULL,'2023-11-12 20:47:14'),(95,2,42,NULL,'2023-11-12 20:47:14'),(96,3,42,NULL,'2023-11-12 20:47:14'),(97,4,42,NULL,'2023-11-12 20:47:14'),(98,5,42,NULL,'2023-11-12 20:47:14'),(99,6,42,NULL,'2023-11-12 20:47:14'),(100,1,46,NULL,'2023-11-12 20:47:14'),(101,2,46,NULL,'2023-11-12 20:47:14'),(102,4,46,NULL,'2023-11-12 20:47:14'),(103,5,46,NULL,'2023-11-12 20:47:14'),(104,6,46,NULL,'2023-11-12 20:47:14'),(105,2,51,NULL,'2023-11-12 20:47:14'),(106,3,51,NULL,'2023-11-12 20:47:14'),(107,4,51,NULL,'2023-11-12 20:47:14'),(108,5,51,NULL,'2023-11-12 20:47:14'),(109,6,51,NULL,'2023-11-12 20:47:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'album1',42.00,1,1,NULL,NULL,NULL),(2,1,'album2',32.00,1,1,NULL,NULL,NULL),(3,1,'album3',52.00,1,1,NULL,NULL,NULL),(4,2,'Eldridge Jaskolski PhD',47.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(5,2,'Mrs. Ollie McLaughlin Sr.',15.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(6,3,'Aniyah Abshire Sr.',40.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(7,4,'Shanel Gutmann',16.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(8,4,'Lucas Little II',25.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(9,5,'Teresa Marvin',12.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(10,5,'Chaya Jaskolski',46.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(11,6,'Dr. Jettie Schneider PhD',40.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(12,6,'Icie Leuschke',23.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(13,6,'Jacques Spinka MD',15.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(14,7,'Mrs. Jessyca Luettgen IV',38.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(15,7,'Jarvis Nolan',13.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(16,7,'Kaycee Greenfelder DVM',47.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(17,8,'Alexie Brown',47.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(18,8,'Georgianna O\'Kon',19.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(19,9,'Otha Friesen',14.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(20,9,'Dr. Kaley Stark III',28.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(21,9,'Alexane Kshlerin',10.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(22,10,'Mr. Jake Carroll V',29.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(23,11,'Trudie Bode',48.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(24,11,'Francisca Bradtke',21.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(25,11,'Otis Gleichner',33.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(26,12,'Prof. Frederique Reinger DVM',34.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(27,12,'Ms. Shanelle Kreiger',39.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(28,12,'Arvilla Prosacco',38.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(29,13,'Greyson Bartoletti III',10.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(30,13,'Prof. Antonette Emard DVM',11.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(31,14,'Miss Felicita Watsica',46.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(32,15,'Prof. Forest Lesch I',21.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(33,15,'Miss River Kunze Jr.',45.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(34,16,'Mr. Demarcus Davis MD',46.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(35,16,'Elinore Torphy',17.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(36,17,'Esmeralda Paucek',49.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(37,17,'Eula Powlowski Jr.',28.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(38,17,'Chloe Dooley',32.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(39,18,'Ms. Adela Corkery I',43.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(40,18,'Angela Macejkovic',11.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(41,18,'Avis Renner',10.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(42,19,'Roel Mante',17.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(43,19,'Lesly Armstrong',43.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(44,19,'Aurelie Toy',29.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(45,20,'Murray Bradtke Sr.',24.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(46,21,'Sabrina Rohan',33.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(47,21,'Dr. Jonathon Kovacek V',45.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(48,21,'Mackenzie Purdy',10.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(49,22,'Lamar Howe',29.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(50,22,'Marina Greenholt',26.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(51,22,'Akeem Zulauf',14.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(52,23,'Mrs. Meghan Ullrich MD',12.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(53,23,'Dr. Marlon Bashirian IV',11.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(54,23,'Mr. D\'angelo Morissette IV',48.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(55,24,'Destin Tremblay',15.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(56,24,'Mrs. Alisha Macejkovic IV',22.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(57,25,'Mrs. Matilda Cummings',10.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(58,25,'Mr. Stanford Feil',18.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(59,26,'Forest Durgan',42.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(60,26,'Dr. Juwan Cummerata PhD',34.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(61,27,'Mr. Edison Langosh',13.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(62,27,'Yvette Johns PhD',27.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(63,28,'Dedric Boyle',32.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(64,29,'Dino Mayer',43.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(65,29,'Prof. Otis Hilpert',22.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(66,29,'Chanelle Pagac V',43.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(67,30,'Henderson Mueller',40.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(68,30,'Mitchel Mohr',22.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(69,31,'Hipolito Franecki',20.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(70,31,'Prof. Fern Will',26.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14'),(71,31,'Lexus Bruen',30.00,1,1,NULL,'2023-11-12 20:47:14','2023-11-12 20:47:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_sales`
--

LOCK TABLES `artist_sales` WRITE;
/*!40000 ALTER TABLE `artist_sales` DISABLE KEYS */;
INSERT INTO `artist_sales` VALUES (1,13,2,NULL,NULL),(2,29,2,NULL,NULL),(3,30,2,NULL,NULL),(4,1,2,NULL,NULL),(5,8,2,NULL,NULL),(6,9,2,NULL,NULL),(7,26,8,NULL,NULL),(8,30,8,NULL,NULL),(9,9,8,NULL,NULL),(10,1,8,NULL,NULL),(11,8,8,NULL,NULL),(12,8,10,NULL,NULL),(13,17,10,NULL,NULL),(14,12,10,NULL,NULL),(15,1,10,NULL,NULL),(16,9,10,NULL,NULL),(17,5,11,NULL,NULL),(18,6,11,NULL,NULL),(19,7,11,NULL,NULL),(20,1,11,NULL,NULL),(21,8,11,NULL,NULL),(22,9,11,NULL,NULL),(23,15,12,NULL,NULL),(24,4,12,NULL,NULL),(25,28,12,NULL,NULL),(26,1,12,NULL,NULL),(27,8,12,NULL,NULL),(28,9,12,NULL,NULL),(29,21,14,NULL,NULL),(30,17,14,NULL,NULL),(31,7,14,NULL,NULL),(32,1,14,NULL,NULL),(33,8,14,NULL,NULL),(34,9,14,NULL,NULL),(35,4,15,NULL,NULL),(36,30,15,NULL,NULL),(37,12,15,NULL,NULL),(38,1,15,NULL,NULL),(39,8,15,NULL,NULL),(40,9,15,NULL,NULL),(41,28,18,NULL,NULL),(42,8,18,NULL,NULL),(43,1,18,NULL,NULL),(44,9,18,NULL,NULL),(45,10,20,NULL,NULL),(46,28,20,NULL,NULL),(47,24,20,NULL,NULL),(48,1,20,NULL,NULL),(49,8,20,NULL,NULL),(50,9,20,NULL,NULL),(51,25,23,NULL,NULL),(52,23,23,NULL,NULL),(53,6,23,NULL,NULL),(54,1,23,NULL,NULL),(55,8,23,NULL,NULL),(56,9,23,NULL,NULL),(57,23,26,NULL,NULL),(58,8,26,NULL,NULL),(59,29,26,NULL,NULL),(60,1,26,NULL,NULL),(61,9,26,NULL,NULL),(62,27,30,NULL,NULL),(63,23,30,NULL,NULL),(64,26,30,NULL,NULL),(65,1,30,NULL,NULL),(66,8,30,NULL,NULL),(67,9,30,NULL,NULL),(68,2,31,NULL,NULL),(69,4,31,NULL,NULL),(70,26,31,NULL,NULL),(71,1,31,NULL,NULL),(72,8,31,NULL,NULL),(73,9,31,NULL,NULL),(74,25,32,NULL,NULL),(75,3,32,NULL,NULL),(76,11,32,NULL,NULL),(77,1,32,NULL,NULL),(78,8,32,NULL,NULL),(79,9,32,NULL,NULL),(80,27,33,NULL,NULL),(81,8,33,NULL,NULL),(82,1,33,NULL,NULL),(83,9,33,NULL,NULL),(84,22,35,NULL,NULL),(85,19,35,NULL,NULL),(86,1,35,NULL,NULL),(87,8,35,NULL,NULL),(88,9,35,NULL,NULL),(89,5,37,NULL,NULL),(90,20,37,NULL,NULL),(91,13,37,NULL,NULL),(92,1,37,NULL,NULL),(93,8,37,NULL,NULL),(94,9,37,NULL,NULL),(95,19,40,NULL,NULL),(96,28,40,NULL,NULL),(97,13,40,NULL,NULL),(98,1,40,NULL,NULL),(99,8,40,NULL,NULL),(100,9,40,NULL,NULL),(101,29,42,NULL,NULL),(102,24,42,NULL,NULL),(103,9,42,NULL,NULL),(104,1,42,NULL,NULL),(105,8,42,NULL,NULL),(106,4,46,NULL,NULL),(107,17,46,NULL,NULL),(108,6,46,NULL,NULL),(109,1,46,NULL,NULL),(110,8,46,NULL,NULL),(111,9,46,NULL,NULL),(112,26,51,NULL,NULL),(113,24,51,NULL,NULL),(114,25,51,NULL,NULL),(115,1,51,NULL,NULL),(116,8,51,NULL,NULL),(117,9,51,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,3,4,'sb-e3jum27762599@business.example.com',NULL,'2023-06-04 10:56:13','2023-11-12 20:47:13'),(2,4,4,'sb-e4jum27762599@business.example.com',NULL,'2023-05-26 13:26:59','2023-11-12 20:47:13'),(3,5,5,'sb-e5jum27762599@business.example.com',NULL,'2023-09-25 10:44:13','2023-11-12 20:47:13'),(4,6,2,'sb-e6jum27762599@business.example.com',NULL,'2022-12-18 02:24:41','2023-11-12 20:47:13'),(5,7,2,'sb-e7jum27762599@business.example.com',NULL,'2023-09-09 23:31:03','2023-11-12 20:47:13'),(6,9,4,'sb-e9jum27762599@business.example.com',NULL,'2022-11-30 00:21:26','2023-11-12 20:47:13'),(7,13,3,'sb-e13jum27762599@business.example.com',NULL,'2023-02-28 01:41:48','2023-11-12 20:47:13'),(8,16,1,'sb-e16jum27762599@business.example.com',NULL,'2023-04-20 01:54:25','2023-11-12 20:47:13'),(9,17,1,'sb-e17jum27762599@business.example.com',NULL,'2023-10-09 06:36:55','2023-11-12 20:47:13'),(10,19,2,'sb-e19jum27762599@business.example.com',NULL,'2023-10-25 21:35:00','2023-11-12 20:47:13'),(11,21,1,'sb-e21jum27762599@business.example.com',NULL,'2023-05-03 15:23:41','2023-11-12 20:47:13'),(12,22,4,'sb-e22jum27762599@business.example.com',NULL,'2022-11-29 01:10:44','2023-11-12 20:47:13'),(13,24,2,'sb-e24jum27762599@business.example.com',NULL,'2023-08-04 14:30:46','2023-11-12 20:47:13'),(14,25,2,'sb-e25jum27762599@business.example.com',NULL,'2023-02-13 16:49:17','2023-11-12 20:47:13'),(15,27,5,'sb-e27jum27762599@business.example.com',NULL,'2023-05-06 00:44:57','2023-11-12 20:47:13'),(16,28,5,'sb-e28jum27762599@business.example.com',NULL,'2023-10-12 06:44:50','2023-11-12 20:47:13'),(17,29,1,'sb-e29jum27762599@business.example.com',NULL,'2023-08-31 20:21:46','2023-11-12 20:47:13'),(18,34,5,'sb-e34jum27762599@business.example.com',NULL,'2023-03-26 12:35:34','2023-11-12 20:47:13'),(19,36,1,'sb-e36jum27762599@business.example.com',NULL,'2023-02-05 09:04:56','2023-11-12 20:47:13'),(20,38,3,'sb-e38jum27762599@business.example.com',NULL,'2023-11-12 06:00:23','2023-11-12 20:47:13'),(21,39,4,'sb-e39jum27762599@business.example.com',NULL,'2023-04-22 01:04:42','2023-11-12 20:47:13'),(22,41,4,'sb-e41jum27762599@business.example.com',NULL,'2023-09-22 09:37:27','2023-11-12 20:47:13'),(23,43,1,'sb-e43jum27762599@business.example.com',NULL,'2023-03-24 08:52:22','2023-11-12 20:47:13'),(24,44,3,'sb-e44jum27762599@business.example.com',NULL,'2023-05-05 20:27:06','2023-11-12 20:47:13'),(25,45,4,'sb-e45jum27762599@business.example.com',NULL,'2023-03-30 04:41:41','2023-11-12 20:47:13'),(26,47,4,'sb-e47jum27762599@business.example.com',NULL,'2023-02-12 09:37:48','2023-11-12 20:47:14'),(27,48,5,'sb-e48jum27762599@business.example.com',NULL,'2023-08-24 22:18:51','2023-11-12 20:47:14'),(28,49,3,'sb-e49jum27762599@business.example.com',NULL,'2023-06-15 22:33:49','2023-11-12 20:47:14'),(29,50,1,'sb-e50jum27762599@business.example.com',NULL,'2023-08-01 00:13:29','2023-11-12 20:47:14'),(30,52,2,'sb-e52jum27762599@business.example.com',NULL,'2023-09-01 16:50:28','2023-11-12 20:47:14'),(31,53,3,'sb-e53jum27762599@business.example.com',NULL,'2023-02-12 09:22:10','2023-11-12 20:47:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_song`
--

LOCK TABLES `favorite_song` WRITE;
/*!40000 ALTER TABLE `favorite_song` DISABLE KEYS */;
INSERT INTO `favorite_song` VALUES (1,2,5,NULL,NULL),(2,2,6,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,1,'Emiliano Mitchell','2023-11-12 20:47:14','2023-11-12 20:47:14'),(2,1,'Dr. Regan Parker','2023-11-12 20:47:14','2023-11-12 20:47:14'),(3,1,'Major Ryan','2023-11-12 20:47:14','2023-11-12 20:47:14'),(4,1,'Julius Cartwright','2023-11-12 20:47:14','2023-11-12 20:47:14'),(5,2,'Moises Connelly','2023-11-12 20:47:14','2023-11-12 20:47:14'),(6,2,'Creola Pollich','2023-11-12 20:47:14','2023-11-12 20:47:14'),(7,3,'Devyn Thompson','2023-11-12 20:47:14','2023-11-12 20:47:14'),(8,4,'Ms. Estell Hansen II','2023-11-12 20:47:14','2023-11-12 20:47:14'),(9,4,'Burley Wehner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(10,4,'Prof. Hollie Donnelly','2023-11-12 20:47:14','2023-11-12 20:47:14'),(11,4,'Dock Prosacco III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(12,5,'Prof. Jazmyn Gerlach','2023-11-12 20:47:14','2023-11-12 20:47:14'),(13,5,'Prof. Furman Dooley I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(14,6,'Gabe Towne','2023-11-12 20:47:14','2023-11-12 20:47:14'),(15,6,'Dr. Raoul Larkin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(16,7,'Lacey Zboncak','2023-11-12 20:47:14','2023-11-12 20:47:14'),(17,7,'Dr. Alexander Wolff Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(18,7,'Ludwig Hirthe','2023-11-12 20:47:14','2023-11-12 20:47:14'),(19,7,'Fernando Monahan','2023-11-12 20:47:14','2023-11-12 20:47:14'),(20,8,'Bell Robel','2023-11-12 20:47:14','2023-11-12 20:47:14'),(21,8,'Adrienne Cummerata','2023-11-12 20:47:14','2023-11-12 20:47:14'),(22,8,'Lina Goodwin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(23,8,'Raoul Hand','2023-11-12 20:47:14','2023-11-12 20:47:14'),(24,9,'Dr. Matilda Ernser','2023-11-12 20:47:14','2023-11-12 20:47:14'),(25,9,'Robert Bergstrom','2023-11-12 20:47:14','2023-11-12 20:47:14'),(26,10,'Chelsie Kerluke','2023-11-12 20:47:14','2023-11-12 20:47:14'),(27,10,'Felicia Johnson','2023-11-12 20:47:14','2023-11-12 20:47:14'),(28,10,'Bethel Schaden','2023-11-12 20:47:14','2023-11-12 20:47:14'),(29,11,'Dr. Federico Cassin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(30,11,'Prof. Henderson Koss DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(31,11,'Princess Wisozk','2023-11-12 20:47:14','2023-11-12 20:47:14'),(32,11,'Dan Fisher','2023-11-12 20:47:14','2023-11-12 20:47:14'),(33,12,'Prof. Fausto Walsh','2023-11-12 20:47:14','2023-11-12 20:47:14'),(34,12,'Estevan Herman','2023-11-12 20:47:14','2023-11-12 20:47:14'),(35,13,'Mr. Isidro Ferry IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(36,13,'Jane Spinka','2023-11-12 20:47:14','2023-11-12 20:47:14'),(37,13,'Trace Casper','2023-11-12 20:47:14','2023-11-12 20:47:14'),(38,13,'Mr. Nicolas Koch','2023-11-12 20:47:14','2023-11-12 20:47:14'),(39,14,'Newell Ziemann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(40,15,'Mr. Doyle Spinka','2023-11-12 20:47:14','2023-11-12 20:47:14'),(41,15,'Ms. Anika Hessel Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(42,15,'Dora Hand','2023-11-12 20:47:14','2023-11-12 20:47:14'),(43,16,'Elmira Frami','2023-11-12 20:47:14','2023-11-12 20:47:14'),(44,17,'Prof. Stephan Fay I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(45,17,'Mary Harber','2023-11-12 20:47:14','2023-11-12 20:47:14'),(46,17,'Aliya Maggio','2023-11-12 20:47:14','2023-11-12 20:47:14'),(47,18,'Mrs. Liliana Tromp','2023-11-12 20:47:14','2023-11-12 20:47:14'),(48,18,'Adan Will','2023-11-12 20:47:14','2023-11-12 20:47:14'),(49,19,'Gunnar Hane','2023-11-12 20:47:14','2023-11-12 20:47:14'),(50,19,'Dr. Elmo Stiedemann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(51,20,'Prof. Tomasa Kutch II','2023-11-12 20:47:14','2023-11-12 20:47:14'),(52,20,'Mr. Antwan Crooks II','2023-11-12 20:47:14','2023-11-12 20:47:14'),(53,20,'Trey Turner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(54,20,'Prof. Irma Waters III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(55,21,'Ashlynn Walter II','2023-11-12 20:47:14','2023-11-12 20:47:14'),(56,22,'Delfina Hilpert III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(57,22,'Antonetta Hyatt','2023-11-12 20:47:14','2023-11-12 20:47:14'),(58,23,'Kaycee Greenfelder IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(59,23,'Rickie Rempel','2023-11-12 20:47:14','2023-11-12 20:47:14'),(60,23,'Enos Ruecker','2023-11-12 20:47:14','2023-11-12 20:47:14'),(61,24,'Miss Tiffany Glover III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(62,24,'Ward Hickle I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(63,24,'Esteban DuBuque Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(64,24,'Miss Itzel Hartmann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(65,25,'Ashly Dietrich','2023-11-12 20:47:14','2023-11-12 20:47:14'),(66,25,'Dr. Bradly Wisozk','2023-11-12 20:47:14','2023-11-12 20:47:14'),(67,25,'Miss Vallie King DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(68,25,'Kathryne Lehner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(69,26,'Xavier Greenholt','2023-11-12 20:47:14','2023-11-12 20:47:14'),(70,26,'Ernie Ruecker Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(71,26,'Miss Gloria Emard IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(72,27,'Ruby Cormier','2023-11-12 20:47:14','2023-11-12 20:47:14'),(73,27,'Miss Santina Strosin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(74,28,'Prof. America Keebler DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(75,28,'Josh Powlowski','2023-11-12 20:47:14','2023-11-12 20:47:14'),(76,28,'Lucius Murphy','2023-11-12 20:47:14','2023-11-12 20:47:14'),(77,28,'Quinton Hansen','2023-11-12 20:47:14','2023-11-12 20:47:14'),(78,29,'Shea Gibson I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(79,29,'Prof. Loyal Hills','2023-11-12 20:47:14','2023-11-12 20:47:14'),(80,29,'Loyal Greenholt','2023-11-12 20:47:14','2023-11-12 20:47:14'),(81,30,'Prof. Nigel Treutel PhD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(82,30,'Prof. Daphney Reinger V','2023-11-12 20:47:14','2023-11-12 20:47:14'),(83,30,'Ramona Klein PhD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(84,30,'Riley Conn','2023-11-12 20:47:14','2023-11-12 20:47:14'),(85,31,'Emmanuelle Schroeder','2023-11-12 20:47:14','2023-11-12 20:47:14'),(86,32,'Keara Johnson','2023-11-12 20:47:14','2023-11-12 20:47:14'),(87,32,'Lucas Hartmann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(88,32,'Cheyenne Macejkovic DDS','2023-11-12 20:47:14','2023-11-12 20:47:14'),(89,32,'Aurelia Medhurst','2023-11-12 20:47:14','2023-11-12 20:47:14'),(90,33,'Whitney Buckridge','2023-11-12 20:47:14','2023-11-12 20:47:14'),(91,33,'Dr. Mikel Lesch','2023-11-12 20:47:14','2023-11-12 20:47:14'),(92,33,'Amy Lang','2023-11-12 20:47:14','2023-11-12 20:47:14'),(93,33,'Alexandrine Trantow III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(94,34,'Prof. Dylan Gusikowski DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(95,34,'Prof. Velma Luettgen','2023-11-12 20:47:14','2023-11-12 20:47:14'),(96,34,'Kaitlyn Cormier I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(97,34,'Valentin Ward','2023-11-12 20:47:14','2023-11-12 20:47:14'),(98,35,'Margarita Klocko','2023-11-12 20:47:14','2023-11-12 20:47:14'),(99,35,'Mr. Zachariah Zieme DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(100,35,'Miss Liliana Wilderman MD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(101,35,'Mr. Harley Senger','2023-11-12 20:47:14','2023-11-12 20:47:14'),(102,36,'Mr. Jamey Krajcik','2023-11-12 20:47:14','2023-11-12 20:47:14'),(103,37,'Rebekah Beier Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(104,37,'Prof. Thaddeus Gleichner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(105,37,'Flavie Welch Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(106,37,'Miss Tia Hermiston MD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(107,38,'Walter Rohan','2023-11-12 20:47:14','2023-11-12 20:47:14'),(108,38,'Ms. Jalyn Goldner Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(109,39,'Eloisa Ward','2023-11-12 20:47:14','2023-11-12 20:47:14'),(110,40,'Cassandra Hudson','2023-11-12 20:47:14','2023-11-12 20:47:14'),(111,41,'Dayton Nienow','2023-11-12 20:47:14','2023-11-12 20:47:14'),(112,41,'Gia Murray','2023-11-12 20:47:14','2023-11-12 20:47:14'),(113,42,'Laron Witting DDS','2023-11-12 20:47:14','2023-11-12 20:47:14'),(114,42,'Austin Abbott IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(115,42,'Prof. Fiona Johnson III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(116,43,'Miss Sarina Effertz IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(117,44,'Adrienne Schaefer','2023-11-12 20:47:14','2023-11-12 20:47:14'),(118,44,'Mr. Reid Wehner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(119,44,'Carlie Schowalter','2023-11-12 20:47:14','2023-11-12 20:47:14'),(120,44,'Hallie Feil III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(121,45,'Modesta Kozey','2023-11-12 20:47:14','2023-11-12 20:47:14'),(122,45,'Prof. Gregory Botsford DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(123,45,'Athena Rosenbaum','2023-11-12 20:47:14','2023-11-12 20:47:14'),(124,45,'Mrs. Genesis D\'Amore','2023-11-12 20:47:14','2023-11-12 20:47:14'),(125,46,'Dr. Syble Tremblay','2023-11-12 20:47:14','2023-11-12 20:47:14'),(126,46,'Margaretta Hammes DVM','2023-11-12 20:47:14','2023-11-12 20:47:14'),(127,46,'Rylan Stiedemann DDS','2023-11-12 20:47:14','2023-11-12 20:47:14'),(128,47,'Mrs. Mariane Sipes','2023-11-12 20:47:14','2023-11-12 20:47:14'),(129,47,'Kassandra Kerluke Jr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(130,47,'Helmer Rippin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(131,47,'Asia Reichel','2023-11-12 20:47:14','2023-11-12 20:47:14'),(132,48,'Lura Harris','2023-11-12 20:47:14','2023-11-12 20:47:14'),(133,48,'Flo Mayer','2023-11-12 20:47:14','2023-11-12 20:47:14'),(134,48,'Rebeca Bauch','2023-11-12 20:47:14','2023-11-12 20:47:14'),(135,49,'Adelle Labadie','2023-11-12 20:47:14','2023-11-12 20:47:14'),(136,50,'Giovanna O\'Reilly','2023-11-12 20:47:14','2023-11-12 20:47:14'),(137,50,'Bonnie Tromp','2023-11-12 20:47:14','2023-11-12 20:47:14'),(138,50,'Mollie Satterfield','2023-11-12 20:47:14','2023-11-12 20:47:14'),(139,50,'Mr. Fabian Champlin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(140,51,'Prof. Berniece Stokes','2023-11-12 20:47:14','2023-11-12 20:47:14'),(141,51,'Mr. Blaise Haley','2023-11-12 20:47:14','2023-11-12 20:47:14'),(142,51,'Allison Quigley','2023-11-12 20:47:14','2023-11-12 20:47:14'),(143,51,'Evangeline Parker','2023-11-12 20:47:14','2023-11-12 20:47:14'),(144,52,'Dr. Arnaldo Reynolds','2023-11-12 20:47:14','2023-11-12 20:47:14'),(145,52,'Archibald Goldner','2023-11-12 20:47:14','2023-11-12 20:47:14'),(146,52,'Diana Cummerata','2023-11-12 20:47:14','2023-11-12 20:47:14'),(147,53,'Aylin Rath','2023-11-12 20:47:14','2023-11-12 20:47:14'),(148,54,'Winnifred Moore I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(149,54,'Everette Bosco','2023-11-12 20:47:14','2023-11-12 20:47:14'),(150,54,'Foster Gerhold','2023-11-12 20:47:14','2023-11-12 20:47:14'),(151,55,'Jessy Sporer','2023-11-12 20:47:14','2023-11-12 20:47:14'),(152,55,'Miss Ebony Hartmann IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(153,56,'Payton Bartoletti','2023-11-12 20:47:14','2023-11-12 20:47:14'),(154,56,'Elnora Nolan','2023-11-12 20:47:14','2023-11-12 20:47:14'),(155,56,'Alphonso Kreiger','2023-11-12 20:47:14','2023-11-12 20:47:14'),(156,56,'Ms. Gloria Harber MD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(157,57,'Madaline Reilly I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(158,57,'Mr. Titus Johnson','2023-11-12 20:47:14','2023-11-12 20:47:14'),(159,58,'Moriah Baumbach I','2023-11-12 20:47:14','2023-11-12 20:47:14'),(160,59,'Miss Natasha Cremin','2023-11-12 20:47:14','2023-11-12 20:47:14'),(161,59,'Kristian Balistreri','2023-11-12 20:47:14','2023-11-12 20:47:14'),(162,60,'Ms. Heath Zboncak IV','2023-11-12 20:47:14','2023-11-12 20:47:14'),(163,60,'Sammie Koch','2023-11-12 20:47:14','2023-11-12 20:47:14'),(164,61,'Miss Pink Cole','2023-11-12 20:47:14','2023-11-12 20:47:14'),(165,61,'Frederik Heller','2023-11-12 20:47:14','2023-11-12 20:47:14'),(166,61,'Kennith Haley','2023-11-12 20:47:14','2023-11-12 20:47:14'),(167,62,'Marguerite Hermann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(168,62,'Miss Rossie Wisoky PhD','2023-11-12 20:47:14','2023-11-12 20:47:14'),(169,62,'Cecelia Kozey','2023-11-12 20:47:14','2023-11-12 20:47:14'),(170,63,'Mr. Art Raynor','2023-11-12 20:47:14','2023-11-12 20:47:14'),(171,63,'Delphia Flatley','2023-11-12 20:47:14','2023-11-12 20:47:14'),(172,63,'Sebastian Kiehn','2023-11-12 20:47:14','2023-11-12 20:47:14'),(173,64,'Kellie Schulist','2023-11-12 20:47:14','2023-11-12 20:47:14'),(174,65,'Dayne O\'Hara','2023-11-12 20:47:14','2023-11-12 20:47:14'),(175,65,'Karine Erdman','2023-11-12 20:47:14','2023-11-12 20:47:14'),(176,65,'Alanna Hirthe','2023-11-12 20:47:14','2023-11-12 20:47:14'),(177,66,'Elton Gutmann','2023-11-12 20:47:14','2023-11-12 20:47:14'),(178,66,'Aiden Kozey','2023-11-12 20:47:14','2023-11-12 20:47:14'),(179,67,'Ms. Malika Kertzmann III','2023-11-12 20:47:14','2023-11-12 20:47:14'),(180,68,'Neoma Kozey','2023-11-12 20:47:14','2023-11-12 20:47:14'),(181,68,'Malachi Abbott','2023-11-12 20:47:14','2023-11-12 20:47:14'),(182,69,'Aurelio Quitzon','2023-11-12 20:47:14','2023-11-12 20:47:14'),(183,69,'Elvis Walter','2023-11-12 20:47:14','2023-11-12 20:47:14'),(184,70,'Anderson Rohan Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(185,70,'Cydney Carter','2023-11-12 20:47:14','2023-11-12 20:47:14'),(186,70,'Eldora Kovacek DDS','2023-11-12 20:47:14','2023-11-12 20:47:14'),(187,70,'Aglae Nolan Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(188,71,'Dr. Ashlee Stokes Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14'),(189,71,'Adonis Koelpin Sr.','2023-11-12 20:47:14','2023-11-12 20:47:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_users`
--

LOCK TABLES `tags_users` WRITE;
/*!40000 ALTER TABLE `tags_users` DISABLE KEYS */;
INSERT INTO `tags_users` VALUES (1,1,2,NULL,NULL),(2,2,2,NULL,NULL),(3,1,8,NULL,NULL),(4,2,8,NULL,NULL),(5,1,10,NULL,NULL),(6,2,10,NULL,NULL),(7,1,11,NULL,NULL),(8,2,11,NULL,NULL),(9,1,12,NULL,NULL),(10,2,12,NULL,NULL),(11,1,14,NULL,NULL),(12,2,14,NULL,NULL),(13,1,15,NULL,NULL),(14,2,15,NULL,NULL),(15,1,18,NULL,NULL),(16,2,18,NULL,NULL),(17,1,20,NULL,NULL),(18,2,20,NULL,NULL),(19,1,23,NULL,NULL),(20,2,23,NULL,NULL),(21,1,26,NULL,NULL),(22,2,26,NULL,NULL),(23,1,30,NULL,NULL),(24,2,30,NULL,NULL),(25,1,31,NULL,NULL),(26,2,31,NULL,NULL),(27,1,32,NULL,NULL),(28,2,32,NULL,NULL),(29,1,33,NULL,NULL),(30,2,33,NULL,NULL),(31,1,35,NULL,NULL),(32,2,35,NULL,NULL),(33,1,37,NULL,NULL),(34,2,37,NULL,NULL),(35,1,40,NULL,NULL),(36,2,40,NULL,NULL),(37,1,42,NULL,NULL),(38,2,42,NULL,NULL),(39,1,46,NULL,NULL),(40,2,46,NULL,NULL),(41,1,51,NULL,NULL),(42,2,51,NULL,NULL);
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
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `users` VALUES (1,NULL,'admin','admin','admin@admin.it',NULL,NULL,'admin','2023-11-12 20:47:00','$2y$12$hYfyQhDiW/UwVzFX.V4HoeKIcuCs.eqKaYEvEVNtjqTeT6Yyy./EG',NULL,'2023-11-12 20:47:00','2023-11-12 20:47:00'),(2,NULL,'cacao','cacao','cacao@cacao.it','Italy','Florence','user','2023-11-12 20:47:00','$2y$12$gjakTYkX43O71nzkug2BDePczbhvklxiISeYKM9lgzdnjNOwRG95u',NULL,'2023-11-12 20:47:00','2023-11-12 20:47:00'),(3,NULL,'Tommaso','vitali','coltrida@gmail.com',NULL,NULL,'artist','2023-11-12 20:47:00','$2y$12$wT0D8rHcZxPyI1BReQNEMOlbamVMISRTUwLI1Bkr/iQDZwwhyWn9u',NULL,'2023-11-12 20:47:00','2023-11-12 20:47:00'),(4,NULL,'Thomas','Christiansen','pgoodwin@example.com','Italy','Paris','artist','2023-11-12 20:47:00','$2y$12$j0jygfOSljPV5zeYvtFNAeCcxYEUAZ2Q7D5JiEsb.udzxKI7da8V6','KPYxHOD8W5','2023-02-13 16:29:54','2023-11-12 20:47:13'),(5,NULL,'Stuart','Abshire','rbraun@example.net','Spain','Florence','artist','2023-11-12 20:47:01','$2y$12$vAAXcjdUvurBGYVaMqvFhuh6JJyl9V.N4UagOjsSk.YjfdH7QVp/.','W4RK1xEsIG','2023-03-26 17:37:50','2023-11-12 20:47:13'),(6,NULL,'Rosina','Hodkiewicz','arlo88@example.org','Germany','Florence','artist','2023-11-12 20:47:01','$2y$12$46XilPukes0..Dgq12GRsOuHbbsrbV9UvFDAxUn9CGrZfLIfXWBdu','cYtPusWQHS','2023-03-02 05:53:13','2023-11-12 20:47:13'),(7,NULL,'Shania','Armstrong','madeline.kuhn@example.com','Italy','Barcelona','artist','2023-11-12 20:47:01','$2y$12$OmyNj5o0gPYYOV/d4jDxvOeJ7472J8.VFPlBLpuLPbAb6wxxoPj4y','nuHLGfo3hv','2023-09-12 02:11:16','2023-11-12 20:47:13'),(8,NULL,'Chelsie','Bednar','omaggio@example.com','France','Barcelona','user','2023-11-12 20:47:01','$2y$12$tm573vpcHsNayPlru2KrruqdVXZnDL3Oa8/wbn1H3qSYnIZcVFdim','ltl6uQIABw','2023-07-10 10:28:33','2023-11-12 20:47:13'),(9,NULL,'Tiana','Mraz','santa.beier@example.com','France','Barcelona','artist','2023-11-12 20:47:02','$2y$12$dm5dZuc4fLeAywL3bus0Le0x4tRwndV7y4EC8NJkt9mZ0i7CVUySu','Myi5fng4Bj','2023-02-26 08:09:03','2023-11-12 20:47:13'),(10,NULL,'Lionel','Buckridge','olson.kaleigh@example.org','Spain','Florence','user','2023-11-12 20:47:02','$2y$12$ld7QbncrKopTUO6WmiGmb.VrGym5Epx4JFNVBgASR/cOZ7bd5LJ9S','6rHNMY1mbI','2023-01-08 09:26:20','2023-11-12 20:47:13'),(11,NULL,'Allison','Considine','gkreiger@example.com','USA','Barcelona','user','2023-11-12 20:47:02','$2y$12$BOOV646WEj1mML4o1F8jjeLfXHz2XqMjky46zkioESYzKxnpQXVIy','UYg5JZu9u0','2023-08-20 13:25:05','2023-11-12 20:47:13'),(12,NULL,'Katarina','Quigley','stevie33@example.com','Italy','San Francisco','user','2023-11-12 20:47:02','$2y$12$uLfHHn5sCoGPkdmSyEhQwOgadi01zVjIeFkX9HnOq95h1b/JYPfr2','AosR8gyE4z','2023-06-01 17:08:55','2023-11-12 20:47:13'),(13,NULL,'Edwin','Cole','willy43@example.com','USA','Rome','artist','2023-11-12 20:47:03','$2y$12$5bqXkl3ChebK5jRogdFgSekZpjWTad1NIXyv0nxSp4GHAva9LxA.a','xAu5AwlcuM','2023-01-01 18:30:28','2023-11-12 20:47:13'),(14,NULL,'Gaylord','Kessler','pwalter@example.net','Italy','Paris','user','2023-11-12 20:47:03','$2y$12$jjXfVKe3/13ZTsq8XIRP/eyusLvWRH.KzaWzPFf7Ey0OAkoLSuxjO','WkD9kUEAyN','2023-06-13 17:34:42','2023-11-12 20:47:13'),(15,NULL,'Dale','Reinger','ujones@example.com','Germany','Rome','user','2023-11-12 20:47:03','$2y$12$qfWIOijmgk9b5LlqvCxWS.U9LFSVm3bChos7ZuT5BTtT4sr1zFKti','EK5aH1UT7t','2023-05-26 06:53:45','2023-11-12 20:47:13'),(16,NULL,'Ardith','Torp','heidenreich.brandyn@example.net','Spain','Florence','artist','2023-11-12 20:47:04','$2y$12$OBH55tBx5bVbw0IEZy8A0eF725lZALeVDkLYcmVqw.FqiFAb3.t/q','o8HV7TKb1L','2023-10-13 10:35:35','2023-11-12 20:47:13'),(17,NULL,'Gerhard','Swaniawski','tcorkery@example.net','Spain','Paris','artist','2023-11-12 20:47:04','$2y$12$qAsE.uHgStF8GrOXmea0buPGoA5TwI9xo0qRgrFPMZpni157HZPM.','VJiMU53BLZ','2023-04-30 20:59:25','2023-11-12 20:47:13'),(18,NULL,'Ali','Volkman','kovacek.zachary@example.net','Spain','Madrid','user','2023-11-12 20:47:04','$2y$12$mBCqivwGGKc74jHK2dZ7AOx1yEwzZz6DW14/B3.jp2OBJ7V8DpN0G','uRVNz1UG8J','2023-07-15 21:39:47','2023-11-12 20:47:13'),(19,NULL,'Taya','Koch','nhaley@example.com','Spain','Madrid','artist','2023-11-12 20:47:05','$2y$12$lpoJVIEeZjmP2M0SY01OKe4DvnNFyqlYGHIy0DILqqhYlANDCFO0G','BtXKpebCNy','2023-03-03 00:46:05','2023-11-12 20:47:13'),(20,NULL,'Lonnie','Murray','gorczany.mireya@example.com','Italy','Barcelona','user','2023-11-12 20:47:05','$2y$12$16i13D4EFRvzaxMDP3PQ3e4V1rETuGWC.1NSVjdKZutl.8shaUV8K','zQeNXPNFFF','2023-05-13 10:30:53','2023-11-12 20:47:13'),(21,NULL,'Kyla','Pollich','pearl.cremin@example.com','France','Rome','artist','2023-11-12 20:47:05','$2y$12$sQGzzeVE4zrRavz1gLTn7.9Sinp0O9VOou7nPNhDrqY35L7up6fIS','GhBOremjFq','2023-04-07 08:16:28','2023-11-12 20:47:13'),(22,NULL,'Aubree','Brown','lchristiansen@example.org','Spain','Paris','artist','2023-11-12 20:47:05','$2y$12$ulD9gtK3sjPsnxlg0GYl..0b7wNuazQQ.uC5.tSoOYh9oqwakL48O','VR6409WhU5','2023-07-23 06:49:44','2023-11-12 20:47:13'),(23,NULL,'Isaiah','Goodwin','neoma85@example.org','Spain','NY','user','2023-11-12 20:47:06','$2y$12$thapyUBnIDcqM/zGgY3OkuQIk5EW8jZQ6GXCtAzrnWY1TfYRfntgm','OYPwwug33l','2022-12-11 02:15:12','2023-11-12 20:47:13'),(24,NULL,'Brock','Friesen','irwin.schowalter@example.net','USA','Paris','artist','2023-11-12 20:47:06','$2y$12$BaB6vjkyobqnFF5lxdU/R.f3rhBU6stihDKOIGflzElfW1Fwr71pC','G5r00On2o7','2022-11-14 17:10:59','2023-11-12 20:47:13'),(25,NULL,'Roman','Hermiston','elisha01@example.com','France','Barcelona','artist','2023-11-12 20:47:06','$2y$12$VvBqJisM4BtNC80hYgGz9.lhO3bWUyTRlJjnGgiamBNLGuzNCG1yC','Fkh04ZSKs9','2023-05-28 10:38:00','2023-11-12 20:47:13'),(26,NULL,'Ervin','Waters','ramon45@example.com','USA','Barcelona','user','2023-11-12 20:47:06','$2y$12$zB09Q1XGZkinW3IkIUAOo.GJF1FpL2B1NiF.PpSuwbEOSeOYy9h82','20XSpEwUyg','2023-07-21 02:39:07','2023-11-12 20:47:13'),(27,NULL,'Bernardo','Huels','senger.willa@example.net','France','Paris','artist','2023-11-12 20:47:07','$2y$12$d//2iEB.OxlCb12Ok39P6.6PmLwrgWwdOuE.tyXAdQ6HDLBt6nB8S','4LfcWT90y4','2023-09-10 10:00:29','2023-11-12 20:47:13'),(28,NULL,'Anita','Botsford','gleason.fausto@example.com','USA','Berlin','artist','2023-11-12 20:47:07','$2y$12$K6CunPimMYEQrLrGRH9El.jARceaImz2sbO.y067Zqrzi.NTwc.LW','BGzIhts6jp','2022-11-18 09:49:58','2023-11-12 20:47:13'),(29,NULL,'Edwardo','Pfannerstill','jacobi.jerod@example.org','Italy','NY','artist','2023-11-12 20:47:07','$2y$12$gFF90iX5GLCxjmuSHjMNUOYWOPzgTA9dosfalBKMeers0RkaII8GS','YHP79lIBLl','2023-02-27 13:58:53','2023-11-12 20:47:13'),(30,NULL,'Norwood','Champlin','ankunding.savion@example.org','USA','Paris','user','2023-11-12 20:47:07','$2y$12$eUk43Z7oFTNAJ7QHmySgyOpC.seo6XJdtPW1VS4/FsOufuODdKoHi','rNbbgUnqkB','2022-12-30 12:11:17','2023-11-12 20:47:13'),(31,NULL,'Euna','Kulas','timmy.conroy@example.org','France','Rome','user','2023-11-12 20:47:08','$2y$12$bcRj3luWl9CHGyWpA6dp7O4jlzmCT/hF8YIsTadTDE5ttN7u/dLLu','zsQEjFaILS','2023-01-20 08:05:25','2023-11-12 20:47:13'),(32,NULL,'Magali','Schuppe','houston.reilly@example.com','USA','Barcelona','user','2023-11-12 20:47:08','$2y$12$Pi/tATS7x.ur196XOOPou.FjgwVJ.OvcLfV8JJlTENfY0Vb7Nl8Lm','r52IrM6YD8','2023-04-09 14:22:20','2023-11-12 20:47:13'),(33,NULL,'Ettie','Grady','seth16@example.com','USA','Barcelona','user','2023-11-12 20:47:08','$2y$12$O7xkqTxiiRVrslxa1LVqqe6aoCxlIa2347e.0lHgvS5Y0L37p4OeC','JbLyuZtXQW','2023-05-12 23:12:47','2023-11-12 20:47:13'),(34,NULL,'Imani','Bednar','alek.treutel@example.net','USA','Barcelona','artist','2023-11-12 20:47:08','$2y$12$E4l/NlGxMEhJbdKZ9Y.aHuj3ZKaNEBsY3kQ5JRLsEbr6cRi0kMjxW','QgJ1cc3v2C','2023-08-10 12:41:54','2023-11-12 20:47:13'),(35,NULL,'Angeline','Tremblay','johnson.dariana@example.net','Italy','Berlin','user','2023-11-12 20:47:09','$2y$12$aW8JbBVZC6trYK1RZWjB8uwCTm915jGY1dN6KQ2512yBVll2Ntnq2','zZOXWzHnRF','2023-02-21 01:50:30','2023-11-12 20:47:13'),(36,NULL,'Reyna','Muller','bode.otha@example.net','France','San Francisco','artist','2023-11-12 20:47:09','$2y$12$Sjh3oUZl.ilH60DF4ISyUeWzRsZQ0nC2aBALEfs0EnduFDnPEL726','5kKFjQ61Jc','2023-05-30 22:12:36','2023-11-12 20:47:13'),(37,NULL,'Pearlie','Jacobi','brennon.lindgren@example.net','Spain','Paris','user','2023-11-12 20:47:09','$2y$12$2axPJ9B4jTNYDNSpCd.jwuQhKDCANFomle.SWWmzCLxCVK0PdvnLK','M0J4dt9dpc','2023-05-04 23:45:52','2023-11-12 20:47:13'),(38,NULL,'Taryn','Stroman','vwiegand@example.com','Germany','Madrid','artist','2023-11-12 20:47:09','$2y$12$YybBCUyM7hF78EPk0WSMmuN2y92I.EOHejgXqmY0fwjn8sZpbUT9G','NzaKBcmKAU','2023-02-16 23:41:17','2023-11-12 20:47:13'),(39,NULL,'Leanne','Mraz','umoen@example.org','Italy','Florence','artist','2023-11-12 20:47:10','$2y$12$ZdSr2Btlf0NfQzma9MNVR.OpC18D0o9OIhZs6nViYlk1GcjdKeTyS','WVR1jUzhCG','2023-07-22 14:06:40','2023-11-12 20:47:13'),(40,NULL,'Yvonne','Huels','rolfson.estell@example.net','Spain','San Francisco','user','2023-11-12 20:47:10','$2y$12$BiTkeE8Fux2/CXHtmSptyuvQlC7w0ATz8YT2rfnmXkg.GO4SY9eRW','lxXD7ITuBT','2023-05-14 20:16:40','2023-11-12 20:47:13'),(41,NULL,'Virginia','O\'Reilly','sschinner@example.com','USA','Berlin','artist','2023-11-12 20:47:10','$2y$12$RyaKoJ7kDYZ4IrRSdkW5Ue0nzn2109dkDrWYmADtJq2Cn40PyTP.i','Cm9O1JOL39','2023-10-27 00:20:50','2023-11-12 20:47:13'),(42,NULL,'Grayson','Gerlach','romaguera.brody@example.net','France','NY','user','2023-11-12 20:47:10','$2y$12$VoT8k.I6zfQ3sivY2krvqOHgUjjK6HsxdCfgznwtXkgM.npvTbcQi','vllKuAC0GO','2022-11-16 15:36:07','2023-11-12 20:47:13'),(43,NULL,'Thora','Hand','providenci19@example.net','France','Florence','artist','2023-11-12 20:47:11','$2y$12$KDV0n2FnaLnovjT30p6kvei30QOpiG7nlPW0e0TUPv3iy74q0K3dW','6mDdTk9xmx','2023-07-15 12:22:02','2023-11-12 20:47:13'),(44,NULL,'Davin','Schamberger','yessenia93@example.net','USA','Florence','artist','2023-11-12 20:47:11','$2y$12$BmbsikkndsvTFrupXJs3B.m7GPXRSSCjAXIabTMnyThcwD8KGJD6C','1zzr9ctOY3','2023-09-10 07:19:55','2023-11-12 20:47:13'),(45,NULL,'Lilly','Bechtelar','elnora.toy@example.com','Spain','Florence','artist','2023-11-12 20:47:11','$2y$12$Z84jpbkwq1hGt.iUyxe3oOmMgW7OpksEZYEFwE27C3gsErmrdR8ta','3FTU6qCuSj','2023-09-20 02:01:38','2023-11-12 20:47:13'),(46,NULL,'Genesis','Mante','tatyana.koepp@example.org','Italy','NY','user','2023-11-12 20:47:11','$2y$12$CO8T033OwzVHFbtm/r9KhO5QbCTDoY1jwmWVEtfSicr1XZPnqW9v6','qquZbM7i5B','2023-03-18 06:54:32','2023-11-12 20:47:13'),(47,NULL,'Darryl','Aufderhar','emilie04@example.net','Germany','Florence','artist','2023-11-12 20:47:12','$2y$12$1jS1Idni7XY13lL3hKSo1uZjBageMV.gmGr3fqcjZgy9BofAynguG','nin7GvtTe1','2023-01-28 21:24:09','2023-11-12 20:47:13'),(48,NULL,'Carmella','Mueller','emoore@example.com','Spain','Rome','artist','2023-11-12 20:47:12','$2y$12$vVJzGV2PJtQ5zkzRWrfaqOUu9v0REomnn0ZbtUzzmrYyAqgpaHKUG','YT2ywiVQOm','2023-06-05 20:11:54','2023-11-12 20:47:13'),(49,NULL,'Hilbert','Hodkiewicz','christophe.klocko@example.org','USA','Florence','artist','2023-11-12 20:47:12','$2y$12$amUA4WJhgakrP8v5E24QpOp6QhbGWCkZDy6C1eVEBenHg2m4G0HUy','j94lq0XOri','2023-05-12 08:32:53','2023-11-12 20:47:13'),(50,NULL,'Noe','Senger','nellie12@example.com','Italy','Madrid','artist','2023-11-12 20:47:12','$2y$12$ubQjuqEUkliGbmJEujsa8ey.MsF2Fmw/RrnyEiSxWXrLkw8bW62YS','z3B2YNlujg','2023-06-17 20:45:56','2023-11-12 20:47:13'),(51,NULL,'Leopoldo','Mayer','bmonahan@example.org','Italy','San Francisco','user','2023-11-12 20:47:13','$2y$12$drBUmvaQCGquaEKGdUD8ZOQGbAMFmu0.GzTzZttti1O/mz53DV5zO','qpeLhG6VFG','2023-04-11 00:10:21','2023-11-12 20:47:13'),(52,NULL,'Delpha','Maggio','corwin.isabella@example.org','France','Berlin','artist','2023-11-12 20:47:13','$2y$12$tgLmtaPRBAW5QAEpA2O76OMAwwT0VkqqeADUFQNoCl.MOFoJTDiRu','2PgEwk9lyY','2023-09-19 16:04:02','2023-11-12 20:47:13'),(53,NULL,'Deshawn','Kuvalis','chettinger@example.com','Spain','NY','artist','2023-11-12 20:47:13','$2y$12$daxZBwSHFzMVnrt6o5Lb4.8pUt9bsUKuUJ0TxWQiwz/hVH5mLEi7S','IghR4PcMQQ','2023-11-03 22:50:35','2023-11-12 20:47:13');
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

-- Dump completed on 2023-11-12 21:23:57
