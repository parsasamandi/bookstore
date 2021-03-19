-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 05:27 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jtus`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ca_id`),
  KEY `product_id` (`product_id`,`order_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ca_id`, `product_id`, `order_id`, `count`, `status`) VALUES
(1, 14, 15, 22, 3),
(2, 17, 18, 44, 2),
(3, 17, 19, 21, 3),
(4, 14, 19, 52, 3),
(5, 17, 19, 122, 2),
(6, 17, 20, 44, 3),
(7, 14, 20, 52, 3),
(8, 13, 20, 52, 2),
(9, 17, 21, 52, 1),
(10, 14, 21, 7, 1),
(11, 17, 22, 52, 1),
(12, 14, 22, 21, 1),
(13, 14, 23, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`c_id`, `name`, `status`) VALUES
(8, 'تجهیزات پزشکی', 1),
(13, 'پکیج های معاینه پزشکی', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `j_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`j_id`, `name`, `status`) VALUES
(4, 'مدیرعامل', 1),
(5, 'مدیر فروش', 1),
(6, 'کارشناس فروش', 1),
(7, 'مدیر پشتیبانی', 1);

-- --------------------------------------------------------

--
-- Table structure for table `limitation`
--

CREATE TABLE IF NOT EXISTS `limitation` (
  `lim_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `_new_user` int(11) NOT NULL,
  `_users_list` int(11) NOT NULL,
  `_new_order` int(11) NOT NULL,
  `_orders_list` int(11) NOT NULL,
  `_new_product` int(11) NOT NULL,
  `_products_list` int(11) NOT NULL,
  `_manage_reports` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lim_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `limitation`
--

INSERT INTO `limitation` (`lim_id`, `u_id`, `_new_user`, `_users_list`, `_new_order`, `_orders_list`, `_new_product`, `_products_list`, `_manage_reports`) VALUES
(1, 4, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `national_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `center_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `center_phone` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financial_code` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `order_num` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `pic_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_del` int(11) DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `name`, `family`, `national_code`, `province`, `city`, `mobile`, `center_name`, `center_phone`, `address`, `post_code`, `financial_code`, `p_id`, `order_num`, `desc`, `pic_path`, `_del`, `status`) VALUES
(3, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان', '13189', '', NULL, 'JT10001', '<p>test</p>', NULL, 0, 0),
(4, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان', '1318919171', '1455555', NULL, 'JT10005', '<p>kkkkkkkkkkk</p>', NULL, 0, 0),
(5, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان', '1318919171', '1455555', NULL, 'JT10007', '<p>kkkkkkkkkkk</p>', NULL, 0, 0),
(6, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خ ', ' 1', '', NULL, 'JT10009', '<p>&nbsp;بببببببب</p>', NULL, 0, 0),
(7, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خ ', ' 1', '', NULL, 'JT10011', '<p>&nbsp;بببببببب</p>', NULL, 0, 0),
(8, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خ ', '131 ', '1455555', NULL, 'JT10013', '', NULL, 0, 0),
(9, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خ ', '131 ', '1455555', NULL, 'JT10015', '', NULL, 0, 0),
(10, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کستان - بلوک 1', '171', '1455555', NULL, 'JT10017', '<p>jjjjjjjj</p>', NULL, 0, 0),
(11, 'test name', 'test name', '0215489', 'تهران', 'تهران', '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کستان - بلوک 1', '171', '1455555', NULL, 'JT10019', '<p>jjjjjjjj</p>', NULL, 0, 0),
(12, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10021', '', NULL, 0, 0),
(13, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10023', '', NULL, 0, 0),
(14, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10025', '', NULL, 0, 0),
(15, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10027', '', NULL, 0, 0),
(16, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10029', '<p>dddddddd</p>', NULL, 0, 0),
(17, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10031', '<p>d</p>', NULL, 0, 0),
(18, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10033', '<p>fff</p>', NULL, 0, 0),
(19, 'test name', 'test name', '0215489', 'fff', NULL, '02156484', 'test name', '205540', 'fffffffffffff', '12121121', NULL, NULL, 'JT10035', '', NULL, 0, 0),
(20, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'lllllll', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10037', '', NULL, 0, 0),
(21, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10039', '', NULL, 0, 1),
(22, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10041', '', NULL, 0, 1),
(23, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان کارگر جنوبی-خیابان کاشان-خیابان کمالی-مجتمع شهید نامجو - کوی گلستان - بلوک 1', '1318919171', NULL, NULL, 'JT10043', '', 'assets/orderImages/1571422816profile.png', 0, 1),
(24, 'test name', 'test name', '0215489', 'تهران', NULL, '02156484', 'test name', '205540', 'خیابان ', '1318919171', NULL, NULL, 'JT10045', '<p>hfhd</p>', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_num` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `sub_cat` int(11) DEFAULT NULL,
  `pic_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_id`),
  KEY `sub_cat` (`sub_cat`,`cat`),
  KEY `cat` (`cat`),
  KEY `sub_cat_2` (`sub_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `pro_num`, `name`, `model`, `company`, `country`, `price`, `desc`, `sub_cat`, `pic_path`, `cat`, `status`, `_del`) VALUES
(8, '', 'test name', '0', '0', 'product1', 55000, '<p>test</p>', 3, 'assets/employeesImages/1557873725access2.png', NULL, 0, 0),
(13, '999', 'test name', '0', '0', 'product9', 55000, '<p>test 99</p>', NULL, NULL, 13, 1, 0),
(14, '99912', 'test name', 'test model', 'test co', 'CANADA', 55000, '<p>1223342</p>', 3, 'assets/employeesImages/1557887526account_and_control.png', 13, 1, 0),
(17, '999345', 'test package 1', 'MP900888', 'MPB', 'product1', 55000, '<p>test</p>', 3, 'assets/employeesImages/1558401742home-slider-4.jpg', 13, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `rep_num` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `center_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `center_phone` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `financial_code` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`r_id`),
  KEY `u_id` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`r_id`, `rep_num`, `province`, `city`, `center_name`, `center_phone`, `address`, `post_code`, `financial_code`, `u_id`, `desc`) VALUES
(1, 'R010001', 'تهران', 'تهران', 'hospital1', '12345875', 'tehran', '1318919171', '25585', 4, '<p>tttttttttttttttt</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE IF NOT EXISTS `sub_cat` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `c_id` int(11) DEFAULT '0',
  PRIMARY KEY (`sc_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`sc_id`, `name`, `status`, `c_id`) VALUES
(3, 'زنان و زایمان', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `national_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `j_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  KEY `j_id` (`j_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `name`, `family`, `sex`, `username`, `password`, `last_login`, `status`, `national_code`, `pic_path`, `j_id`) VALUES
(4, 'mohammad', 'bgh', 1, 'mohammadbgh', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'سه شنبه <bسه شنبه ۱۶ مهر ۱۳۹۸ ۰۱:۳۴:۳۷ +۰۲۰۰> ۱۳۹۸/۷/۱۶ - ۱۳:۳۴', 1, '', 'assets/employeesImages/1556657064account_and_control.png', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `o` FOREIGN KEY (`order_id`) REFERENCES `order` (`o_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p` FOREIGN KEY (`product_id`) REFERENCES `product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `limitation`
--
ALTER TABLE `limitation`
  ADD CONSTRAINT `limitation_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `  ` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat`) REFERENCES `sub_cat` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
x


--
-- Constraints for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD CONSTRAINT `sub_cat_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `cat` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`j_id`) REFERENCES `job` (`j_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
