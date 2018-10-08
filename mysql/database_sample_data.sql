-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: eli
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `eli`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eli` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eli`;

--
-- Table structure for table `infotables`
--

DROP TABLE IF EXISTS `infotables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infotables` (
  `ItemID` int(6) NOT NULL AUTO_INCREMENT,
  `ItemName` VARCHAR(100) NOT NULL,
  `ItemCategory` varchar(30) NOT NULL,
  `ItemTableName` varchar(30) NOT NULL,
  `ItemLink` varchar(255) NOT NULL DEFAULT '#',
  PRIMARY KEY  (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infotables`
--

LOCK TABLES `infotables` WRITE;
/*!40000 ALTER TABLE `infotables` DISABLE KEYS */;
INSERT INTO `infotables` VALUES (1,'Document 1','Home','Miscellaneous Links','#'),(2,'Document 2','Home','Miscellaneous Links','#'),(3,'Document 3','Home','Miscellaneous Links','#'),(4,'Document 4','Home','Miscellaneous Links','#'),(5,'Document 5','Home','Employee Recognition','#'),(6,'Document 6','Home','Employee Recognition','#');
/*!40000 ALTER TABLE `infotables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 12:01:20
