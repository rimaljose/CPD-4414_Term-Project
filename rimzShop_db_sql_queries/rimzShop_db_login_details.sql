CREATE DATABASE  IF NOT EXISTS `rimzshop_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rimzshop_db`;

DROP TABLE IF EXISTS `login_details`;
CREATE TABLE `login_details` (
  `rimzShop_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`rimzShop_id`,`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (39,'rimaljose','12345','admin'),(40,'david','david','admin'),(42,'Guru','guru','admin'),(45,'julie','julie','admin');
