# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: WebApp
# Generation Time: 2018-04-12 11:54:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Carts`;

CREATE TABLE `Carts` (
  `productid` int(11) DEFAULT NULL,
  `cartid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Carts` WRITE;
/*!40000 ALTER TABLE `Carts` DISABLE KEYS */;

INSERT INTO `Carts` (`productid`, `cartid`)
VALUES
	(3,'031ab3c3-db66-03d8-8846-9ab922cef357'),
	(3,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(2,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(2,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(3,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(2,'7d0d5f8b-8d1f-aa44-f0bb-9fec2e48b51b'),
	(2,'7d0d5f8b-8d1f-aa44-f0bb-9fec2e48b51b'),
	(2,'7d0d5f8b-8d1f-aa44-f0bb-9fec2e48b51b'),
	(2,'332f3dc5-8781-f3a7-cc8d-0ea4cc11619f'),
	(2,'332f3dc5-8781-f3a7-cc8d-0ea4cc11619f'),
	(2,'332f3dc5-8781-f3a7-cc8d-0ea4cc11619f'),
	(3,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(3,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(3,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(3,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(4,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(5,'41f44747-a8ae-a675-ec77-9098e1988f34');

/*!40000 ALTER TABLE `Carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `creditcard` int(11) NOT NULL,
  `cvc` int(11) NOT NULL,
  `userid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;

INSERT INTO `Orders` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `creditcard`, `cvc`, `userid`)
VALUES
	(1,'','','hejsan@gmail.com','','',0,0,''),
	(2,'','','','','',0,0,''),
	(3,'','','','','',0,0,''),
	(4,'','','','','',0,0,''),
	(5,'','','','','',0,0,''),
	(6,'','','','','',0,0,''),
	(7,'','','','','',0,0,''),
	(8,'','','','','',0,0,''),
	(9,'','','','','',0,0,''),
	(10,'','','','','',0,0,''),
	(11,'','','','','',0,0,''),
	(12,'','','','','',0,0,''),
	(13,'','','','','',0,0,''),
	(14,'','','','','',0,0,''),
	(15,'','','','','',0,0,''),
	(16,'','','','','',0,0,''),
	(17,'','','','','',0,0,''),
	(18,'','','sebastian.palm91@gmail.com','Lilla Risåsgatan 22','Göteborg',12,12,''),
	(19,'','','sebastian.palm91@gmail.com','Lilla Risåsgatan 22','Göteborg',12,12,''),
	(20,'','','hejsan@gmail.com','hejsan','Göteborg',12,12,''),
	(21,'','','hejsan@gmail.com','hejsan','Göteborg',12,12,''),
	(22,'0','12','hejsan@gmail.com','hejsan','Göteborg',12,12,''),
	(23,'hejsan','12','hejsan@gmail.com','hejsan','Göteborg',12,12,''),
	(24,'hejsan','hej','hejsan@gmail.com','hejsan','Göteborg',12,12,''),
	(25,'hejsan','hegggg','hejsan@gmail.com','hejsan','Göteborg',1,1,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(26,'hejsan','hegggg','hejsan@gmail.com','hejsan','Göteborg',1,1,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(27,'hejsan','wda','hejsan@gmail.com','hejsan','Göteborg',12,12,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(28,'hejsan','wda','hejsan@gmail.com','hejsan','Göteborg',12,12,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(29,'hejsan','adw','hejsan@gmail.com','hejsan','Göteborg',12,12,'6ba940bc-ccfe-f20f-46df-244219289cce'),
	(30,'hejsan','adw','hejsan@gmail.com','hejsan','Göteborg',12,12,'7d0d5f8b-8d1f-aa44-f0bb-9fec2e48b51b'),
	(31,'hejsan','daw','hejsan@gmail.com','hejsan','Göteborg',1,12,'332f3dc5-8781-f3a7-cc8d-0ea4cc11619f'),
	(32,'','','','','',12,12,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(33,'','','','','',12,12,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(34,'hejsan','12daw','hejsan@gmail.com','hejsan','Göteborg',12,12,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(35,'hejsan','12daw','hejsan@gmail.com','hejsan','',12,12,'0d1f0252-d302-b133-3ef5-bd829ac19b58'),
	(36,'hejsan','Hej','hejsan@gmail.com','hejsan','Göteborg',1243,1231,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(37,'hejsan','Hej','hejsan@gmail.com','hejsan','Göteborg',1243,1231,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(38,'hejsan','Hej','hejsan@gmail.com','hejsan','Göteborg',1243,1231,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(39,'hejsan','awdwd','hejsan@gmail.com','hejsan','Göteborg',23123,12312,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(40,'hejsan','awdwd','hejsan@gmail.com','hejsan','Göteborg',23123,12312,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(41,'hej','hej','hejsan@gmail.com','hejsan','Göteborg',12,12,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(42,'hej','hej','hejsan@gmail.com','hejsan','Göteborg',121212,12,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(43,'hejsan','adwd','hejsan@gmail.com','hejsan','Göteborg',12,12,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(44,'hejsan','asd','hejsan@gmail.com','hejsan','Göteborg',12,21,'41f44747-a8ae-a675-ec77-9098e1988f34'),
	(45,'Sebastian','Palm','sebastian.palm91@gmail.com','Lilla Risåsgatan 22','Göteborg',12,12,'41f44747-a8ae-a675-ec77-9098e1988f34');

/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Products`;

CREATE TABLE `Products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productimage` text,
  `slug` text,
  `name` text,
  `price` decimal(10,0) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;

INSERT INTO `Products` (`id`, `productimage`, `slug`, `name`, `price`, `description`)
VALUES
	(2,'http://media03.toms.com/static/www/images/Womens-Shoes/2017/ss17/10009996_GreyDiamondMelangeWomensDelRey_S-1450x1015.jpg','fan va gött att det funkar',NULL,99,NULL),
	(3,'https://mosaic03.ztat.net/vgs/media/pdp-gallery/NS/41/2A/00/BN/11/NS412A00B-N11@12.jpg','nike/sneakers','Nike Air',87,'Detta är ett par Nike AirForce one Skor'),
	(4,'https://mosaic03.ztat.net/vgs/media/pdp-zoom/NS/41/2A/00/BM/11/NS412A00B-M11@12.jpg','nike/sneakers','Nike AirForce',89,'Detta är ett par Nike AirForce one Skor. Dem är producerade år 2016'),
	(5,'https://mosaic03.ztat.net/vgs/media/pdp-zoom/VA/21/5B/00/0Q/12/VA215B000-Q12@12.jpg','vans/byvans','OLD SKOOL - Skateskor',32,'MATERIAL & SKÖTSEL\nYttermaterial: Skinn och textil\nFoder: Textil\nInnersula: Textil\nSula: Konstmaterial\nFodertjocklek: Tunt foder\nTyg: Canvas'),
	(6,'https://mosaic03.ztat.net/vgs/media/pdp-zoom/VA/21/5B/00/0Q/12/VA215B000-Q12@12.jpg','ralphlauren/sneakers','CHURSTON - Sneakers',58,'MATERIAL & SKÖTSEL\nYttermaterial: Textil/syntet\nFoder: Textil\nInnersula: Textil\nSula: Konstmaterial\nTyg: Canvas, skinnimitation');

/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
