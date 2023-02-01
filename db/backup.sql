CREATE DATABASE  IF NOT EXISTS `first_project` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `first_project`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: first_project
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',2),(3,'2019_08_19_000000_create_failed_jobs_table',3),(4,'2019_12_14_000001_create_personal_access_tokens_table',3),(5,'2023_01_31_092203_create_orders_table',3),(6,'2023_01_31_093435_create_orders_responses_table',3),(8,'2023_02_01_084340_delete_column_order_id_to_orders_responses',4),(9,'2023_02_01_084852_edit_column_id_to_orders_responses',5),(11,'2023_02_01_085335_edit_column_id_to_orders',6),(12,'2023_02_01_090010_edit_column_client_id_to_orders_responses',7),(14,'2023_02_01_090211_edit_column_client_id_to_orders',8),(17,'2023_02_01_090343_edit_columns_to_orders_responses',9),(18,'2023_02_01_090507_edit_columns_to_orders',9),(20,'2023_02_01_094205_edit_column_item_to_orders',10),(22,'2023_02_01_094418_edit_column_item_to_orders',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('123425','54313','[{\"article\":\"3005-12\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\",\"price\":100,\"quantity\":3},{\"article\":\"3005-13\",\"name\":\"\\u0414\\u044b\\u0440\\u043a\\u0430 \\u043e\\u0442 \\u0431\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"price\":250,\"quantity\":3}]','shipping','2023-02-01 09:06:21','2023-02-01 10:17:12'),('1234125','54313','[{\"article\":\"3005-12\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\",\"price\":100,\"quantity\":3},{\"article\":\"3005-13\",\"name\":\"\\u0414\\u044b\\u0440\\u043a\\u0430 \\u043e\\u0442 \\u0431\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"price\":250,\"quantity\":3},{\"article\":\"3005-11\",\"name\":\"\\u0423\\u0441\\u044b \\u0424\\u0440\\u0435\\u0434\\u0434\\u0438 \\u041c\\u0435\\u0440\\u043a\\u044c\\u044e\\u0440\\u0438\",\"price\":900,\"quantity\":100}]','new','2023-02-01 10:35:45','2023-02-01 10:38:33'),('12341125','54313','[{\"article\":\"3005-12\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\",\"price\":200,\"quantity\":3},{\"article\":\"3005-13\",\"name\":\"\\u0414\\u044b\\u0440\\u043a\\u0430 \\u043e\\u0442 \\u0431\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"price\":250,\"quantity\":3},{\"article\":\"3005-11\",\"name\":\"\\u0423\\u0441\\u044b \\u0424\\u0440\\u0435\\u0434\\u0434\\u0438 \\u041c\\u0435\\u0440\\u043a\\u044c\\u044e\\u0440\\u0438\",\"price\":900,\"quantity\":100}]','shipping','2023-02-01 10:41:07','2023-02-01 10:41:45'),('123121125','54313','[{\"article\":\"3005-12\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\",\"price\":200,\"quantity\":3},{\"article\":\"3005-13\",\"name\":\"\\u0414\\u044b\\u0440\\u043a\\u0430 \\u043e\\u0442 \\u0431\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"price\":250,\"quantity\":3},{\"article\":\"3005-11\",\"name\":\"\\u0423\\u0441\\u044b \\u0424\\u0440\\u0435\\u0434\\u0434\\u0438\",\"price\":900,\"quantity\":100}]','shipping','2023-02-01 10:42:07','2023-02-01 11:02:09'),('125','54313','[{\"article\":\"3005-12\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\",\"price\":200,\"quantity\":3},{\"article\":\"3005-13\",\"name\":\"\\u0414\\u044b\\u0440\\u043a\\u0430 \\u043e\\u0442 \\u0431\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"price\":250,\"quantity\":3},{\"article\":\"3005-11\",\"name\":\"\\u0423\\u0441\\u044b \\u0424\\u0440\\u0435\\u0434\\u0434\\u0438\",\"price\":900,\"quantity\":100}]','shipping','2023-02-01 11:02:23','2023-02-01 11:02:23');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_responses`
--

DROP TABLE IF EXISTS `orders_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_responses` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scores` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_responses`
--

LOCK TABLES `orders_responses` WRITE;
/*!40000 ALTER TABLE `orders_responses` DISABLE KEYS */;
INSERT INTO `orders_responses` VALUES ('123425','54313','9','2023-02-01 09:06:21','2023-02-01 10:17:12'),('1234125','54313','9','2023-02-01 10:35:45','2023-02-01 10:36:40'),('12341125','54313','9','2023-02-01 10:41:07','2023-02-01 10:41:07'),('123121125','54313','9','2023-02-01 10:42:07','2023-02-01 10:42:07'),('125','54313','9','2023-02-01 11:02:23','2023-02-01 11:02:23');
/*!40000 ALTER TABLE `orders_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 14:47:20
