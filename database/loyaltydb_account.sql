CREATE DATABASE  IF NOT EXISTS `loyaltydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `loyaltydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: loyaltydb
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `accountid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `userrname` varchar(255) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `checkadmin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `cellphone_UNIQUE` (`cellphone`),
  UNIQUE KEY `userrname_UNIQUE` (`userrname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'duy','dsf','fdsf','fsdf',4,'fdf','fsdf',1),(2,'Lê Thái Duy','484 Lê Văn Việt,Quận Tp HCM','lethaiduy0202@gmail.com','0124 717 1789',0,NULL,NULL,0),(5,'Lê Thái Duy','486 Lê Văn Việt,Quận Tp HCM','lethaiduy0204@gmail.com','0124 717 1783',0,NULL,NULL,0),(7,'Duy','484 Lê Văn Việt,Quận Tp HCM','lethaiduy0207@gmail.com','01244353674',0,NULL,NULL,0),(9,'Duy','ffsfs','lethaiduy0205@gmail.com','665464564',0,NULL,NULL,0),(11,'Duy','fsfsdfsdf','lethaiduy0252@gmail.com','54543543',0,NULL,NULL,0),(13,'DDIeen','534534','lethaiduy0545@gmail.com','5353534543',0,NULL,NULL,0),(16,'Duy tt','4545','lethaiduy0767@gmail.com','789545435',0,NULL,NULL,0),(18,'Điệp','rwrw','lethaiduytr@gmail.com','343432',0,NULL,NULL,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-05 12:15:00
