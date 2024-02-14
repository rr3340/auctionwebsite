CREATE DATABASE  IF NOT EXISTS `auction_website_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `auction_website_project`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: auction_website_project
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctions` (
  `aauction_id` int NOT NULL AUTO_INCREMENT,
  `auction_validity` tinyint(1) DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `access_bidder_id` int DEFAULT NULL,
  `access_seller_id` int DEFAULT NULL,
  PRIMARY KEY (`aauction_id`),
  KEY `access_bidder_id` (`access_bidder_id`),
  KEY `item_id` (`item_id`),
  KEY `access_seller_id` (`access_seller_id`),
  CONSTRAINT `auctions_ibfk_1` FOREIGN KEY (`access_bidder_id`) REFERENCES `bidders` (`bbidder_id`),
  CONSTRAINT `auctions_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`iitem_id`),
  CONSTRAINT `auctions_ibfk_3` FOREIGN KEY (`access_seller_id`) REFERENCES `seller` (`sseller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES (1,1,113,2,5),(2,1,114,5,18),(3,1,115,10,7),(4,1,116,35,20),(5,1,117,23,9),(6,1,118,42,10),(7,1,119,33,3),(8,1,120,34,4),(9,1,121,21,13),(10,1,122,12,5),(11,1,123,8,5),(12,1,124,9,6),(13,1,125,3,20),(14,1,126,75,5),(15,1,127,82,4),(16,1,128,73,12),(17,1,129,54,6),(18,1,130,65,11),(19,1,131,82,19),(20,1,132,93,12),(21,1,133,99,18),(22,1,134,64,15),(23,1,135,24,5),(24,1,136,34,6),(25,1,137,65,1),(26,1,138,71,1),(27,1,139,34,20),(28,1,140,44,17),(29,1,141,55,16),(30,1,142,55,13),(31,1,143,21,8),(32,1,144,13,2),(33,1,145,12,13),(34,1,146,11,8),(35,1,147,45,13),(36,1,148,32,13),(37,1,149,73,12),(38,1,150,65,13),(39,1,151,82,9),(40,1,152,90,13),(41,1,153,83,7),(42,1,154,94,9),(43,1,155,100,10),(44,1,156,25,10),(45,1,157,66,18),(46,1,158,65,19),(47,1,159,52,6),(48,1,160,33,1),(49,1,161,13,3),(50,1,162,12,4),(51,1,163,1,11),(52,1,133,65,18),(53,1,134,3,18);
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions_info`
--

DROP TABLE IF EXISTS `auctions_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctions_info` (
  `aiauction_id` int DEFAULT NULL,
  `auction_time` int DEFAULT NULL,
  `auction_status` tinyint(1) DEFAULT NULL,
  `amount_bid` int DEFAULT NULL,
  KEY `aiauction_id` (`aiauction_id`),
  CONSTRAINT `auctions_info_ibfk_1` FOREIGN KEY (`aiauction_id`) REFERENCES `auctions` (`aauction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions_info`
--

LOCK TABLES `auctions_info` WRITE;
/*!40000 ALTER TABLE `auctions_info` DISABLE KEYS */;
INSERT INTO `auctions_info` VALUES (1,100,1,20),(2,0,0,45),(3,250,1,3750),(4,3400,1,15000),(5,5000,1,35000),(6,350,1,250),(7,552,1,600),(8,272,1,100),(9,344,1,300),(10,0,0,1250),(11,200,1,350),(12,500,1,600),(13,250,1,45),(14,0,0,55),(15,6000,1,120),(16,5000,1,6500),(17,8000,1,8000),(18,0,0,600),(19,345,1,400),(20,72,1,5000),(23,65,1,300),(24,1000,1,120),(25,0,0,50),(26,4500,1,200),(27,5420,1,150),(28,4061,1,50),(29,0,0,17500),(30,5444,1,35000),(31,821,1,15000),(32,431,1,22000),(33,464,1,20000),(34,0,0,350),(35,500,1,255),(36,600,1,265),(37,250,1,325),(38,533,1,425),(39,120,1,500),(40,400,1,100),(41,0,0,110),(42,0,0,110),(43,800,1,105),(44,900,1,95),(45,3500,1,200),(46,1200,1,195),(47,1350,1,190),(48,0,0,200),(49,2500,1,200),(50,3000,1,130),(51,2500,1,120),(52,300,1,200),(53,300,1,150);
/*!40000 ALTER TABLE `auctions_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidders`
--

DROP TABLE IF EXISTS `bidders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bidders` (
  `bbidder_id` int NOT NULL AUTO_INCREMENT,
  `bidder_verification` tinyint(1) DEFAULT NULL,
  `auction_for_item_num` int DEFAULT NULL,
  `access_user_id` int DEFAULT NULL,
  PRIMARY KEY (`bbidder_id`),
  KEY `access_user_id` (`access_user_id`),
  CONSTRAINT `bidders_ibfk_1` FOREIGN KEY (`access_user_id`) REFERENCES `users` (`umember_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidders`
--

LOCK TABLES `bidders` WRITE;
/*!40000 ALTER TABLE `bidders` DISABLE KEYS */;
INSERT INTO `bidders` VALUES (1,1,NULL,1),(2,1,NULL,2),(3,1,NULL,3),(4,1,NULL,4),(5,1,NULL,5),(6,1,NULL,6),(7,1,NULL,7),(8,1,NULL,8),(9,1,NULL,9),(10,1,NULL,10),(11,1,NULL,11),(12,1,NULL,12),(13,1,NULL,13),(14,1,NULL,14),(15,1,NULL,15),(16,1,NULL,16),(17,1,NULL,17),(18,1,NULL,18),(19,1,NULL,19),(20,1,NULL,20),(21,1,NULL,21),(22,1,NULL,22),(23,1,NULL,23),(24,1,NULL,24),(25,1,NULL,25),(26,1,NULL,26),(27,1,NULL,27),(28,1,NULL,28),(29,1,NULL,29),(30,1,NULL,30),(31,1,NULL,31),(32,1,NULL,32),(33,1,NULL,33),(34,1,NULL,34),(35,1,NULL,35),(36,1,NULL,36),(37,1,NULL,37),(38,1,NULL,38),(39,1,NULL,39),(40,1,NULL,40),(41,1,NULL,41),(42,1,NULL,42),(43,1,NULL,43),(44,1,NULL,44),(45,1,NULL,45),(46,1,NULL,46),(47,1,NULL,47),(48,1,NULL,48),(49,1,NULL,49),(50,1,NULL,50),(51,1,NULL,51),(52,1,NULL,52),(53,1,NULL,53),(54,1,NULL,54),(55,1,NULL,55),(56,1,NULL,56),(57,1,NULL,57),(58,1,NULL,58),(59,1,NULL,59),(60,1,NULL,60),(61,1,NULL,61),(62,1,NULL,62),(63,1,NULL,63),(64,1,NULL,64),(65,1,NULL,65),(66,1,NULL,66),(67,1,NULL,67),(68,1,NULL,68),(69,1,NULL,69),(70,1,NULL,70),(71,1,NULL,71),(72,1,NULL,72),(73,1,NULL,73),(74,1,NULL,74),(75,1,NULL,75),(76,1,NULL,76),(77,1,NULL,77),(78,1,NULL,78),(79,1,NULL,79),(80,1,NULL,80),(81,1,NULL,81),(82,1,NULL,82),(83,1,NULL,83),(84,1,NULL,84),(85,1,NULL,85),(86,1,NULL,86),(87,1,NULL,87),(88,1,NULL,88),(89,1,NULL,89),(90,1,NULL,90),(91,1,NULL,91),(92,1,NULL,92),(93,1,NULL,93),(94,1,NULL,94),(95,1,NULL,95),(96,1,NULL,96),(97,1,NULL,97),(98,1,NULL,98),(99,1,NULL,99),(100,1,NULL,100);
/*!40000 ALTER TABLE `bidders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `category_average`
--

DROP TABLE IF EXISTS `category_average`;
/*!50001 DROP VIEW IF EXISTS `category_average`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_average` AS SELECT 
 1 AS `item_category`,
 1 AS `Average`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cont_bal`
--

DROP TABLE IF EXISTS `cont_bal`;
/*!50001 DROP VIEW IF EXISTS `cont_bal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_bal` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cont_bal1`
--

DROP TABLE IF EXISTS `cont_bal1`;
/*!50001 DROP VIEW IF EXISTS `cont_bal1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_bal1` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cont_bal2`
--

DROP TABLE IF EXISTS `cont_bal2`;
/*!50001 DROP VIEW IF EXISTS `cont_bal2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_bal2` AS SELECT 
 1 AS `full_name`,
 1 AS `Current_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cont_bal3`
--

DROP TABLE IF EXISTS `cont_bal3`;
/*!50001 DROP VIEW IF EXISTS `cont_bal3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_bal3` AS SELECT 
 1 AS `full_name`,
 1 AS `Current_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `count`
--

DROP TABLE IF EXISTS `count`;
/*!50001 DROP VIEW IF EXISTS `count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `count` AS SELECT 
 1 AS `item_category`,
 1 AS `Total`,
 1 AS `Book_count`,
 1 AS `Clothes_count`,
 1 AS `Cars_count`,
 1 AS `Sneakers_count`,
 1 AS `Collectables_count`,
 1 AS `Coins_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!50001 DROP VIEW IF EXISTS `counter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `counter` AS SELECT 
 1 AS `item_category`,
 1 AS `Total`,
 1 AS `Book_count`,
 1 AS `Clothes_count`,
 1 AS `Cars_count`,
 1 AS `Sneakers_count`,
 1 AS `Collectables_count`,
 1 AS `Coins_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `counter1`
--

DROP TABLE IF EXISTS `counter1`;
/*!50001 DROP VIEW IF EXISTS `counter1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `counter1` AS SELECT 
 1 AS `item_category`,
 1 AS `Total`,
 1 AS `Book_Quantity`,
 1 AS `Clothing_Quantity`,
 1 AS `Cars_Quantity`,
 1 AS `Sneakers_Quantity`,
 1 AS `Collectables_Quantity`,
 1 AS `Coins_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `failed_bids`
--

DROP TABLE IF EXISTS `failed_bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_bids` (
  `f_auction_bid` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `bidder_id` int DEFAULT NULL,
  `amount_bid` int NOT NULL,
  KEY `f_auction_bid` (`f_auction_bid`),
  KEY `bidder_id` (`bidder_id`),
  KEY `item_id` (`item_id`),
  KEY `amount_bid` (`amount_bid`),
  CONSTRAINT `failed_bids_ibfk_1` FOREIGN KEY (`f_auction_bid`) REFERENCES `auctions` (`aauction_id`),
  CONSTRAINT `failed_bids_ibfk_2` FOREIGN KEY (`bidder_id`) REFERENCES `auctions` (`access_bidder_id`),
  CONSTRAINT `failed_bids_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `auctions` (`item_id`),
  CONSTRAINT `failed_bids_ibfk_4` FOREIGN KEY (`amount_bid`) REFERENCES `wallet` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_bids`
--

LOCK TABLES `failed_bids` WRITE;
/*!40000 ALTER TABLE `failed_bids` DISABLE KEYS */;
INSERT INTO `failed_bids` VALUES (1,61,12,10),(2,62,20,20),(3,63,14,3500),(4,64,15,10000),(5,65,33,25000),(6,66,31,200),(7,67,22,500),(8,68,38,75),(9,69,41,200),(10,70,17,1000);
/*!40000 ALTER TABLE `failed_bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `forwarded_bal`
--

DROP TABLE IF EXISTS `forwarded_bal`;
/*!50001 DROP VIEW IF EXISTS `forwarded_bal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `forwarded_bal` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `forwarded_bal1`
--

DROP TABLE IF EXISTS `forwarded_bal1`;
/*!50001 DROP VIEW IF EXISTS `forwarded_bal1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `forwarded_bal1` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_info` (
  `iiitem_id` int DEFAULT NULL,
  `item_name` varchar(300) DEFAULT NULL,
  `item_category` varchar(300) DEFAULT NULL,
  `item_base_price` int DEFAULT NULL,
  `item_quality` varchar(300) DEFAULT NULL,
  KEY `iiitem_id` (`iiitem_id`),
  CONSTRAINT `item_info_ibfk_1` FOREIGN KEY (`iiitem_id`) REFERENCES `items` (`iitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES (113,'ASOIAF Series','BOOKS',15,'Some Damage'),(114,'Harry Potter Series','BOOKS',35,'Exceptional'),(115,'Subaru Sedan','CARS',3500,'Terrible'),(116,'Ford Pickup','CARS',10000,'Decent'),(117,'Dodge Challenger','CARS',25000,'Great'),(118,'KD55s','SNEAKERS',150,'Worn'),(119,'LeBrons Ltd. Ed.','SNEAKERS',450,'Brand New'),(120,'Air Jordans','SNEAKERS',75,'Terrible'),(121,'Yeezys','SNEAKERS',250,'Worn, Great'),(122,'Roman Coin','COINS',300,'Mint Condition'),(123,'All Guinness World Record Books (2000-2022)','BOOKS',250,'Decent'),(124,'Medieval Sword','COLLECTABLES',532,'Decent'),(125,'Vietnam War Army Shirt','COLLECTABLES',35,'Terrible'),(126,'Vietnam War Veteran Patch','COLLECTABLES',15,'Terrible'),(127,'Victorian Spoonware','COLLECTABLES',45,'Some Damage'),(128,'Medieval Armor Piece','COLLECTABLES',4000,'Great'),(129,'Napoleonic Firearm','COLLECTABLES',5000,'Exceptional'),(130,'WW2 British War Medals','COLLECTABLES',350,'Decent'),(131,'Napoleonic Coin','COLLECTABLES',200,'Worn'),(132,'Original Victorian Painting of a British Tax Collector and His Family','COLLECTABLES',3000,'Great'),(133,'College Calculus Textbook','BOOKS',200,'Brand New'),(134,'College Calculus Textbook','BOOKS',75,'Terrible'),(135,'A Great Gatsby - With Art','BOOKS',24,'Decent'),(136,'Physics Highschool Textbook','BOOKS',150,'Great'),(137,'Berserk All Volumes','BOOKS',75,'Terrible'),(138,'Renaissance Artbook','BOOKS',25,'Terrible'),(139,'Toyota SUV','CARS',15000,'Decent'),(140,'Jeep Wrangler','CARS',25000,'Great'),(141,'Toyota Corolla','CARS',5000,'Terrible'),(142,'Dodge Hellcat','CARS',60000,'Exceptional'),(143,'Toyota Corolla','CARS',14000,'Some Damage'),(144,'Toyota Corolla','CARS',15500,'Some Damage'),(145,'Chevrolet Silverado','CARS',25000,'Some Damage'),(146,'Yeezy 350 V2','SNEAKERS',250,'Worn'),(147,'Yeezy Foams','SNEAKERS',250,'Some Damage'),(148,'Yeezy 700s','SNEAKERS',100,'Terrible'),(149,'Air Jordan 5s','SNEAKERS',240,'Great'),(150,'Air Jordan 3s','SNEAKERS',300,'Exceptional'),(151,'Air Jordan 8s','SNEAKERS',200,'Great'),(152,'Black Leather Jacket','CLOTHES',400,'Great'),(153,'Brown Leather Jacket','CLOTHES',450,'Great'),(154,'Nets Jersey','CLOTHES',75,'Worn'),(155,'Lakers Jersey','CLOTHES',95,'Decent'),(156,'Islanders Jersey','CLOTHES',100,'Some Damage'),(157,'Ripped Levi Jeans','CLOTHES',50,'Terrible'),(158,'Aaron Rodgers Retro Jersey Gameworn','CLOTHES',500,'Exceptional'),(159,'Ripped Levi Jeans','CLOTHES',100,'Decent'),(160,'Green Letterman Jacket','CLOTHES',150,'Decent'),(161,'Yeezus Tour Merchandise T-Shirt','CLOTHES',150,'Decent'),(162,'Weezer Tour Merchandise T-Shirt','CLOTHES',75,'Worn'),(163,'Opium Tour Merchandise T-Shirt','CLOTHES',90,'Worn');
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `iitem_id` int NOT NULL AUTO_INCREMENT,
  `auctioning_item_num` int DEFAULT NULL,
  `access_seller_id` int DEFAULT NULL,
  `registered_item_check` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iitem_id`),
  KEY `access_seller_id` (`access_seller_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`access_seller_id`) REFERENCES `seller` (`sseller_id`),
  CONSTRAINT `items_ibfk_2` FOREIGN KEY (`access_seller_id`) REFERENCES `seller` (`sseller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (113,1457,5,1),(114,2679,18,1),(115,5971,7,1),(116,3797,20,1),(117,8707,9,1),(118,9636,10,1),(119,3036,3,1),(120,5792,4,1),(121,4093,13,1),(122,8170,5,1),(123,9811,5,1),(124,7830,6,1),(125,7348,20,1),(126,1070,5,1),(127,8981,4,1),(128,2166,12,1),(129,2519,6,1),(130,3088,11,1),(131,1491,19,1),(132,9949,12,1),(133,8958,18,1),(134,2260,15,1),(135,3171,5,1),(136,3569,6,1),(137,3856,1,1),(138,4869,1,1),(139,3296,20,1),(140,5285,17,1),(141,1879,16,1),(142,8501,13,1),(143,8410,8,1),(144,4003,2,1),(145,9864,13,1),(146,2123,8,1),(147,5682,13,1),(148,4258,13,1),(149,5361,12,1),(150,9338,13,1),(151,6275,9,1),(152,3797,13,1),(153,1000,7,1),(154,6504,9,1),(155,6718,10,1),(156,6644,10,1),(157,3496,18,1),(158,2161,19,1),(159,8516,6,1),(160,5539,1,1),(161,7609,3,1),(162,3440,4,1),(163,5086,11,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_information`
--

DROP TABLE IF EXISTS `login_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_information` (
  `lgmember_id` int DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Pass_word` varchar(100) NOT NULL,
  KEY `lgmember_id` (`lgmember_id`),
  CONSTRAINT `login_information_ibfk_1` FOREIGN KEY (`lgmember_id`) REFERENCES `users` (`umember_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_information`
--

LOCK TABLES `login_information` WRITE;
/*!40000 ALTER TABLE `login_information` DISABLE KEYS */;
INSERT INTO `login_information` VALUES (1,'SamSmith@mail.com','samsmithy123','F02fjridsk@4edg'),(2,'JoeJohnson@mail.com','JJVerified','%)^&YH)G4'),(3,'MikeSmith@mail.com','Mike2tuf','%^H)54k0hgtr'),(4,'GabrielHernandez@mail.com','Gabby442','$#%Y^HTGRERT5htre'),(5,'JoseGonzalez@goopmail.com','JoseWelding','$#%YH^TREGR#$T%Y^y54t32rwefrg'),(6,'RohanRegin@mail.com','Macbeth','^HT)450gtoreg0'),(7,'RaeganAllister@mail.com','victoriaappreciator','%$)KTGDFGH)^htrmt43'),(8,'CharlieMcDoughery@mail.com','charliebetterthanu',')&KHMORTG5kh5k'),(9,'MichaelJordan@mail.com','DaGoat6n6','@DWEr23rewr23'),(10,'DarrenBrown@mail.com','DeadlyRaptor','b5yrtb5bY$BETERt54'),(11,'FernandoAlonso@mail.com','ZininorLol','YB%$@BGRH54gfbgerwt54w'),(12,'AidenGomez@goopmail.com','Hexes','U^%B@%Ygrebtw!%$T$!VT'),(13,'RichardRoss@goopmail.com','RealRickRoss','&^%H#$@TV@#$%$VY'),(14,'SouthWest@goopmail.com','Backpackboy55','%^YGfre345^Ygfde'),(15,'AubreyGraham@mail.com','Owlman1241','H^$VT$#34t4tv4334cewt43t43wet43'),(16,'TamaGeraldson@mail.com','Tamagirlll','V#@ty45vy%$vy4%YV$@VGE'),(17,'MikeyConac@mail.com','MikeyConacOwnsU','&56VY#y$%'),(18,'JaredJackJr@mail.com','JJJmonster','t2vt$T$43@TVt43'),(19,'ThomasBarthelomeu@icemail.com','TomTom','54V45g25T@@V4'),(20,'JeremiaShodan@icemail.com','ShodanFamily','GH$%TGER54rgeb45'),(21,'DionysOswati@mail.com','OswatiLtd','%$TYHBT$wreag354'),(22,'JochimDubthach@mail.com','DubthachTheBarbarian','#$%g54greg$#TGBFDG'),(23,'TrophimosOkonkwo@mail.com','Mistymountain','#$%^Yhgrg54@#EF'),(24,'AnandIudhail@mail.com','Dietcola','#$%T^YTG#F56gtr$%g6tr'),(25,'AnnemarieFatma@icemail.com','ANovicesPursuit','2345REWE#RT$%GREVF#$'),(26,'ParvatiVishal@icemail.com','NineInchLegs','$%Tfr23r45rewfw3@DFGH'),(27,'SinMahboubeh@mail.com','Sincity','45t5grefDW#@R4'),(28,'TabathaBraden@mail.com','Tabby4125','@#$RFdswr34543'),(29,'SefforaPrasad@mail.com','SephoraGirl','DSGJOGd#@$%^R35423REOFDS'),(30,'FemmeAntonijo@mail.com','Femmefatale','@#fjgerjfop2523g43EWDF'),(31,'HamletChukwudi@mail.com','ShakespeareanTragedy','@#$%TFDSW12345'),(32,'JoopJohnnie@rmail.com','JJdragon','%$YH^TRE34'),(33,'VictorAsel@rmail.com','Gladiatorman','H^J%$GTRH6'),(34,'AnnalisaPascuala@rmail.com','ADivineBliss','&%^$REGHT'),(35,'EdithCyriaca@rmail.com','WarmcherryTails','DHFTESDGFyhtret4#%^$%#'),(36,'AviliusRaginahildiz@mail.com','DontBotherPronouncingMyName','retH$5regh54re'),(37,'DeboraTeodor@mail.com','Debbyteddy','$%^Hr5t45TERH%$'),(38,'SookieEvelin@rmail.com','Teddybear2345','^%$#@$%^&hgre3$%^HFGGE'),(39,'GalilahiSassa@rmail.com','Galilea_','ERG$%OkT56ok43'),(40,'KamalYeongSuk@mail.com','KamalYeongSuk','%$YH%Y)TKRFE'),(41,'IepthaePisti@mail.com','IephthaeheLady','@#E)GJ%$#E)FGH645'),(42,'HiraOybek@mail.com','IamaHerooo','$%^HEG43ty56treg'),(43,'GuiAbhishek@mail.com','Guigoogoop','%$^YHYTREROTk3T'),(44,'ThomasAgrippa@mail.com','TommyAgripeswithhimself','$%H)%$RE)_GK$'),(45,'SamFlorry@rmail.com','Samflowers','%H)TRFDF)#$%#$'),(46,'MelitaZona@rmail.com','MelindaZones','#$TGERFK)G$)TK'),(47,'LylouSunder@rmail.com','PrettyLittleLilac','ERPGKH%$K#PEWKPG5^$#'),(48,'JamesHarden@rmail.com','JamesHarden','$%H)FKGG$))%$#%'),(49,'MaltheViktoria@mail.com','MaltheTheDestroyer','tghDH)$%Y)IT#$_)%'),(50,'AslanKishan@rmail.com','AslanorNot','H)$%Y)_%$YI%$eingogoi43'),(51,'IgnacioArias@mail.com','merge','^{m5X28J'),(52,'EsterBuck@mail.com','americanidiot','^%$#EDGFH%$'),(53,'BerylLara@mail.com','voidman','%$^YGFD#$%^YHG'),(54,'JewelHeath@mail.com','hellboy','%^YHGFdEW$%^%YGRF'),(55,'TabathaGrant@rmail.com','soulful','p_@+Maw8'),(56,'BorisDonaldson@mail.com','greenday','^YHGFE$%^YHG'),(57,'HalRocha@mail.com','eyesocket','546y5GFRER#'),(58,'JanaPratt@mail.com','janejane','$^%YGFr3e245'),(59,'OdellLin@mail.com','obj','%REFRGY%T$%'),(60,'OdisLynn@rmail.com','odisz','$%^YGFRE#$%^TG'),(61,'QuinnHinton@goopmail.com','kaicenat','$7RX3cN'),(62,'MosesShaffer@goopmail.com','brighteue','$%TGFE$%^'),(63,'RandolphCuevas@mail.com','adinro','HY{*4[Hz'),(64,'JamaalRowland@goopmail.com','brighteyes','3456ygfew34%TFE'),(65,'HymanWoods@goopmail.com','skullboy','%HTREF#R@4t5ygre'),(66,'FannieGonzales@mail.com','fantom','G%$ERG%$T#$TE'),(67,'JohnathanAndrade@mail.com','johnnyandy','G#$TERG$#T$#34t3t'),(68,'MarcellusMathews@mail.com','marcusaurelius','T$#TRFEFWERT$5gre'),(69,'HiramRamos@mail.com','ramramturbo','g#$E#$TT#$'),(70,'RhodaBlake@rmail.com','blakegriffin245','%$REGY%^$%REF'),(71,'SuzanneBurch@rmail.com','kicker','#EOJfew'),(72,'MillicentWashington@rmail.com','superman','34tgredsfF@#4'),(73,'LindseyHouse@mail.com','batman','$#GE3qd'),(74,'GalenBerger@rmail.com','burgertown','3456ygfde456yg'),(75,'VicenteBowman@mail.com','345frear','$#GREWE2345t'),(76,'ForrestHuerta@mail.com','froester','g543wefty654'),(77,'CleoSanchez@mail.com','freeboy','@#EWFG342'),(78,'PauletteStevenson@mail.com','paulieeboy','43wefg53'),(79,'JaredClarke@mail.com','eagleeeeeee','GH%GRES'),(80,'SummerColon@mail.com','summie','65y43erg'),(81,'LawerenceHutchinson@mail.com','towerrr','#$%^YGFD24rt'),(82,'PhillipFarle@rmail.com','tiststststs','45g5ref4'),(83,'JulesVelez@goopmail.com','watchman','#$%GEg43tr3ef34'),(84,'KirstenFox@mail.com','kristenwest','#%TRG34t34twd34'),(85,'BennettFields@mail.com','bennyben','#%TRE#$%TTRG3'),(86,'AlexisHoover@goopmail.com','thedawwg','%TFEDWer$T#%ref34%T'),(87,'TerryMarks@mail.com','markhenry','4354trGFE#T%$re'),(88,'TiffanyBarrett@mail.com','tifftaff','$#%$^TGRFEW3454trfefwf'),(89,'DylanMooney@mail.com','moongreat','%$^T%GFRER#456t5fer'),(90,'DamonClements@mail.com','braveheart','$YTR#$%46tre345t'),(91,'DebraPowers@rmail.com','gandolfthegrey','weG#$EWf'),(92,'VelmaMorris@rmail.com','tiktoktiktok','4hf34iejf902'),(93,'NestorBenson@rmail.com','batmun','#$%TG#R'),(94,'BobbieBarr@goopmail.com','bobbobobob','#$%TG#4t'),(95,'DouglassMueller@mail.com','duggydoggg','#$%^TRE#5trge'),(96,'DianaJohns@mail.com','kittygirl123','$#%^TRF34t43'),(97,'ErikaNoble@mail.com','nobleism','$%TYGFE#456tfe'),(98,'EdgarQuinn@mail.com','quinnschnyder','3tg43F#$F#$F'),(99,'ElliottLowe@mail.com','ellylowy','$#%TYGFE#$%tfe3'),(100,'HueyOneill@mail.com','tufftoy','f#$%TGFE#');
/*!40000 ALTER TABLE `login_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_information`
--

DROP TABLE IF EXISTS `personal_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_information` (
  `pimember_id` int DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  KEY `pimember_id` (`pimember_id`),
  CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`pimember_id`) REFERENCES `users` (`umember_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information`
--

LOCK TABLES `personal_information` WRITE;
/*!40000 ALTER TABLE `personal_information` DISABLE KEYS */;
INSERT INTO `personal_information` VALUES (1,'Sam','Smith','1983-01-06','180 Woodland Lane Paramus, NJ 07652','5878686441'),(2,'Joe','Johnson','1976-12-08','908 Tailwater St. Newington, CT 06111','3147370018'),(3,'Mike','Smith','1987-08-08','13 53rd St. Fresh Meadows, NY 11365','9555997623'),(4,'Gabriel','Hernandez','2000-03-16','283 Grant St. Kernersville, NC 27284','2219114131'),(5,'Jose','Gonzalez','1966-02-26','789 Brickyard Drive Clermont, FL 34711','5396253476'),(6,'Rohan','Regin','2000-03-11','22 Fairview St. Villa Park, IL 60181','2225686527'),(7,'Raegan','Allister','1980-03-13','7605 Park Ave. Ambler, PA 19002','3644724248'),(8,'Charlie','McDoughery','1965-05-03','860 Penn Ave. Toledo, OH 43612','6458498225'),(9,'Michael','Jordan','1995-10-02','170 North Main Rd. Dallas, GA 30132','6754148503'),(10,'Darren','Brown','1982-03-27','962 Walnut Dr. Cedar Falls, IA 50613','6864952405'),(11,'Fernando','Alonso','1984-09-19','9058 Walt Whitman Ave. Miamisburg, OH 45342','8707466834'),(12,'Aiden','Gomez','1986-09-09','421 Young Ave. Lithonia, GA 30038','9386920431'),(13,'Richard','Ross','1976-05-24','34 Sutor Court Maumee, OH 43537','7938572284'),(14,'South','West','2000-09-17','567 West St. Jonesborough, TN 37659','4122343456'),(15,'Aubrey','Graham','1994-06-04','66 Glenwood Ave. Stow, OH 44224','7967520458'),(16,'Tama','Geraldson','1983-11-18','7451 N. Victoria Ave. Fort Lee, NJ 07024','3792889285'),(17,'Mikey','Conac','1993-06-11','54 Bridge Road Wisconsin Rapids, WI 54494','8364069397'),(18,'Jared','Jack Jr.','1981-03-07','47 Wayne St. Warwick, RI 02886','5737078664'),(19,'Thomas','Barthelomeu','2002-08-22','8371 Main St. West Bend, WI 53095','5252720141'),(20,'Jeremia','Shodan','1981-10-01','558 Applegate Ave. Uniontown, PA 15401','7425883377'),(21,'Dionys','Oswati','1993-10-18','76 N. Nut Swamp St. Hartselle, AL 35640','3853281874'),(22,'Jochim','Dubthach','1991-02-11','8809 East Street Suffolk, VA 23434','5773778883'),(23,'Trophimos','Okonkwo','1984-05-10','426 S. Meadowbrook Street Newtown, PA 18940','6664335681'),(24,'Anand','Iudhail','1989-04-14','8897 Acacia Street Dearborn, MI 48124','5254719454'),(25,'Annemarie','Fatma','1981-09-26','5 Ridgewood Dr. Champlin, MN 55316','4723541833'),(26,'Parvati','Vishal','1999-03-02','39 Brown Avenue Jamestown, NY 14701','7869453364'),(27,'Sin','Mahboubeh','1995-10-14','286 Ann Ave. Fort Myers, FL 33905','4452319882'),(28,'Tabatha','Braden','1977-01-05','7717 S. Richardson St. Lindenhurst, NY 11757','6795118827'),(29,'Seffora','Prasad','1981-03-06','944 Foster Ave. Providence, RI 02904','9234679394'),(30,'Femme','Antonijo','1998-03-03','14 Richardson Lane Piedmont, SC 29673','9738253939'),(31,'Hamlet','Chukwudi','1980-09-14','9624 Hickory Rd. Lombard, IL 60148','3149382519'),(32,'Joop','Johnnie','1997-06-22','67 Border Dr. Beckley, WV 25801','6093082080'),(33,'Victor','Asel','1983-03-25','8 South Silver Spear Ave. Danbury, CT 06810','5137229533'),(34,'Annalisa','Pascuala','1977-02-02','8831 Edgemont Ave. Grand Forks, ND 58201','6224958149'),(35,'Edith','Cyriaca','2003-04-12','742 Glenholme St. East Hartford, CT 06118','4284874748'),(36,'Avilius','Raginahildiz','1991-04-11','84 Gregory Lane Pottstown, PA 19464','9058547015'),(37,'Debora','Teodor','1981-07-09','219 W. Greystone Ave. Marcus Hook, PA 19061','2437551460'),(38,'Sookie','Evelin','1997-10-31','51 E. Border St. Hamden, CT 06514','3589263805'),(39,'Galilahi','Sassa','1996-05-19','846 South White Street Calumet City, IL 60409','8382467692'),(40,'Kamal','Yeong-Suk','2000-02-12','9632 Harvard Road Jacksonville, NC 28540','9249836755'),(41,'Iepthae','Pisti','1996-04-19','9965 Ridgeview Lane Hartsville, SC 29550','9694315427'),(42,'Hira','Oybek','2000-07-20','32 Manor Station Ave. Essex, MD 21221','2657884747'),(43,'Gui','Abhishek','1992-04-30','52 Hall St. Southfield, MI 48076','2822316180'),(44,'Thomas','Agrippa','1987-03-28','8374 SE. Randall Mill Ave. Lilburn, GA 30047','6483513915'),(45,'Sam','Florry','1999-12-02','723 Summer St. Dorchester, MA 02125','9243711544'),(46,'Melita','Zona','1977-01-28','65 Bayport Ave. Wappingers Falls, NY 12590','8735534701'),(47,'Lylou','Sunder','1995-02-02','5 Jones St. Tullahoma, TN 37388','7354374828'),(48,'James','Harden','2003-12-03','5 Tanglewood Ave. Mount Juliet, TN 37122','9964251067'),(49,'Malthe','Viktoria','1981-08-25','144 Evergreen Dr. Greer, SC 29650','9549996544'),(50,'Aslan','Kishan','1986-05-27','910 Yukon St. Millington, TN 38053','2576482696'),(51,'Ignacio','Arias','1999-11-02','328 William Street Deerfield Beach, FL 33442','5746586451'),(52,'Ester','Buck','1996-09-22','82 Dogwood Lane Kingston, NY 12401','8367233925'),(53,'Beryl','Lara','1988-07-20','4 Miles Street Canyon Country, CA 91387','9369748914'),(54,'Jewel','Heath','2000-10-25','7929 John St. Centreville, VA 20120','9561733152'),(55,'Tabatha','Grant','1977-04-21','5 Cemetery Ave. West Chester, PA 19380','9858192891'),(56,'Boris','Donaldson','2005-06-26','9245 East Rose St. Sioux City, IA 51106','3979526793'),(57,'Hal','Rocha','2005-04-28','212 St Louis Drive La Crosse, WI 54601','8218548791'),(58,'Jana','Pratt','2001-07-22','742 Lexington Ave. Boynton Beach, FL 33435','3525168294'),(59,'Odell','Lin','1995-08-06','401 Wellington Dr. Chaska, MN 55318','9865982479'),(60,'Odis','Lynn','2000-01-14','42 Theatre Court Conway, SC 29526','4167839763'),(61,'Quinn','Hinton','1998-11-12','8863 S. Summer St. Milford, MA 01757','2892653645'),(62,'Moses','Shaffer','2003-08-28','972 North Buttonwood Ave. Winder, GA 30680','6511364975'),(63,'Randolph','Cuevas','1999-07-02','29 N. Johnson St. Bangor, ME 04401','8474594279'),(64,'Jamaal','Rowland','2000-10-20','8287 Prairie Street Winter Springs, FL 32708','6959273517'),(65,'Hyman','Woods','1995-02-25','719 Greenrose Street Clinton, MD 20735','3421781239'),(66,'Fannie','Gonzales','1997-08-13','7602 Young Court Anderson, SC 29621','9247634128'),(67,'Johnathan','Andrade','2004-01-19','542 State Rd. Maryville, TN 37803','1238294265'),(68,'Marcellus','Mathews','2001-07-14','9 South Foxrun St. Chicago Heights, IL 60411','2188678542'),(69,'Hiram','Ramos','2003-05-14','9630 SE. Rock Maple Court Clover, SC 29710','7156148147'),(70,'Rhoda','Blake','2002-06-04','9168 Thorne Street Loganville, GA 30052','2463548241'),(71,'Suzanne','Burch','2004-09-24','7728 Hartford St. Stow, OH 44224','1344717863'),(72,'Millicent','Washington','2001-05-21','129 Pulaski Avenue Highland Park, IL 60035','6149857564'),(73,'Lindsey','House','2002-01-08','1 Hilldale St. Paterson, NJ 07501','4865277439'),(74,'Galen','Berger','1997-02-13','7966 Wakehurst Road Wappingers Falls, NY 12590','9841267423'),(75,'Vicente','Bowman','2002-08-31','9814 Oak Drive Helotes, TX 78023','2143248634'),(76,'Forrest','Huerta','1995-09-25','8702 Garfield Rd. Winter Garden, FL 34787','1477292381'),(77,'Cleo','Sanchez','2005-09-04','846 Illinois Street Stroudsburg, PA 18360','8265977682'),(78,'Paulette','Stevenson','1997-03-04','54 North Wentworth Avenue Egg Harbor Township, NJ 08234','7931249851'),(79,'Jared','Clarke','2004-11-11','9827 Rocky River St. Westbury, NY 11590','4868166729'),(80,'Summer','Colon','2000-07-08','126 Rockland Ave. West Bend, WI 53095','8459729356'),(81,'Lawerence','Hutchinson','2001-01-28','7 N. La Sierra Dr. Saginaw, MI 48601','3626582681'),(82,'Phillip','Farley','2002-02-22','114 Livingston Drive North Tonawanda, NY 14120','5135475879'),(83,'Jules','Velez','1999-05-13','8949 Plymouth Drive Middleburg, FL 32068','1861688921'),(84,'Kirsten','Fox','1995-05-17','7441 Fremont St. Oviedo, FL 32765','7488978625'),(85,'Bennett','Fields','2005-03-02','7245 Cottage Ave. Cookeville, TN 38501','4239751472'),(86,'Alexis','Hoover','1994-01-17','893 Brickell St. Memphis, TN 38106','4122517196'),(87,'Terry','Marks','2006-01-06','738 Lake View Lane Harrison Township, MI 48045','6944315286'),(88,'Tiffany','Barrett','1995-10-17','8 S. Cypress Ave. Starkville, MS 39759','4711272674'),(89,'Dylan','Mooney','1993-06-07','7354 South Mayfield Street Johnson City, TN 37601','1436316518'),(90,'Damon','Clements','1994-10-27','25 Summit Road Prior Lake, MN 55372','2634836287'),(91,'Debra','Powers','2001-12-12','73 Lakeshore St. Hartford, CT 06106','7145893951'),(92,'Velma','Morris','1993-03-06','110 Oakwood Road Douglasville, GA 30134','4372793126'),(93,'Nestor','Benson','2001-05-19','8024 Mayflower Drive Unit 6 Hinesville, GA 31313','7458615914'),(94,'Bobbie','Barr','2001-10-10','79C Euclid Rd. Massapequa, NY 11758','3593941586'),(95,'Douglass','Mueller','1992-04-01','9846 Berkshire St. Land O Lakes, FL 34639','5464971326'),(96,'Diana','Johns','2005-01-13','85 East Madison Court Merrick, NY 11566','8161725634'),(97,'Erika','Noble','1993-08-16','5 Pumpkin Hill Court Apt 202 Muskegon, MI 49441','6479219376'),(98,'Edgar','Quinn','1994-04-27','8800 E. Locust Rd. Sylvania, OH 43560','6213875487'),(99,'Elliott','Lowe','1996-04-20','7 Brandywine Street Bemidji, MN 56601','2971622678'),(100,'Huey','Oneill','2004-02-25','8461 Laurel St. Maplewood, NJ 07040','5488563679');
/*!40000 ALTER TABLE `personal_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `personal_profit_average`
--

DROP TABLE IF EXISTS `personal_profit_average`;
/*!50001 DROP VIEW IF EXISTS `personal_profit_average`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `personal_profit_average` AS SELECT 
 1 AS `full_name`,
 1 AS `Average`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prototype1`
--

DROP TABLE IF EXISTS `prototype1`;
/*!50001 DROP VIEW IF EXISTS `prototype1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prototype1` AS SELECT 
 1 AS `full_name`,
 1 AS `item_name`,
 1 AS `total_price`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `remaining_bal`
--

DROP TABLE IF EXISTS `remaining_bal`;
/*!50001 DROP VIEW IF EXISTS `remaining_bal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `remaining_bal` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `remaining_balace_prototype`
--

DROP TABLE IF EXISTS `remaining_balace_prototype`;
/*!50001 DROP VIEW IF EXISTS `remaining_balace_prototype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `remaining_balace_prototype` AS SELECT 
 1 AS `full_name`,
 1 AS `Remaining_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `sseller_id` int NOT NULL AUTO_INCREMENT,
  `seller_verification` tinyint(1) DEFAULT NULL,
  `item_selling_num` int DEFAULT NULL,
  `access_user_id` int DEFAULT NULL,
  PRIMARY KEY (`sseller_id`),
  KEY `access_user_id` (`access_user_id`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`access_user_id`) REFERENCES `users` (`umember_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,1,NULL,6),(2,1,NULL,10),(3,1,NULL,11),(4,1,NULL,17),(5,1,NULL,18),(6,1,NULL,23),(7,1,NULL,26),(8,1,NULL,31),(9,1,NULL,44),(10,1,NULL,49),(11,1,NULL,56),(12,1,NULL,63),(13,1,NULL,65),(14,1,NULL,75),(15,1,NULL,78),(16,1,NULL,81),(17,1,NULL,88),(18,1,NULL,89),(19,1,NULL,92),(20,1,NULL,95);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_information`
--

DROP TABLE IF EXISTS `seller_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_information` (
  `siseller_id` int DEFAULT NULL,
  `seller_reviews` varchar(300) DEFAULT NULL,
  KEY `siseller_id` (`siseller_id`),
  CONSTRAINT `seller_information_ibfk_1` FOREIGN KEY (`siseller_id`) REFERENCES `seller` (`sseller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_information`
--

LOCK TABLES `seller_information` WRITE;
/*!40000 ALTER TABLE `seller_information` DISABLE KEYS */;
INSERT INTO `seller_information` VALUES (1,'Bad'),(2,'Great'),(3,'Horrible'),(4,'Good'),(5,'Good'),(6,'Great'),(7,'Good'),(8,'Bad'),(9,'Great'),(10,'Good'),(11,'Good'),(12,'Great'),(13,'Horrible'),(14,'Bad'),(15,'Good'),(16,'Great'),(17,'Bad'),(18,'Horrible'),(19,'Perfect'),(20,'Great');
/*!40000 ALTER TABLE `seller_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sellers_quantity`
--

DROP TABLE IF EXISTS `sellers_quantity`;
/*!50001 DROP VIEW IF EXISTS `sellers_quantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sellers_quantity` AS SELECT 
 1 AS `full_name`,
 1 AS `Sellers_Item_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `shipping_id` int NOT NULL AUTO_INCREMENT,
  `bidder_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  KEY `bidder_id` (`bidder_id`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`bidder_id`) REFERENCES `auctions` (`access_bidder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,5,114),(2,12,122),(3,75,126),(4,65,130),(5,65,137),(6,55,141),(7,11,146),(8,83,153),(9,94,154),(10,33,160);
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_info`
--

DROP TABLE IF EXISTS `shipping_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_info` (
  `sishipping_id` int DEFAULT NULL,
  `shipping_type` varchar(300) DEFAULT NULL,
  `shipping_updates` varchar(300) DEFAULT NULL,
  `shipping_receipt` varchar(300) DEFAULT NULL,
  `shipping_price` int DEFAULT NULL,
  KEY `sishipping_id` (`sishipping_id`),
  CONSTRAINT `shipping_info_ibfk_1` FOREIGN KEY (`sishipping_id`) REFERENCES `shipping` (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_info`
--

LOCK TABLES `shipping_info` WRITE;
/*!40000 ALTER TABLE `shipping_info` DISABLE KEYS */;
INSERT INTO `shipping_info` VALUES (1,'Normal','Delivering from Warehouse','Receipt.txt',5),(2,'Normal','Shipping','Receipt.txt',10),(3,'Expedited','Yet to Ship','Receipt.txt',15),(4,'Expedited','Yet to Ship','Receipt.txt',15),(5,'Normal','Yet to Ship','Receipt.txt',10),(6,'Normal','Delivering from Warehouse','Receipt.txt',100),(7,'Expedited','Shipping','Receipt.txt',15),(8,'Normal','Shipping','Receipt.txt',10),(9,'Normal','Delivering from Warehouse','Receipt.txt',10),(10,'Normal','Yet to Ship','Receipt.txt',10);
/*!40000 ALTER TABLE `shipping_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_balance`
--

DROP TABLE IF EXISTS `total_balance`;
/*!50001 DROP VIEW IF EXISTS `total_balance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_balance` AS SELECT 
 1 AS `full_name`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_cost`
--

DROP TABLE IF EXISTS `total_cost`;
/*!50001 DROP VIEW IF EXISTS `total_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_cost` AS SELECT 
 1 AS `full_name`,
 1 AS `item_name`,
 1 AS `total_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_cost1`
--

DROP TABLE IF EXISTS `total_cost1`;
/*!50001 DROP VIEW IF EXISTS `total_cost1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_cost1` AS SELECT 
 1 AS `full_name`,
 1 AS `item_name`,
 1 AS `total_price`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_cost2`
--

DROP TABLE IF EXISTS `total_cost2`;
/*!50001 DROP VIEW IF EXISTS `total_cost2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_cost2` AS SELECT 
 1 AS `full_name`,
 1 AS `account_balance`,
 1 AS `total_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_cost3`
--

DROP TABLE IF EXISTS `total_cost3`;
/*!50001 DROP VIEW IF EXISTS `total_cost3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_cost3` AS SELECT 
 1 AS `full_name`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_profit_category`
--

DROP TABLE IF EXISTS `total_profit_category`;
/*!50001 DROP VIEW IF EXISTS `total_profit_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_profit_category` AS SELECT 
 1 AS `item_category`,
 1 AS `Total_Profit_Per_Category`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_profit_category1`
--

DROP TABLE IF EXISTS `total_profit_category1`;
/*!50001 DROP VIEW IF EXISTS `total_profit_category1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_profit_category1` AS SELECT 
 1 AS `item_category`,
 1 AS `Total_Profit_Per_Category`,
 1 AS `Total_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_profit_person`
--

DROP TABLE IF EXISTS `total_profit_person`;
/*!50001 DROP VIEW IF EXISTS `total_profit_person`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_profit_person` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Profit_Per_Person`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_profit_person1`
--

DROP TABLE IF EXISTS `total_profit_person1`;
/*!50001 DROP VIEW IF EXISTS `total_profit_person1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_profit_person1` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Profit_Per_Person`,
 1 AS `Sellers_Item_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_quantity_category`
--

DROP TABLE IF EXISTS `total_quantity_category`;
/*!50001 DROP VIEW IF EXISTS `total_quantity_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_quantity_category` AS SELECT 
 1 AS `item_category`,
 1 AS `Total_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_transaction`
--

DROP TABLE IF EXISTS `total_transaction`;
/*!50001 DROP VIEW IF EXISTS `total_transaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_transaction` AS SELECT 
 1 AS `full_name`,
 1 AS `Cart`,
 1 AS `total_items`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_transaction1`
--

DROP TABLE IF EXISTS `total_transaction1`;
/*!50001 DROP VIEW IF EXISTS `total_transaction1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_transaction1` AS SELECT 
 1 AS `full_name`,
 1 AS `Cart`,
 1 AS `total_items`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_with`
--

DROP TABLE IF EXISTS `total_with`;
/*!50001 DROP VIEW IF EXISTS `total_with`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_with` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_with1`
--

DROP TABLE IF EXISTS `total_with1`;
/*!50001 DROP VIEW IF EXISTS `total_with1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_with1` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_with3`
--

DROP TABLE IF EXISTS `total_with3`;
/*!50001 DROP VIEW IF EXISTS `total_with3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_with3` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_with4`
--

DROP TABLE IF EXISTS `total_with4`;
/*!50001 DROP VIEW IF EXISTS `total_with4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_with4` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalb_alance`
--

DROP TABLE IF EXISTS `totalb_alance`;
/*!50001 DROP VIEW IF EXISTS `totalb_alance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalb_alance` AS SELECT 
 1 AS `full_name`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totals`
--

DROP TABLE IF EXISTS `totals`;
/*!50001 DROP VIEW IF EXISTS `totals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totals` AS SELECT 
 1 AS `full_name`,
 1 AS `item_category`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `t_auction_id` int DEFAULT NULL,
  `bidder_id` int DEFAULT NULL,
  `shipping_info` int DEFAULT NULL,
  `t_wallet_payment_id` int DEFAULT NULL,
  `item_bought` int DEFAULT NULL,
  `payment` int DEFAULT NULL,
  KEY `t_auction_id` (`t_auction_id`),
  KEY `bidder_id` (`bidder_id`),
  KEY `shipping_info` (`shipping_info`),
  KEY `t_wallet_payment_id` (`t_wallet_payment_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`t_auction_id`) REFERENCES `auctions` (`aauction_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`bidder_id`) REFERENCES `auctions` (`access_bidder_id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`shipping_info`) REFERENCES `shipping` (`shipping_id`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`t_wallet_payment_id`) REFERENCES `wallet` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (2,5,1,5,62,45),(10,40,2,40,70,1250);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `umember_id` int NOT NULL AUTO_INCREMENT,
  `assigned_id` int DEFAULT NULL,
  `seller_num` int DEFAULT NULL,
  `bidder_num` int DEFAULT NULL,
  PRIMARY KEY (`umember_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,275707496,0,1),(2,508266509,0,2),(3,166203264,0,3),(4,890718809,0,4),(5,468793849,0,5),(6,976646247,1,6),(7,751692843,0,7),(8,339745765,0,8),(9,764928893,0,9),(10,92365053,2,10),(11,742078223,3,11),(12,574905248,0,12),(13,685724182,0,13),(14,807228408,0,14),(15,86300223,0,15),(16,106529498,0,16),(17,226321242,4,17),(18,393324708,5,18),(19,273977745,0,19),(20,681921621,0,20),(21,742078223,0,21),(22,681921621,0,22),(23,273977745,6,23),(24,393324708,0,24),(25,226321242,0,25),(26,106529498,7,26),(27,807228408,0,27),(28,685724182,0,28),(29,574905248,0,29),(30,86300223,0,30),(31,950436307,8,31),(32,8241964,0,32),(33,146187915,0,33),(34,781017647,0,34),(35,449994924,0,35),(36,573258970,0,36),(37,826533474,0,37),(38,295309587,0,38),(39,51597057,0,39),(40,49987234,0,40),(41,667973524,0,41),(42,931167924,0,42),(43,524004026,0,43),(44,905629664,9,44),(45,178918383,0,45),(46,612634648,0,46),(47,323108519,0,47),(48,664876920,0,48),(49,743312739,0,49),(50,301516495,0,50),(51,677147491,0,51),(52,485244481,10,52),(53,973011581,0,53),(54,933798077,0,54),(55,614298590,0,55),(56,493978462,11,56),(57,168430488,0,57),(58,116109204,0,58),(59,866828641,0,59),(60,355252731,0,60),(61,574337828,0,51),(62,301710602,0,62),(63,231029797,12,63),(64,747839368,0,64),(65,197350951,13,65),(66,811992832,0,66),(67,277240851,0,67),(68,409739077,0,68),(69,838033021,0,69),(70,660282646,0,70),(71,725863808,0,71),(72,467867195,0,72),(73,596468254,0,73),(74,670459454,0,74),(75,133153338,14,75),(76,989071531,0,76),(77,197688157,0,77),(78,809187591,15,78),(79,38107802,0,79),(80,918183431,0,80),(81,254829089,16,81),(82,76777841,0,82),(83,398615224,0,83),(84,689430287,0,84),(85,647691395,0,85),(86,549269087,0,86),(87,832796521,0,87),(88,140406913,17,88),(89,441786881,18,89),(90,599070409,0,90),(91,756670659,0,91),(92,708848079,19,92),(93,607177571,0,93),(94,398929640,0,94),(95,698064994,20,95),(96,149823194,0,96),(97,841645660,0,97),(98,406865282,0,98),(99,174704596,0,99),(100,218602002,0,100);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `wallet_id` int NOT NULL AUTO_INCREMENT,
  `access_user_id` int DEFAULT NULL,
  PRIMARY KEY (`wallet_id`),
  KEY `access_user_id` (`access_user_id`),
  CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`access_user_id`) REFERENCES `users` (`umember_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `wallet_gain`
--

DROP TABLE IF EXISTS `wallet_gain`;
/*!50001 DROP VIEW IF EXISTS `wallet_gain`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wallet_gain` AS SELECT 
 1 AS `full_name`,
 1 AS `withdrawal_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wallet_gain1`
--

DROP TABLE IF EXISTS `wallet_gain1`;
/*!50001 DROP VIEW IF EXISTS `wallet_gain1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wallet_gain1` AS SELECT 
 1 AS `full_name`,
 1 AS `withdrawal_amount`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wallet_gain2`
--

DROP TABLE IF EXISTS `wallet_gain2`;
/*!50001 DROP VIEW IF EXISTS `wallet_gain2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wallet_gain2` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wallet_gain3`
--

DROP TABLE IF EXISTS `wallet_gain3`;
/*!50001 DROP VIEW IF EXISTS `wallet_gain3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wallet_gain3` AS SELECT 
 1 AS `full_name`,
 1 AS `Total_Withdrawal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wallet_gain4`
--

DROP TABLE IF EXISTS `wallet_gain4`;
/*!50001 DROP VIEW IF EXISTS `wallet_gain4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wallet_gain4` AS SELECT 
 1 AS `full_name`,
 1 AS `withdrawal_amount`,
 1 AS `account_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wallet_information`
--

DROP TABLE IF EXISTS `wallet_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_information` (
  `wiwallet_id` int DEFAULT NULL,
  `account_balance` int DEFAULT NULL,
  KEY `wiwallet_id` (`wiwallet_id`),
  CONSTRAINT `wallet_information_ibfk_1` FOREIGN KEY (`wiwallet_id`) REFERENCES `wallet` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_information`
--

LOCK TABLES `wallet_information` WRITE;
/*!40000 ALTER TABLE `wallet_information` DISABLE KEYS */;
INSERT INTO `wallet_information` VALUES (0,100000),(1,100000),(2,100000),(3,100000),(4,100000),(5,100000),(6,100000),(7,100000),(8,100000),(9,100000),(10,100000),(11,100000),(12,100000),(13,100000),(14,100000),(15,100000),(16,100000),(17,100000),(18,100000),(19,100000),(20,100000),(21,100000),(22,100000),(23,100000),(24,100000),(25,100000),(26,100000),(27,100000),(28,100000),(29,100000),(30,100000),(31,100000),(32,100000),(33,100000),(34,100000),(35,100000),(36,100000),(37,100000),(38,100000),(39,100000),(40,100000),(41,100000),(42,100000),(43,100000),(44,100000),(45,100000),(46,100000),(47,100000),(48,100000),(49,100000),(50,100000),(51,100000),(52,100000),(53,100000),(54,100000),(55,100000),(56,100000),(57,100000),(58,100000),(59,100000),(60,100000),(61,100000),(62,100000),(63,100000),(64,100000),(65,100000),(66,100000),(67,100000),(68,100000),(69,100000),(70,100000),(71,100000),(72,100000),(73,100000),(74,100000),(75,100000),(76,100000),(77,100000),(78,100000),(79,100000),(80,100000),(81,100000),(82,100000),(83,100000),(84,100000),(85,100000),(86,100000),(87,100000),(88,100000),(89,100000),(90,100000),(91,100000),(92,100000),(93,100000),(94,100000),(95,100000),(96,100000),(97,100000),(98,100000),(99,100000),(100,100000);
/*!40000 ALTER TABLE `wallet_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawals` (
  `w_auction_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `w_wallet_paid_id` int DEFAULT NULL,
  `item_sold` int DEFAULT NULL,
  KEY `w_wallet_paid_id` (`w_wallet_paid_id`),
  KEY `w_auction_id` (`w_auction_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `withdrawals_ibfk_1` FOREIGN KEY (`w_auction_id`) REFERENCES `auctions` (`aauction_id`),
  CONSTRAINT `withdrawals_ibfk_2` FOREIGN KEY (`w_wallet_paid_id`) REFERENCES `wallet` (`wallet_id`),
  CONSTRAINT `withdrawals_ibfk_3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`access_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
INSERT INTO `withdrawals` VALUES (2,10,10,45),(10,49,49,1250);
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `category_average`
--

/*!50001 DROP VIEW IF EXISTS `category_average`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_average` AS select `total_profit_category1`.`item_category` AS `item_category`,(`total_profit_category1`.`Total_Profit_Per_Category` / `total_profit_category1`.`Total_Quantity`) AS `Average` from `total_profit_category1` group by `total_profit_category1`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cont_bal`
--

/*!50001 DROP VIEW IF EXISTS `cont_bal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_bal` AS select `total_with3`.`full_name` AS `full_name`,(`wallet_gain1`.`account_balance` + `total_with3`.`Total_Withdrawal`) AS `Remaining_Balance` from (`wallet_gain1` join `total_with3`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cont_bal1`
--

/*!50001 DROP VIEW IF EXISTS `cont_bal1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_bal1` AS select `total_with3`.`full_name` AS `full_name`,(`wallet_gain1`.`account_balance` + `total_with3`.`Total_Withdrawal`) AS `Remaining_Balance` from (`wallet_gain1` join `total_with3`) group by `total_with3`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cont_bal2`
--

/*!50001 DROP VIEW IF EXISTS `cont_bal2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_bal2` AS select `total_with3`.`full_name` AS `full_name`,(`wallet_gain1`.`account_balance` + `total_with3`.`Total_Withdrawal`) AS `Current_Balance` from (`wallet_gain1` join `total_with3`) group by `total_with3`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cont_bal3`
--

/*!50001 DROP VIEW IF EXISTS `cont_bal3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_bal3` AS select `total_with4`.`full_name` AS `full_name`,(`wallet_gain4`.`account_balance` + `total_with4`.`Total_Withdrawal`) AS `Current_Balance` from (`wallet_gain4` join `total_with4`) group by `total_with4`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count`
--

/*!50001 DROP VIEW IF EXISTS `count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count` AS select `totals`.`item_category` AS `item_category`,sum(`totals`.`Profit`) AS `Total`,sum((case when (`totals`.`item_category` = 'BOOKS') then 1 else 0 end)) AS `Book_count`,sum((case when (`totals`.`item_category` = 'CLOTHES') then 1 else 0 end)) AS `Clothes_count`,sum((case when (`totals`.`item_category` = 'CARS') then 1 else 0 end)) AS `Cars_count`,sum((case when (`totals`.`item_category` = 'SNEAKERS') then 1 else 0 end)) AS `Sneakers_count`,sum((case when (`totals`.`item_category` = 'COLLECTABLES') then 1 else 0 end)) AS `Collectables_count`,sum((case when (`totals`.`item_category` = 'COINS') then 1 else 0 end)) AS `Coins_count` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `counter`
--

/*!50001 DROP VIEW IF EXISTS `counter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `counter` AS select `totals`.`item_category` AS `item_category`,sum(`totals`.`Profit`) AS `Total`,sum((case when (`totals`.`item_category` = 'BOOKS') then 1 else 0 end)) AS `Book_count`,sum((case when (`totals`.`item_category` = 'CLOTHES') then 1 else 0 end)) AS `Clothes_count`,sum((case when (`totals`.`item_category` = 'CARS') then 1 else 0 end)) AS `Cars_count`,sum((case when (`totals`.`item_category` = 'SNEAKERS') then 1 else 0 end)) AS `Sneakers_count`,sum((case when (`totals`.`item_category` = 'COLLECTABLES') then 1 else 0 end)) AS `Collectables_count`,sum((case when (`totals`.`item_category` = 'COINS') then 1 else 0 end)) AS `Coins_count` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `counter1`
--

/*!50001 DROP VIEW IF EXISTS `counter1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `counter1` AS select `totals`.`item_category` AS `item_category`,sum(`totals`.`Profit`) AS `Total`,sum((case when (`totals`.`item_category` = 'BOOKS') then 1 else 0 end)) AS `Book_Quantity`,sum((case when (`totals`.`item_category` = 'CLOTHES') then 1 else 0 end)) AS `Clothing_Quantity`,sum((case when (`totals`.`item_category` = 'CARS') then 1 else 0 end)) AS `Cars_Quantity`,sum((case when (`totals`.`item_category` = 'SNEAKERS') then 1 else 0 end)) AS `Sneakers_Quantity`,sum((case when (`totals`.`item_category` = 'COLLECTABLES') then 1 else 0 end)) AS `Collectables_Quantity`,sum((case when (`totals`.`item_category` = 'COINS') then 1 else 0 end)) AS `Coins_Quantity` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `forwarded_bal`
--

/*!50001 DROP VIEW IF EXISTS `forwarded_bal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `forwarded_bal` AS select `wallet_gain1`.`full_name` AS `full_name`,(`wallet_gain1`.`account_balance` + `total_with1`.`Total_Withdrawal`) AS `Remaining_Balance` from (`wallet_gain1` join `total_with1`) group by `wallet_gain1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `forwarded_bal1`
--

/*!50001 DROP VIEW IF EXISTS `forwarded_bal1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `forwarded_bal1` AS select `wallet_gain1`.`full_name` AS `full_name`,(`wallet_gain1`.`account_balance` + `total_with1`.`Total_Withdrawal`) AS `Remaining_Balance` from (`wallet_gain1` join `total_with1`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `personal_profit_average`
--

/*!50001 DROP VIEW IF EXISTS `personal_profit_average`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `personal_profit_average` AS select `total_profit_person1`.`full_name` AS `full_name`,(`total_profit_person1`.`Total_Profit_Per_Person` / `total_profit_person1`.`Sellers_Item_Quantity`) AS `Average` from `total_profit_person1` group by `total_profit_person1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prototype1`
--

/*!50001 DROP VIEW IF EXISTS `prototype1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prototype1` AS select `bi`.`full_name` AS `full_name`,`bi`.`item_name` AS `item_name`,(`bi`.`amount_bid` + `bi`.`shipping_price`) AS `total_price`,`bi`.`account_balance` AS `account_balance` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `remaining_bal`
--

/*!50001 DROP VIEW IF EXISTS `remaining_bal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `remaining_bal` AS select `total_cost3`.`full_name` AS `full_name`,(`prototype1`.`account_balance` - `total_cost3`.`Total`) AS `Remaining_Balance` from (`prototype1` join `total_cost3`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `remaining_balace_prototype`
--

/*!50001 DROP VIEW IF EXISTS `remaining_balace_prototype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `remaining_balace_prototype` AS select `total`.`full_name` AS `full_name`,(`total`.`account_balance` - `total`.`Cart`) AS `Remaining_Balance` from (select `total_balance`.`full_name` AS `full_name`,`total_balance`.`account_balance` AS `account_balance`,`total_transaction`.`Cart` AS `Cart` from (`total_balance` join `total_transaction`)) `total` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sellers_quantity`
--

/*!50001 DROP VIEW IF EXISTS `sellers_quantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sellers_quantity` AS select `totals`.`full_name` AS `full_name`,count(`totals`.`full_name`) AS `Sellers_Item_Quantity` from `totals` group by `totals`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_balance`
--

/*!50001 DROP VIEW IF EXISTS `total_balance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_balance` AS select `bi`.`full_name` AS `full_name`,`bi`.`account_balance` AS `account_balance` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_cost`
--

/*!50001 DROP VIEW IF EXISTS `total_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_cost` AS select `bi`.`full_name` AS `full_name`,`bi`.`item_name` AS `item_name`,(`bi`.`amount_bid` + `bi`.`shipping_price`) AS `total_price` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_cost1`
--

/*!50001 DROP VIEW IF EXISTS `total_cost1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_cost1` AS select `bi`.`full_name` AS `full_name`,`bi`.`item_name` AS `item_name`,(`bi`.`amount_bid` + `bi`.`shipping_price`) AS `total_price`,`bi`.`account_balance` AS `account_balance` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_cost2`
--

/*!50001 DROP VIEW IF EXISTS `total_cost2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_cost2` AS select `bi`.`full_name` AS `full_name`,`bi`.`account_balance` AS `account_balance`,(`bi`.`amount_bid` + `bi`.`shipping_price`) AS `total_price` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_cost3`
--

/*!50001 DROP VIEW IF EXISTS `total_cost3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_cost3` AS select `prototype1`.`full_name` AS `full_name`,sum(`prototype1`.`total_price`) AS `Total` from `prototype1` group by `prototype1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_profit_category`
--

/*!50001 DROP VIEW IF EXISTS `total_profit_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_profit_category` AS select `totals`.`item_category` AS `item_category`,sum(`totals`.`Profit`) AS `Total_Profit_Per_Category` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_profit_category1`
--

/*!50001 DROP VIEW IF EXISTS `total_profit_category1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_profit_category1` AS select `totals`.`item_category` AS `item_category`,sum(`totals`.`Profit`) AS `Total_Profit_Per_Category`,count(`totals`.`item_category`) AS `Total_Quantity` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_profit_person`
--

/*!50001 DROP VIEW IF EXISTS `total_profit_person`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_profit_person` AS select `totals`.`full_name` AS `full_name`,sum(`totals`.`Profit`) AS `Total_Profit_Per_Person` from `totals` group by `totals`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_profit_person1`
--

/*!50001 DROP VIEW IF EXISTS `total_profit_person1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_profit_person1` AS select `totals`.`full_name` AS `full_name`,sum(`totals`.`Profit`) AS `Total_Profit_Per_Person`,count(`totals`.`full_name`) AS `Sellers_Item_Quantity` from `totals` group by `totals`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_quantity_category`
--

/*!50001 DROP VIEW IF EXISTS `total_quantity_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_quantity_category` AS select `totals`.`item_category` AS `item_category`,count(`totals`.`item_category`) AS `Total_Quantity` from `totals` group by `totals`.`item_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_transaction`
--

/*!50001 DROP VIEW IF EXISTS `total_transaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_transaction` AS select `total_cost`.`full_name` AS `full_name`,sum(`total_cost`.`total_price`) AS `Cart`,count(`total_cost`.`item_name`) AS `total_items` from `total_cost` group by `total_cost`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_transaction1`
--

/*!50001 DROP VIEW IF EXISTS `total_transaction1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_transaction1` AS select `total_cost1`.`full_name` AS `full_name`,sum(`total_cost1`.`total_price`) AS `Cart`,count(`total_cost1`.`item_name`) AS `total_items`,`total_cost1`.`account_balance` AS `account_balance` from `total_cost1` group by `total_cost1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_with`
--

/*!50001 DROP VIEW IF EXISTS `total_with`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_with` AS select `wallet_gain1`.`full_name` AS `full_name`,sum(`wallet_gain1`.`withdrawal_amount`) AS `Total_Withdrawal` from `wallet_gain1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_with1`
--

/*!50001 DROP VIEW IF EXISTS `total_with1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_with1` AS select `wallet_gain1`.`full_name` AS `full_name`,sum(`wallet_gain1`.`withdrawal_amount`) AS `Total_Withdrawal` from `wallet_gain1` group by `wallet_gain1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_with3`
--

/*!50001 DROP VIEW IF EXISTS `total_with3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_with3` AS select `wallet_gain1`.`full_name` AS `full_name`,sum(`wallet_gain1`.`withdrawal_amount`) AS `Total_Withdrawal` from `wallet_gain1` group by `wallet_gain1`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_with4`
--

/*!50001 DROP VIEW IF EXISTS `total_with4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_with4` AS select `wallet_gain4`.`full_name` AS `full_name`,sum(`wallet_gain4`.`withdrawal_amount`) AS `Total_Withdrawal` from `wallet_gain4` group by `wallet_gain4`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalb_alance`
--

/*!50001 DROP VIEW IF EXISTS `totalb_alance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalb_alance` AS select `bi`.`full_name` AS `full_name`,`bi`.`account_balance` AS `account_balance` from (select `u`.`bidder_num` AS `bidder_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ai`.`amount_bid` AS `amount_bid`,`si`.`shipping_type` AS `shipping_type`,`si`.`shipping_price` AS `shipping_price`,`wi`.`account_balance` AS `account_balance` from ((((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `bidders` `b` on((`u`.`bidder_num` = `b`.`bbidder_id`))) left join `auctions` `a` on((`a`.`access_bidder_id` = `b`.`bbidder_id`))) left join `items` `i` on((`a`.`item_id` = `i`.`iitem_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) left join `shipping` `s` on((`s`.`bidder_id` = `a`.`access_bidder_id`))) left join `shipping_info` `si` on((`si`.`sishipping_id` = `s`.`shipping_id`))) where ((`ai`.`auction_status` = 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `bi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totals`
--

/*!50001 DROP VIEW IF EXISTS `totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totals` AS select `i1`.`full_name` AS `full_name`,`i1`.`item_category` AS `item_category`,(`i1`.`amount_bid` - `i1`.`item_base_price`) AS `Profit` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid` from ((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `i1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wallet_gain`
--

/*!50001 DROP VIEW IF EXISTS `wallet_gain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wallet_gain` AS select `si`.`full_name` AS `full_name`,`si`.`amount_bid` AS `withdrawal_amount` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_quality` AS `item_quality`,`ai`.`aiauction_id` AS `aiauction_id`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid`,`i`.`iitem_id` AS `iitem_id` from ((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `si` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wallet_gain1`
--

/*!50001 DROP VIEW IF EXISTS `wallet_gain1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wallet_gain1` AS select `si`.`full_name` AS `full_name`,`si`.`amount_bid` AS `withdrawal_amount`,`si`.`account_balance` AS `account_balance` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_quality` AS `item_quality`,`ai`.`aiauction_id` AS `aiauction_id`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid`,`i`.`iitem_id` AS `iitem_id`,`wi`.`account_balance` AS `account_balance` from ((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `si` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wallet_gain2`
--

/*!50001 DROP VIEW IF EXISTS `wallet_gain2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wallet_gain2` AS select `si`.`full_name` AS `full_name`,(`si`.`amount_bid` + `si`.`account_balance`) AS `Total_Withdrawal` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_quality` AS `item_quality`,`ai`.`aiauction_id` AS `aiauction_id`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid`,`i`.`iitem_id` AS `iitem_id`,`wi`.`account_balance` AS `account_balance` from ((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `si` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wallet_gain3`
--

/*!50001 DROP VIEW IF EXISTS `wallet_gain3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wallet_gain3` AS select `si`.`full_name` AS `full_name`,(sum(`si`.`amount_bid`) + `si`.`account_balance`) AS `Total_Withdrawal` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_quality` AS `item_quality`,`ai`.`aiauction_id` AS `aiauction_id`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid`,`i`.`iitem_id` AS `iitem_id`,`wi`.`account_balance` AS `account_balance` from ((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null))) `si` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wallet_gain4`
--

/*!50001 DROP VIEW IF EXISTS `wallet_gain4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wallet_gain4` AS select `si`.`full_name` AS `full_name`,`si`.`amount_bid` AS `withdrawal_amount`,`si`.`account_balance` AS `account_balance` from (select `u`.`umember_id` AS `umember_id`,`u`.`seller_num` AS `seller_num`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `full_name`,`ii`.`item_name` AS `item_name`,`ii`.`item_category` AS `item_category`,`ii`.`item_quality` AS `item_quality`,`ai`.`aiauction_id` AS `aiauction_id`,`ii`.`item_base_price` AS `item_base_price`,`ai`.`amount_bid` AS `amount_bid`,`i`.`iitem_id` AS `iitem_id`,`wi`.`account_balance` AS `account_balance` from ((((((((`users` `u` left join `personal_information` `p` on((`u`.`umember_id` = `p`.`pimember_id`))) left join `wallet` `w` on((`u`.`umember_id` = `w`.`access_user_id`))) left join `wallet_information` `wi` on((`wi`.`wiwallet_id` = `w`.`wallet_id`))) left join `seller` `s` on((`u`.`seller_num` = `s`.`sseller_id`))) left join `items` `i` on((`s`.`sseller_id` = `i`.`access_seller_id`))) left join `item_info` `ii` on((`i`.`iitem_id` = `ii`.`iiitem_id`))) left join `auctions` `a` on((`i`.`iitem_id` = `a`.`item_id`))) left join `auctions_info` `ai` on((`a`.`aauction_id` = `ai`.`aiauction_id`))) where ((`u`.`seller_num` > 0) and (`ii`.`item_name` is not null) and (`ai`.`aiauction_id` is not null) and (`ai`.`auction_status` = 0))) `si` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13 20:17:07
