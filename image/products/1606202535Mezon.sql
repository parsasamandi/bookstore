-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: Mezon
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `acc_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int NOT NULL,
  `username` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `_del` int NOT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'mohammad','bgh',2,'mohammadbgh','12345','چهارشنبه <bچهارشنبه ۲۹ مرداد ۱۳۹۹ ۰۲:۱۲:۳۳ +۰۰۰۰> ۱۳۹۹/۵/۲۹ - ۰۲:۱۲',1,0),(2,'سبحان','نجفی',1,'sobhan','sobhan12345','چهارشنبه <bچهارشنبه ۲۸ خرداد ۱۳۹۹ ۰۲:۱۲:۱۱ +۰۰۰۰> ۱۳۹۹/۳/۲۸ - ۰۲:۱۲',1,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `_del` int DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `address_fk` (`u_id`),
  CONSTRAINT `address_fk` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (31,1,'sadas','msdad','6','<p>sdfsdfsd</p>','dssd','dsadasd','asdfsfsd',1,1),(32,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,1),(33,1,'sdsada','adsaa','20','dsfdsfsdf','sdas','dasdas','dsfdsf123',1,1),(34,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','ffffdsfdsf',1,1),(35,1,'sdsada','adsaa','3','پارسا','sdas','dasdas','dsfdsf',1,0),(36,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(37,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(38,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(39,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(40,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(41,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(42,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(43,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(44,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(45,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(46,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(47,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(48,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(49,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(50,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(51,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(52,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(53,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(54,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(55,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(56,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(57,1,'سشیسش','سیسش','5','بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(58,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(59,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(60,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(61,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(62,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(63,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(64,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(65,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(66,1,'sadsa','sad','3','adsadas','asdsa','asdas','dsadsa',1,0),(67,1,'sadas','sdsa','2','sadasdasdasdwas','adasd','asdsad','sadasdasd',1,0),(68,1,'dss','dsfdsf','4','sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(69,1,'dss','dsfdsf','4','sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(70,1,'dss','dsfdsf','4','sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(71,1,'wrewrwrew','rewrw','2','wewre','wrewr','werwe','rerwerw',1,0),(72,1,'طظزط','طظزظ','5','ظطزظ','۱۱۱۱','۲۳۴۵۶۶','۳۴۴',1,0),(73,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','sdfsdddd',1,0),(74,1,'ویرایش','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(75,1,'ویرایش','adsaa','2','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(76,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','sdfsdd',1,0),(77,1,'adsa','sfsd','20','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,0),(78,1,'adsa','sfsd','20','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,0),(79,1,'adsa','sfsd','20','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,0),(80,1,'sad','sad','5','sads','adasd','asdas','asdasdas',1,0),(81,1,'sad','sad','5','sads','adasd','asdas','asdasdas',1,0),(82,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','12345sdfsd',1,0),(83,1,'adsa','sfsd','158','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,0),(84,1,'sdsada','adsaa','2','dsfdsfsdf','sdas','dasdas','1111dsfdsf',1,0),(85,1,'sdsada','adsaa','42','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(86,1,'sdsada','adsaa','25','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(87,1,'sdsada','adsaa','25','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(88,1,'sdsada','adsaa','25','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(89,1,'sdsada','adsaa','25','dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(90,1,'sdsada','adsaa','2','تست','sdas','dasdas','dsfdsf',1,0),(91,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','ssdfsd',0,0),(92,1,'adsa','sfsd','13','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',0,0),(93,1,'adsa','sfsd','13','<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',0,0),(94,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','dddsdfsd',0,0),(95,1,'adsa','sfsd','8','<p>fsdf</p>','sdfsd','sdfsdd','dddsdfsd',0,0),(96,1,'sads','5','3','sad','asda','asdas','asda',0,0),(97,1,'sdsa','sdas',NULL,'sdad','sad','sadasd','sadadsad',0,0),(98,1,'sdsa','sdas','sdfd','sdad','sad','sadasd','sadadsad',0,0),(99,4,'sdasa','adsadsa','sada','dsadad','dsadasdad','asdasda','sadadas',0,1),(100,4,'sdasa','adsadsa','sada','dsadad','dsadasdad','asdasda','sadadas',0,1),(101,4,'sdasa','adsadsa','sada','dsadad','dsadasdad','asdasda','sadadasضصضص',0,0),(102,5,'sadsa','sadsad','sadas','sadasdassa','dasdasd','asdasd','asdasdasd',0,0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `ca_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `u_id` int NOT NULL,
  `count` int NOT NULL,
  `order_factor` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`ca_id`),
  KEY `product_id` (`product_id`,`u_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (146,32,1,60,'sky-10101'),(147,34,1,15,'sky-10111'),(148,31,1,43,'sky-10131'),(149,33,1,54,'sky-10131'),(150,32,1,45,'sky-10131'),(151,26,1,120,'sky-10141'),(152,28,1,20,'sky-10151'),(153,33,1,65,'sky-10151'),(154,27,1,35,'sky-10171'),(155,26,1,15,'sky-10181'),(156,27,1,30,'sky-10191'),(157,28,1,20,'sky-10201'),(158,26,1,12,'sky-10201'),(159,27,1,20,'sky-10211'),(160,33,1,21,'sky-10221'),(161,27,1,12,'sky-10251'),(162,27,1,20,'sky-10251'),(163,25,1,20,'sky-10251'),(164,25,1,12,'sky-10251'),(165,26,1,12,'sky-10251'),(166,29,1,24,'sky-10261'),(167,29,1,24,'sky-10261'),(168,29,1,24,'sky-10261'),(169,29,1,24,'sky-10261'),(170,29,1,24,'sky-10261'),(171,29,1,24,'sky-10261'),(172,29,1,24,'sky-10261'),(173,29,1,24,'sky-10261'),(174,29,1,24,'sky-10261'),(175,29,1,24,'sky-10261'),(176,29,1,24,'sky-10261'),(177,29,1,24,'sky-10261'),(178,29,1,24,'sky-10261'),(179,29,1,24,'sky-10261'),(180,29,1,24,'sky-10261'),(181,29,1,24,'sky-10261'),(182,29,1,24,'sky-10261'),(183,29,1,24,'sky-10261'),(184,29,1,24,'sky-10261'),(185,29,1,10,'sky-10261'),(186,29,1,10,'sky-10261'),(187,29,1,10,'sky-10261'),(188,29,1,10,'sky-10261'),(189,27,1,10,'sky-10271'),(190,27,1,23,'sky-10281'),(191,27,1,23,'sky-10281'),(192,27,1,15,'sky-10291'),(193,27,1,15,'sky-10301'),(195,26,1,12,'sky-10301'),(196,28,1,13,'sky-10301'),(197,27,1,89,'sky-10311'),(198,27,1,15,'sky-10321'),(199,27,1,15,'sky-10321'),(200,27,1,15,'sky-10321'),(201,27,1,15,'sky-10321'),(202,27,1,15,'sky-10321'),(203,27,1,15,'sky-10321'),(204,27,1,15,'sky-10321'),(205,27,1,15,'sky-10321'),(206,27,1,15,'sky-10321'),(207,27,1,15,'sky-10321'),(208,27,1,15,'sky-10331'),(209,28,1,15,'sky-10341'),(210,34,1,20,'sky-10341'),(212,26,1,8,'sky-10351'),(213,25,1,12,'sky-10361'),(214,26,1,15,'sky-10371'),(215,28,1,12,'sky-10381'),(216,27,1,20,'sky-10391'),(217,33,1,20,'sky-10391'),(218,27,4,20,'sky-10014'),(219,33,4,20,'sky-10014'),(220,27,4,12,'sky-10024'),(221,26,5,12,'sky-10015'),(222,33,5,12,'sky-10025'),(223,27,5,10,'sky-10035'),(224,27,5,12,'sky-10035'),(225,32,5,30,'sky-10035'),(226,32,5,35,'sky-10035'),(227,30,5,21,'sky-10035'),(229,27,5,20,'sky-10035'),(230,27,5,10,'sky-10035'),(231,27,5,54,'sky-10045'),(232,27,5,12,'sky-10025'),(233,34,4,12,'sky-10034'),(234,27,4,2,'sky-10034'),(235,26,4,12,'sky-10034'),(236,28,4,7,'sky-10044');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'لوازم کوهنوردی',1),(2,'بیمه کوهنوردی1',1),(3,'فارسی',1),(5,'sdsada',1),(6,'dadasds12112',0),(8,'sadasd',1),(16,'ssddsf',1),(17,'dsad',1),(18,'ssfds',0),(19,'ssfds',0),(20,'sdsaasdsa',0),(21,'ssadasd',0),(22,'ssadasd',0),(23,'ssadasd',0),(24,'sdsa',0),(25,'sdada',1),(26,'ssadasd',0);
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `u_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `User` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'mohammad','dsfdf','dfsdf',1,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_setting`
--

DROP TABLE IF EXISTS `home_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'title','تست'),(2,'header_image_home','1631879635.png'),(3,'description_title','توضیح اول'),(4,'description','عنوان اول'),(5,'description_title2','توضیح دوم'),(6,'description2','عنوان دوم'),(7,'description_title3','توضیح سوم'),(8,'description3','عنوان سوم'),(9,'title2','تست۲'),(10,'footer_image','613640739.jpg'),(11,'footer_text','1244'),(12,'footer_image2','592320731.png'),(13,'footer_text2','12233'),(14,'footer_image3','1681713749.jpeg'),(15,'footer_text3','54321'),(16,'header_image2','353102564.png'),(17,'address','sadsafsd'),(18,'email','تست۲'),(19,'phone','تست'),(20,'logo_name','تست'),(21,'logo_pic','تست');
/*!40000 ALTER TABLE `home_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_settings`
--

DROP TABLE IF EXISTS `home_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_settings`
--

LOCK TABLES `home_settings` WRITE;
/*!40000 ALTER TABLE `home_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `like` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `p_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`like_id`),
  KEY `p_id` (`p_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product` (`id`),
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (1,1,28,1),(2,1,27,1),(4,1,30,1),(5,1,32,1),(6,1,31,1),(7,1,33,1),(8,1,25,1),(9,1,26,1),(10,1,37,1),(11,4,26,1),(12,4,33,1),(13,4,32,1),(14,10,27,1),(15,10,26,1),(16,5,28,1),(17,5,31,1),(18,5,25,1);
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--



DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `media_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `p_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `product_ibfk` FOREIGN KEY (`p_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (130,'1293627484.png',1);
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
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_09_17_102227_create_account_table',0),(2,'2020_09_17_102227_create_address_table',0),(3,'2020_09_17_102227_create_cart_table',0),(4,'2020_09_17_102227_create_cat_table',0),(5,'2020_09_17_102227_create_comment_table',0),(6,'2020_09_17_102227_create_home_setting_table',0),(7,'2020_09_17_102227_create_like_table',0),(8,'2020_09_17_102227_create_order1_table',0),(9,'2020_09_17_102227_create_product_table',0),(10,'2020_09_17_102227_create_product_comment_table',0),(11,'2020_09_17_102227_create_sub_cat_table',0),(12,'2020_09_17_102227_create_user_table',0),(13,'2020_09_17_102229_add_foreign_keys_to_address_table',0),(14,'2020_09_17_102229_add_foreign_keys_to_comment_table',0),(15,'2020_09_17_102229_add_foreign_keys_to_like_table',0),(16,'2020_09_17_102229_add_foreign_keys_to_order1_table',0),(17,'2020_09_17_102229_add_foreign_keys_to_product_table',0),(18,'2020_09_17_102229_add_foreign_keys_to_product_comment_table',0),(19,'2020_09_17_102229_add_foreign_keys_to_sub_cat_table',0),(20,'2014_10_12_000000_create_users_table',1),(21,'2014_10_12_100000_create_password_resets_table',1),(22,'2020_09_17_102506_create_account_table',0),(23,'2020_09_17_102506_create_address_table',0),(24,'2020_09_17_102506_create_cart_table',0),(25,'2020_09_17_102506_create_cat_table',0),(26,'2020_09_17_102506_create_comment_table',0),(27,'2020_09_17_102506_create_home_setting_table',0),(28,'2020_09_17_102506_create_like_table',0),(29,'2020_09_17_102506_create_order1_table',0),(30,'2020_09_17_102506_create_product_table',0),(31,'2020_09_17_102506_create_product_comment_table',0),(32,'2020_09_17_102506_create_sub_cat_table',0),(33,'2020_09_17_102506_create_user_table',0),(34,'2020_09_17_102507_add_foreign_keys_to_address_table',0),(35,'2020_09_17_102507_add_foreign_keys_to_comment_table',0),(36,'2020_09_17_102507_add_foreign_keys_to_like_table',0),(37,'2020_09_17_102507_add_foreign_keys_to_order1_table',0),(38,'2020_09_17_102507_add_foreign_keys_to_product_table',0),(39,'2020_09_17_102507_add_foreign_keys_to_product_comment_table',0),(40,'2020_09_17_102507_add_foreign_keys_to_sub_cat_table',0),(41,'2020_09_23_113912_create_account_table',0),(42,'2020_09_23_113912_create_address_table',0),(43,'2020_09_23_113912_create_cart_table',0),(44,'2020_09_23_113912_create_cat_table',0),(45,'2020_09_23_113912_create_comment_table',0),(46,'2020_09_23_113912_create_home_setting_table',0),(47,'2020_09_23_113912_create_like_table',0),(48,'2020_09_23_113912_create_media_table',0),(49,'2020_09_23_113912_create_order1_table',0),(50,'2020_09_23_113912_create_product_table',0),(51,'2020_09_23_113912_create_product_comment_table',0),(52,'2020_09_23_113912_create_sub_cat_table',0),(53,'2020_09_23_113912_create_user_table',0),(54,'2020_09_23_113913_add_foreign_keys_to_address_table',0),(55,'2020_09_23_113913_add_foreign_keys_to_comment_table',0),(56,'2020_09_23_113913_add_foreign_keys_to_like_table',0),(57,'2020_09_23_113913_add_foreign_keys_to_media_table',0),(58,'2020_09_23_113913_add_foreign_keys_to_order1_table',0),(59,'2020_09_23_113913_add_foreign_keys_to_product_table',0),(60,'2020_09_23_113913_add_foreign_keys_to_product_comment_table',0),(61,'2020_09_23_113913_add_foreign_keys_to_sub_cat_table',0),(62,'2020_09_28_102514_create_home_settings_table',2),(63,'2020_10_05_135502_create_users_table',3),(64,'2020_10_05_135512_create_password_resets_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order1` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `address_id` int DEFAULT NULL,
  `u_id` int DEFAULT NULL,
  `order_factor` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transportation` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`o_id`),
  KEY `address_id` (`address_id`),
  KEY `user_fk1` (`u_id`),
  CONSTRAINT `address_fk1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_fk1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (153,32,1,'sky-10171','524302233','ارسال پستی','نقدی',5),(154,33,1,'sky-10181','543820738','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',6),(155,32,1,'sky-10031','556166408','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(156,33,1,'sky-10041','560826408','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(157,32,1,'sky-10051','570306408','ارسال پستی','کارت به کارت',4),(158,33,1,'sky-10061','0','ارسال پستی','پرداخت آنلاین',0),(159,35,1,'sky-10071','0','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(160,35,1,'sky-10081','0','ارسال پستی','پرداخت در محل',0),(161,35,1,'sky-10091','571410408','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(162,35,1,'sky-10101','27000000','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',4),(163,35,1,'sky-10111','6990000','ارسال پستی','پرداخت آنلاین',0),(164,32,1,'sky-10121','0','ارسال پستی','پرداخت در محل',0),(165,32,1,'sky-10131','35637000','ارسال پستی','پرداخت آنلاین',3),(166,32,1,'sky-10141','1440000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(167,NULL,1,'sky-10151','15190000','ارسال پستی','کارت به کارت',0),(168,33,1,'sky-10161','0','ارسال پستی','کارت به کارت',0),(169,32,1,'sky-10171','43209845','ارسال پستی','پرداخت در محل',0),(170,32,1,'sky-10181','180000','ارسال پستی','نقدی',0),(171,32,1,'sky-10191','37037010','ارسال پستی','پرداخت در محل',0),(172,33,1,'sky-10201','384000','ارسال پستی','پرداخت در محل',0),(173,33,1,'sky-10211','24691340','ارسال پستی','پرداخت در محل',0),(174,32,1,'sky-10221','4830000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(175,35,1,'sky-10231','0','ارسال پستی','نقدی',0),(176,34,1,'sky-10241','0','ارسال پستی','نقدی',0),(177,35,1,'sky-10251','41250144','ارسال پستی','پرداخت آنلاین',0),(178,34,1,'sky-10261','223200000','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(179,34,1,'sky-10271','12345670','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(180,35,1,'sky-10281','56790082','ارسال پستی','پرداخت آنلاین',0),(181,34,1,'sky-10291','18518505','ارسال پستی','پرداخت در محل',0),(182,35,1,'sky-10301','18818505','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(183,34,1,'sky-10311','109876463','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(184,35,1,'sky-10321','185185050','ارسال پستی','کارت به کارت',0),(185,34,1,'sky-10331','18518505','ارسال پستی','کارت به کارت',0),(186,34,1,'sky-10341','9500000','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',0),(187,35,1,'sky-10351','96000','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(188,36,1,'sky-10361','600000','ارسال پستی','پرداخت در محل',0),(189,35,1,'sky-10371','180000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(190,35,1,'sky-10381','144000','ارسال پستی','کارت به کارت',0),(191,36,1,'sky-10391','29291340','ارسال پستی','پرداخت در محل',0),(193,101,4,'sky-10014','29291340','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',3),(194,101,4,'sky-10024','14814804','ارسال پستی','پرداخت آنلاین',0),(197,102,5,'sky-10035','95967484','ارسال پستی','پرداخت در محل',0),(199,102,5,'sky-10025','17574804','ارسال پستی','کارت به کارت',0),(200,101,4,'sky-10034','8205134','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(201,101,4,'sky-10044','84000','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',0);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pro_num` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sub_cat` int DEFAULT NULL,
  `cat` int DEFAULT NULL,
  `status` int NOT NULL,
  `_del` int NOT NULL DEFAULT '0',
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_cat` (`sub_cat`,`cat`),
  KEY `cat` (`cat`),
  KEY `sub_cat_2` (`sub_cat`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat`) REFERENCES `sub_cat` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'12323','dsads','dsadad','sadds',12000,'adsadas',1,NULL,1,0,'dsadsads',NULL,NULL,NULL,NULL),(87,'۱۲۳۱۲۱۲','یسشی','سشی','زیسبسی',12,'سشیش',11,1,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_comment`
--

DROP TABLE IF EXISTS `product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_comment` (
  `productComment_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `p_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `idea` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productComment_id`),
  KEY `p_id` (`p_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `comment_ibfk` FOREIGN KEY (`p_id`) REFERENCES `product` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment`
--

LOCK TABLES `product_comment` WRITE;
/*!40000 ALTER TABLE `product_comment` DISABLE KEYS */;
INSERT INTO `product_comment` VALUES (54,1,28,1,'<p>hhjhjhjjhhjhj</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۳:۴۳:۴۰ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(55,1,28,1,'<p>werewrwer</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۴:۲۴:۳۰ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(56,1,28,1,'<p>fsdfdssdfdsgdf</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۴:۲۵:۲۳ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(57,1,33,1,'<p>wqrqwrerw</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۲۴:۲۳ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(58,1,30,1,'<p>افزودن نظر برا یایچ</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۲۶:۱۴ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(59,1,37,0,'<p>سلام به روی ماهت به چارقد سیاهت</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۴۵:۴۹ +۰۰۰۰> ۱۳۹۹/۵/۲۵');
/*!40000 ALTER TABLE `product_comment` ENABLE KEYS */;
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
  `status` int NOT NULL,
  `c_id` int DEFAULT '0',
  PRIMARY KEY (`sc_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `sub_cat_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cat`
--

LOCK TABLES `sub_cat` WRITE;
/*!40000 ALTER TABLE `sub_cat` DISABLE KEYS */;
INSERT INTO `sub_cat` VALUES (1,'ظروف کوهنوردی',1,2),(2,'کفش کوه نوردی',1,2),(3,'test',0,26),(8,'sdsadsa',0,26),(9,'سیسشی',0,1),(10,'سلام',0,1),(11,'تست بعدی',0,1);
/*!40000 ALTER TABLE `sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `born_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `national_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Mohammad','bgh','091223232323','تهران','تهران','1399/01/11','123456','612345','test@email.com',1),(3,'test name','test name','091223232323','تهران','تهران','1399/01/11','123456','12345','test@email.com',1),(4,'سارا','اعلایی','09120431748','تهران','تهران','1371','4400167054','09120431748','saraalayi71s@gmail.com',1),(5,'ساغر','بهشتي','09128444409','تهران','تهران','1369/09/19','0921106998','09128444409','F.darbeheshti@ut.ac.ir',1),(6,'ستاره','گیلکی','۰۹۳۷۶۹۳۹۸۳۹','تهران','تهران','۷/۱/۸۰','۰۰۲۴۰۹۶۱۶۴','۹۰۹۰','Gilakisetareh@gmail.com',1),(7,'ب','الهام','09193393459','تهران','تهران','','۱۲۳۴۵۶۷۸۹۰','12345','Elham.b85@gmail.com',1),(8,'ب','الهام','09193393459','تهران','تهران','','۱۲۳۴۵۶۷۸۹۰','12345','Elham.b85@gmail.com',1),(9,'ب','الهام','09193393459','تهران','تهران','','۱۲۳۴۵۶۷۸۹۰','12345','Elham.b85@gmail.com',1),(10,'مریم ','قاسمی ','09155036994','خراسان رضوی ','مشهد','1348','0052747808','3224','honarkade72@yahoo.com',1),(11,'لیلی','نوری','۰۹۳۸۹۲۰۰۷۹۱','تهران _استان شهریار','اندیشه','۷۹/۵/۳','۰۰۲۳۳۸۷۸۳۱','123789','Leylinooryoog@gmail.com',1),(12,'ف','عارف','۰۹۰۱۲۸۳۸۰۳۹','تهران','تهران','۱۳۵۸','۰۰۶۰۴۳۶۵۷۹','۴۸۵۲۵۲','Faezeh mostam@yahoo.com',1),(13,'Milad','Milad ebrahimiy  ','09193111096','Tehran ','Tehran ','1375/11/25','0019836678','19951476','Miladebrahimiy01@gmail.com',1),(14,'محمد','همتیان','۰۹۱۹۰۷۱۶۵۰۵','تهران','تهران','۱۳۸۰/۸/۸','۰۰۲۴۶۷۷۷۹۶','m2001h1380','Mahdishojaein8001@gmail.com',1),(15,'محمد','همتیان','۰۹۱۹۰۷۱۶۵۰۵','تهران','تهران','۱۳۸۰/۸/۸','۰۰۲۴۶۷۷۷۹۶','m2001h1380','Mahdishojaein8001@gmail.com',1),(16,'مرتضی','کرمی','09359922758','البرز','کرج','1364/10/16','0323894615','0323894615','mortezakarami8080@gmail.com',1),(17,'غزال','راست جو','09125170478','تهران','تهران','1373/02/09','0017041481','Ghas7379','ghazaal.rastjoo94@gmail.com',1),(18,'زینب','کوهی','09193424693','تهران','ری','۷۷/۳/۲۰','0022126988','13811381','Zohrekoohi1381@gmail.com',1),(19,'مهسا ','طهری','09339006028','تهران','تهران','1374/01/15','0017911151','Aa123456','Mahsatahari@yahoo.com',1),(20,'Ghazale','Ghazale','09122707707','Tehran','Tehran','Zolfaghari','006387423-7','33474','arshidazolfaghari@gmail.com',1),(21,'بهار','ادیب','۰۹۱۲۲۷۶۱۷۳۷','تهران','تهران','۵/۱۲/۷۴','۰۰۱۸۸۶۸۰۸۸','Baharadib4444','Baharadib4@gmail.com',1),(22,'چگینی ','جواد','09394948507 ','تهران ','تهران ','1371/3/4','001135481817','12211331','Www.fuckyou.com',1),(23,'هجرتی','شهره','۰۸۱۲۴۴۰۲۳۷۸','بوشهر','گندوه','۵.۱.۱۳۶۶','592339665','84100334','Shohreh.hejrati1987@gmail.com',1),(24,'پورنخعی','ماندانا','۰۹۱۹۴۸۱۹۸۷۸','البرز','کرج','۱۳۷۰/۱۱/۲۲','۰۳۱۰۶۶۹۵۶۱','Mandana4717','Mandana.pournakhaei@gmail.com',1),(25,'سیده حدیث','موسوی','09016312367','تهران','تهران','۱۹/۰۱/۱۳۷۴','4540100939','4540100','hadis.m.hm81@gmail.com',1),(26,'سیده حدیث','موسوی','09016312367','تهران','تهران','۱۹/۰۱/۱۳۷۴','4540100939','4540100','hadis.m.hm81@gmail.com',1),(27,'رسول','بیوکی','09197251028','تهران','تهران','61','0071044205','A123456789','Amr1028@yahoo.com',1),(28,'رسول','بیوکی','09197251028','تهران','تهران','61','0071044205','A123456789','Amr1028@yahoo.com',1),(29,'ستاره','ابراهیمیان','09102153439','فردیس','کرج','۶۷/۱۲/۲۹','1292854766','setareh14511','setareh.ebrahimian@yahoo.com',1),(30,'مهدیه','مالمیر','۰۹۹۰۳۰۲۸۵۸۰','تهران','تهران','۱۳۷۹','۰۰۲۳۵۴۵۲۸۳','mahdie9632','mahdie.26.m@gmail.com',1),(31,'سمیه','حسین زاده','09199919838','تهران','تهران','12/4/1364','0072289635','442256206','hosseinzade.somaye@yahoo.com',1),(32,'Kavianpour','Zahra','09011756173','مازندران','نور','6/11/76','۲۱۹۰۱۹۲۳۰۷','Zahrakp76','Zahra.kavianpour.1376',1),(33,'مهشيد','اسكندريان','09198593581','تهران','تهران','٧٦/٢/١٥','4120586881','4120586881','Eskandarianmahshid@yahoo.com',1),(34,'سید علی اکبر','حسینی','09395895658','کرمان','رفسنجان','1367/11/27','3040004298','26962697','ali.hosseini13670@gmail.com',1),(35,'Parisa','Fartash','09195783008','Alborz','Karaj','4/9/77','0311868363','5021843','Mfparisaa@gmail.con',1),(36,'شادی','سلطانی','09194978722','تهران','تهران','۷۲/۶/۳','0016064836','09194978722','Www.yakhgole97@gmail.com',1),(37,'شیما','ابراهیمی','۰۹۱۲۰۷۲۹۳۹۱','مازندران','بابلسر','۱۴/۲/۶۶','2064834206','۳۵۵۹','shimaebrahimii@gmail.com',1),(38,'مينا','بروايه','09376404507','تهران','تهران','10/11/70','1741669413','4507','lusimery92@hotmail.com',1),(39,'مينا','بروايه','09376404507','تهران','تهران','10/11/70','1741669413','4507','lusimery92@hotmail.com',1),(40,'فرزانه','ناظمیان پور','۰۹۱۲۷۷۳۳۵۹۶','تهران','تهران','۱۳۶۷','۴۵۹۲۰۹۸۹۹۴','24091348','F.nazemian@yahoo.com',1),(41,'پارسا','عسگرخانی','09386628917','تهران','تهران','1377/09/04','0021628432','09386628917Pa','Parsaasg77@gmail.com',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (26,'PARSA','parsasamandizadeh@gmail.com','$2y$10$nz4dnkS3miRDgD3qr.NtnOz/VrCOkTCG/pDzEssKAFpmfh0ln2AKm','2020-10-13 08:03:54','2020-10-13 08:03:54'),(27,'Parsa','parsa.barcaa@gmail.com','$2y$10$TFYTHFVe8alaFNWN7pgqyOhqrtoAsuPhyxyXyFiGW/dE.rU52218O','2020-10-13 08:04:27','2020-10-13 08:10:52'),(28,'MAHSA','mahsafakhimi@gmail.com','$2y$10$LbonbOatvNqDUREr9mkyj.cZ7gQRXKtqso8JCE1i2cP/ShSOvd99e','2020-10-13 08:09:11','2020-10-13 08:09:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Mezon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 15:46:29
