-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: jazire_ketab
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'jazire_ketab','jazire_ketab',2,'jazire_ketab','8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414','دوشنبه <bدوشنبه ۲۸ مهر ۱۳۹۹ ۱۱:۰۶:۵۵ +۰۰۰۰> ۱۳۹۹/۷/۲۸ - ۱۱:۰۶',1,0),(3,'mmfn','fatehi',2,'viper','334b009812004c1017a2e919bff6f85e0e00224e2cbe963eaf22fa53768fdda7','جمعه <bجمعه ۳۱ مرداد ۱۳۹۹ ۰۷:۲۴:۳۶ +۰۴۳۰> ۱۳۹۹/۵/۳۱',1,0);
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
  `area` int NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `_del` int DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `address_fk` (`u_id`),
  CONSTRAINT `address_fk` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (31,1,'sadas','msdad',6,'<p>sdfsdfsd</p>','dssd','dsadasd','asdfsfsd',1,1),(32,1,'adsa','sfsd',8,'<p>fsdf</p>','sdfsd','sdfsdd','sdfsd',1,1),(33,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,1),(34,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(35,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,1),(36,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,1),(37,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(38,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,1),(39,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(40,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(41,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(42,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(43,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(44,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(45,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(46,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(47,1,'sdsada','adsaa',2,'dsfdsfsdf','sdas','dasdas','dsfdsf',1,0),(48,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(49,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(50,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(51,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیت','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(52,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(53,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(54,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(55,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(56,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(57,1,'سشیسش','سیسش',5,'بسیبسیبتسیتبسیتبتسیتبتسبیتs','سشیسی','۱۲۳۴۵۶','یبیسبسیبسیب',1,0),(58,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(59,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(60,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(61,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(62,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(63,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(64,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(65,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(66,1,'sadsa','sad',3,'adsadas','asdsa','asdas','dsadsa',1,0),(67,1,'sadas','sdsa',2,'sadasdasdasdwas','adasd','asdsad','sadasdasd',1,0),(68,1,'dss','dsfdsf',4,'sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(69,1,'dss','dsfdsf',4,'sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(70,1,'dss','dsfdsf',4,'sdfsf','dsfsfs','dfsdfsd','fsdfsd',1,0),(71,1,'wrewrwrew','rewrw',2,'wewre','wrewr','werwe','rerwerw',1,0),(73,51,'تهران','اهران',2,'تتتتتت','11111','4444444','0912222222',0,0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_bio` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `_del` int DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (16,'آلبر کامو123','<p>asdadssdaaa</p>',0),(17,'آلبر کامو','<p>asdadssdaaaaa</p>',0),(18,'sdfds','<p>dsfsf</p>',0),(19,'جول اوستین','',0),(20,'sadasd','<p>sdsa</p>',0),(21,'xzxzX','<p>zxXXzX</p>',0);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_authors`
--

DROP TABLE IF EXISTS `book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book_authors` (
  `book_id` int NOT NULL,
  `author_id` int NOT NULL,
  `bookAuthors_id` int NOT NULL AUTO_INCREMENT,
  `_del` int NOT NULL,
  PRIMARY KEY (`bookAuthors_id`),
  KEY `book` (`book_id`),
  KEY `a` (`author_id`),
  CONSTRAINT `a` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_authors`
--

LOCK TABLES `book_authors` WRITE;
/*!40000 ALTER TABLE `book_authors` DISABLE KEYS */;
INSERT INTO `book_authors` VALUES (27,16,2,0),(42,17,6,0),(43,19,7,0),(28,16,8,0),(44,16,9,1),(45,16,10,1),(46,16,11,0);
/*!40000 ALTER TABLE `book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_translator`
--

DROP TABLE IF EXISTS `book_translator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book_translator` (
  `bookTranslator_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `translator_id` int NOT NULL,
  PRIMARY KEY (`bookTranslator_id`),
  KEY `translator` (`translator_id`),
  KEY `book_trans` (`book_id`),
  CONSTRAINT `book_trans` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `translator` FOREIGN KEY (`translator_id`) REFERENCES `translator` (`translator_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_translator`
--

LOCK TABLES `book_translator` WRITE;
/*!40000 ALTER TABLE `book_translator` DISABLE KEYS */;
INSERT INTO `book_translator` VALUES (1,44,15),(2,45,14),(3,27,18),(4,46,17);
/*!40000 ALTER TABLE `book_translator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sub_cat` int DEFAULT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `goodreads_rating` float DEFAULT NULL,
  `status` int NOT NULL,
  `_del` int NOT NULL DEFAULT '0',
  `publisher_id` int DEFAULT NULL,
  `pic_path4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_year` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shabak` int DEFAULT NULL,
  `cover` int DEFAULT NULL,
  `language` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `sub_cat` (`sub_cat`,`c_id`),
  KEY `cat` (`c_id`),
  KEY `sub_cat_2` (`sub_cat`),
  KEY `product_ibfk_4` (`publisher_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat`) REFERENCES `sub_cat` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (27,'شسیشس',23000,'msdjkkjsjksjkfdsjkdsjkjkdsjkssskskksksksskskskskksskksskskskskskkkskskskkksksksdjkdsjdsjsjndsdkjsjndksjkfnjkdsnkjfdsnjkfdsnjkfkndsnkjfdsnjksdnjfnjsnjdsjsknfanjknjknjknjknkjnjkknjnjknjkjknknknjjknjknjnkjknjknjjnknkjjknjknjknjknjknjknjknjknjknjknkjnjknjknkjnjknjknjknjknjknjnkjnkjknjnkjkn',2,'image/products/1602486253login_pic.jpg',NULL,NULL,NULL,2,5.6,2,1,18,NULL,'sadsdssad',23434,NULL,'dsfs',45),(28,'qwqwe',20000,'',1,'image/products/1595249518photo_2020-07-18_23-12-58.jpg',NULL,NULL,NULL,2,3,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(29,'ads',120000,'',1,'image/products/1595156672PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(30,'ads',120000,'',1,'image/products/1595156672PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(31,'ads',120000,'',1,'image/products/1595156672PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(32,'ads',120000,'',1,'image/products/1595156672PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(33,'adsad',120000,'',1,'image/products/1595156797PicsArt_07-17-06.34.08.jpg',NULL,NULL,NULL,1,5,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(34,'adsad',120000,'',1,'image/products/1595156861PicsArt_07-17-06.34.08.jpg',NULL,NULL,NULL,1,5,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(35,'asdas',45000,'',1,'image/products/1595156882PicsArt_07-17-08.44.53.jpg',NULL,NULL,NULL,1,8,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(36,'aSS',12000,'',1,'image/products/1595156946photo_2020-07-17_10-54-19.jpg',NULL,NULL,NULL,1,9,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(37,'mmaa',54000,'',1,'image/products/1595157099photo_2020-07-17_10-53-51.jpg',NULL,NULL,NULL,1,3,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(38,'mmaa',54000,'',1,'image/products/1595157188photo_2020-07-17_10-53-51.jpg',NULL,NULL,NULL,1,3,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(39,'mxcmzmc',120000,'',1,'image/products/1595157218PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(40,'mxcmzmc',120000,'',1,'image/products/1595157339PicsArt_07-15-07.02.49.jpg',NULL,NULL,NULL,1,2,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(41,'asdsa',23000,'',1,'image/products/1595157353PicsArt_07-17-08.44.53.jpg',NULL,NULL,NULL,1,7,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(42,'sada',4000,'',1,'image/products/1595157657PicsArt_07-16-03.42.04.jpg',NULL,NULL,NULL,1,3,1,0,14,NULL,NULL,NULL,NULL,NULL,NULL),(43,'dvdvfd',320000,'',2,'image/products/1595249518photo_2020-07-18_23-12-58.jpg',NULL,NULL,NULL,2,4,1,0,16,NULL,NULL,NULL,NULL,NULL,NULL),(44,'scsd',22000,'',1,'image/products/1595249758PicsArt_07-15-06.41.03.jpg',NULL,NULL,NULL,1,3,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(45,'dsfsd',50000,'',1,'image/products/1595848464PicsArt_07-25-11.22.23.jpg',NULL,NULL,NULL,1,4,1,1,14,NULL,NULL,NULL,NULL,NULL,NULL),(46,'asaS',213123,'<p><span style=\"color: #4d4d4d; font-family: iransansnu, Poppins, Roboto, sans-serif; font-size: 14.864px; letter-spacing: -0.3px; text-align: right; background-color: #fafafa;\">S</span><span style=\"background-color: #fafafa; color: #4d4d4d; font-family: BYekan; font-size: 14.864px; letter-spacing: -0.3px; text-align: right;\">&nbsp;</span><span style=\"background-color: #fafafa; color: #4d4d4d; font-family: BYekan; font-size: 14.864px; letter-spacing: -0.3px; text-align: right;\">تان فردی موفق باشید و به تمام خواسته های خود برسید ، تنها کسی که در این مورد می تواند به شما کمک کند ، خودتان هستید . شما تنها کسی هستید که با تشویق کردن خودتان می توانید به خواسته های خود در طول زندگی برسید . شما تمام فاکتورهای لازم برای رسیدن به موفقیت را دارید ، تنها چیزی که لازم است</span><span style=\"background-color: #fafafa; color: #4d4d4d; font-family: BYekan; font-size: 14.864px; letter-spacing: -0.3px; text-align: right;\">&nbsp;</span></p>',1,'image/products/1602486253login_pic.jpg',NULL,NULL,NULL,1,213123,2,0,NULL,NULL,'ASDASD',12345,NULL,'ADSD',12122);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `ca_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `u_id` int NOT NULL,
  `count` int NOT NULL,
  `order_factor` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`ca_id`),
  KEY `book_id` (`book_id`,`u_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (96,42,4,12,'0'),(97,42,4,20,'0'),(98,44,4,20,'0'),(99,29,1,54,'sky-10011'),(100,33,1,54,'sky-10011'),(101,43,1,23,'sky-10011'),(102,44,1,21,'sky-10011'),(103,43,1,23,'sky-10011'),(104,28,1,4,'sky-10011'),(105,43,1,21,'sky-10021'),(106,43,1,23,'sky-10031'),(107,43,1,12,'sky-10041'),(109,28,1,23,'sky-10051'),(110,42,1,8,'sky-10051'),(113,27,1,10,'sky-10061'),(114,28,1,23,'sky-10071'),(115,43,1,20,'sky-10081'),(116,28,1,2,'sky-10101'),(117,43,1,2,'sky-10101'),(118,43,51,1,'sky-100151'),(119,44,1,20,'sky-10101'),(120,43,1,1000,'sky-10101');
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
  `pic` varchar(235) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'لوازم کوهنوردی',1,NULL),(2,'بیمه کوهنوردی',1,'image/products/1595773713PicsArt_07-02-11.59.48.jpg'),(14,'sasd',1,'image/products/1595773713PicsArt_07-02-11.59.48.jpg'),(15,'sdasd',1,'image/products/1597046114PicsArt_07-15-06.57.06.jpg');
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_setting`
--

DROP TABLE IF EXISTS `home_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_setting` (
  `hset_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`hset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'title','SKYFALL'),(2,'slider1_img','image/home/slider1.JPG'),(3,'slider2_img','image/home/slider2.JPG'),(4,'slider1_title','S K Y F A L L'),(5,'slider2_title','Amazing Natural Geography of Iran'),(6,'slider1_desc','گروه همنوردی اسکای فال این صفحه را در جهت حمایت از طبیعت و رفع تمامی نیاز های طبیعت گردان و دوستداران طبیعت ایجاد کرده است'),(7,'slider2_desc','      '),(8,'box1_img','assets/slidersImage/1594373435coverfilm.png'),(9,'box2_img','image/home/box2.jpeg'),(10,'box3_img','image/home/box3.jpeg'),(11,'box1_title','سال نو مبارک'),(12,'box2_title','آخرین عکس سال 98'),(13,'box3_title','غروب زیبای خلیج فارس'),(14,'footer_about','جزیره کتاب'),(15,'video_title','با گروه ما تجربه کنید'),(16,'people_idea','نقل قول بزرگان'),(17,'slider3_img','assets/slidersImage/1595671976book_header123.png'),(18,'slider4_img','assets/slidersImage/1595673587عکس۱.png'),(19,'slider5_img','image/home/slider5.JPG'),(20,'slider6_img','image/home/slider6.JPG'),(21,'slider7_img','assets/slidersImage/1595499928.png'),(22,'slider8_img','assets/slidersImage/1595673434iconfinder_goodreads_43148.png'),(23,'final_order','http://www.skyfall.com'),(24,'ShopBox','ارسال به سراسر کشور'),(25,'ShopBox2','بازگشت وجه در صورت نارضایتی'),(26,'ShopBox3','پشتیبانی آنلاین'),(27,'ShopBox_desc','تمامی محصولات به سراسر کشور ارسال خواهد شد'),(28,'ShopBox2_desc','در صورت نارضایتی از کالا، وجه قابل بازگشت خواهد بود'),(29,'ShopBox3_desc','تیم جزیره کتاب با پشتیبانی آنلاین در خدمت شما است'),(31,'slider1shop_desc',''),(32,'slider1_footer','جزیره کتاب در جهت رشد فرهنگ مطالعه و کتابخوانی به معرفی نویسندگان، کتاب و نقل قول های افراد بزرگ می پردازد'),(33,'slider9_img','assets/slidersImage/1595673560camping300.png'),(34,'slider1shop_title',''),(35,'book_description','شسیشس'),(36,'book_description2','dsfsd');
/*!40000 ALTER TABLE `home_setting` ENABLE KEYS */;
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
  `book_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`like_id`),
  KEY `book_id` (`book_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `Books` (`book_id`),
  CONSTRAINT `like_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (49,1,28,1),(50,1,42,1);
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limitation`
--

DROP TABLE IF EXISTS `limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `limitation` (
  `lim_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `_new_user` int NOT NULL,
  `_users_list` int NOT NULL,
  `_new_order` int NOT NULL,
  `_orders_list` int NOT NULL,
  `_new_product` int NOT NULL,
  `_products_list` int NOT NULL,
  `_manage_reports` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lim_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `limitation_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limitation`
--

LOCK TABLES `limitation` WRITE;
/*!40000 ALTER TABLE `limitation` DISABLE KEYS */;
INSERT INTO `limitation` VALUES (1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `limitation` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (135,32,1,'sky-10011','0','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',0),(136,33,1,'sky-10021','6720000','ارسال پستی','نقدی',0),(137,33,1,'sky-10031','7360000','ارسال پستی','پرداخت آنلاین',0),(138,33,1,'sky-10041','3840000','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(139,35,1,'sky-10051','492000','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',0),(140,35,1,'sky-10061','230000','ارسال پستی','پرداخت آنلاین',0),(141,35,1,'sky-10071','460000','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',0),(142,34,1,'sky-10081','6400000','ارسال پستی','پرداخت در محل',0),(143,34,1,'sky-10091','0','ارسال پستی','پرداخت در محل',0),(144,73,51,'sky-100151','320000','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',5),(145,34,1,'sky-10101','321120000','ارسال پستی','پرداخت آنلاین',0);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
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
  `book_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `idea` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productComment_id`),
  KEY `book_id` (`book_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `Books` (`book_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment`
--

LOCK TABLES `product_comment` WRITE;
/*!40000 ALTER TABLE `product_comment` DISABLE KEYS */;
INSERT INTO `product_comment` VALUES (45,1,42,0,'<p>sadsadfs</p>','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۰۳:۳۶ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(46,1,42,0,'<p>sadsadfs</p>','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۰۴:۴۲ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(47,1,42,0,'<p>sadsadfs</p>','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۰۴:۵۳ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(48,1,42,0,'<p>sadsadfs</p>','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۰۵:۱۳ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(49,1,42,0,'','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۴۳:۲۶ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(50,1,42,0,'','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۵۴:۱۳ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(51,1,42,1,'<p>kfkkdsksdk</p>','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۵۵:۰۴ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(52,1,42,0,'','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۵۵:۰۹ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(53,1,42,0,'','جمعه <bجمعه ۲۴ مرداد ۱۳۹۹ ۰۶:۵۵:۱۵ +۰۰۰۰> ۱۳۹۹/۵/۲۴'),(54,1,28,0,'<p>ffgergergregreer</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۴:۲۷:۲۵ +۰۰۰۰> ۱۳۹۹/۵/۲۵');
/*!40000 ALTER TABLE `product_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `_del` int DEFAULT '0',
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (14,'افق',0),(15,'آزادی',0),(16,'سیسبیس۱۱۱۱۱',0),(17,'aaششش',0),(18,'aaششش',0);
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quote` (
  `quote_id` int NOT NULL AUTO_INCREMENT,
  `quote` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`quote_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES (5,'اتاتااترات',16);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cat`
--

LOCK TABLES `sub_cat` WRITE;
/*!40000 ALTER TABLE `sub_cat` DISABLE KEYS */;
INSERT INTO `sub_cat` VALUES (1,'ظروف کوهنوردی',1,1),(2,'کفش کوه نوردی',1,1);
/*!40000 ALTER TABLE `sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translator`
--

DROP TABLE IF EXISTS `translator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `translator` (
  `translator_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `_del` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`translator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translator`
--

LOCK TABLES `translator` WRITE;
/*!40000 ALTER TABLE `translator` DISABLE KEYS */;
INSERT INTO `translator` VALUES (14,'سوسماس',1),(15,'فاک',1),(16,'نسرین شاهسون',1),(17,'sdsdsadsa',0),(18,'zxcvxc',0);
/*!40000 ALTER TABLE `translator` ENABLE KEYS */;
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
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Mohammad','bgh','091223232323','612345','test@email.com',1),(51,'سمندی','حسین','989122909733','b6fc419725d133f807f97370a099041c4fbd9e1a90f743cc9d2238913eb3e447','mhsamandi@gmail.com',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jazire_ketab'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23 13:21:39
