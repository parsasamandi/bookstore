-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: mofidSanat
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (30,'sadsadsads32121'),(31,'12345');
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_setting`
--

DROP TABLE IF EXISTS `home_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_setting` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'header_image','portfolio-9.jpg'),(2,'header','سلام'),(3,'sub_header','Samandi'),(4,'header_button','بخش بعدی'),(5,'about_us_headerText','تست'),(6,'about_us_header','تست'),(7,'about_us_text','تست ۲'),(8,'about_us_header2','sadsa'),(9,'about_us_text2','sadsad'),(10,'about_us_header3','sdas'),(11,'about_us_text3','asdsa'),(12,'why_us_imageSize','6'),(13,'why_us_image','265767486.de509627afec3e8283d150634a74395c.jpeg'),(14,'why_us_text','چرا؟'),(16,'service_header','sdasd'),(17,'service_text','sdasd'),(18,'service_header2','dasdad'),(19,'service_text2','sdsfsf'),(20,'service_header3','sdfsfsd'),(21,'service_text3','asdasd'),(22,'service_header4','sadads'),(23,'service_text4','sadsf'),(25,'service_header5','sadsad'),(26,'service_text5','asdasd'),(27,'service_header6','sdfsfds'),(28,'service_text6','asdasdasds'),(30,'address','sdasd'),(31,'email_footer','dsadsa'),(32,'phone_number','sdsadasd'),(33,'about_us_image','pexels-andrea-piacquadio-3755440.jpg'),(34,'about_us_imageSize','4');
/*!40000 ALTER TABLE `home_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media` (
  `media_id` int NOT NULL AUTO_INCREMENT,
  `media_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`media_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_ibfk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (173,'hero-bg.jpg',0,93),(176,'https://www.youtube.com/embed/QemW1t-T7UU',1,93),(182,'b44e708bef1568a61a506283bd57bb10.jpeg',0,136),(183,'e38ce17501beb387e92c2414651650ce.png',0,137),(184,'02a1c2efb69157b671fe250415edf429.jpeg',0,138);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_10_21_084618_create_cat_table',0),(4,'2020_10_21_084618_create_media_table',0),(5,'2020_10_21_084618_create_password_resets_table',0),(6,'2020_10_21_084618_create_product_table',0),(7,'2020_10_21_084618_create_sub_cat_table',0),(8,'2020_10_21_084618_create_users_table',0),(9,'2020_10_21_084619_add_foreign_keys_to_media_table',0),(10,'2020_10_21_084619_add_foreign_keys_to_product_table',0),(11,'2020_10_21_084619_add_foreign_keys_to_sub_cat_table',0),(12,'2020_11_08_122352_create_cat_table',0),(13,'2020_11_08_122352_create_home_setting_table',0),(14,'2020_11_08_122352_create_media_table',0),(15,'2020_11_08_122352_create_password_resets_table',0),(16,'2020_11_08_122352_create_phone_number_table',0),(17,'2020_11_08_122352_create_product_table',0),(18,'2020_11_08_122352_create_sub_cat_table',0),(19,'2020_11_08_122352_create_team_table',0),(20,'2020_11_08_122352_create_users_table',0),(21,'2020_11_08_122353_add_foreign_keys_to_media_table',0),(22,'2020_11_08_122353_add_foreign_keys_to_phone_number_table',0),(23,'2020_11_08_122353_add_foreign_keys_to_product_table',0),(24,'2020_11_08_122353_add_foreign_keys_to_sub_cat_table',0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phone_number` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `phoneNumber_ibfk1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
INSERT INTO `phone_number` VALUES (51,12345678901,93),(52,12345678901,93);
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sub_cat` int DEFAULT NULL,
  `cat` int DEFAULT NULL,
  `status` int NOT NULL,
  `_del` int NOT NULL DEFAULT '0',
  `size` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `sub_cat` (`sub_cat`,`cat`),
  KEY `cat` (`cat`),
  KEY `sub_cat_2` (`sub_cat`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat`) REFERENCES `sub_cat` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (93,'شسی','سشیسش',1231232,'سشتیشستیسشتینتسشینتستنیتنشسیسشتیشتسیتنشتنسیتنشتیتنشسینتشنتسینتش',NULL,31,1,0,4),(136,'dsada','sadsa',232132,'توضیحاتsadsadd',NULL,31,1,0,4),(137,'sadsad','sadasd',3242343,'sadsadsd',NULL,31,1,0,4),(138,'alalalسنتیتبتب','نسنیپزطپسیپی',5454354,'دسشیسشیسیسوپصمنثقخضصثقثق',NULL,31,1,0,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_setting`
--

DROP TABLE IF EXISTS `product_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_setting` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_setting`
--

LOCK TABLES `product_setting` WRITE;
/*!40000 ALTER TABLE `product_setting` DISABLE KEYS */;
INSERT INTO `product_setting` VALUES (1,'header_image','advertisement2.jpg'),(2,'header_text','adsada'),(3,'header_desc','sadsadsa');
/*!40000 ALTER TABLE `product_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_cat`
--

DROP TABLE IF EXISTS `sub_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sub_cat` (
  `sc_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int DEFAULT '0',
  PRIMARY KEY (`sc_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `sub_cat_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cat`
--

LOCK TABLES `sub_cat` WRITE;
/*!40000 ALTER TABLE `sub_cat` DISABLE KEYS */;
INSERT INTO `sub_cat` VALUES (19,'شسشسش',30),(20,'sadasdsadsa',30),(21,'mcmxmcxmmc',30),(22,'۲تست',30),(23,'dsadsadasdas',30),(24,'jh123456789123456678er',30),(25,'تست',30);
/*!40000 ALTER TABLE `sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `responsibility` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_address` text COLLATE utf8_unicode_ci,
  `size` int NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (18,'ewrwer','ewrwer','https://www.linkedin.com/authwall?trk=ripf&trkInfo=AQH_fB5rlB7qkQAAAXWH39Z4IAPN1F6mqKlLcOhMEsqRzRrZSuBKtWKprzfj9dcOWLSUEQWrbONRzFuDfo1XhQkn9135OvkTN9ryT1NBqZs7B3QgimLLKFv5oizBpWB-doeUGZA=&originalReferer=https://www.google.com/&sessionRedirect=https%3A%2F%2Fir.linkedin.com%2Fin%2Fpouya-samandi-868752150',6,'team-3.jpg'),(20,'sadsa','asdsads','https://www.linkedin.com/',10,'team-4.jpg');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Parsa Samandi۱','parsasamandizadeh@gmail.com',NULL,'$2y$10$UrsHVAxQJ3/fj6PY4nvAKOBgFVzBl822OZEGaUw9zKMCFI2lZqKuC',NULL,'2020-10-20 04:32:04','2020-11-10 04:03:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mofidSanat'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 12:44:15
