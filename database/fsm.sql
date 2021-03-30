-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fsm
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `ContractNo` int NOT NULL,
  `Customer_id` float DEFAULT NULL,
  `Product_id` int DEFAULT NULL,
  `Haulier_id` int DEFAULT NULL,
  `Delivery_Date` varchar(10) DEFAULT NULL,
  `Delivery_Day` varchar(20) DEFAULT NULL,
  `Quantity` bigint DEFAULT NULL,
  PRIMARY KEY (`ContractNo`),
  KEY `customerId_fk1` (`Customer_id`),
  KEY `productId_fk1` (`Product_id`),
  KEY `haulierId_fk1` (`Haulier_id`),
  CONSTRAINT `customerId_fk1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  CONSTRAINT `haulierId_fk1` FOREIGN KEY (`Haulier_id`) REFERENCES `haulier` (`Haulier_id`),
  CONSTRAINT `productId_fk1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_id` float NOT NULL,
  `Customer_Name` varchar(120) DEFAULT NULL,
  `StreetAddress1` varchar(120) DEFAULT NULL,
  `StreetAddress2` varchar(20) DEFAULT NULL,
  `Town_City` varchar(20) DEFAULT NULL,
  `Postcode` varchar(20) DEFAULT NULL,
  `TelephoneNo` bigint DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Kishor Kadam','Wakad','Pune','Pune','411033',255200,'kadamk33@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haulier`
--

DROP TABLE IF EXISTS `haulier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haulier` (
  `Haulier_id` int NOT NULL,
  `Haulier_Name` varchar(50) DEFAULT NULL,
  `StreetAddress1` varchar(50) DEFAULT NULL,
  `StreetAddress2` varchar(50) DEFAULT NULL,
  `Town_City` varchar(50) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `TelephoneNo` bigint DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Haulier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haulier`
--

LOCK TABLES `haulier` WRITE;
/*!40000 ALTER TABLE `haulier` DISABLE KEYS */;
/*!40000 ALTER TABLE `haulier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderNo` int NOT NULL,
  `Customer_id` float DEFAULT NULL,
  `Product_id` int DEFAULT NULL,
  `Haulier_id` int DEFAULT NULL,
  `Delivery_Date` varchar(10) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderNo`),
  KEY `customerId_fk` (`Customer_id`),
  KEY `productId_fk` (`Product_id`),
  KEY `haulierId_fk` (`Haulier_id`),
  CONSTRAINT `customerId_fk` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  CONSTRAINT `haulierId_fk` FOREIGN KEY (`Haulier_id`) REFERENCES `haulier` (`Haulier_id`),
  CONSTRAINT `productId_fk` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_id` int NOT NULL,
  `Product_Name` varchar(40) DEFAULT NULL,
  `Product_Description` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (201,'HP Laptop','1 TB Hardisk, 8 GB RAM');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-06  9:36:42
