-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: Skyfall
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
INSERT INTO `account` VALUES (1,'mohammad','bgh',2,'mohammadbgh','12345','جمعه <bجمعه ۱۸ مهر ۱۳۹۹ ۰۴:۵۵:۱۲ +۰۰۰۰> ۱۳۹۹/۷/۱۸ - ۰۴:۵۵',1,0),(2,'سبحان','نجفی',1,'sobhan','sobhan12345','چهارشنبه <bچهارشنبه ۲۸ خرداد ۱۳۹۹ ۰۲:۱۲:۱۱ +۰۰۰۰> ۱۳۹۹/۳/۲۸ - ۰۲:۱۲',1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (146,32,1,60,'sky-10101'),(147,34,1,15,'sky-10111'),(148,31,1,43,'sky-10131'),(149,33,1,54,'sky-10131'),(150,32,1,45,'sky-10131'),(151,26,1,120,'sky-10141'),(152,28,1,20,'sky-10151'),(153,33,1,65,'sky-10151'),(154,27,1,35,'sky-10171'),(155,26,1,15,'sky-10181'),(156,27,1,30,'sky-10191'),(157,28,1,20,'sky-10201'),(158,26,1,12,'sky-10201'),(159,27,1,20,'sky-10211'),(160,33,1,21,'sky-10221'),(161,27,1,12,'sky-10251'),(162,27,1,20,'sky-10251'),(163,25,1,20,'sky-10251'),(164,25,1,12,'sky-10251'),(165,26,1,12,'sky-10251'),(166,29,1,24,'sky-10261'),(167,29,1,24,'sky-10261'),(168,29,1,24,'sky-10261'),(169,29,1,24,'sky-10261'),(170,29,1,24,'sky-10261'),(171,29,1,24,'sky-10261'),(172,29,1,24,'sky-10261'),(173,29,1,24,'sky-10261'),(174,29,1,24,'sky-10261'),(175,29,1,24,'sky-10261'),(176,29,1,24,'sky-10261'),(177,29,1,24,'sky-10261'),(178,29,1,24,'sky-10261'),(179,29,1,24,'sky-10261'),(180,29,1,24,'sky-10261'),(181,29,1,24,'sky-10261'),(182,29,1,24,'sky-10261'),(183,29,1,24,'sky-10261'),(184,29,1,24,'sky-10261'),(185,29,1,10,'sky-10261'),(186,29,1,10,'sky-10261'),(187,29,1,10,'sky-10261'),(188,29,1,10,'sky-10261'),(189,27,1,10,'sky-10271'),(190,27,1,23,'sky-10281'),(191,27,1,23,'sky-10281'),(192,27,1,15,'sky-10291'),(193,27,1,15,'sky-10301'),(195,26,1,12,'sky-10301'),(196,28,1,13,'sky-10301'),(197,27,1,89,'sky-10311'),(198,27,1,15,'sky-10321'),(199,27,1,15,'sky-10321'),(200,27,1,15,'sky-10321'),(201,27,1,15,'sky-10321'),(202,27,1,15,'sky-10321'),(203,27,1,15,'sky-10321'),(204,27,1,15,'sky-10321'),(205,27,1,15,'sky-10321'),(206,27,1,15,'sky-10321'),(207,27,1,15,'sky-10321'),(208,27,1,15,'sky-10331'),(209,28,1,15,'sky-10341'),(210,34,1,20,'sky-10341'),(212,26,1,8,'sky-10351'),(213,25,1,12,'sky-10361'),(214,26,1,15,'sky-10371'),(215,28,1,12,'sky-10381'),(216,27,1,20,'sky-10391'),(217,33,1,20,'sky-10391'),(218,27,4,20,'sky-10014'),(219,33,4,20,'sky-10014'),(220,27,4,12,'sky-10024'),(221,26,5,12,'sky-10015'),(222,33,5,12,'sky-10025'),(223,27,5,10,'sky-10035'),(224,27,5,12,'sky-10035'),(225,32,5,30,'sky-10035'),(226,32,5,35,'sky-10035'),(227,30,5,21,'sky-10035'),(229,27,5,20,'sky-10035'),(230,27,5,10,'sky-10035'),(231,27,5,54,'sky-10045'),(232,27,5,12,'sky-10025'),(233,34,4,12,'sky-10034'),(234,27,4,2,'sky-10034'),(235,26,4,12,'sky-10034'),(236,28,4,7,'sky-10044'),(237,28,1,12,'sky-10401'),(238,28,1,1,'sky-10401'),(239,28,1,65,'sky-10401'),(240,27,1,21,'sky-10401'),(241,30,1,10,'sky-10411'),(242,34,1,15,'0');
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
  `pic_path` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (1,'لوازم کوهنوردی',1,'image/products/1595855803PicsArt_07-25-11.22.23.jpg'),(2,'بیمه کوهنوردی1',1,NULL),(3,'فارسی',1,NULL),(4,'adsd',1,NULL),(5,'sdsada',1,NULL),(6,'dadasds',1,NULL),(7,'sadasd',1,NULL),(8,'sadasd',1,NULL),(9,'adasd',1,NULL),(16,'ssddsf',1,NULL);
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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `e_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (7,'E100011','Sky Fall','گروه skyfall همه ساله چند برنامه را به صورت ویژه تر برگذار میکند که در این برنامه ها اقداماتی نظیر : \r\nبرگذاری مسابقه با جوایز مناسب \r\nآتش بازی و نور افشانی \r\nبرگذاری اردو های آموزشی \r\nو.... انجام میشود \r\nبرای مثال در سال ۹۷ ویژه برنامه (پایان فصل بهار) با همکاری یک گروه پاراگلایدر در یک سایت پروازی در گیلان انجام شد که بعد از پیمایش تا سایت پروازی گروه همراه با پاراگلایدر از ارتفاعات به دشت برگشتند ، شما میتوانید ویژه برنامه ها و ریداد های مهم skyfall را در قسمت شمارش معکوس دنبال کنید.','assets/equipmentsImage/1585775498hero_bg_1.png','1399/01/22',2),(8,'E100102','ویژه برنامه  بهار (قله درفک)','در این برنامه پیمایش از مسیر غربی قله درفک از روستای شیرکوه به لارنه انجام میشود و شرکت در این برنامه نیازمند آمادگی جسمی و روحی میباشد این برنامه در کلاس برنامه های (ماجراجویانه) برگذار خواهد شد جزئیات بیشتر و ثبت نام در برنامه را از طریق قسمت برنامه ها در سایت انجام دهید .','assets/equipmentsImage/158633144220190510_125150.png','1399/03/02',1);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_blog`
--

DROP TABLE IF EXISTS `home_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_blog` (
  `hblog_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`hblog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_blog`
--

LOCK TABLES `home_blog` WRITE;
/*!40000 ALTER TABLE `home_blog` DISABLE KEYS */;
INSERT INTO `home_blog` VALUES (7,'E100011','hhh','gggggg','گروه skyfall همه ساله چند برنامه را به صورت ویژه تر برگذار میکند که در این برنامه ها اقداماتی نظیر : \r\nبرگذاری مسابقه با جوایز مناسب \r\nآتش بازی و نور افشانی \r\nبرگذاری اردو های آموزشی \r\nو.... انجام میشود \r\nبرای مثال در سال ۹۷ ویژه برنامه (پایان فصل بهار) با همکاری یک گروه پاراگلایدر در یک سایت پروازی در گیلان انجام شد که بعد از پیمایش تا سایت پروازی گروه همراه با پاراگلایدر از ارتفاعات به دشت برگشتند ، شما میتوانید ویژه برنامه ها و ریداد های مهم skyfall را در قسمت شمارش معکوس دنبال کنید.','assets/equipmentsImage/1585775076hero_bg_1.png','1399/01/11',2);
/*!40000 ALTER TABLE `home_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_desc`
--

DROP TABLE IF EXISTS `home_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_desc` (
  `hdesc_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`hdesc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_desc`
--

LOCK TABLES `home_desc` WRITE;
/*!40000 ALTER TABLE `home_desc` DISABLE KEYS */;
INSERT INTO `home_desc` VALUES (5,'E100072','skyfall درباره گروه','<p style=\"text-align: right;\">این گروه با حضور دوستانی از نقاط مختلف ایران تشکیل شد و رفته رفته در جهت بهبود شرایط و خدمات خود گام برداشتیم تا فضای مناسبی برای همه سلیقه ها فراهم کنیم تا در کنار هم از نقاط بکر طبیعت لذت ببریم و از تجربیات هم استفاده کنیم ، &nbsp;همچنین سعی میکنیم که ورزش وسلامتی را در تمام برنامه ها اولویت قرار دهیم ، این گروه در سال ۱۳۹۳ تشکیل شده و تا کنون در ۳۰ استان کشور و بیش از ۳۰۰ نقطه زیبا و گردشگری حضور داشته ایم&nbsp;</p>','assets/equipmentsImage/1585725289F8C281EF-22E4-4B34-95F3-044D501F51A8.png',1),(7,'E100101','ویژه برنامه','گروه skyfall همه ساله چند برنامه را به صورت ویژه تر برگذار میکند که در این برنامه ها اقداماتی نظیر :  برگذاری مسابقه با جوایز مناسب ،  آتش بازی و نور افشانی ، برگذاری اردو های آموزشی  و.... انجام میشود . برای مثال در سال ۹۷ ویژه برنامه (پایان فصل بهار) با همکاری یک گروه پاراگلایدر در یک سایت پروازی در گیلان انجام شد که بعد از پیمایش تا سایت پروازی گروه همراه با پاراگلایدر از ارتفاعات به دشت برگشتند ، شما میتوانید ویژه برنامه ها و ریداد های مهم skyfall را در قسمت شمارش معکوس دنبال کنید.','assets/equipmentsImage/1585768003C31EACCF-7B11-4DAD-A5D5-117F01A68519.png',1);
/*!40000 ALTER TABLE `home_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_setting`
--

DROP TABLE IF EXISTS `home_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `home_setting` (
  `hset_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'title','SKYFALL'),(2,'slider1_img','image/home/slider1.JPG'),(3,'slider2_img','image/home/slider2.JPG'),(4,'slider1_title','S K Y F A L L'),(5,'slider2_title','Amazing Natural Geography of Iran'),(6,'slider1_desc','گروه همنوردی اسکای فال این صفحه را در جهت حمایت از طبیعت و رفع تمامی نیاز های طبیعت گردان و دوستداران طبیعت ایجاد کرده است'),(7,'slider2_desc','      '),(8,'box1_img','assets/slidersImage/1594373435coverfilm.png'),(9,'box2_img','image/home/box2.jpeg'),(10,'box3_img','image/home/box3.jpeg'),(11,'box1_title','سال نو مبارک'),(12,'box2_title','آخرین عکس سال 98'),(13,'box3_title','غروب زیبای خلیج فارس'),(14,'footer_about','گروه همنوردی skyfall'),(15,'video_title','با گروه ما تجربه کنید'),(16,'people_idea','نظرات کاربران درباره اسکال فال'),(17,'slider3_img','assets/slidersImage/1594714788slider3.png'),(18,'slider4_img','image/home/slider4.JPG'),(19,'slider5_img','image/home/slider5.JPG'),(20,'slider6_img','image/home/slider6.JPG'),(21,'slider7_img','assets/slidersImage/1594719901slider7.png'),(22,'slider8_img','assets/slidersImage/1597474543PicsArt_08-05-10.51.30.png'),(23,'final_order','http://www.skyfall.com'),(24,'ShopBox','ارسال به سراسر کشور'),(25,'ShopBox2','بازگشت وجه در صورت نارضایتی'),(26,'ShopBox3','پشتیبانی آنلاین'),(27,'ShopBox_desc','تمامی محصولات به سراسر کشور ارسال خواهد شد'),(28,'ShopBox2_desc','در صورت نارضایتی از کالا، وجه قابل بازگشت خواهد بود'),(29,'ShopBox3_desc','تیم اسکال فال با پشتیبانی آنلاین در خدمت شما است'),(30,'slider1shop_title','S K Y F A L L'),(31,'slider1shop_desc','گروه همنوردی اسکای فال این صفحه را در جهت حمایت از طبیعت و رفع تمامی نیاز های طبیعت گردان و دوستداران طبیعت ایجاد کرده است'),(32,'slider1_footer','گروه همنوردی اسکای فال این صفحه را در جهت حمایت از طبیعت و رفع تمامی نیاز های طبیعت گردان و دوستداران طبیعت ایجاد کرده است');
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
  `p_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`like_id`),
  KEY `p_id` (`p_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `like_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (153,32,1,'sky-10171','524302233','ارسال پستی','نقدی',5),(154,33,1,'sky-10181','543820738','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',6),(155,32,1,'sky-10031','556166408','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(156,33,1,'sky-10041','560826408','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(157,32,1,'sky-10051','570306408','ارسال پستی','کارت به کارت',4),(158,33,1,'sky-10061','0','ارسال پستی','پرداخت آنلاین',0),(159,35,1,'sky-10071','0','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(160,35,1,'sky-10081','0','ارسال پستی','پرداخت در محل',0),(161,35,1,'sky-10091','571410408','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(162,35,1,'sky-10101','27000000','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',4),(163,35,1,'sky-10111','6990000','ارسال پستی','پرداخت آنلاین',0),(164,32,1,'sky-10121','0','ارسال پستی','پرداخت در محل',0),(165,32,1,'sky-10131','35637000','ارسال پستی','پرداخت آنلاین',3),(166,32,1,'sky-10141','1440000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(167,NULL,1,'sky-10151','15190000','ارسال پستی','کارت به کارت',0),(168,33,1,'sky-10161','0','ارسال پستی','کارت به کارت',0),(169,32,1,'sky-10171','43209845','ارسال پستی','پرداخت در محل',0),(170,32,1,'sky-10181','180000','ارسال پستی','نقدی',0),(171,32,1,'sky-10191','37037010','ارسال پستی','پرداخت در محل',0),(172,33,1,'sky-10201','384000','ارسال پستی','پرداخت در محل',0),(173,33,1,'sky-10211','24691340','ارسال پستی','پرداخت در محل',0),(174,32,1,'sky-10221','4830000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(175,35,1,'sky-10231','0','ارسال پستی','نقدی',0),(176,34,1,'sky-10241','0','ارسال پستی','نقدی',0),(177,35,1,'sky-10251','41250144','ارسال پستی','پرداخت آنلاین',0),(178,34,1,'sky-10261','223200000','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(179,34,1,'sky-10271','12345670','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(180,35,1,'sky-10281','56790082','ارسال پستی','پرداخت آنلاین',0),(181,34,1,'sky-10291','18518505','ارسال پستی','پرداخت در محل',0),(182,35,1,'sky-10301','18818505','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(183,34,1,'sky-10311','109876463','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(184,35,1,'sky-10321','185185050','ارسال پستی','کارت به کارت',0),(185,34,1,'sky-10331','18518505','ارسال پستی','کارت به کارت',0),(186,34,1,'sky-10341','9500000','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',0),(187,35,1,'sky-10351','96000','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(188,36,1,'sky-10361','600000','ارسال پستی','پرداخت در محل',0),(189,35,1,'sky-10371','180000','ارسال با پیک-مخصوص شهر تهران','نقدی',0),(190,35,1,'sky-10381','144000','ارسال پستی','کارت به کارت',0),(191,36,1,'sky-10391','29291340','ارسال پستی','پرداخت در محل',0),(193,101,4,'sky-10014','29291340','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',3),(194,101,4,'sky-10024','14814804','ارسال پستی','پرداخت آنلاین',0),(197,102,5,'sky-10035','95967484','ارسال پستی','پرداخت در محل',0),(199,102,5,'sky-10025','17574804','ارسال پستی','کارت به کارت',0),(200,101,4,'sky-10034','8205134','ارسال با پیک-مخصوص شهر تهران','پرداخت آنلاین',0),(201,101,4,'sky-10044','84000','ارسال با پیک-مخصوص شهر تهران','کارت به کارت',0),(202,35,1,'sky-10401','26861907','ارسال با پیک-مخصوص شهر تهران','پرداخت در محل',0),(203,35,1,'sky-10411','1200000','ارسال پستی','نقدی',0);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `pro_num` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sub_cat` int DEFAULT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` int DEFAULT NULL,
  `status` int NOT NULL,
  `_del` int NOT NULL DEFAULT '0',
  `shop_del` int DEFAULT '0',
  `pic_path1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_path4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `sub_cat` (`sub_cat`,`cat`),
  KEY `cat` (`cat`),
  KEY `sub_cat_2` (`sub_cat`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat`) REFERENCES `sub_cat` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (25,'pdf','دسس','xnxn','dndndnd','xnxnxn',50000,'<p>sdfsdfsd</p>',3,'image/products/1591989881camp1.jpeg',6,0,0,0,NULL,NULL,NULL,NULL),(26,'12000','فارسی','sad','asdas','sadasd',12000,'<p>sadsadasdsdsgfdfsadadasdasda</p>',1,'image/products/1594565695camping300.jpg',1,0,0,0,NULL,NULL,NULL,NULL),(27,'492','sad','sadad','sdasd','adsads',1234567,'<p>dsdsadasdasdasdas</p>',1,'image/products/1591887658camp2.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(28,'14000','تست محصول','asdsa','تست','sadasds',12000,'<p>asdadadsakkskaksksksksskskksksskksksksksksksks</p>',1,'image/products/1591887616camp4.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(29,'67000','kkskksd','sdada','jsjjsdjs','sadjasjdjas',450000,'<p>sadsad</p>',1,'image/products/1594273504Screen Shot 2020-07-05 at 6.46.15 PM.png',1,0,1,0,'image/products/1594273707ScreenShot2020-06-21 at 1.04.13 PM.png','image/products/1594273707Screen Shot 2020-07-05 at 6.46.15 PM.png','image/products/1594273707Screen Shot 2020-06-21 at 11.48.32 AM.png','image/products/1594273707Screen Shot 2020-07-09 at 10.16.19 AM.png'),(30,'932','ds','dsadas','sdsad','sdadsa',120000,'<p>bnbhhhhhhhhhhhhhhfdeswawwawweweweweweweweawwweaewe</p>',1,'image/products/1593083427camping17.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(31,'243','zmxzmcm','dsndns','zcnxncndnvd','jewrewjwjewww',69000,'<p>sddwdwdwdewde</p>',1,'image/products/1593083547camping19.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(32,'980','pqoowieir','kmxmckz','zmcnnv','zmcnnnnnnnv',450000,'<p>mm-pqowoeoeoorr</p>',1,'image/products/1593083600camping20.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(33,'276','new','sjc','pororlq','asnas',230000,'',1,'image/products/1593083790camping21.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(34,'012','pplaldld','masja','xmcmzcmxc','AMDMSADSA',466000,'<p>zss</p>',1,'image/products/1593083826camping22.jpeg',1,0,0,0,NULL,NULL,NULL,NULL),(37,'gghhh','hghhh','hhhh','hggg','hhmkki',800000,'',1,'image/products/1594383002box2.jpeg',1,0,0,0,'image/products/1594280587Screen Shot 2020-06-21 at 11.48.32 AM.png',NULL,NULL,NULL),(39,'1200099','aA','SAsa','Sasa','ASsa',120000,'',1,'image/products/15950748063a07279e-02c4-4807-8188-a5b65cf7e85b.jpg',1,0,1,0,NULL,NULL,NULL,NULL),(40,'۲۳۱۲','sada','sadas','asda','sadas',34234,'',1,NULL,1,0,0,0,NULL,NULL,NULL,NULL),(41,'۳۴۲۳۴','سیسش','شسیشس','سشیس','سشیسش',324234,'',1,NULL,1,0,0,0,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `comment_ibfk` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment`
--

LOCK TABLES `product_comment` WRITE;
/*!40000 ALTER TABLE `product_comment` DISABLE KEYS */;
INSERT INTO `product_comment` VALUES (54,1,28,1,'<p>hhjhjhjjhhjhj</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۳:۴۳:۴۰ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(55,1,28,1,'<p>werewrwer</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۴:۲۴:۳۰ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(57,1,33,1,'<p>wqrqwrerw</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۲۴:۲۳ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(58,1,30,1,'<p>افزودن نظر برا یایچ</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۲۶:۱۴ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(59,1,37,0,'<p>سلام به روی ماهت به چارقد سیاهت</p>','شنبه <bشنبه ۲۵ مرداد ۱۳۹۹ ۰۶:۴۵:۴۹ +۰۰۰۰> ۱۳۹۹/۵/۲۵'),(61,1,27,0,'uyuuiuiiuihuhi','دوشنبه <bدوشنبه ۲۸ مهر ۱۳۹۹ ۰۹:۵۱:۲۳ +۰۰۰۰> ۱۳۹۹/۷/۲۸'),(62,1,27,0,'hgggghghgh','دوشنبه <bدوشنبه ۲۸ مهر ۱۳۹۹ ۰۹:۵۱:۳۶ +۰۰۰۰> ۱۳۹۹/۷/۲۸'),(63,1,27,0,'gygyyyyy','دوشنبه <bدوشنبه ۲۸ مهر ۱۳۹۹ ۱۰:۳۶:۴۸ +۰۰۰۰> ۱۳۹۹/۷/۲۸');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cat`
--

LOCK TABLES `sub_cat` WRITE;
/*!40000 ALTER TABLE `sub_cat` DISABLE KEYS */;
INSERT INTO `sub_cat` VALUES (1,'ظروف کوهنوردی',1,2),(2,'کفش کوه نوردی',1,2),(3,'test',1,2),(6,'adsds',1,2);
/*!40000 ALTER TABLE `sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `tick_id` int NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`tick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک سلام سوال شماره یک ','<p>answer 1 to q1 edit 2</p>','1398/06/11','کاربر یک','skyfall','سوال یک',1),(2,'<p>داده تست برای ارسال پیام</p>',NULL,'۱۳۹۹/۱/۱۱','کاربر 1','skyfall','خرید تجهیزات',1),(3,'<p>ررر</p>',NULL,'۱۳۹۹/۲/۲۲','اااااا','skyfall','ااا',1),(4,'',NULL,'1399/04/08','','skyfall','',1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tour_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `equipments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `costs` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (14,'E100152','تیتربرنامه','assets/equipmentsImage/158638281803-japan.png','assets/equipmentsImage/158638281804-dubai.png','assets/equipmentsImage/158638281806-australia.png','assets/equipmentsImage/1586382818img_4.png',NULL,'11','22','33','44','','1399/01/06','1399/01/26','زمینی','سخت','بخش بستري ICU-OH','با گروه SKYFALL انتخاب کنید','با گروه SKYFALL انتخاب کنید','با گروه SKYFALL انتخاب کنید','با گروه SKYFALL انتخاب کنید',NULL,2),(15,'E100011','تیتربرنامه','assets/equipmentsImage/158646614605-london.png','assets/equipmentsImage/158646614606-australia.png',NULL,NULL,NULL,'11','22','','','','1399/01/06','1399/01/26','زمینی','سخت','بخش بستري ICU-OH','فففففففففففففف','فففففففففف','فففففففففف','ففففففففففف',NULL,2),(16,'E100171','تیتربرنامه','assets/equipmentsImage/158646648605-london.png','assets/equipmentsImage/158646648606-australia.png',NULL,NULL,NULL,'11','22','','','','1399/01/06','1399/01/26','زمینی','سخت','بخش بستري ICU-OH','ttttttttttttt','tttttttttt','ttttttttttttt','ttttttttttttttttttttt',NULL,2),(17,'E100011','درفک','assets/equipmentsImage/158652282803-japan.png','assets/equipmentsImage/158652282806-australia.png',NULL,NULL,NULL,'','','','','','1399/01/22','1399/01/23','ماجراجویانه','سخت','گیلان','بسیار جذاب با skyfall','بسیار جذاب با skyfall','بسیار جذاب با skyfall','بسیار جذاب با skyfall',NULL,2),(18,'E100192','تیتربرنامه','assets/equipmentsImage/158652299406-australia.png','assets/equipmentsImage/158652299403-japan.png',NULL,NULL,NULL,'','','','','','1399/01/06','1399/01/26','زمینی','سخت','جراحی -اتاق عمل','ییییییی','یییییییییی','ییییییییی','یییییییییی',NULL,2),(19,'E100202','صعود به قله درفک ','assets/equipmentsImage/158653128120190514_161157.png','assets/equipmentsImage/158653128220190510_125150.png',NULL,NULL,NULL,'نمای شمالی قله درفک','نمای دشت های دامنه قله ','','','','1399/02/17','1399/02/19','پیمایشی/ماجراجویانه','نسبتا سخت ⭐⭐⭐⭐','استان گیلان',' وسیله نقلیه توریستی \r\n/\r\n یک وعده صبحانه\r\n/\r\nراهنما \r\n/\r\nبیمه \r\n/\r\n مناظر بی نظیر قله و جنگل درفک\r\n/\r\n دور همی شبانه کنار آتیش\r\n /\r\n عکاسی و فیلم برداری هوایی با هلی شات \r\n/\r\nبازی و تفریحات هیجان انگیز  گروهی \r\n/\r\nگروهی شاد و سراسر لبخند\r\n','\r\nمنطقه : منطقه سیاه رود ، قله درفک \r\n/\r\nنوع و سختی برنامه : کمپینگ و کوهپیمایی (۴از ۵)\r\n/\r\nارتفاع قله: ۲۷۳۱متر \r\n/\r\n مسافت از تهران : حدود ۶۰۰ کیلومتر رفت و برگشت.\r\n','\r\n-کوله پشتی\r\n-کارت شناسایی معتبر \r\n-کفش مناسب ساقدار (ترجيحاً كفش كوه)\r\n-كيسه خواب یا پتوی مسافرتی گرم\r\n-چادر کوه نوردی \r\n-غذای مناسب و فاسد نشدنی \r\n-زيرانداز \r\n-پانچو\r\n-هدلایت يا چراغ قوه\r\n-ظروف شخصي\r\n-دارو و لوازم بهداشتی شخصی \r\n- آب آشامیدنی ۴ لیتر \r\n-لباس گرم اضافه\r\n','هنوز مشخص نیست','',2),(22,'E100212','آبشار شوی','assets/equipmentsImage/158712662220200414_103707.png','assets/equipmentsImage/158712662220200414_103654.png',NULL,NULL,NULL,'آبشار شوی','آبشار شوی','','','','1399/02/17','1399/02/19','کمپینگ وکوه پیمایی','آسون ⭐⭐','استان خوزستان','\r\nوسیله نقلیه توریستی / یک وعده صبحانه / راهنما / بیمه / مناظر بی نظیر آبشار / دور همی شبانه کنار آتیش / عکاس حرفه ای/ بازی و تفریحات هیجان انگیز گروهی / گروهی شاد و سراسر لبخند\r\n\r\n','منطقه : منطقه دزفول استان خوزستان/ نوع و سختی برنامه : کمپینگ و کوهپیمایی (۲ از ۵)  / مسافت از تهران : حدود 1600 کیلومتر رفت و برگشت.','-کوله پشتی -کارت شناسایی معتبر -کفش مناسب ساقدار (ترجيحاً كفش كوه) -كيسه خواب یا پتوی مسافرتی گرم -چادر کوه نوردی -غذای مناسب و فاسد نشدنی -زيرانداز -پانچو -هدلایت يا چراغ قوه -ظروف شخصي -دارو و لوازم بهداشتی شخصی - آب آشامیدنی ۲ لیتر -لباس گرم اضافه','مشخص نشده','t.me/skyfalltour',2),(23,'E100252','ویژه برنامه صعود به قله درفک','assets/equipmentsImage/d1.jpg','assets/equipmentsImage/d2.jpg','assets/equipmentsImage/d3.jpg','assets/equipmentsImage/d4.jpg','assets/equipmentsImage/d5.JPG','از تمامَ دوستان در هنگام ورود تست گرفته خواهد شد در  صورت داشتن هر گونه علائم بیماری یا سراما خوردگی از شرکت در برنامه خود داری کنید همچنین رعایت موارد بهداشتی در طول سفر الزامی خواهد بود','','','','','1399/03/02','1399/03/04','ماجراجویی','نسبتا سخت ⭐⭐⭐⭐','گیلان','اتوبوس  و مینیبوس محلی\r\n/کوهنورد حرفه ای\r\n/راهنما \r\n/بیمه \r\n/دور همی شبانه کنار آتیش\r\n/مسابقه \r\n /عکاسی \r\n/بازی و تفریحات هیجان انگیز  گروهی \r\n/گروهی شاد و سراسر لبخند','۲ام تا ۴ام خرداد ۹۹\r\n/ویژه برنامه صعود به قله درفک و پیمایش جنگلی به شیرکوه\r\n/\r\nنوع برنامه: کوه پیمایی و کمپینگ\r\n/درجه سختی: ۴ از۵\r\n/منطقه: قله درفک / استان گیلان\r\n/رفت از تهران جمعه ۲ خرداد صبح زود\r\n/برگشت از لرستان یکشنبه ۴ خرداد شب\r\n/آخرین مهلت ثبت نام یکشنبه ۲۸ اردیبهشت\r\n/\r\nنکته بسیار مهم\r\nاز تمامَ دوستان در هنگام ورود تست گرفته خواهد شد در  صورت داشتن هر گونه علائم بیماری یا سراما خوردگی از شرکت در برنامه خود داری کنید\r\nهمچنین رعایت موارد بهداشتی در طول سفر الزامی خواهد بود','-کوله پشتی\r\n-کارت شناسایی معتبر\r\n-کفش مناسب کوهنوردی حتما ساقدار\r\n-كيسه خواب \r\n-چادر قابل حمل\r\n-غذای مناسب و فاسد نشدنی \r\n-پانچو\r\n-هدلایت يا چراغ قوه\r\n-ظروف شخصي\r\n-دارو و لوازم بهداشتی شخصی \r\n- آب آشامیدنی ۴ لیتر \r\n-لباس  گرم اضافه','وسیله نقلیه  ۱۳۰\r\n/بیمه ۲۰\r\n/برنامه ریزی و هماهنگی ۲۰','https://idpay.ir/skyfalltour/shop/190346',1);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `travel` (
  `travel_id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `begining` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `travel_duration` int NOT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (3,'قله درفک','تهران','گیلان','رودبار',3),(4,'کویر ابوزیدآباد','تهران','اصفهان ','کاشان',2),(5,'جزیره قشم و کیش','تهران','استان هرمزگان','بندرلنگه',5),(6,'جزیره قشم و کیش','تهران','استان هرمزگان','بندرلنگه',5),(7,'پیشمایش گزو تا اسکلیم','تهران','مازندران','شیرگاه',3),(8,'فیلبند','تهران','مازندران','بابل',1),(9,'هفت آبشار تیرکن','تهران','مازندران','بابل',2),(10,'آبشار کوهسر و دریاچه آبیدر','تهران','مازندران','نوشهر',1);
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_equipment`
--

DROP TABLE IF EXISTS `travel_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `travel_equipment` (
  `te_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `travel_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`te_id`),
  KEY `travel_id` (`travel_id`),
  CONSTRAINT `travel_equipment_ibfk_1` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`travel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_equipment`
--

LOCK TABLES `travel_equipment` WRITE;
/*!40000 ALTER TABLE `travel_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `travel_equipment` ENABLE KEYS */;
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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles` (
  `v_id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `begining` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `pic1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'0','تهران','گیلان','گیلان','رشت','زمینی','<p>داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات&nbsp;</p>','1240000',2,'assets/home/images/hero_bg_1.jpg',NULL,NULL,NULL,NULL,'داده تیتر یک برای عکس یک',NULL,NULL,NULL,NULL),(2,'0','قزوین','گیلان','گیلان','رشت','زمینی','<p>داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات داده مورد نیاز توضیحات&nbsp;</p>','2400000',2,'assets/home/images/hero_bg_2.jpg',NULL,NULL,NULL,NULL,'داده شماره2',NULL,NULL,NULL,NULL),(3,'E100051','hdjed','jsnsn','jrhrjd','jdjdj','rhene','syheehehen','373738',2,'assets/equipmentsImage/158598510015859850135113335858542376052586.png','','','assets/equipmentsImage/158598510115859850826166811672374759489884.png','assets/equipmentsImage/158598510215859850241273530490657845667308.png','hehe','hrrheh','hejeje','ehehsh','ueehdhd'),(4,'E100071','انزلی','شیراز','رشت','رشت','2','524543','4324',2,'assets/equipmentsImage/1585989171dx4lj5s2qr041.png','assets/equipmentsImage/1585989136gabenofrivia.png','assets/equipmentsImage/1585989136nkftw.png','assets/equipmentsImage/1585989136living_nightmare___mass_effect_wallpaper_4k_by_redliner91_dco2inf.png','assets/equipmentsImage/1585989136thenightisdark.png','1','2','3','4','5'),(5,'E100091','انزلی','vhgvh','gfdgfd','gfdgdfg','2','','4342',2,'assets/equipmentsImage/1585989285dx4lj5s2qr041.png',NULL,NULL,NULL,NULL,'','','','',''),(6,'E100112','تهران','قله درفک','گیلان','رودبار','اجاره خودرو آفرود',' شما میتوانید با اجاره خودرو آفرود تا بالای قله را با وسیله نقلی بروید و از هیجان یک آفرود نسبتا سنگین لذت ببرید توجه داشته باشید در روز های بارانی و فصل زمستان به سمت قله درفک حرکت نکنید چراکه احتمال خطراتی نظیر سقوط در دره ، گیر کردن ، رعد و برق و ریزش کوه بالا میرود ','روزانه حدود ۶۰۰ تا ۸۰۰ تومان',1,'assets/equipmentsImage/158651325520190514_161157.png','assets/equipmentsImage/158651325520190514_162455.png','assets/equipmentsImage/158651325520190510_125150.png',NULL,NULL,'','','','','');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_json`
--

DROP TABLE IF EXISTS `weather_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `weather_json` (
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_json`
--

LOCK TABLES `weather_json` WRITE;
/*!40000 ALTER TABLE `weather_json` DISABLE KEYS */;
INSERT INTO `weather_json` VALUES ('current','{\r\n    \"type\": \"FeatureCollection\",\r\n    \"features\": [\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    46.34033203125,\r\n                    38.06539235133249\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 113646,\r\n                \"city\": \"Tabriz\",\r\n                \"icon\": \"09d\",\r\n                \"temp\": 12,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.515625,\r\n                    37.63163475580643\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 128008,\r\n                \"city\": \"Khalkhu0101l\",\r\n                \"icon\": \"10d\",\r\n                \"temp\": 5.41,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    51.416015625,\r\n                    35.746512259918504\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 112931,\r\n                \"city\": \"Tehran\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 10.37,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.482666015625,\r\n                    36.659606226479696\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 111453,\r\n                \"city\": \"Zanju0101n\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 13,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    49.581298828125,\r\n                    37.29153547292737\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 118743,\r\n                \"city\": \"Rasht\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 12,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    47.02148437499999,\r\n                    35.30840140169162\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 117574,\r\n                \"city\": \"Sanandaj\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 15,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.30413818359374,\r\n                    38.238180119798635\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 143083,\r\n                \"city\": \"Ardabu012bl\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 7,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    46.10961914062499,\r\n                    36.9806150652861\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 124085,\r\n                \"city\": \"Mu012bu0101ndou0101b\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 13,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    44.77203369140625,\r\n                    38.190704293996504\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 117656,\r\n                \"city\": \"Salmu0101s\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 12,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    47.054443359375,\r\n                    34.31168124115256\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 128226,\r\n                \"city\": \"Kermanshah\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 15,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    46.3787841796875,\r\n                    33.61461929233378\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 130802,\r\n                \"city\": \"u012alu0101m\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 13,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.5211181640625,\r\n                    34.8047829195724\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 132144,\r\n                \"city\": \"Hamadu0101n\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.3453369140625,\r\n                    33.49101671911273\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 127349,\r\n                \"city\": \"Khorramabad\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 18,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.394775390625,\r\n                    32.35212281198644\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 136256,\r\n                \"city\": \"Dezful\",\r\n                \"icon\": \"10d\",\r\n                \"temp\": 19.4,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.658447265625,\r\n                    31.320794146937377\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 144449,\r\n                \"city\": \"Ahvu0101z\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 25,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    48.27392578125,\r\n                    30.36813582872057\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 145459,\r\n                \"city\": \"Abadan\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 26,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    50.0262451171875,\r\n                    36.27527883184338\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 443793,\r\n                \"city\": \"Ostu0101n-e Qazvu012bn\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 11,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    50.9381103515625,\r\n                    35.8356283888737\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 128747,\r\n                \"city\": \"Karaj\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 10.45,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    51.41876220703124,\r\n                    36.6640126988417\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 139223,\r\n                \"city\": \"Chu0101lu016bs\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    53.382568359375,\r\n                    35.58808520476323\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 116402,\r\n                \"city\": \"Semnan\",\r\n                \"icon\": \"10d\",\r\n                \"temp\": 10.92,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    54.42626953125,\r\n                    36.82687474287728\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 132892,\r\n                \"city\": \"Gorgu0101n\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    55.162353515625,\r\n                    37.25000751785145\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 132938,\r\n                \"city\": \"Gonbad-e Ku0101vu016bs\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 16,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    51.668701171875,\r\n                    32.65325087996883\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 418863,\r\n                \"city\": \"Isfahan\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 15,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    51.591796875,\r\n                    30.652090026760018\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 66093,\r\n                \"city\": \"Yasuj\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 11,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    50.86120605468749,\r\n                    28.95528229297461\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 139817,\r\n                \"city\": \"Bushehr\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 23.71,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    52.55859375,\r\n                    29.597341920567366\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 115019,\r\n                \"city\": \"Shiraz\",\r\n                \"icon\": \"50d\",\r\n                \"temp\": 16.38,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    56.27197265624999,\r\n                    27.171582284054892\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 141681,\r\n                \"city\": \"Bandar Abbas\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 24.68,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    55.93688964843749,\r\n                    26.78484736105119\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 119374,\r\n                \"city\": \"Qeshm\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 24.51,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    53.96484375,\r\n                    26.532022589887564\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 126914,\r\n                \"city\": \"Ku012bsh\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 25,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    60.64453125000001,\r\n                    27.205785724383325\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 1160939,\r\n                \"city\": \"Iranshahr\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 24,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    60.64178466796874,\r\n                    25.2918878849706\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 1161724,\r\n                \"city\": \"Chabahar\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 24.14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    61.512451171875,\r\n                    31.015278981711266\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 1113217,\r\n                \"city\": \"Zu0101bol\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 20,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    58.370361328125,\r\n                    29.11377539511439\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 141736,\r\n                \"city\": \"Bam\",\r\n                \"icon\": \"02d\",\r\n                \"temp\": 19.14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    57.11791992187499,\r\n                    30.315987718557867\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 128234,\r\n                \"city\": \"Kerman\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    55.65673828125,\r\n                    29.439597566602902\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 114259,\r\n                \"city\": \"Sirjan\",\r\n                \"icon\": \"10d\",\r\n                \"temp\": 11.73,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    54.371337890625,\r\n                    31.89621446335144\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 111822,\r\n                \"city\": \"Yazd\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 19,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    56.920166015625,\r\n                    33.58716733904656\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 113659,\r\n                \"city\": \"Tabas\",\r\n                \"icon\": \"10d\",\r\n                \"temp\": 20,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    59.58984374999999,\r\n                    36.32397712011264\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 124665,\r\n                \"city\": \"Mashhad\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 13,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    57.35961914062499,\r\n                    37.45741810262938\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 140380,\r\n                \"city\": \"Bojnu016brd\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 12,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    57.67822265625,\r\n                    36.20882309283712\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 118063,\r\n                \"city\": \"Sabzevar\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 11.37,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    50.86669921875,\r\n                    34.63320791137959\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 443794,\r\n                \"city\": \"Qom\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 15.49,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    59.17785644531249,\r\n                    32.86574639547474\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 140463,\r\n                \"city\": \"Bu012brjand\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 18,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    53.6572265625,\r\n                    28.938458153647627\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 134721,\r\n                \"city\": \"Fasu0101\",\r\n                \"icon\": \"04d\",\r\n                \"temp\": 14,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        },\r\n        {\r\n            \"type\": \"Feature\",\r\n            \"geometry\": {\r\n                \"type\": \"Point\",\r\n                \"coordinates\": [\r\n                    50.2734375,\r\n                    30.609549797190844\r\n                ]\r\n            },\r\n            \"properties\": {\r\n                \"id\": 140951,\r\n                \"city\": \"Behbahu0101n\",\r\n                \"icon\": \"03d\",\r\n                \"temp\": 23.02,\r\n                \"marker-size\": \"medium\",\r\n                \"marker-color\": \"#7e7e7e\",\r\n                \"marker-symbol\": \"\"\r\n            }\r\n        }\r\n    ]\r\n}','2020-03-29 14:20:35');
/*!40000 ALTER TABLE `weather_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Skyfall'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 17:07:22
