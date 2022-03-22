-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.52-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mydb
--

CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `total_product` int(11) DEFAULT NULL,
  `total_amout` double DEFAULT NULL,
  `shipping_address` varchar(45) DEFAULT NULL,
  `user_reg_id_user_reg` int(11) NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `fk_cart_user_reg1` (`user_reg_id_user_reg`),
  CONSTRAINT `fk_cart_user_reg1` FOREIGN KEY (`user_reg_id_user_reg`) REFERENCES `user_reg` (`id_user_reg`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id_cart`,`total_product`,`total_amout`,`shipping_address`,`user_reg_id_user_reg`) VALUES 
 (1,0,0,NULL,1),
 (2,0,0,NULL,4),
 (3,0,0,NULL,7),
 (4,0,0,NULL,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `cart_has_product`
--

DROP TABLE IF EXISTS `cart_has_product`;
CREATE TABLE `cart_has_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cart_id_cart` int(11) NOT NULL,
  `product_id_product` int(11) NOT NULL,
  `qty` double NOT NULL,
  `date_add` date NOT NULL,
  `shipping_addressType` varchar(45) NOT NULL,
  `date_diliver` date DEFAULT NULL,
  `date_shipped` date DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_has_product_product1` (`product_id_product`),
  KEY `fk_cart_has_product_cart1` (`cart_id_cart`),
  CONSTRAINT `fk_cart_has_product_cart1` FOREIGN KEY (`cart_id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cart_has_product_product1` FOREIGN KEY (`product_id_product`) REFERENCES `product` (`id_product`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_has_product`
--

/*!40000 ALTER TABLE `cart_has_product` DISABLE KEYS */;
INSERT INTO `cart_has_product` (`id`,`cart_id_cart`,`product_id_product`,`qty`,`date_add`,`shipping_addressType`,`date_diliver`,`date_shipped`,`date_purchased`,`total`,`status`) VALUES 
 (1,1,1,2,'2016-01-04','',NULL,'2016-02-08',NULL,'',1),
 (2,1,1,2,'2016-01-04','',NULL,'2016-02-08',NULL,'',1),
 (3,1,1,1,'2016-01-14','',NULL,'2016-02-08',NULL,'',1),
 (4,1,1,1,'2016-01-14','',NULL,'2016-02-14','2016-02-08','',1),
 (5,1,1,1,'2016-02-07','',NULL,'2016-02-14','2016-02-14','',1),
 (6,1,1,1,'2016-02-07','',NULL,'2016-02-14','2016-02-14','',1),
 (7,2,1,1,'2016-02-07','',NULL,'2016-02-14','2016-02-14','',1),
 (8,2,2,2,'2016-02-08','',NULL,'2016-02-14','2016-02-14','',1),
 (9,2,2,1,'2016-02-08','',NULL,'2016-02-14','2016-02-14','',1),
 (10,2,2,1,'2016-02-08','',NULL,'2016-02-14','2016-02-14','',1),
 (11,3,1,1,'2016-02-08','',NULL,'2016-02-14','2016-02-14','',1),
 (12,3,1,1,'2016-02-08','',NULL,'2016-02-14','2016-02-08','',1),
 (13,2,2,1,'2016-02-08','',NULL,'2016-02-14','2016-02-08','',1),
 (14,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (15,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (16,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (17,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (18,4,2,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (19,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (20,4,1,1,'2016-02-14','',NULL,'2016-02-14','2016-02-14','',1),
 (21,4,1,2,'2016-02-15','',NULL,NULL,'2016-02-15','',0);
/*!40000 ALTER TABLE `cart_has_product` ENABLE KEYS */;


--
-- Definition of table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `cart_has_product_id` int(10) NOT NULL,
  PRIMARY KEY (`id_checkout`),
  KEY `fk_checkout_cart_has_product1` (`cart_has_product_id`),
  CONSTRAINT `fk_checkout_cart_has_product1` FOREIGN KEY (`cart_has_product_id`) REFERENCES `cart_has_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;


--
-- Definition of table `dilever_charge`
--

DROP TABLE IF EXISTS `dilever_charge`;
CREATE TABLE `dilever_charge` (
  `Did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `District` varchar(45) NOT NULL,
  `Charge` varchar(45) NOT NULL,
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dilever_charge`
--

/*!40000 ALTER TABLE `dilever_charge` DISABLE KEYS */;
INSERT INTO `dilever_charge` (`Did`,`District`,`Charge`) VALUES 
 (1,'Colombo','free'),
 (2,'Batticaloa','400'),
 (3,'Badulla','350'),
 (4,'Anuradhapura','350'),
 (5,'Ampara','400'),
 (6,'Galle','150'),
 (7,'Gampaha','100'),
 (8,'Hambantota','300'),
 (9,'Jaffna','650'),
 (10,'Kalutara','100'),
 (11,'Kandy','250'),
 (12,'Kegalle','250'),
 (13,'Kilinochchi','350'),
 (14,'Kurunegala','200'),
 (15,'Mannar','450'),
 (16,'Matale','300'),
 (17,'Matara','200'),
 (18,'Monaragala','450'),
 (19,'Mullaitivu','500'),
 (20,'Nuwara Eliya','450'),
 (21,'Polonnaruwa','350'),
 (22,'Puttalam','450'),
 (23,'Ratnapura','350'),
 (24,'Trincomalee','450'),
 (25,'Vavuniya','400');
/*!40000 ALTER TABLE `dilever_charge` ENABLE KEYS */;


--
-- Definition of table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_reg_id_user_reg` int(11) NOT NULL,
  PRIMARY KEY (`idlog`),
  KEY `fk_log_user_reg1` (`user_reg_id_user_reg`),
  CONSTRAINT `fk_log_user_reg1` FOREIGN KEY (`user_reg_id_user_reg`) REFERENCES `user_reg` (`id_user_reg`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


--
-- Definition of table `model`
--

DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `idmodel` int(11) NOT NULL AUTO_INCREMENT,
  `modelName` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `product_brand_id_brand` int(11) NOT NULL,
  PRIMARY KEY (`idmodel`),
  KEY `fk_model_product_brand1` (`product_brand_id_brand`),
  CONSTRAINT `fk_model_product_brand1` FOREIGN KEY (`product_brand_id_brand`) REFERENCES `product_brand` (`id_brand`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` (`idmodel`,`modelName`,`status`,`product_brand_id_brand`) VALUES 
 (1,'EOS 70D','Active',1),
 (2,'EOS 70D','Active',2),
 (3,'EOS 700D','Active',1),
 (4,'EOS 600D','Active',4),
 (5,'EOS 60D','Active',1),
 (6,'Memory Chip','Active',4),
 (7,'Leans','Active',1);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;


--
-- Definition of table `privelage`
--

DROP TABLE IF EXISTS `privelage`;
CREATE TABLE `privelage` (
  `id_privelage` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(45) DEFAULT NULL,
  `capabilt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_privelage`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privelage`
--

/*!40000 ALTER TABLE `privelage` DISABLE KEYS */;
INSERT INTO `privelage` (`id_privelage`,`page`,`capabilt`) VALUES 
 (1,'addproduct','update'),
 (2,'catogary','add'),
 (3,'stock','update'),
 (4,'catogary','update'),
 (5,'addproduct','update'),
 (6,'report','view'),
 (7,'Notification','view'),
 (8,'privilege','add'),
 (9,'shipping','manage'),
 (10,'text','view');
/*!40000 ALTER TABLE `privelage` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `image_1` varchar(45) DEFAULT NULL,
  `image_2` varchar(45) DEFAULT NULL,
  `image_3` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `details` varchar(1000) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `product_type_id_type` int(11) NOT NULL,
  `product_brand_id_brand` int(11) NOT NULL,
  `model_idmodel` int(11) NOT NULL,
  `volume_idvolume` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `fk_product_product_type` (`product_type_id_type`),
  KEY `fk_product_product_brand1` (`product_brand_id_brand`),
  KEY `fk_product_model1` (`model_idmodel`),
  KEY `fk_product_volume1` (`volume_idvolume`),
  CONSTRAINT `fk_product_model1` FOREIGN KEY (`model_idmodel`) REFERENCES `model` (`idmodel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_product_brand1` FOREIGN KEY (`product_brand_id_brand`) REFERENCES `product_brand` (`id_brand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_product_type` FOREIGN KEY (`product_type_id_type`) REFERENCES `product_type` (`id_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_volume1` FOREIGN KEY (`volume_idvolume`) REFERENCES `volume` (`idvolume`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id_product`,`name`,`qty`,`price`,`image_1`,`image_2`,`image_3`,`discount`,`details`,`status`,`product_type_id_type`,`product_brand_id_brand`,`model_idmodel`,`volume_idvolume`) VALUES 
 (1,'SanDisk','-4.0','10','chip_1.jpg','chip_2.jpg','chip_1.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','deactive',4,4,6,2),
 (2,'Mark II','1.0','20','600_1.jpg','600_2.jpg','600_3.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',1,1,2,1),
 (3,'Rebel T5 ','5','10','70_2.jpg','70_1.jpg','70_1.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',1,1,3,1),
 (4,'Rebel SL1 ','5','10','70_2.jpg','70_2.jpg','70_3.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',1,1,3,1),
 (5,'100xx lence','3','20','lence_2.jpg','lence_1.jpg','lence_3.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',3,2,7,8),
 (6,'lence','8','10','lence_1.jpg','lence_2.jpg','lence_3.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',3,1,7,9),
 (7,'Panasonic','2','10','chip_2.jpg','chip_2.jpg','chip_2.jpg','0','memory card panasonic 16GB','active',4,1,6,2),
 (8,'PATRIOT MEMORY ','5','10','chip_3.jpg','chip_2.jpg','chip_1.jpg','0','memory card patriot is very best memory card it\'s best','active',4,4,6,4),
 (9,'5D lence','5','30','lence_2.jpg','lence_2.jpg','lence_2.jpg','0','Canon designed and manufactured 50.6 Megapixel sensor, with the low-pass filter* (LPF) effect cancelled to provide even more fine edge sharpness and detail for critical subjects such as detailed landscapes','active',3,1,7,8),
 (10,'MemoryM01','2','10','chip_6.jpg','chip_6.jpg','chip_6.jpg','0','PC Cards (PCMCIA) were the first commercial memory card formats (type I cards) to come out, but are now mainly used in industrial applications and to connect I/O devices such as modems. Since 1994, a number of memory card formats smaller than the PC Card arrived','active',4,4,6,4),
 (11,'Kigston','2','10','chip_5.jpg','chip_5.jpg','chip_5.jpg','0','PC Cards (PCMCIA) were the first commercial memory card formats (type I cards) to come out, but are now mainly used in industrial applications and to connect I/O devices such as modems. Since 1994','active',4,4,6,5),
 (12,'Imantion','2','15','chip_8.jpg','chip_8.jpg','chip_8.jpg','0','PC Cards (PCMCIA) were the first commercial memory card formats (type I cards) to come out, but are now mainly used in industrial applications and to connect I/O devices such as modems.','active',4,5,6,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `product_brand`
--

DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand` (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_brand`
--

/*!40000 ALTER TABLE `product_brand` DISABLE KEYS */;
INSERT INTO `product_brand` (`id_brand`,`b_name`,`status`) VALUES 
 (1,'Canon','Active'),
 (2,'Nikon','Active'),
 (3,'FujiFilm','Active'),
 (4,'Panasonic','Active'),
 (5,'Sony','Active'),
 (6,'Konika','Active'),
 (7,'Kingston','Active'),
 (8,'PATRIOT','Active');
/*!40000 ALTER TABLE `product_brand` ENABLE KEYS */;


--
-- Definition of table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` (`id_type`,`type_name`,`status`) VALUES 
 (1,'DSLR Camera','Active'),
 (2,'Nikon','Active'),
 (3,'Lense','Active'),
 (4,'Memory Chip','Active'),
 (5,'Bag','Active');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;


--
-- Definition of table `shippingdetails`
--

DROP TABLE IF EXISTS `shippingdetails`;
CREATE TABLE `shippingdetails` (
  `idshippingDetails` int(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `address3` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `cart_has_product_id` int(10) NOT NULL,
  PRIMARY KEY (`idshippingDetails`),
  KEY `fk_shippingDetails_cart_has_product1` (`cart_has_product_id`),
  CONSTRAINT `fk_shippingDetails_cart_has_product1` FOREIGN KEY (`cart_has_product_id`) REFERENCES `cart_has_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippingdetails`
--

/*!40000 ALTER TABLE `shippingdetails` DISABLE KEYS */;
INSERT INTO `shippingdetails` (`idshippingDetails`,`address1`,`address2`,`address3`,`city`,`province`,`country`,`cart_has_product_id`) VALUES 
 (1,'makandura','Matara','makandura','makandura','southre','srilanka',4),
 (2,'galll','matara','srilanaka','makandura','southre','srilanka',5),
 (3,'galll','makandura','matara','makandura','southre','sri lanka',6),
 (4,'galll','matara','mulanawattha','gall','southre','sri lanka',7),
 (5,'aaaaa','sffgh','eryu','ftyui','dghhjj','rikjkkllk',8),
 (6,'qqqqqq','eeeeee','ffffff','ffff','ggg','ghhhh',9),
 (7,'xxx','dffvf','eeee','ffff','ffff','wwww',10),
 (8,'wwww','eeeer','rrtrt','ttyyy','hhhh','dddd',11),
 (9,'ggg','ggg','ggg','hhh','jkkk','klll',12),
 (10,'galle','galle','galle','galle','galle','galle',13),
 (11,'matara','makandura','srilanaka','makandura','southre','sri lanka',14),
 (12,'galll','matara','srilanaka','ffff','southre','sri lanka',15),
 (13,'jhjh','jhj','hjh','jhjh','jhj','h',16),
 (14,'HUH','JHKJH','JJHJH','KJHKJH','JKHKJ','HKJH',17),
 (15,'hg','hg','hgh','gh','gh','gh',18),
 (16,'matara','makandura','srilanaka','makandura','gh','gh',19),
 (17,'hg','fhgf','gf','g','ghf','hgf',20),
 (18,'matara','makandura','srilanaka','ffff','southre','sri lanka',21);
/*!40000 ALTER TABLE `shippingdetails` ENABLE KEYS */;


--
-- Definition of table `site_change`
--

DROP TABLE IF EXISTS `site_change`;
CREATE TABLE `site_change` (
  `id_site_change` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `user_reg_id_user_reg` int(11) NOT NULL,
  PRIMARY KEY (`id_site_change`),
  KEY `fk_site_change_user_reg1` (`user_reg_id_user_reg`),
  CONSTRAINT `fk_site_change_user_reg1` FOREIGN KEY (`user_reg_id_user_reg`) REFERENCES `user_reg` (`id_user_reg`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_change`
--

/*!40000 ALTER TABLE `site_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_change` ENABLE KEYS */;


--
-- Definition of table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE `stock_in` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `add_date` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `product_id_product` int(11) NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `fk_stock_in_product1` (`product_id_product`),
  CONSTRAINT `fk_stock_in_product1` FOREIGN KEY (`product_id_product`) REFERENCES `product` (`id_product`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id_stock`,`add_date`,`qty`,`product_id_product`) VALUES 
 (1,'07-02-2016','3',1),
 (2,'07-02-2016','7',2),
 (3,'07-02-2016','20',1),
 (4,'07-02-2016','2',2),
 (5,'07-02-2016','2',1),
 (6,'07-02-2016','2',1),
 (7,'07-02-2016','3',2),
 (8,'07-02-2016','2',3),
 (9,'07-02-2016','2',4),
 (10,'14-02-2016','2',1);
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;


--
-- Definition of table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `id_user_reg` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address_1` varchar(45) DEFAULT NULL,
  `address_2` varchar(45) DEFAULT NULL,
  `address_3` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `password_1` varchar(45) DEFAULT NULL,
  `password_2` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_type_id_user_type` int(11) NOT NULL,
  PRIMARY KEY (`id_user_reg`),
  KEY `fk_user_reg_user_type1` (`user_type_id_user_type`),
  CONSTRAINT `fk_user_reg_user_type1` FOREIGN KEY (`user_type_id_user_type`) REFERENCES `user_type` (`id_user_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` (`id_user_reg`,`f_name`,`l_name`,`email`,`address_1`,`address_2`,`address_3`,`uname`,`gender`,`password_1`,`password_2`,`status`,`user_type_id_user_type`) VALUES 
 (1,'admin','ladmin','admin@gmail.com','matara','matara2','matara3','admin','Male','1234','1234','deactive',2),
 (2,'chathura','mara','chathura@gmail.com','matara','akuress','thelijjawela','abc','Male','123','123','active',1),
 (3,'buwa','sada','buwa@gmail.com','gall','gall','karapetiya','user','Male','1234','1234','active',1),
 (4,'Gayan','Madusanka','dumy@gmail.com','gall','gall','hapugala','gayan','Male','123','123','active',1),
 (5,'ujith','alge','uji@gmail.com','gall','gall','unavatuna','ujith','Male','234','234','active',1),
 (6,'bindu','madu','bindu@gmail.com','gall','gall','hikkaduwa','bindu','Male','345','345','active',1),
 (7,'aaaa','bbbb','a@gmail.com','aaa','sss','ss','ddd','Male','123','123','active',1);
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;


--
-- Definition of table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id_user_type` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` (`id_user_type`,`type`) VALUES 
 (1,'user'),
 (2,'admin');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;


--
-- Definition of table `user_type_has_privelage`
--

DROP TABLE IF EXISTS `user_type_has_privelage`;
CREATE TABLE `user_type_has_privelage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type_id_user_type` int(11) NOT NULL,
  `privelage_id_privelage` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_type_has_privelage_privelage1` (`privelage_id_privelage`),
  KEY `fk_user_type_has_privelage_user_type1` (`user_type_id_user_type`),
  CONSTRAINT `fk_user_type_has_privelage_privelage1` FOREIGN KEY (`privelage_id_privelage`) REFERENCES `privelage` (`id_privelage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_type_has_privelage_user_type1` FOREIGN KEY (`user_type_id_user_type`) REFERENCES `user_type` (`id_user_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_has_privelage`
--

/*!40000 ALTER TABLE `user_type_has_privelage` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_type_has_privelage` ENABLE KEYS */;


--
-- Definition of table `volume`
--

DROP TABLE IF EXISTS `volume`;
CREATE TABLE `volume` (
  `idvolume` int(11) NOT NULL AUTO_INCREMENT,
  `vol` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `model_idmodel` int(11) NOT NULL,
  PRIMARY KEY (`idvolume`),
  KEY `fk_volume_model1` (`model_idmodel`),
  CONSTRAINT `fk_volume_model1` FOREIGN KEY (`model_idmodel`) REFERENCES `model` (`idmodel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volume`
--

/*!40000 ALTER TABLE `volume` DISABLE KEYS */;
INSERT INTO `volume` (`idvolume`,`vol`,`status`,`model_idmodel`) VALUES 
 (1,'4GB','Active',1),
 (2,'8GB','Active',6),
 (3,'5GB','Active',6),
 (4,'16GB','Active',6),
 (5,'32GB','Active',6),
 (6,'64GB','Active',6),
 (7,'5.5px','Active',7),
 (8,'55mmpx','Active',7),
 (9,'75mmpx','Active',7);
/*!40000 ALTER TABLE `volume` ENABLE KEYS */;


--
-- Definition of table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE `wish_list` (
  `id_wish_list` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `product_id_product` int(11) NOT NULL,
  `user_reg_id_user_reg` int(11) NOT NULL,
  PRIMARY KEY (`id_wish_list`),
  KEY `fk_wish_list_product1` (`product_id_product`),
  KEY `fk_wish_list_user_reg1` (`user_reg_id_user_reg`),
  CONSTRAINT `fk_wish_list_product1` FOREIGN KEY (`product_id_product`) REFERENCES `product` (`id_product`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wish_list_user_reg1` FOREIGN KEY (`user_reg_id_user_reg`) REFERENCES `user_reg` (`id_user_reg`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wish_list`
--

/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
