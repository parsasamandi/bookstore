-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: Institute
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(265) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int NOT NULL,
  `status` int NOT NULL,
  `remark` text COLLATE utf32_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_ibfk2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(235) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES (21,'طراحی وب',NULL),(22,'هلو',NULL);
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_student`
--

DROP TABLE IF EXISTS `class_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `class_student` (
  `classroom_id` int NOT NULL,
  `student_id` int NOT NULL,
  KEY `student_id` (`student_id`),
  KEY `classroom_id` (`classroom_id`),
  CONSTRAINT `classroom_ibfk1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_student`
--

LOCK TABLES `class_student` WRITE;
/*!40000 ALTER TABLE `class_student` DISABLE KEYS */;
INSERT INTO `class_student` VALUES (184,26),(186,26),(187,26);
/*!40000 ALTER TABLE `class_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '0',
  `grade_id` int DEFAULT NULL,
  `instructor_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grade_id` (`grade_id`),
  KEY `instructor_id` (`instructor_id`),
  KEY `course_ibfk2` (`course_id`),
  CONSTRAINT `course_ibfk2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grade_ibfk` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `instructor_ibfk` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (184,'13434532342424232425435454345543545454453453',0,NULL,3,14,''),(186,'2312',0,NULL,3,17,'https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2FshareArticle%3Fmini%3Dtrue%26url%3Dhttp%3A%2F%2Fmofidsanat.ir%2F%3Fp%3D2464%26title%3D%25D9%2586%25DA%25A9%25D8%25A7%25D8%25AA%2B%25D9%2582%25D8%25A8%25D9%2584%2B%25D8%25A7%25D8%25B2%2B%25DA%2586%25D8%25A7%25D9%25BE%2B%25D9%2584%25DB%258C%25D8%25A8%25D9%2584'),(187,'1400',1,NULL,6,18,'https://twitter.com/home');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `session_number` int NOT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `c_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_ibfk` (`c_id`),
  CONSTRAINT `cat_ibfk` FOREIGN KEY (`c_id`) REFERENCES `cat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (14,'جاوا','جاوا یکی از شناخته شده ترین زبان های رز دنیاست که با تکیه بر ارزش هایش، موفقیت های بزرگی کسب کرده','1701844027.jpg',0,'شسیسشسش','سشیشس',0,NULL),(15,'پایتون','پایتون از زبان های جدید و مشهور روز دنیا است که توجه های زیادی را جلب کرده','1328828788.png',12,'1399/04/29','1399/04/29',0,21),(17,'فلاتر','فلاتر را همزمان میتوان در اندروید و ای او اس خروجی گرفت','473643228.png',24,'1234/34/34','۴۴۵۴۴۴۵',0,NULL),(18,'پی اچ پی','ی اچ پی از زبان های متداول استفاده شده در وب است و .....','607224458.jpg',12321,'2312','۳۴۳۳۴۴۳',0,NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_type_id` int NOT NULL,
  `exam` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `exam_type_id` (`exam_type_id`),
  CONSTRAINT `exam_ibfk` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_type` (`exam_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (23,'asdasd','تستkkhkhhk',23,''),(24,'saSAs','sdsadsadsadsadsdsdas',23,''),(25,'سلام','یشسیسشیسشیسش',26,''),(27,'sadsad','sadsadsad',23,''),(28,'asas','saSAsaSA',23,''),(29,'aSasaSAsa','ASAsa',23,''),(30,'sadsad','dasdsd',23,''),(32,'dsadas','dadsd',23,''),(33,'asaSA','aSAsasasas',23,''),(34,'sfdsfds','dsfdsfsdfs',23,''),(35,'sfdsfds','dsfdsfsdfs',23,''),(36,'sadsad','asdasdas',23,'login_pic.jpg');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_result`
--

DROP TABLE IF EXISTS `exam_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exam_result` (
  `exam_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id_2` (`course_id`),
  KEY `exam_ibfk3` (`exam_id`),
  CONSTRAINT `course_ibfk3` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `exam_ibfk3` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk3` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_result`
--

LOCK TABLES `exam_result` WRITE;
/*!40000 ALTER TABLE `exam_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_type`
--

DROP TABLE IF EXISTS `exam_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exam_type` (
  `exam_type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`exam_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_type`
--

LOCK TABLES `exam_type` WRITE;
/*!40000 ALTER TABLE `exam_type` DISABLE KEYS */;
INSERT INTO `exam_type` VALUES (23,'saSASASAs','asSAAsaSAsaSa'),(24,'asaSaas','asaSAsaSAs'),(25,'ASa','sasS'),(26,'aadsad','sasds'),(27,'SAS','asa'),(28,'سلام','شسشس');
/*!40000 ALTER TABLE `exam_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grade` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `grade_id` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (16,'شسشسشسشسشتش','سشسشسش');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
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
  `value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_setting`
--

LOCK TABLES `home_setting` WRITE;
/*!40000 ALTER TABLE `home_setting` DISABLE KEYS */;
INSERT INTO `home_setting` VALUES (1,'subHeader','الفــــــــــــــــــ'),(2,'header','موسسه آموزش کامپیوتر الفــــــ'),(3,'headerButton','لیست دوره ها'),(4,'video','asdas'),(5,'box_title','دلیل اهمیت برنامه نویسی'),(6,'box_text','ستیو جابز معتقد بود که تمام مردم باید برنامه‌نویسی یاد بگیرند، چون برنامه‌نویسی به شما یاد می‌دهد که چگونه فکر کنید. اهمیت برنامه‌نویسی در دنیای امروز که همه چیز وابسته به تکنولوژی و کامپیوتر است، بالا رفته است. در این مطلب ۵ مورد از دلایل اهمیت برنامه‌نویسی قید شده است.'),(7,'box_title2','ویژگی های پایتون'),(8,'box_text2','پایتون (Python) در سال‌های اخیر به یکی اصلی‌ترین زبان‌های یادگیری برنامه‌نویسی تبدیل شده، سینتکس ساده و سر راست، دیتا تایپ‌های گسترده و مدرن و دستورات قدرتمند و کتابخانه‌های بسیار گسترده و امکان دیباگ کردن ساده یکی از اصلی‌ترین دلایلی تبدیل روی آوردن به آموزش پایتون بوده است.'),(9,'box_title3','ویژگی های جاوا'),(10,'box_text3','جاوا یکی از گسترده ترین زبان های برنامه نویسی در جهان میباشد،جاوا یک زبان برنامه نویسی است که توسط James Gosling در Sun Microsystems طراحی شده است. جاوا ابتدا در سال ۱۹۹۵ منتشر شد و از آن زمان به یکی از محبوب ترین زبان های برنامه نویسی تبدیل شده است که حدود ۹ میلیون توسعه دهنده از آن استفاده می کنند.'),(11,'whyUs','چرا ما؟'),(12,'tab_name','بهترین مدرسان'),(13,'tab_title','بهترین مدرسان'),(14,'tab_text','مدرسان مجرب موسسه آموزشی الف، همزمان با سابقه تدریس. خود پروژه های بسیار تخصصی و زیادی را درست به سرانجام رسانده اند و موفق شده اند.'),(15,'tab_picture','809228914.teacher.jpg'),(16,'tab_name2','فضای مناسب آموزش'),(17,'tab_title2','فضای مناسب آموزش'),(18,'tab_text2','فضای مناسب موسسه آموزشی الف باعث شده تا کشش بسیار زیادی به این موسسه پیدا بشه و همچنین بستر آنلاین اموزش از دیگر اتفاقات شگفت انگیز این موسسه است'),(19,'tab_picture2','pexels-julia-m-cameron-4144923.jpg'),(20,'tab_name3','پشتیبانی خوب و سریع'),(21,'tab_title3','پشتیبانی خوب و سریع'),(22,'tab_text3','علاوه بر آموزش و فضای مناسب، پشتیبانی خوب و قوی موسسه الف باعث شده تا کیفیت کار بیشتر و رضایت دانش آموزان را در پی داشته باشد'),(23,'tab_picture3','support.jpg'),(24,'registeration_title','ثبت نام'),(25,'registeration_text','همین حالا با توجه به علاقه مندی خود و سطح بندی در وبسایت ثبت نام کنید'),(26,'registeration_image','spencer-davis-eNe5CMdMqP4-unsplash.jpg'),(27,'about_us_subheader','ما دقیقا دنبال چه هدفی هستیم؟'),(28,'about_us_title','موسسه آموزشی الفــــ با مدرسان حرفه ای و دارای سابقه کار'),(29,'about_us_text','موسسه آموزشی الفـــــــــ در رفع جهت نیاز های علاقه مندان به کامپیوتر در زمینه های سخت افزار و نرم افزار گام بر میدارد و به هدف وارد کردن افراد به بازار کار،‌تلاش میکند و ادامه میدهد.'),(30,'about_us_button','ثبت نام'),(31,'about_us_image','1994781106.about_us.png'),(32,'about_us_imageVideo','sdaasda'),(34,'contact_us_button','تماس با ما'),(35,'header_video_image','sadsada'),(36,'footer_text','موسس الف تصمیم دارد تا با راه اندازی سامانه آنلاین شخصی سازی شده، ویژگی هایی را در اختیار مدرسان، دانش جویان و دانش آموزان قرار دهد که موسسه الفـــ را از سایر رقبا متمایز میکند'),(37,'about_us_background','video-bg.jpg');
/*!40000 ALTER TABLE `home_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `instructor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(95) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(95) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (3,'parsasamandizadeh@gmail.com','$2y$10$eaSOKJNXMjCbPDNx6AZNJe/Ne.QOAcgJKcnjswZ6uYjfiwhqiJkeS','محمد','باغ غنبری','۲۱۳۱۳۲۱۳۲۱','1344/22/33',0),(5,'QW@GMAIL.COM','$2y$10$UND3zHl35OR94Dbh45gMuuZRepToS472sQhKWzGGFk.jALihi9RQG','علی','asaSA','213312','W',1),(6,'parsasaman23dizadeh@gmail.com','$2y$10$S.q0UKYQy.c73mEpXA0y0.V64KKC/CpC9p8INIaLsldnJBYwAsZXG','sadas','dsada','21312321','1344/56/67',1);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_10_19_090908_create_course_table',0),(4,'2020_10_19_090908_create_grade_table',0),(5,'2020_10_19_090908_create_instructor_table',0),(6,'2020_10_19_090908_create_password_resets_table',0),(7,'2020_10_19_090908_create_student_table',0),(8,'2020_10_19_090908_create_users_table',0),(9,'2020_10_19_090909_add_foreign_keys_to_course_table',0);
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
-- Table structure for table `Prerequisites`
--

DROP TABLE IF EXISTS `Prerequisites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Prerequisites` (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `course_ibfk4` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk4` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prerequisites`
--

LOCK TABLES `Prerequisites` WRITE;
/*!40000 ALTER TABLE `Prerequisites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prerequisites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (103,'sgh','123',0),(104,'سلام','چظوری',0),(105,'kjjkkjkj;kk;;kjk;','jkjkjkkjkjkk;;',0),(106,'سلام','kkjjkjkjkjkkjk;',0);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_option`
--

DROP TABLE IF EXISTS `question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `question_ibfk1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_option`
--

LOCK TABLES `question_option` WRITE;
/*!40000 ALTER TABLE `question_option` DISABLE KEYS */;
INSERT INTO `question_option` VALUES (104,'تسسسنسننسسشیسش',103),(106,'سلام',103),(107,'خوبی',103),(108,'تست بعدی',103);
/*!40000 ALTER TABLE `question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `student_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (26,'parsasamandizadeh@gmail.com','$2y$10$/tinIfAMOv.N9VQr53Lrv.wxALJ9bTEDrTvVieetCT5iuUrX0DaMe','sads','sadas','232','324',1),(27,'test@gmail.com','$2y$10$/tinIfAMOv.N9VQr53Lrv.wxALJ9bTEDrTvVieetCT5iuUrX0DaMe','dsfs','dsfs','323','1234',1),(28,'hijoxa5736@mailezee.com',NULL,'saaddsd','asdsadsadsa',NULL,'67657567',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_cat`
--

DROP TABLE IF EXISTS `sub_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sub_cat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cat`
--

LOCK TABLES `sub_cat` WRITE;
/*!40000 ALTER TABLE `sub_cat` DISABLE KEYS */;
INSERT INTO `sub_cat` VALUES (4,'تست',21),(5,'بپر تو گلو',22),(6,'بازم تست میشود',21);
/*!40000 ALTER TABLE `sub_cat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'parsa Samandi','parsasamandizadeh@gmail.com',NULL,'$2y$10$ekvkfJ2bjZeIc3WJXblaB.v4AdK.Fm2dq6mMNVytnl63bfM7bCJSC',NULL,'2020-10-16 08:58:07','2020-10-24 08:01:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Institute'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 15:50:27
