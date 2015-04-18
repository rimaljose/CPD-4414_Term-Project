CREATE DATABASE  IF NOT EXISTS `rimzshop_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rimzshop_db`;

--
-- Table structure for table `icecream`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sports` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `item_description` varchar(445) NOT NULL,
  `item_price` varchar(45) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'FootBall','Nike','quality material with 2 year warranty','$70'),(2,'Cricket Bat','MRF','excellent quality and craftsmanship with consistent levels of high impact hitting power','$32'),(3,'Badminton Racquet','Yonex','Very light weight and excellent racquet for starters','$200');
