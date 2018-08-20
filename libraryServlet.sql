CREATE DATABASE  IF NOT EXISTS `libraryservlet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `libraryservlet`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: libraryservlet
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `bookclassification`
--

DROP TABLE IF EXISTS `bookclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookclassification` (
  `BookClassificationId` int(11) NOT NULL,
  `subClassificationId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  PRIMARY KEY (`BookClassificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookclassification`
--

LOCK TABLES `bookclassification` WRITE;
/*!40000 ALTER TABLE `bookclassification` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookclassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookdetails`
--

DROP TABLE IF EXISTS `bookdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookdetails` (
  `bookId` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `mainClassification` varchar(45) DEFAULT NULL,
  `subClassification` varchar(45) DEFAULT NULL,
  `yearOfPublishing` varchar(200) DEFAULT NULL,
  `lastPrintedYear` varchar(200) DEFAULT NULL,
  `ISBNNo` varchar(45) DEFAULT NULL,
  `noOfPages` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdetails`
--

LOCK TABLES `bookdetails` WRITE;
/*!40000 ALTER TABLE `bookdetails` DISABLE KEYS */;
INSERT INTO `bookdetails` VALUES ('001','History','Anton','null','null','null','1810','123','102'),('B001','Stroy','Atly','null','null','null','1812','123','100');
/*!40000 ALTER TABLE `bookdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainclassification`
--

DROP TABLE IF EXISTS `mainclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mainclassification` (
  `mainClassificationId` varchar(45) NOT NULL,
  `mainClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mainClassificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainclassification`
--

LOCK TABLES `mainclassification` WRITE;
/*!40000 ALTER TABLE `mainclassification` DISABLE KEYS */;
INSERT INTO `mainclassification` VALUES ('',''),('M001','Science'),('M002','Arts'),('M003','Commerce'),('M004','Low'),('M005','Engineeriing'),('M006','Medicine'),('M007','Technology'),('M008','General Knowledge'),('M015','Enjigineer');
/*!40000 ALTER TABLE `mainclassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subclassification`
--

DROP TABLE IF EXISTS `subclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subclassification` (
  `subClassificationId` varchar(200) NOT NULL,
  `subClassification` varchar(45) DEFAULT NULL,
  `mainClassificationId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subClassificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subclassification`
--

LOCK TABLES `subclassification` WRITE;
/*!40000 ALTER TABLE `subclassification` DISABLE KEYS */;
INSERT INTO `subclassification` VALUES ('','',''),('S001','Maths','M001'),('S0011','Accounting','M003'),('S002','Biology','M001'),('S003','Physics','M001'),('S004','Chemistry','M001'),('S005','Logic','M002'),('S006','History','M002'),('S007','Hidusium','M002'),('S008','Tamil','M002'),('S009','Business','M003'),('S010','Economics','M003'),('S012','Srilanka Low','M004'),('S013','Forgin Low','M004');
/*!40000 ALTER TABLE `subclassification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-20 21:41:31
