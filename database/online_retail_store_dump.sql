-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: online_retail_store
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account_data`
--

DROP TABLE IF EXISTS `account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_data` (
  `Customer_ID` mediumint NOT NULL,
  `Wishlist` mediumint DEFAULT NULL,
  `Coupons` mediumint DEFAULT NULL,
  `History` mediumint DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  CONSTRAINT `account_data_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `account_data_chk_1` CHECK ((`Wishlist` <= 150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_data`
--

LOCK TABLES `account_data` WRITE;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
INSERT INTO `account_data` VALUES (500,78,6,4),(501,79,10,10),(502,41,3,13),(503,79,3,4),(504,85,4,18),(505,18,6,16),(506,27,8,27),(507,28,1,0),(508,87,4,5),(509,25,3,0),(510,61,6,21),(511,74,6,10),(512,46,9,25),(513,92,3,28),(514,81,7,19),(515,21,4,10),(516,73,1,23),(517,26,9,21),(518,67,0,13),(519,24,0,22),(520,78,5,2),(521,33,4,24),(522,61,5,9),(523,100,4,8),(524,93,9,17),(525,14,2,5),(526,96,4,27),(527,7,9,5),(528,61,9,24),(529,56,5,30),(530,36,7,2),(531,10,1,19),(532,45,9,27),(533,95,8,11),(534,2,1,22),(535,100,7,5),(536,91,8,4),(537,76,1,7),(538,18,1,4),(539,62,6,21),(540,88,10,10),(541,34,1,24),(542,22,3,10),(543,12,3,29),(544,52,9,14),(545,21,7,20),(546,22,1,8),(547,98,0,16),(548,35,5,23),(549,1,2,27),(550,91,1,7),(551,88,7,26),(552,40,3,4),(553,9,6,17),(554,99,8,16),(555,97,3,11),(556,85,1,27),(557,33,9,28),(558,70,4,8),(559,1,7,26),(560,92,8,25),(561,97,1,1),(562,57,3,5),(563,32,5,14),(564,62,1,9),(565,47,2,18),(566,83,1,5),(567,97,5,27),(568,43,1,28),(569,83,6,28),(570,55,8,27),(571,25,10,9),(572,65,4,18),(573,48,10,27),(574,98,3,22),(575,25,8,10),(576,1,4,13),(577,55,9,21),(578,79,2,28),(579,96,3,20),(580,59,3,19),(581,31,8,23),(582,73,4,8),(583,5,3,21),(584,22,8,17),(585,48,1,13),(586,9,5,8),(587,58,0,14),(588,98,2,18),(589,34,8,6),(590,11,0,4),(591,86,6,28),(592,43,4,29),(593,88,2,10),(594,95,2,7),(595,30,2,8),(596,72,2,28),(597,50,6,6),(598,75,6,25),(599,28,10,12),(600,52,2,18),(601,77,1,26),(602,90,7,6),(603,80,1,17),(604,90,3,0),(605,17,9,2),(606,40,6,7),(607,30,6,25),(608,73,3,11),(609,46,5,28),(610,61,5,17),(611,9,0,12),(612,46,6,4),(613,76,2,15),(614,5,10,13),(615,96,5,23),(616,90,7,10),(617,71,1,2),(618,29,3,0),(619,94,8,2),(620,66,3,9),(621,53,10,29),(622,41,6,19),(623,23,4,21),(624,52,9,9),(625,77,1,10),(626,44,5,14),(627,72,9,13),(628,0,8,8),(629,37,1,29),(630,67,7,4),(631,55,7,2),(632,71,9,20),(633,41,9,17),(634,73,3,2),(635,36,1,8),(636,17,6,3),(637,39,4,21),(638,32,5,14),(639,21,3,13),(640,21,3,4),(641,86,10,8),(642,60,1,5),(643,74,3,17),(644,25,7,4),(645,50,7,11),(646,64,9,19),(647,23,3,27),(648,3,7,23),(649,75,7,19);
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_ID` mediumint NOT NULL,
  `Admin_name` varchar(255) NOT NULL,
  `Admin_pass` varchar(255) NOT NULL,
  `Admin_mobile` varchar(100) NOT NULL,
  `Admin_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (100,'Tyler Sanford','RVZ37SXP4NF','9621465462','tylersanford7375@yahoo.com'),(101,'Serena Baldwin','YUJ63TUS6NK','4044424378','serenabaldwin2233@outlook.net'),(102,'Peter Gregory','EBN45XDL6TH','4561725635','petergregory3296@aol.com'),(103,'Lani Molina','TGN35MJR4PD','7613623487','lanimolina@outlook.com'),(104,'Madison Fleming','POO72QEF8MJ','8547823264','madisonfleming5168@protonmail.org'),(105,'Kyle Burnett','DPH85NZL2PK','2487710281','kyleburnett3214@hotmail.ca'),(106,'Nash Delacruz','CWB21SWB2HV','0875007335','nashdelacruz@aol.edu'),(107,'Ramona Baker','NWJ26ULK6JL','0954937872','ramonabaker@aol.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_ID` mediumint NOT NULL,
  `Customer_ID` mediumint NOT NULL,
  `Total_cost` mediumint NOT NULL,
  `Deal_ID` mediumint DEFAULT NULL,
  `No_of_items` mediumint NOT NULL,
  PRIMARY KEY (`Cart_ID`),
  KEY `Deal_ID` (`Deal_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`Deal_ID`) REFERENCES `offer` (`Deal_ID`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `cart_chk_1` CHECK ((`No_of_items` <= 195))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (675,597,5000,492,10),(676,620,4833,480,22),(677,510,7777,483,15),(678,611,7394,451,18),(679,527,9443,451,23),(680,533,1817,478,3),(681,598,1488,455,24),(682,595,9379,479,15),(683,617,9878,493,18),(684,531,4915,461,5),(685,510,355,465,4),(686,583,1748,473,22),(687,560,7848,486,17),(688,567,7617,484,23),(689,560,2709,488,13),(690,565,8688,486,9),(691,622,430,477,11),(692,599,1056,469,0),(693,610,4039,491,21),(694,554,8071,486,2),(695,507,8184,492,23),(696,500,529,485,2),(697,607,3158,454,23),(698,503,7219,496,8),(699,545,9808,482,12),(700,611,4171,464,16),(701,525,9552,489,11),(702,605,3297,488,7),(703,565,4283,450,2),(704,599,9453,498,6),(705,599,567,475,16),(706,534,6944,476,18),(707,621,2066,496,12),(708,586,6771,478,20),(709,535,2678,455,3),(710,580,8913,454,1),(711,616,3317,486,10),(712,591,1980,471,19),(713,516,7344,497,2),(714,507,5704,480,19),(715,556,8101,498,22),(716,603,6598,461,8),(717,529,3389,457,22),(718,505,8030,493,22),(719,536,6261,452,23),(720,590,3663,483,20),(721,603,6084,450,18),(722,549,9892,459,12),(723,584,4518,482,14),(724,593,9843,486,18),(725,607,405,490,1),(726,617,7173,494,17),(727,621,5569,498,16),(728,587,4764,451,0),(729,538,8194,493,0),(730,584,1667,461,25),(731,553,8078,460,6),(732,536,7086,459,21),(733,528,1771,451,21),(734,516,8942,464,9),(735,596,3518,460,3),(736,579,8695,486,18),(737,598,5691,471,9),(738,566,2310,460,1),(739,603,2455,461,15),(740,584,9226,484,21),(741,537,599,494,22),(742,581,4948,493,25),(743,562,7202,483,3),(744,619,4295,461,15),(745,515,3794,475,25),(746,585,7588,479,25),(747,563,7379,499,3),(748,572,3376,483,21),(749,604,3209,456,20),(750,573,5578,495,16),(751,534,2680,465,20),(752,570,6453,464,18),(753,562,3193,458,1),(754,597,989,492,21),(755,513,5289,487,4),(756,524,2772,484,2),(757,513,6598,487,7),(758,519,922,452,15),(759,592,7227,461,20),(760,505,8040,454,5),(761,502,6330,463,13),(762,606,522,458,3),(763,616,3654,451,20),(764,568,8472,483,21),(765,601,9069,491,4),(766,583,6777,474,6),(767,526,2704,483,14),(768,565,9194,461,21),(769,557,4987,482,20),(770,551,9070,463,18),(771,575,5612,491,23),(772,583,9920,455,5),(773,606,4477,456,22),(774,605,7756,462,21),(775,621,9180,486,11),(776,593,5372,455,15),(777,537,8097,470,18),(778,567,8066,471,3),(779,595,6458,457,1),(780,616,8730,452,9),(781,547,8789,474,20),(782,581,7436,472,19),(783,514,5228,498,2),(784,514,5411,492,23),(785,523,3709,489,2),(786,564,8852,489,1),(787,514,3738,479,17),(788,563,807,491,0),(789,619,7513,487,21),(790,506,3931,495,10),(791,592,6997,477,18),(792,598,6471,456,15),(793,539,4684,473,7),(794,584,8508,495,14),(795,523,8034,458,23),(796,563,6207,497,15),(797,542,9354,460,18),(798,572,6666,496,5),(799,566,8110,481,18);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Category_ID` mediumint NOT NULL,
  `Category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (400,'Things'),(401,'Flowers'),(402,'Clothes'),(403,'Instruments'),(404,'Stationary & Tools'),(405,'Skin Care'),(406,'Facial Care'),(407,'Candy'),(408,'Munchies'),(409,'Hygiene & Disposables'),(410,'Fruits & Drinks');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` mediumint NOT NULL,
  `Cust_name` varchar(255) NOT NULL,
  `Cust_pass` varchar(255) NOT NULL,
  `Cust_mobile` varchar(100) NOT NULL,
  `Cust_email` varchar(255) DEFAULT NULL,
  `Cust_dob` varchar(255) NOT NULL,
  `Cust_street` varchar(255) DEFAULT NULL,
  `Cust_city` varchar(255) DEFAULT NULL,
  `Cust_country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (500,'Kay Rasmussen','BPL33LZM1UU','7146181873','et@yahoo.com','09/20/77',NULL,'Silchar','India'),(501,'Shannon Parrish','PQC14ION6LG','9138272061','posuere.vulputate@google.ca','01/12/94',NULL,'Delhi','India'),(502,'Nathan Owen','WXB94MCM2PJ','3648986717','ipsum.non.arcu@hotmail.edu','06/11/98',NULL,'Pondicherry','India'),(503,'Macon Montgomery','JVU03DOE4IH','4422323747','magna.a.tortor@protonmail.org','06/18/64',NULL,'Bokaro Steel City','India'),(504,'Eugenia Kirby','OBC95TFU0WA','4753734158','facilisis@yahoo.com','07/21/74',NULL,'Imphal','India'),(505,'Kelly Herrera','SZA44VTI5UM','2433533559','turpis@google.com','09/12/86',NULL,'Dibrugarh','India'),(506,'Cullen Taylor','TOC26TTM4HE','6325501373','et.magnis.dis@yahoo.net','03/26/03',NULL,'Itanagar','India'),(507,'Germane Adkins','KHF47TNV3ML','3344553781','sit.amet.lorem@outlook.org','01/04/45',NULL,'Panipat','India'),(508,'Noelani Daniel','CEH43NAJ3IH','2343614751','porta.elit@protonmail.com','06/25/34',NULL,'Unnao','India'),(509,'Ayanna Salas','XRH70YJC4OC','6766573558','at.risus@outlook.org','04/17/91',NULL,'Anantapur','India'),(510,'Zephr Fitzgerald','ZIQ09TEA8TB','7099647468','sollicitudin.a@aol.edu','07/20/49',NULL,'Ahmedabad','India'),(511,'Thane Huff','ISM86CWL1BR','5901845015','diam.eu@protonmail.edu','04/12/54',NULL,'Dhule','India'),(512,'Sawyer Bruce','VBT17DJB3NX','7175734670','et@yahoo.ca','12/04/76',NULL,'Bilaspur','India'),(513,'Brielle Battle','TML31FFR1CM','2731789375','dignissim.maecenas@icloud.org','05/11/78',NULL,'Shimla','India'),(514,'Austin Browning','GRQ43JRW0SH','6622301448','in@protonmail.com','06/30/40',NULL,'Kohima','India'),(515,'Hoyt Mckay','KBY45KPX3OS','4231213396','phasellus.at.augue@outlook.ca','04/21/76',NULL,'Daman','India'),(516,'Yetta Cherry','AGX94GVU6WQ','8675201178','magna.cras.convallis@hotmail.com','08/25/90',NULL,'Bhubaneswar','India'),(517,'Murphy Blackwell','YML43VSW3GW','7773878448','vehicula.risus.nulla@yahoo.com','03/17/69',NULL,'Ganganagar','India'),(518,'Adele Winters','GWG57ZQQ1TS','4252966217','posuere.vulputate@aol.edu','10/15/82',NULL,'Shimla','India'),(519,'Joseph Franks','VEM41LMY0DX','6213932751','odio.semper.cursus@hotmail.couk','09/26/51',NULL,'Nizamabad','India'),(520,'Cynthia Holden','BIG92GSH2AY','6124466529','donec@protonmail.net','08/02/76',NULL,'Nagaon','India'),(521,'Rafael Castaneda','ARR01TDL3KQ','3563153703','ipsum.nunc.id@yahoo.edu','05/28/41',NULL,'Kohima','India'),(522,'Curran Campbell','KJK13EVR7VI','2468512211','sapien.gravida@google.com','05/22/98',NULL,'Gangtok','India'),(523,'Candice Osborn','RZM28FXQ3XQ','7821726306','at.velit@icloud.com','06/24/96',NULL,'Panjim','India'),(524,'Abel Martinez','LMN74PTW3ZG','6245188056','tellus.id.nunc@icloud.couk','06/12/32',NULL,'Imphal','India'),(525,'Elizabeth Washington','UKS77TTS5WX','2396964173','facilisis.vitae@outlook.edu','08/24/99',NULL,'Ulhasnagar','India'),(526,'Noelani Koch','MLW91VYU1KZ','9592737567','hymenaeos.mauris@google.ca','09/29/74',NULL,'Unnao','India'),(527,'Thomas Cantrell','GLR37QWQ7YC','4723841992','risus@outlook.org','10/29/38',NULL,'Silchar','India'),(528,'Troy Berg','KQT16RFF8JD','5315842976','erat@protonmail.org','02/11/70',NULL,'Pondicherry','India'),(529,'Dorian Fulton','RFQ31ESI8BS','4961455392','ultrices.duis@outlook.net','07/04/34',NULL,'Port Blair','India'),(530,'Axel Payne','CHX82YOR8YP','7296283652','ante.vivamus@icloud.couk','04/30/61',NULL,'Trivandrum','India'),(531,'Karyn Cobb','EHS30GNG1HM','3168704872','est@protonmail.ca','09/27/69',NULL,'Daman','India'),(532,'Ira Oneil','PYE26WRD6OL','6551067572','neque.sed.eget@google.edu','11/06/75',NULL,'Patna','India'),(533,'Keefe Spencer','TVP16HEM3KU','5316893351','parturient.montes.nascetur@icloud.org','05/10/88',NULL,'Hubli','India'),(534,'Latifah Guerrero','VWU64IOQ0YS','7926116105','mauris.morbi.non@hotmail.ca','07/18/57',NULL,'Port Blair','India'),(535,'Winifred Mitchell','WPD16HFS3RX','4429112353','cursus.a@hotmail.org','10/03/37',NULL,'Shillong','India'),(536,'Petra Stafford','IXM81NOS6KK','5602145876','justo.eu@hotmail.couk','07/17/56',NULL,'Nizamabad','India'),(537,'Debra York','CBI13WKM6SB','6655216347','dui@google.org','10/10/82',NULL,'Korba','India'),(538,'Jessamine Graves','ISC24QDC4ME','4837485768','orci.ut.semper@icloud.edu','05/14/48',NULL,'Port Blair','India'),(539,'Norman Howell','KJB20UBV3GE','6840683603','tortor.nunc@hotmail.edu','12/25/37',NULL,'Aizwal','India'),(540,'Macon Cervantes','WJY27SCO6FR','8441204664','duis.sit@aol.org','01/12/52',NULL,'Silvassa','India'),(541,'Isaac Branch','MYG83SDX4RB','5424633557','dapibus@outlook.edu','05/22/32',NULL,'Kavaratti','India'),(542,'Zelenia Pena','FPL85YNQ1BV','4452115884','velit.dui@yahoo.org','12/03/36',NULL,'Thalassery','India'),(543,'Flavia Maxwell','MHL52EMY1HG','6964432198','luctus@icloud.edu','10/05/89',NULL,'Daman','India'),(544,'Alan Mosley','LXI17JPO8HC','3751580748','molestie.pharetra@yahoo.couk','07/14/96',NULL,'Hapur','India'),(545,'Maxine Maldonado','XQR51STF3SV','4551608867','nec.diam@hotmail.ca','10/09/66',NULL,'Gangtok','India'),(546,'Liberty Mccall','OBP74DEY2KY','8682208066','ornare.egestas.ligula@aol.com','02/12/51',NULL,'Aizwal','India'),(547,'Kareem Chang','KOF21VQQ8XE','8073167700','blandit.viverra@protonmail.net','04/14/68',NULL,'Moradabad','India'),(548,'Zeus Mayer','QEJ87OFQ0BE','9553858736','feugiat.nec@aol.ca','09/09/42',NULL,'Srinagar','India'),(549,'Malachi Davidson','PTM04JID4LR','7617266284','at.auctor@yahoo.com','05/27/75',NULL,'Sikar','India'),(550,'Darryl Molina','HXQ26JCQ3FE','1357291057','urna.nunc.quis@aol.org','07/31/67',NULL,'Silvassa','India'),(551,'Barclay Crawford','SHJ52JSJ1CV','1706187928','tristique.aliquet.phasellus@google.net','06/28/46',NULL,'Pondicherry','India'),(552,'Danielle Guy','QOX85RLT4DF','4813111652','morbi.accumsan.laoreet@protonmail.edu','06/25/72',NULL,'Aizwal','India'),(553,'Sean Bridges','PCX55IRW8FQ','5384228553','non@aol.edu','11/08/99',NULL,'Godhra','India'),(554,'Mara James','UMB41ZEJ6VI','6763241542','risus.quis.diam@protonmail.edu','03/02/36',NULL,'Gaya','India'),(555,'Maxine Jackson','OVB25TCS2HM','1746176173','rutrum.non.hendrerit@google.org','01/07/75',NULL,'Sambalpur','India'),(556,'David Vega','NPJ69KCT6VI','8103317638','a@yahoo.ca','01/26/85',NULL,'Farrukhabad-cum-Fatehgarh','India'),(557,'Oliver Hodge','NMB44AXE4ED','0692955967','mi.lacinia@icloud.couk','07/09/45',NULL,'Guwahati','India'),(558,'Dolan Anderson','HZP17OOU8LB','7653552671','rutrum.eu@hotmail.com','11/27/83',NULL,'Firozabad','India'),(559,'Idona Weeks','IDR83TAJ1OK','3875271665','nunc.ac.mattis@protonmail.org','03/29/39',NULL,'Silchar','India'),(560,'Juliet Duke','SJR85WRG5CD','3822102213','auctor@yahoo.couk','08/12/95',NULL,'Dehradun','India'),(561,'Dylan Brennan','FMP17YTP1PJ','0308247172','ligula.aliquam.erat@icloud.edu','09/11/43',NULL,'Bhind','India'),(562,'Logan Wood','HYY53LNU2QD','2535801038','dui@google.org','06/11/79',NULL,'Bijapur','India'),(563,'Derek Castillo','DTB11ROY1LO','0712422458','libero.lacus@icloud.edu','04/23/53',NULL,'Ulhasnagar','India'),(564,'Denton Dalton','QIK39LUW6QV','2412449655','nunc@outlook.net','07/01/76',NULL,'Chandigarh','India'),(565,'Levi Zamora','EQK70HIE7YU','3415463108','a.scelerisque.sed@google.ca','09/24/80',NULL,'Delhi','India'),(566,'Cade Fox','SFV37WVE5MS','9253658282','mauris.erat@outlook.com','02/28/91',NULL,'Pali','India'),(567,'Joshua Wiley','DJQ69KXJ4CV','1566519366','in@outlook.edu','07/01/82',NULL,'Imphal','India'),(568,'Oren Walton','LXE75MCZ0AV','9837857141','nibh.enim.gravida@icloud.net','11/04/47',NULL,'Aizwal','India'),(569,'Chaney Carrillo','MPT57GEG2SC','2730536738','nonummy.ultricies@icloud.net','10/13/43',NULL,'Davangere','India'),(570,'Gabriel Lloyd','OOL87MWQ9BS','4640977842','dui.augue@aol.ca','01/30/74',NULL,'Gurgaon','India'),(571,'Nigel Mcclain','WJD32AUT4TH','2395203821','augue.ut.lacus@aol.ca','05/28/46',NULL,'Dibrugarh','India'),(572,'Hakeem Warren','GUF67LWP2EY','1186470563','sed.est@yahoo.couk','02/23/48',NULL,'Aizwal','India'),(573,'Ignatius Matthews','NYG52GJT8BM','6203412616','nec.mauris@icloud.couk','08/08/45',NULL,'Pudukkottai','India'),(574,'Otto Stout','BGE98QRO0CD','7142786813','dolor.quam.elementum@aol.couk','08/05/55',NULL,'Mango','India'),(575,'Ivan Howe','CZS13TWC3IB','7138318362','et@icloud.couk','12/20/47',NULL,'Chennai','India'),(576,'Ariel Hodges','DLC80BIO6YX','4268312102','dolor.dolor@protonmail.org','08/31/89',NULL,'Kohima','India'),(577,'Brittany Parks','HFP79BWY3MU','9784731176','blandit@google.net','01/16/40',NULL,'Daman','India'),(578,'Jane Ross','BOQ28CYO8BJ','5582884198','non.luctus@google.couk','03/10/44',NULL,'Port Blair','India'),(579,'Jason Fernandez','DDI37UNB3BU','5437037137','ac.libero.nec@protonmail.edu','08/11/00',NULL,'Kavaratti','India'),(580,'Conan Talley','IUE88BPG4VU','5110608205','imperdiet.nec.leo@outlook.org','06/03/48',NULL,'Valparai','India'),(581,'Brady Velazquez','GVC72CBD8YE','5703165757','eget@google.net','03/12/57',NULL,'Gandhidham','India'),(582,'Kermit Wyatt','BKX44PHN7XL','7237140235','nulla@icloud.com','05/25/61',NULL,'Bhilwara','India'),(583,'Germane Rios','VCE84OVB2SO','2240551454','aliquam.erat@outlook.net','12/20/79',NULL,'Rewa','India'),(584,'Arsenio Fisher','WHW38DKY9BQ','2822442742','quis.turpis.vitae@hotmail.org','02/27/63',NULL,'Delhi','India'),(585,'Idona Bowen','QLT28DXD2UT','5287168643','inceptos@protonmail.net','10/21/62',NULL,'Aizwal','India'),(586,'Karly Nielsen','VMK24CTJ9JY','8024694107','proin.non.massa@protonmail.org','01/16/57',NULL,'Abohar','India'),(587,'Bruce Kramer','SJT52EVO0TI','8240087553','velit@outlook.net','08/28/66',NULL,'Mandya','India'),(588,'Cassady Jones','WVR27NUL5JK','3722405224','per.conubia@hotmail.org','06/30/73',NULL,'Kohima','India'),(589,'Quail Lewis','UID24TEB8RA','8125055333','vitae@google.edu','10/03/71',NULL,'Mango','India'),(590,'Oren Shepard','YJJ47UCA5PW','0061185444','pellentesque.sed@google.net','05/31/81',NULL,'Agartala','India'),(591,'Lucas Dillon','IKB11OGD5MG','5961175343','est@aol.ca','04/24/83',NULL,'Dehradun','India'),(592,'Iris Moran','KWH87KGH8VF','1676852424','convallis@google.net','10/13/44',NULL,'Veraval','India'),(593,'Dominique Mckenzie','NXF73NGI7PY','5418025842','imperdiet.ornare@protonmail.com','07/01/87',NULL,'Kavaratti','India'),(594,'Derek Castro','PHE43BYL8DG','1061811694','class.aptent.taciti@protonmail.net','03/05/54',NULL,'Haridwar','India'),(595,'Marah Moody','KUQ61LTA1CJ','3996477349','proin.nisl.sem@hotmail.edu','07/29/48',NULL,'Silvassa','India'),(596,'Russell Burnett','EPR94CNM4FI','4351288847','nunc.id.enim@outlook.org','01/23/92',NULL,'Kanchipuram','India'),(597,'Kenneth Franks','QEC15UQI8IU','2264262043','ut@google.ca','03/15/48',NULL,'Kavaratti','India'),(598,'Carissa Zamora','HPI56WDO5UC','0091259459','neque.nullam.ut@protonmail.edu','06/17/42',NULL,'Itanagar','India'),(599,'Caleb Winters','SIE32OTW2IR','8935455342','ac.mattis@yahoo.com','11/09/85',NULL,'Bhind','India'),(600,'Marny Hoover','IOK33KMC5CA','2612317102','ultrices.iaculis@google.couk','09/17/83',NULL,'Haridwar','India'),(601,'Damon Robbins','LKF53LRM5KE','7712459678','massa@protonmail.com','04/22/55',NULL,'Chandigarh','India'),(602,'Hilary Barr','BPP85YCM7TG','3016489511','in.mi@outlook.edu','05/12/34',NULL,'Daska','India'),(603,'Lev Preston','YFV47RCL8KQ','2372270255','morbi.neque@outlook.com','05/10/74',NULL,'Jammu','India'),(604,'Heidi Ferguson','KDC47RHN3DU','1676747332','nisi.aenean@aol.org','12/19/54',NULL,'Itanagar','India'),(605,'Hammett Webb','HXK85HPF3XJ','9787826771','non.vestibulum@outlook.couk','07/13/45',NULL,'Kasur','India'),(606,'Thor Branch','FJW52XGM5UJ','7540224321','interdum@google.couk','07/10/68',NULL,'Orai','India'),(607,'Iola Morton','MOH74YCA3CB','2388548941','turpis.aliquam.adipiscing@aol.edu','09/18/49',NULL,'Shimla','India'),(608,'Aline Burgess','DMV37KJZ4OH','9954838725','porttitor.tellus@hotmail.ca','06/04/36',NULL,'Kavaratti','India'),(609,'Ian Fernandez','YUS66YYV7AF','8717159334','nonummy.ultricies@icloud.net','08/26/98',NULL,'Jalna','India'),(610,'Camilla Schultz','HIL73GVT4WI','8341618588','curabitur.vel.lectus@icloud.couk','07/30/98',NULL,'Tirupati','India'),(611,'Cherokee Leon','PNN53UJW7KF','7774239512','dui.lectus.rutrum@outlook.com','01/15/53',NULL,'Timkur','India'),(612,'Kyle Lamb','WCW57ULN7WG','5334253721','varius@icloud.ca','08/03/96',NULL,'Kavaratti','India'),(613,'Leroy Nixon','RFO96BWJ5WT','5496181421','morbi.tristique@outlook.net','04/08/94',NULL,'Anantapur','India'),(614,'Heidi Travis','LYS02YFT0DC','0163839242','ultrices@google.ca','01/26/93',NULL,'Panjim','India'),(615,'Scarlett Holland','HEJ23KMP2XT','7841573466','et.magna@yahoo.edu','09/26/86',NULL,'Nizamabad','India'),(616,'Ulla Short','TXR23TZV8OY','6258857068','montes@hotmail.couk','05/02/38',NULL,'Karnal','India'),(617,'Gillian Morrow','EJW46GEV7AS','5550039837','vel@google.org','06/28/79',NULL,'Chiniot','India'),(618,'Lucius Curry','PEH42WGG3NE','4194626248','mollis.duis@google.couk','10/08/89',NULL,'Nagaon','India'),(619,'Amanda Leon','DZM05YLP6CR','7606347256','turpis.aliquam@protonmail.edu','03/08/65',NULL,'Kavaratti','India'),(620,'Farrah Chaney','PVC62RPG4ZI','7126545492','eu.erat@outlook.net','10/22/00',NULL,'Delhi','India'),(621,'Mira Collier','ZME04VHD4TY','9764645090','lectus@aol.net','06/03/94',NULL,'Daman','India'),(622,'Jana Cole','VHZ56SDU1XC','5178960060','ipsum@yahoo.org','10/17/53',NULL,'Damoh','India'),(623,'Josiah Ryan','HTT93GVN4HW','1218033162','amet@hotmail.com','04/16/64',NULL,'Tirunelveli','India'),(624,'Dominique Mcintyre','HLA68JSV8HW','2711296774','sed.facilisis@protonmail.ca','11/13/79',NULL,'Daman','India'),(625,'Celeste Lee','KOB66YKO7IY','3384765560','justo.sit@hotmail.com','06/29/48',NULL,'Tiruvottiyur','India'),(626,'Galena Stevens','YVS16UVG4IL','7485239827','lorem.tristique@hotmail.org','08/25/81',NULL,'Kavaratti','India'),(627,'Patrick Christian','RVS65CQX2CO','2840952874','aenean.massa@icloud.ca','05/14/88',NULL,'Anand','India'),(628,'Anne Anderson','WTP25CNN4JV','5262584488','cursus.diam.at@yahoo.ca','12/23/32',NULL,'Port Blair','India'),(629,'Victor Tyson','LJS23CDM6PY','8121268268','commodo.ipsum.suspendisse@outlook.ca','09/13/01',NULL,'Cochin','India'),(630,'Kylie Ellison','BYN12SMJ8PB','1461217154','quis@aol.edu','10/27/60',NULL,'Kurnool','India'),(631,'Chadwick Chaney','TBH41ZSQ4KF','4501433232','nascetur.ridiculus@yahoo.edu','09/11/50',NULL,'Dibrugarh','India'),(632,'Regina Nunez','BOG12EII9QQ','1323753193','porttitor@icloud.ca','12/13/95',NULL,'Panjim','India'),(633,'Shaine Dillon','EMH71NVU5JP','4477526923','a.felis@outlook.net','12/13/57',NULL,'Shillong','India'),(634,'David Hicks','OQY31TYA2BU','5291523139','ac.arcu.nunc@aol.org','12/20/95',NULL,'Chandigarh','India'),(635,'Carolyn Grant','INV35JOH7CZ','0812238371','luctus.felis@hotmail.edu','10/05/76',NULL,'Kavaratti','India'),(636,'Rhea Valencia','YFK63RED3KA','0107964216','etiam.bibendum@google.edu','10/31/80',NULL,'Hazaribag','India'),(637,'Brock Phillips','BQM18CWN1AK','0075582478','nonummy.fusce@google.couk','03/12/79',NULL,'Palakkad','India'),(638,'May Franklin','LBI48HAP0OA','8238349715','vestibulum.mauris.magna@hotmail.net','10/31/96',NULL,'Chandigarh','India'),(639,'Cain Small','YKL80PLU4TM','5372634799','neque.in@aol.net','03/15/96',NULL,'Hapur','India'),(640,'Quinn Griffith','SEX88OWF9MF','8136836404','massa.quisque.porttitor@aol.ca','11/26/39',NULL,'Bhimavaram','India'),(641,'Colby Roberson','YYQ28YCU5IL','7812545884','vitae.sodales@hotmail.edu','06/16/75',NULL,'Secunderabad','India'),(642,'Amethyst Carrillo','UAV52CRB2YC','0017461613','eget@yahoo.com','10/02/71',NULL,'Palakkad','India'),(643,'Nyssa Holcomb','DGO35FWL5UU','4143411252','magna.cras@protonmail.edu','01/23/38',NULL,'Shimla','India'),(644,'Otto Morgan','XRZ60YQJ1RM','7496584687','ut.aliquam@protonmail.org','03/30/47',NULL,'Shimla','India'),(645,'Paki Summers','TSY63GZL2XI','7171653206','lorem.semper@hotmail.com','09/22/35',NULL,'Kavaratti','India'),(646,'Gregory Pickett','WKR33WCL4NB','0112335354','curae@aol.couk','07/27/87',NULL,'Kohima','India'),(647,'Trevor Oneil','JIX61VUI3FO','0633685257','tortor.nibh@icloud.org','10/27/73',NULL,'Raurkela Civil Township','India'),(648,'Tamara Duran','FOV15QFE8NM','2218367566','non.hendrerit@hotmail.net','04/20/65',NULL,'Hisar','India'),(649,'Amelia Baxter','ZSU51DMO2GQ','6823679683','cursus.vestibulum.mauris@aol.couk','05/29/94',NULL,'Dehradun','India');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_partner`
--

DROP TABLE IF EXISTS `delivery_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_partner` (
  `Partner_ID` mediumint NOT NULL,
  `Partner_name` varchar(255) NOT NULL,
  `Partner_mobile` varchar(100) NOT NULL,
  `Partner_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Partner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_partner`
--

LOCK TABLES `delivery_partner` WRITE;
/*!40000 ALTER TABLE `delivery_partner` DISABLE KEYS */;
INSERT INTO `delivery_partner` VALUES (200,'Demetria Berry','9818737254','demetriaberry@aol.edu'),(201,'Rudyard Chan','5174837154','rudyardchan@protonmail.com'),(202,'Tatyana Perkins','1881643137','tatyanaperkins@yahoo.couk'),(203,'Connor Bullock','7150845442','connorbullock@icloud.com'),(204,'Garth Martinez','7648948251','garthmartinez@hotmail.com'),(205,'Risa Estrada','7245573870','risaestrada@outlook.com'),(206,'Richard Hayden','4122276510','richardhayden6799@hotmail.couk'),(207,'Holmes Roth','4768284529','holmesroth4822@protonmail.org'),(208,'Zena Harris','5668638432','zenaharris2629@hotmail.edu'),(209,'Elton Hawkins','7633102142','eltonhawkins5471@protonmail.edu'),(210,'Ila Walker','1238295823','ilawalker@hotmail.edu'),(211,'Joseph Lane','5236582677','josephlane8661@protonmail.edu'),(212,'Cleo Tucker','9873292572','cleotucker@protonmail.couk'),(213,'Oprah Cochran','5985516641','oprahcochran@aol.edu'),(214,'Quynn Mitchell','0977687467','quynnmitchell@protonmail.couk'),(215,'Gary Sheppard','4798811972','garysheppard@protonmail.couk'),(216,'Xaviera Guy','0564181673','xavieraguy@hotmail.net'),(217,'Venus Logan','4565348349','venuslogan@yahoo.edu'),(218,'Reece Farmer','2251795672','reecefarmer2482@google.net'),(219,'Luke Wilder','1875281510','lukewilder@outlook.couk'),(220,'Blaze Keller','8372402420','blazekeller4148@icloud.net'),(221,'Hanae Bender','9115577882','hanaebender@google.ca'),(222,'Autumn Valencia','5866692688','autumnvalencia3396@yahoo.ca'),(223,'Iliana Frye','0176177777','ilianafrye@outlook.com'),(224,'Montana Tate','2524639341','montanatate@yahoo.edu'),(225,'Emerson Ellison','1007748832','emersonellison@aol.com'),(226,'Yardley Rodriquez','4230412968','yardleyrodriquez@icloud.org'),(227,'Martena Morse','1137435250','martenamorse415@hotmail.ca'),(228,'Dale Kaufman','4197740635','dalekaufman@hotmail.ca'),(229,'Winifred Cardenas','2733630751','winifredcardenas3804@aol.couk'),(230,'Inez Barber','3858764518','inezbarber1702@google.com'),(231,'Addison Stokes','9532619172','addisonstokes@icloud.ca'),(232,'Nell Donaldson','1452323917','nelldonaldson1647@outlook.com'),(233,'Kylie Whitney','4663851053','kyliewhitney9638@google.couk'),(234,'Aidan May','4687783867','aidanmay@protonmail.net'),(235,'Barbara Buckner','8747966522','barbarabuckner@icloud.com'),(236,'Piper Benjamin','5637728455','piperbenjamin@icloud.couk'),(237,'Myles Adams','5287125738','mylesadams@icloud.org'),(238,'Steel Patton','6068786551','steelpatton2806@protonmail.net'),(239,'Mikayla Banks','6507083531','mikaylabanks4876@hotmail.org'),(240,'Dexter Buchanan','8514339685','dexterbuchanan@aol.com'),(241,'Emi Cline','6952332637','emicline@aol.net'),(242,'Wyoming Harding','8355698722','wyomingharding2483@outlook.com'),(243,'Dale Francis','3102575341','dalefrancis6973@icloud.net'),(244,'Reuben Sheppard','3824159174','reubensheppard6617@protonmail.com'),(245,'Chandler Wright','6631333182','chandlerwright334@google.net'),(246,'Wing Barber','3054235983','wingbarber180@icloud.com'),(247,'Oprah Perkins','4743727552','oprahperkins@protonmail.ca'),(248,'Hannah Ramirez','3715167933','hannahramirez@yahoo.com'),(249,'Madeson Chapman','9833278363','madesonchapman7585@protonmail.edu');
/*!40000 ALTER TABLE `delivery_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `Membership` text,
  `Customer_ID` mediumint NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES ('Normal',500),('Prime',501),('Prime',502),('Normal',503),('Elite',504),('Normal',505),('Normal',506),('Elite',507),('Normal',508),('Normal',509),('Normal',510),('Prime',511),('Normal',512),('Normal',513),('Prime',514),('Prime',515),('Prime',516),('Elite',517),('Prime',518),('Prime',519),('Prime',520),('Normal',521),('Elite',522),('Prime',523),('Prime',524),('Normal',525),('Prime',526),('Prime',527),('Normal',528),('Prime',529),('Prime',530),('Prime',531),('Normal',532),('Prime',533),('Normal',534),('Normal',535),('Elite',536),('Prime',537),('Prime',538),('Prime',539),('Normal',540),('Normal',541),('Elite',542),('Normal',543),('Prime',544),('Elite',545),('Normal',546),('Normal',547),('Elite',548),('Prime',549),('Prime',550),('Prime',551),('Prime',552),('Prime',553),('Prime',554),('Elite',555),('Normal',556),('Elite',557),('Prime',558),('Normal',559),('Prime',560),('Prime',561),('Normal',562),('Normal',563),('Prime',564),('Prime',565),('Prime',566),('Elite',567),('Normal',568),('Prime',569),('Prime',570),('Prime',571),('Normal',572),('Normal',573),('Prime',574),('Elite',575),('Normal',576),('Prime',577),('Normal',578),('Prime',579),('Prime',580),('Prime',581),('Prime',582),('Normal',583),('Prime',584),('Normal',585),('Elite',586),('Prime',587),('Normal',588),('Normal',589),('Normal',590),('Prime',591),('Normal',592),('Prime',593),('Normal',594),('Prime',595),('Prime',596),('Prime',597),('Prime',598),('Elite',599),('Normal',600),('Prime',601),('Normal',602),('Prime',603),('Elite',604),('Prime',605),('Prime',606),('Prime',607),('Prime',608),('Normal',609),('Prime',610),('Normal',611),('Prime',612),('Prime',613),('Prime',614),('Elitel',615),('Prime',616),('Normal',617),('Normal',618),('Normal',619),('Prime',620),('Prime',621),('Prime',622),('Elite',623),('Normal',624);
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `Deal_ID` mediumint NOT NULL,
  `Discount` mediumint DEFAULT NULL,
  `min_requirement` mediumint DEFAULT NULL,
  PRIMARY KEY (`Deal_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (450,121,313),(451,199,754),(452,206,887),(453,123,549),(454,421,796),(455,367,625),(456,397,593),(457,498,449),(458,112,360),(459,426,383),(460,419,701),(461,321,853),(462,389,839),(463,325,368),(464,332,876),(465,200,377),(466,181,649),(467,134,310),(468,469,335),(469,324,448),(470,347,796),(471,499,937),(472,260,918),(473,490,451),(474,134,521),(475,277,874),(476,101,885),(477,407,840),(478,117,622),(479,370,410),(480,126,597),(481,378,860),(482,428,677),(483,374,304),(484,359,452),(485,475,689),(486,208,373),(487,229,570),(488,312,622),(489,293,314),(490,310,482),(491,218,773),(492,225,4999),(493,475,3500),(494,177,680),(495,145,512),(496,444,660),(497,484,885),(498,151,996),(499,237,603);
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_`
--

DROP TABLE IF EXISTS `order_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_` (
  `Order_ID` mediumint NOT NULL,
  `Supplier_ID` mediumint NOT NULL,
  `Customer_ID` mediumint NOT NULL,
  `Payment_ID` mediumint NOT NULL,
  `Partner_ID` mediumint NOT NULL,
  `Order_cost` mediumint NOT NULL,
  `Policy` text NOT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `house_no` varchar(255) NOT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `Order_city` varchar(50) DEFAULT NULL,
  `Order_country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Payment_ID` (`Payment_ID`),
  KEY `Partner_ID` (`Partner_ID`),
  CONSTRAINT `order__ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`),
  CONSTRAINT `order__ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `order__ibfk_3` FOREIGN KEY (`Payment_ID`) REFERENCES `payment_portal` (`Payment_ID`),
  CONSTRAINT `order__ibfk_4` FOREIGN KEY (`Partner_ID`) REFERENCES `delivery_partner` (`Partner_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_`
--

LOCK TABLES `order_` WRITE;
/*!40000 ALTER TABLE `order_` DISABLE KEYS */;
INSERT INTO `order_` VALUES (1400,164,512,1360,221,1656,'7_Days_Return','437357','580','4686 Vivamus Ave','Meghalaya','India'),(1401,153,508,1362,227,7381,'7_Days_Return','452636','582','Ap #227-8183 Dignissim Street','Karnataka','India'),(1402,161,519,1363,217,4967,'7_Days_Return','301369','905','792-7959 Sed Av.','Meghalaya','India'),(1403,154,631,1263,213,8649,'7_Days_Return','224246','802','Ap #316-8084 Nunc St.','Pondicherry','India'),(1404,158,509,1360,235,3998,'7_Days_Return','431363','528','8808 Sollicitudin Rd.','Chandigarh','India'),(1405,161,602,1343,209,8124,'7_Days_Return','737363','402','5571 Aliquet St.','Mizoram','India'),(1406,157,590,1313,237,2960,'7_Days_Return','877116','144','504-8326 Aptent Street','Dadra and Nagar Haveli','India'),(1407,163,505,1329,206,9618,'7_Days_Return','550861','176','P.O. Box 614, 4108 Bibendum Street','Andaman and Nicobar Islands','India'),(1408,156,623,1351,234,7990,'7_Days_Return','734856','243','P.O. Box 644, 9584 Velit. Avenue','Tamil Nadu','India'),(1409,173,526,1320,201,5179,'7_Days_Return','131369','327','P.O. Box 850, 6380 Vivamus St.','Arunachal Pradesh','India'),(1410,153,617,1353,226,1623,'7_Days_Return','894136','202','Ap #393-7125 Blandit. St.','West Bengal','India'),(1411,157,614,1346,225,4270,'7_Days_Return','427646','903','363-7123 Lectus Street','Chandigarh','India'),(1412,168,555,1306,202,1710,'7_Days_Return','868949','458','841-7054 Consequat, Av.','Gujarat','India'),(1413,166,528,1362,216,9170,'7_Days_Return','868267','447','Ap #718-6656 Nunc Avenue','Jammu and Kashmir','India'),(1414,154,551,1340,224,8100,'7_Days_Return','129468','420','Ap #621-3958 In Avenue','Daman and Diu','India'),(1415,158,616,1340,245,3790,'7_Days_Return','354017','690','P.O. Box 692, 4888 Malesuada Road','Haryana','India'),(1416,167,585,1339,207,7857,'7_Days_Return','646074','455','2851 Tellus. St.','Andaman and Nicobar Islands','India'),(1417,174,592,1316,203,6783,'7_Days_Return','969344','777','Ap #821-890 Integer St.','Jammu and Kashmir','India'),(1418,174,642,1302,244,9405,'7_Days_Return','193334','234','Ap #963-7244 Dignissim Avenue','Delhi','India'),(1419,152,524,1362,219,2366,'7_Days_Return','326827','582','687-8634 Nam St.','Delhi','India'),(1420,166,640,1312,235,6549,'7_Days_Return','243447','782','Ap #375-6464 Neque. St.','Nagaland','India'),(1421,171,621,1344,247,7482,'7_Days_Return','501183','367','Ap #990-1755 Lacinia Avenue','Madhya Pradesh','India'),(1422,156,534,1261,228,4276,'7_Days_Return','534878','726','P.O. Box 162, 1408 Sollicitudin St.','Uttar Pradesh','India'),(1423,174,599,1308,220,3359,'7_Days_Return','158567','777','911-4647 Luctus Road','Tripura','India'),(1424,152,635,1359,225,1297,'7_Days_Return','785205','116','705-5212 Et, Av.','Daman and Diu','India'),(1425,170,517,1344,226,6723,'7_Days_Return','639371','878','8887 Proin Rd.','Nagaland','India'),(1426,167,564,1334,238,6004,'7_Days_Return','609010','543','P.O. Box 709, 1006 Suspendisse Av.','Kerala','India'),(1427,169,613,1349,237,3612,'7_Days_Return','211588','208','Ap #907-4701 In St.','West Bengal','India'),(1428,164,596,1333,231,1058,'7_Days_Return','995405','760','P.O. Box 548, 9037 Phasellus Avenue','Nagaland','India'),(1429,158,541,1360,226,4209,'7_Days_Return','585857','626','890-8436 Ipsum. Ave','Bihar','India'),(1430,174,504,1288,217,8253,'7_Days_Return','513960','657','2759 Lacus. Avenue','Dadra and Nagar Haveli','India'),(1431,159,512,1374,245,4282,'7_Days_Return','262483','215','367-699 Et Avenue','Chhattisgarh','India'),(1432,152,586,1373,232,1280,'7_Days_Return','471544','666','833-2775 Rhoncus. Street','Tripura','India'),(1433,163,633,1293,216,5551,'7_Days_Return','577644','734','587-4098 Suspendisse Rd.','Meghalaya','India'),(1434,164,619,1265,227,1882,'7_Days_Return','241597','122','711-9882 Orci Av.','Dadra and Nagar Haveli','India'),(1435,173,605,1353,213,8603,'7_Days_Return','642338','786','Ap #254-1400 Convallis Rd.','Goa','India'),(1436,172,645,1359,231,7272,'7_Days_Return','627317','759','P.O. Box 723, 1487 Ac St.','Delhi','India'),(1437,150,632,1333,216,7632,'7_Days_Return','611148','884','P.O. Box 826, 3599 Vulputate, St.','Bihar','India'),(1438,160,638,1287,238,3934,'7_Days_Return','339705','329','P.O. Box 897, 7140 Non Rd.','Goa','India'),(1439,165,629,1359,226,1778,'7_Days_Return','246370','537','161-8763 Magna. St.','Tripura','India'),(1440,159,594,1366,207,7183,'7_Days_Return','977458','220','Ap #928-4947 Interdum St.','Andaman and Nicobar Islands','India'),(1441,164,571,1273,207,8895,'7_Days_Return','835621','490','Ap #793-6263 Eu Av.','Andhra Pradesh','India'),(1442,158,570,1337,222,8539,'7_Days_Return','482241','925','Ap #708-5916 Fringilla. Av.','Mizoram','India'),(1443,166,629,1360,214,4662,'7_Days_Return','976411','929','P.O. Box 188, 1564 Mi. Street','Tripura','India'),(1444,169,589,1305,204,8406,'7_Days_Return','603103','946','P.O. Box 603, 6930 Dictum St.','Karnataka','India'),(1445,166,522,1284,243,6262,'7_Days_Return','681666','937','495-6771 Metus. Rd.','Maharastra','India'),(1446,159,585,1343,225,9983,'7_Days_Return','537954','212','1279 Nullam St.','Kerala','India'),(1447,157,533,1346,209,9988,'7_Days_Return','733915','173','P.O. Box 674, 4242 Phasellus Street','Gujarat','India'),(1448,162,576,1342,218,5443,'7_Days_Return','758251','745','Ap #924-8741 Donec Ave','Bihar','India'),(1449,160,525,1318,224,7317,'7_Days_Return','526334','518','598-4620 Tempus Rd.','Andhra Pradesh','India'),(1450,158,533,1285,228,6051,'7_Days_Return','583439','674','P.O. Box 863, 6188 Aliquam Street','Maharastra','India'),(1451,167,565,1300,206,4765,'7_Days_Return','945574','927','669-7403 Non Street','Karnataka','India'),(1452,168,507,1355,225,7288,'7_Days_Return','821478','527','2965 Risus. Av.','Assam','India'),(1453,174,647,1369,214,6414,'7_Days_Return','836468','904','781-8813 In Road','Gujarat','India'),(1454,174,550,1327,220,5009,'7_Days_Return','126469','153','Ap #309-2203 Purus Rd.','Chandigarh','India'),(1455,172,594,1298,239,5942,'7_Days_Return','102376','265','Ap #106-3733 Cursus Street','Mizoram','India'),(1456,160,641,1289,246,7745,'7_Days_Return','749618','628','973-5010 Nunc. Avenue','Chandigarh','India'),(1457,173,616,1276,220,9340,'7_Days_Return','461064','768','Ap #585-7456 Dictum St.','Andaman and Nicobar Islands','India'),(1458,154,605,1313,246,7576,'7_Days_Return','728772','208','Ap #562-8328 Metus. St.','Chhattisgarh','India'),(1459,162,514,1320,227,1279,'7_Days_Return','160069','844','P.O. Box 422, 4320 Ac Avenue','Arunachal Pradesh','India'),(1460,169,620,1343,207,9462,'7_Days_Return','377407','588','Ap #819-7294 Tempor St.','West Bengal','India'),(1461,156,581,1372,225,1401,'7_Days_Return','575655','385','Ap #103-2247 Velit Road','Gujarat','India'),(1462,163,648,1349,201,4267,'7_Days_Return','281831','992','802-7227 Mollis Avenue','Uttar Pradesh','India'),(1463,164,522,1371,220,2946,'7_Days_Return','520150','538','Ap #979-6926 Cursus Street','Jammu and Kashmir','India'),(1464,154,631,1353,242,4784,'7_Days_Return','258647','198','958-1615 Et Street','Uttar Pradesh','India'),(1465,151,532,1346,231,5573,'7_Days_Return','315675','363','Ap #799-9804 Libero St.','Pondicherry','India'),(1466,169,582,1348,203,2902,'7_Days_Return','253473','558','204-880 Sem. Road','Jammu and Kashmir','India'),(1467,152,612,1322,201,7334,'7_Days_Return','543049','936','399-2699 Amet, Av.','Gujarat','India'),(1468,153,513,1314,230,8338,'7_Days_Return','866824','618','Ap #869-8250 Cursus Ave','Jammu and Kashmir','India'),(1469,157,552,1373,242,5508,'7_Days_Return','144345','705','660 Ridiculus Road','Karnataka','India'),(1470,166,592,1281,223,9141,'7_Days_Return','273259','857','Ap #170-7168 Ac St.','Lakshadweep','India'),(1471,167,624,1322,238,6193,'7_Days_Return','342534','961','Ap #822-9586 Enim Rd.','Tamil Nadu','India'),(1472,151,628,1253,204,2687,'7_Days_Return','594467','777','Ap #732-594 Sit Road','Nagaland','India'),(1473,159,545,1365,234,9108,'7_Days_Return','444247','415','222-9616 Pellentesque Street','Tamil Nadu','India'),(1474,155,589,1272,217,3563,'7_Days_Return','436894','822','Ap #689-4119 Vel, Street','Sikkim','India'),(1475,150,634,1370,213,9592,'7_Days_Return','533845','633','709-6959 Mattis. Av.','Goa','India'),(1476,155,619,1364,228,5826,'7_Days_Return','241586','869','171-3311 Amet, Rd.','Mizoram','India'),(1477,172,644,1331,220,1055,'7_Days_Return','886202','337','7666 Nunc Av.','Kerala','India'),(1478,173,520,1343,215,1225,'7_Days_Return','921823','383','423-6252 Vitae Avenue','Odisha','India'),(1479,160,634,1370,240,9386,'7_Days_Return','734571','843','754-7524 Neque. St.','Kerala','India'),(1480,154,643,1339,218,3695,'7_Days_Return','211268','152','Ap #346-868 Curabitur Street','Karnataka','India'),(1481,173,568,1307,239,8274,'7_Days_Return','375451','209','P.O. Box 244, 8327 Enim, Street','Kerala','India'),(1482,174,611,1259,213,5057,'7_Days_Return','998804','893','P.O. Box 850, 4436 Aliquam Rd.','Assam','India'),(1483,162,567,1368,213,2513,'7_Days_Return','723689','895','Ap #199-1338 Natoque Rd.','Andaman and Nicobar Islands','India'),(1484,151,589,1309,228,1925,'7_Days_Return','318416','341','3390 Aliquam Rd.','Mizoram','India'),(1485,167,620,1280,204,632,'7_Days_Return','749146','314','165-4888 Ornare, Ave','Mizoram','India'),(1486,163,604,1250,234,8549,'7_Days_Return','621624','448','Ap #281-1130 Eget, Street','Sikkim','India'),(1487,174,543,1292,202,3266,'7_Days_Return','264231','767','P.O. Box 741, 9930 Erat Street','Andhra Pradesh','India'),(1488,169,626,1338,205,2560,'7_Days_Return','458586','962','Ap #357-8874 Nascetur St.','Chandigarh','India'),(1489,157,549,1327,241,9346,'7_Days_Return','233332','835','992-2734 Netus Rd.','West Bengal','India'),(1490,170,541,1281,212,802,'7_Days_Return','898339','479','Ap #507-8768 Eros Road','Delhi','India'),(1491,156,637,1272,222,5874,'7_Days_Return','382062','612','551-3937 Fusce Ave','Rajasthan','India'),(1492,168,518,1293,223,5966,'7_Days_Return','485522','157','477-6907 Luctus Av.','Tamil Nadu','India'),(1493,158,569,1296,201,6564,'7_Days_Return','302875','388','Ap #362-4177 Auctor. Road','Rajasthan','India'),(1494,164,587,1368,209,8328,'7_Days_Return','514299','952','6749 Adipiscing Road','Assam','India'),(1495,160,588,1296,225,5894,'7_Days_Return','760072','292','Ap #428-1519 Cursus Road','Jharkhand','India'),(1496,155,643,1255,215,4057,'7_Days_Return','197257','736','Ap #761-9526 Libero. Avenue','Uttar Pradesh','India'),(1497,153,519,1252,221,3047,'7_Days_Return','632205','370','P.O. Box 691, 7278 Proin Street','Jharkhand','India'),(1498,152,555,1302,222,1921,'7_Days_Return','349632','160','5303 Quisque Street','Andaman and Nicobar Islands','India'),(1499,159,569,1277,209,2266,'7_Days_Return','897893','913','Ap #509-9414 Cum Street','Chandigarh','India'),(1500,167,519,1287,225,6851,'7_Days_Return','727246','637','Ap #108-2835 Etiam Rd.','Chhattisgarh','India'),(1501,154,530,1362,227,4195,'7_Days_Return','284425','801','749-2548 Amet Rd.','Chhattisgarh','India'),(1502,162,524,1272,205,3804,'7_Days_Return','974398','559','1877 Ut St.','Odisha','India'),(1503,166,608,1256,220,3919,'7_Days_Return','656104','995','P.O. Box 914, 1783 Nascetur Street','Assam','India'),(1504,157,594,1276,211,7930,'7_Days_Return','621866','999','Ap #783-1658 Interdum. Avenue','Gujarat','India'),(1505,157,594,1336,208,8077,'7_Days_Return','779410','245','P.O. Box 811, 5649 Mauris Rd.','Jammu and Kashmir','India'),(1506,151,547,1347,232,9088,'7_Days_Return','387642','974','Ap #801-9919 Hymenaeos. Av.','Punjab','India'),(1507,163,595,1309,225,993,'7_Days_Return','232711','535','6534 Lacus. Street','Himachal Pradesh','India'),(1508,151,591,1303,206,8599,'7_Days_Return','276557','834','812-7475 Fringilla Road','Nagaland','India'),(1509,154,566,1364,233,6712,'7_Days_Return','537605','702','Ap #910-9284 Risus. Av.','Andaman and Nicobar Islands','India'),(1510,173,599,1284,245,1054,'7_Days_Return','563847','637','Ap #930-3286 Tristique Rd.','Bihar','India'),(1511,154,527,1299,211,8460,'7_Days_Return','333763','208','182-4722 Integer Av.','Manipur','India'),(1512,153,587,1258,245,4689,'7_Days_Return','888623','955','957-9318 Mi Road','Punjab','India'),(1513,161,577,1326,245,3257,'7_Days_Return','828377','463','P.O. Box 686, 4247 Ut Street','Meghalaya','India'),(1514,156,601,1372,245,4333,'7_Days_Return','587572','375','Ap #510-6510 Ut St.','Uttar Pradesh','India'),(1515,168,563,1257,213,2457,'7_Days_Return','631484','928','P.O. Box 142, 1382 Lobortis. Ave','Andhra Pradesh','India'),(1516,161,645,1369,241,7770,'7_Days_Return','117941','489','P.O. Box 855, 404 Arcu. St.','Karnataka','India'),(1517,155,502,1266,243,1827,'7_Days_Return','234094','720','P.O. Box 219, 8988 Natoque Av.','Madhya Pradesh','India'),(1518,161,630,1274,234,2380,'7_Days_Return','981247','347','872-6562 Ultricies Street','Daman and Diu','India'),(1519,154,522,1287,227,633,'7_Days_Return','261405','343','368-8684 Hendrerit Rd.','Odisha','India'),(1520,171,569,1302,249,5654,'7_Days_Return','774724','123','8150 Erat. St.','Gujarat','India'),(1521,151,566,1322,228,7764,'7_Days_Return','949171','592','Ap #622-1154 Lacinia St.','Delhi','India'),(1522,152,635,1347,248,6941,'7_Days_Return','817375','780','188-1330 Donec Av.','Pondicherry','India'),(1523,166,647,1251,215,1343,'7_Days_Return','347312','289','Ap #599-8139 Est Rd.','Assam','India'),(1524,173,584,1337,201,4321,'7_Days_Return','726246','969','7565 At, Av.','Delhi','India'),(1525,174,567,1329,227,8318,'7_Days_Return','448349','268','P.O. Box 416, 5064 Ornare Avenue','Mizoram','India'),(1526,152,529,1337,217,5286,'7_Days_Return','449076','262','Ap #596-2334 Elit Avenue','Haryana','India'),(1527,171,515,1369,202,7401,'7_Days_Return','446942','856','562-2485 Ut Road','Kerala','India'),(1528,173,514,1281,232,2465,'7_Days_Return','780173','582','Ap #855-9581 Justo Street','Assam','India'),(1529,156,612,1253,233,6223,'7_Days_Return','933024','790','Ap #744-992 Eget Rd.','Pondicherry','India'),(1530,163,544,1305,209,2949,'7_Days_Return','791757','440','Ap #959-7562 Mauris Street','Pondicherry','India'),(1531,161,622,1295,207,5955,'7_Days_Return','527311','792','789-7345 Mus. St.','Jammu and Kashmir','India'),(1532,166,522,1276,220,7680,'7_Days_Return','787621','319','Ap #924-9791 Justo. St.','Goa','India'),(1533,161,526,1250,203,5472,'7_Days_Return','262075','891','P.O. Box 583, 6089 Vel, Rd.','Sikkim','India'),(1534,161,622,1302,243,9700,'7_Days_Return','261146','633','7310 Elementum Road','Uttarakhand','India'),(1535,161,610,1295,212,9247,'7_Days_Return','737686','712','583-2457 Dolor St.','Lakshadweep','India'),(1536,174,569,1271,201,7870,'7_Days_Return','681526','430','182-3634 Libero. Rd.','Madhya Pradesh','India'),(1537,172,585,1278,243,1139,'7_Days_Return','465488','639','7533 Ac Road','Bihar','India'),(1538,164,618,1279,244,8568,'7_Days_Return','472796','588','346-4551 Mus. Rd.','Delhi','India'),(1539,167,623,1335,241,5786,'7_Days_Return','232568','956','6079 Nec Ave','Uttarakhand','India'),(1540,152,510,1293,234,5575,'7_Days_Return','510860','583','386-1324 Montes, Rd.','Bihar','India'),(1541,174,571,1251,242,8619,'7_Days_Return','528148','931','P.O. Box 175, 7483 A, Av.','Bihar','India'),(1542,173,631,1294,209,3422,'7_Days_Return','353107','970','Ap #652-4956 Nunc Rd.','Himachal Pradesh','India'),(1543,152,605,1284,214,1082,'7_Days_Return','950615','404','762-8507 Nunc Street','Tripura','India'),(1544,162,527,1288,245,7329,'7_Days_Return','603288','276','841-9924 Aliquam, St.','Chandigarh','India'),(1545,162,618,1295,246,5068,'7_Days_Return','442891','949','Ap #574-1332 Mattis. St.','Lakshadweep','India'),(1546,165,504,1355,215,9884,'7_Days_Return','885854','942','116-7423 Odio Av.','Manipur','India'),(1547,167,559,1346,207,830,'7_Days_Return','582483','447','230-7615 A, Ave','Madhya Pradesh','India'),(1548,170,610,1363,228,2926,'7_Days_Return','540281','445','550-887 Quam. Road','Haryana','India'),(1549,157,643,1336,247,8662,'7_Days_Return','337078','183','Ap #173-578 Gravida Av.','Odisha','India');
/*!40000 ALTER TABLE `order_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_feedback`
--

DROP TABLE IF EXISTS `partner_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_feedback` (
  `Partner_ID` mediumint NOT NULL,
  `Customer_ID` mediumint NOT NULL,
  `Partner_review` text NOT NULL,
  `Partner_rating` mediumint NOT NULL,
  PRIMARY KEY (`Partner_ID`,`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `partner_feedback_ibfk_1` FOREIGN KEY (`Partner_ID`) REFERENCES `delivery_partner` (`Partner_ID`),
  CONSTRAINT `partner_feedback_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `partner_feedback_chk_1` CHECK ((`Partner_rating` <= 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_feedback`
--

LOCK TABLES `partner_feedback` WRITE;
/*!40000 ALTER TABLE `partner_feedback` DISABLE KEYS */;
INSERT INTO `partner_feedback` VALUES (200,599,'Amazing',1),(201,536,'Worst',1),(201,599,'Bad',2),(206,634,'Worst',3),(207,530,'Worst',1),(207,538,'Great',2),(207,576,'Quick',3),(207,647,'Amazing',5),(208,546,'Epic',0),(208,555,'Bad',3),(209,529,'Great',2),(210,584,'Bad',2),(211,541,'Great',2),(215,506,'Great',2),(215,555,'Amazing',3),(215,599,'Amazing',1),(215,619,'Nice',4),(216,572,'Great',1),(216,574,'Amazing',3),(217,607,'Nice',1),(218,510,'Worst',4),(219,504,'Epic',2),(219,534,'Amazing',2),(220,634,'Epic',2),(221,601,'Worst',1),(222,612,'Worst',3),(222,635,'Bad',5),(223,541,'Worst',1),(224,512,'Epic',4),(224,524,'Epic',2),(225,558,'Amazing',5),(225,615,'Amazing',1),(227,599,'Amazing',3),(228,604,'Bad',3),(229,623,'Amazing',5),(229,644,'Great',2),(230,546,'Amazing',4),(231,608,'Amazing',1),(233,561,'Bad',2),(233,583,'Bad',3),(234,597,'Nice',5),(235,512,'Nice',1),(235,563,'Amazing',2),(235,578,'Great',1),(235,587,'Great',1),(236,504,'Nice',3),(236,623,'Amazing',2),(237,555,'Nice',3),(238,514,'Worst',2),(239,596,'Worst',1),(242,567,'Quick',4),(242,621,'Amazing',1),(244,545,'Nice',1),(244,576,'Nice',1),(245,646,'Great',4),(246,583,'Worst',2),(246,612,'Worst',2),(246,626,'Great',1),(249,571,'Nice',3),(249,644,'Amazing',2);
/*!40000 ALTER TABLE `partner_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_portal`
--

DROP TABLE IF EXISTS `payment_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_portal` (
  `Payment_ID` mediumint NOT NULL,
  `Cart_ID` mediumint NOT NULL,
  `Payment_Type` text NOT NULL,
  `Payment_date` varchar(255) NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Cart_ID` (`Cart_ID`),
  CONSTRAINT `payment_portal_ibfk_1` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_portal`
--

LOCK TABLES `payment_portal` WRITE;
/*!40000 ALTER TABLE `payment_portal` DISABLE KEYS */;
INSERT INTO `payment_portal` VALUES (1250,675,'DebitCard','Jan 17, 2023'),(1251,676,'CreditCard','Jan 21, 2023'),(1252,677,'DebitCard','Mar 11, 2023'),(1253,678,'NetBanking','Jan 3, 2023'),(1254,679,'DebitCard','Apr 21, 2023'),(1255,680,'CreditCard','Jan 23, 2023'),(1256,681,'NetBanking','Jan 27, 2023'),(1257,682,'NetBanking','Apr 11, 2023'),(1258,683,'CreditCard','Apr 18, 2023'),(1259,684,'CreditCard','Mar 6, 2023'),(1260,685,'UPI','Apr 5, 2023'),(1261,686,'DebitCard','Apr 4, 2023'),(1262,687,'UPI','Feb 16, 2023'),(1263,688,'UPI','Mar 4, 2023'),(1264,689,'DebitCard','Apr 15, 2023'),(1265,690,'UPI','Jan 11, 2023'),(1266,691,'CreditCard','Jan 8, 2023'),(1267,692,'DebitCard','Feb 27, 2023'),(1268,693,'UPI','Mar 28, 2023'),(1269,694,'CreditCard','Feb 6, 2023'),(1270,695,'CreditCard','Apr 11, 2023'),(1271,696,'UPI','Jan 21, 2023'),(1272,697,'CreditCard','Feb 25, 2023'),(1273,698,'CreditCard','Jan 28, 2023'),(1274,699,'NetBanking','Jan 4, 2023'),(1275,700,'DebitCard','Jan 23, 2023'),(1276,701,'DebitCard','Feb 8, 2023'),(1277,702,'NetBanking','Feb 6, 2023'),(1278,703,'NetBanking','Apr 10, 2023'),(1279,704,'CreditCard','Mar 26, 2023'),(1280,705,'NetBanking','Feb 3, 2023'),(1281,706,'NetBanking','Mar 13, 2023'),(1282,707,'NetBanking','Mar 30, 2023'),(1283,708,'NetBanking','Apr 25, 2023'),(1284,709,'DebitCard','Jan 16, 2023'),(1285,710,'DebitCard','Jan 23, 2023'),(1286,711,'NetBanking','Feb 19, 2023'),(1287,712,'DebitCard','Mar 2, 2023'),(1288,713,'CreditCard','Feb 26, 2023'),(1289,714,'NetBanking','Feb 11, 2023'),(1290,715,'DebitCard','Feb 20, 2023'),(1291,716,'UPI','Mar 20, 2023'),(1292,717,'NetBanking','Jan 20, 2023'),(1293,718,'NetBanking','Feb 9, 2023'),(1294,719,'CreditCard','Apr 14, 2023'),(1295,720,'UPI','Mar 6, 2023'),(1296,721,'NetBanking','Apr 20, 2023'),(1297,722,'CreditCard','Mar 29, 2023'),(1298,723,'UPI','Mar 14, 2023'),(1299,724,'NetBanking','Mar 25, 2023'),(1300,725,'CreditCard','Feb 11, 2023'),(1301,726,'DebitCard','Jan 1, 2023'),(1302,727,'CreditCard','Feb 5, 2023'),(1303,728,'NetBanking','Mar 1, 2023'),(1304,729,'CreditCard','Feb 5, 2023'),(1305,730,'NetBanking','Jan 23, 2023'),(1306,731,'NetBanking','Feb 18, 2023'),(1307,732,'CreditCard','Jan 19, 2023'),(1308,733,'NetBanking','Jan 29, 2023'),(1309,734,'NetBanking','Feb 4, 2023'),(1310,735,'UPI','Jan 29, 2023'),(1311,736,'CreditCard','Feb 20, 2023'),(1312,737,'NetBanking','Jan 5, 2023'),(1313,738,'CreditCard','Jan 24, 2023'),(1314,739,'CreditCard','Mar 12, 2023'),(1315,740,'CreditCard','Jan 29, 2023'),(1316,741,'UPI','Apr 8, 2023'),(1317,742,'NetBanking','Feb 20, 2023'),(1318,743,'CreditCard','Jan 24, 2023'),(1319,744,'CreditCard','Feb 22, 2023'),(1320,745,'CreditCard','Jan 24, 2023'),(1321,746,'DebitCard','Apr 12, 2023'),(1322,747,'NetBanking','Apr 22, 2023'),(1323,748,'CreditCard','Feb 28, 2023'),(1324,749,'NetBanking','Feb 12, 2023'),(1325,750,'NetBanking','Apr 29, 2023'),(1326,751,'CreditCard','Apr 27, 2023'),(1327,752,'UPI','Jan 24, 2023'),(1328,753,'CreditCard','Jan 16, 2023'),(1329,754,'UPI','Feb 18, 2023'),(1330,755,'DebitCard','Jan 22, 2023'),(1331,756,'UPI','Apr 5, 2023'),(1332,757,'NetBanking','Jan 11, 2023'),(1333,758,'UPI','Jan 5, 2023'),(1334,759,'NetBanking','Apr 26, 2023'),(1335,760,'UPI','Apr 1, 2023'),(1336,761,'DebitCard','Mar 21, 2023'),(1337,762,'NetBanking','Apr 21, 2023'),(1338,763,'NetBanking','Mar 6, 2023'),(1339,764,'CreditCard','Apr 14, 2023'),(1340,765,'NetBanking','Mar 2, 2023'),(1341,766,'CreditCard','Feb 18, 2023'),(1342,767,'NetBanking','Mar 24, 2023'),(1343,768,'CreditCard','Jan 11, 2023'),(1344,769,'UPI','Feb 27, 2023'),(1345,770,'CreditCard','Mar 13, 2023'),(1346,771,'DebitCard','Apr 9, 2023'),(1347,772,'UPI','Mar 27, 2023'),(1348,773,'CreditCard','Apr 6, 2023'),(1349,774,'CreditCard','Apr 8, 2023'),(1350,775,'NetBanking','Feb 6, 2023'),(1351,776,'NetBanking','Jan 31, 2023'),(1352,777,'DebitCard','Jan 21, 2023'),(1353,778,'CreditCard','Jan 22, 2023'),(1354,779,'NetBanking','Jan 9, 2023'),(1355,780,'NetBanking','Jan 28, 2023'),(1356,781,'NetBanking','Feb 3, 2023'),(1357,782,'DebitCard','Feb 8, 2023'),(1358,783,'UPI','Apr 6, 2023'),(1359,784,'UPI','Jan 6, 2023'),(1360,785,'NetBanking','Jan 6, 2023'),(1361,786,'NetBanking','Apr 29, 2023'),(1362,787,'CreditCard','Feb 22, 2023'),(1363,788,'NetBanking','Jan 11, 2023'),(1364,789,'UPI','Feb 1, 2023'),(1365,790,'CreditCard','Jan 10, 2023'),(1366,791,'NetBanking','Jan 21, 2023'),(1367,792,'CreditCard','Apr 3, 2023'),(1368,793,'CreditCard','Jan 17, 2023'),(1369,794,'CreditCard','Apr 10, 2023'),(1370,795,'NetBanking','Apr 4, 2023'),(1371,796,'CreditCard','Jan 29, 2023'),(1372,797,'NetBanking','Mar 26, 2023'),(1373,798,'NetBanking','Feb 3, 2023'),(1374,799,'NetBanking','Apr 14, 2023');
/*!40000 ALTER TABLE `payment_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_feedback`
--

DROP TABLE IF EXISTS `prod_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_feedback` (
  `Prod_ID` mediumint NOT NULL,
  `Customer_ID` mediumint NOT NULL,
  `Prod_review` text NOT NULL,
  `Prod_rating` mediumint NOT NULL,
  PRIMARY KEY (`Prod_ID`,`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `prod_feedback_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `prod_feedback_ibfk_2` FOREIGN KEY (`Prod_ID`) REFERENCES `product` (`Prod_ID`),
  CONSTRAINT `prod_feedback_chk_1` CHECK ((`Prod_rating` <= 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_feedback`
--

LOCK TABLES `prod_feedback` WRITE;
/*!40000 ALTER TABLE `prod_feedback` DISABLE KEYS */;
INSERT INTO `prod_feedback` VALUES (1004,525,'Bad',2),(1007,555,'Basic',1),(1008,619,'Epic',2),(1009,611,'Okayish',3),(1014,640,'Good',5),(1019,612,'Basic',4),(1022,554,'Nice',1),(1023,562,'Worst',2),(1024,503,'Worst',3),(1025,576,'Worst',3),(1035,591,'Great',5),(1036,622,'Nice',3),(1037,631,'Bad',5),(1044,561,'Great',3),(1045,647,'Nice',4),(1047,539,'Good',4),(1047,590,'Good',3),(1048,591,'Basic',2),(1048,644,'Okayish',2),(1051,606,'Bad',3),(1056,555,'Basic',3),(1057,611,'Great',2),(1057,639,'Nice',2),(1059,539,'Great',1),(1059,624,'Basic',3),(1062,622,'Okayish',3),(1066,561,'Okayish',1),(1066,576,'Bad',3),(1070,502,'Okayish',3),(1072,541,'Worst',1),(1084,594,'Epic',2),(1085,528,'Great',1),(1088,526,'Nice',1),(1088,552,'Bad',0),(1088,640,'Okayish',2),(1089,621,'Nice',4),(1089,630,'Bad',0),(1091,539,'Worst',0),(1092,638,'Nice',0),(1093,508,'Good',1),(1093,543,'Worst',4),(1097,585,'Great',0),(1100,517,'Epic',1),(1101,609,'Nice',4),(1112,638,'Okayish',0),(1115,572,'Bad',4),(1118,611,'Nice',4),(1120,614,'Okayish',4),(1123,506,'Good',3),(1124,552,'Good',1),(1133,550,'Okayish',3),(1133,567,'Good',0),(1135,553,'Worst',1),(1136,593,'Great',3),(1138,557,'Great',0),(1140,599,'Okayish',2),(1149,603,'Good',3),(1150,614,'Okayish',5),(1152,621,'Good',3),(1157,543,'Okayish',5),(1158,640,'Okayish',2),(1159,556,'Okayish',3),(1163,511,'Great',3),(1164,592,'Okayish',3),(1164,616,'Nice',1),(1165,514,'Worst',2),(1169,507,'Good',0),(1169,606,'Bad',3),(1171,543,'Basic',2),(1172,634,'Basic',4),(1181,541,'Epic',1),(1183,579,'Epic',5),(1183,616,'Epic',5),(1190,607,'Worst',2),(1191,510,'Worst',3);
/*!40000 ALTER TABLE `prod_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Prod_ID` mediumint NOT NULL,
  `Supplier_ID` mediumint DEFAULT NULL,
  `Category_ID` mediumint DEFAULT NULL,
  `Prod_name` text NOT NULL,
  `Brand` text,
  `Price` mediumint NOT NULL,
  `Description` text,
  `Availability` varchar(255) NOT NULL,
  PRIMARY KEY (`Prod_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  KEY `Category_ID` (`Category_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1000,150,402,'Scarf','Storebes',3337,'egestas,','Yes'),(1001,167,402,'Shirt','Retaillytical',2188,'odio','No'),(1002,171,402,'Jacket','Retailology',1791,'Nulla','No'),(1003,156,402,'Gloves','Retailnetic',787,'malesuada','No'),(1004,156,402,'Poncho','Retailprism',2375,'lorem','No'),(1005,164,402,'Cravat','Storebea',2218,'erat','No'),(1006,174,402,'Tie','Retailnetic',1542,'velit','Yes'),(1007,168,402,'Cardigan','Retailnetic',2837,'Pellentesque','Yes'),(1008,167,402,'Tankini','Storearo',2741,'tincidunt,','No'),(1009,150,402,'Socks','Storeorama',1359,'Cum','Yes'),(1010,174,402,'Lingerie','Storeverse',870,'porttitor','No'),(1011,174,402,'Fleece','Retaillance',3504,'ipsum','No'),(1012,152,402,'Pajamas','Storex',3166,'libero','Yes'),(1013,162,402,'Sweatshirt','Retailgenix',689,'id','No'),(1014,160,402,'Lingerie','Storebes',3585,'tincidunt','No'),(1015,166,402,'Underwear','Retailology',2249,'aliquam,','No'),(1016,174,402,'Poncho','Retaillaza',1451,'lorem','No'),(1017,170,402,'Fleece','Retailry',2259,'vulputate,','No'),(1018,155,402,'Slippers','Retailio',3246,'neque.','Yes'),(1019,164,402,'Hoody','Retaillaza',1347,'quis','No'),(1020,171,402,'Underwear','Storescape',1913,'nibh.','No'),(1021,153,402,'Briefs','Storequipo',2472,'purus.','Yes'),(1022,152,402,'Waistcoat','Storex',2162,'Donec','No'),(1023,156,402,'Pajamas','Retailgenics',2261,'ligula.','No'),(1024,165,402,'Waistcoat','Storeocity',3985,'rutrum','No'),(1025,156,402,'Jacket','Retailcog',1992,'vitae','No'),(1026,157,402,'Gown','Storejet',3625,'Nullam','Yes'),(1027,172,402,'Gown','Retailquipo',1034,'Nam','Yes'),(1028,168,402,'Jogging','Retailbia',1724,'libero','No'),(1029,174,402,'Fleece','Storearo',2192,'Proin','No'),(1030,153,402,'Cargos','Retailbia',3441,'vulputate','No'),(1031,166,402,'Jeans','Storeium',1389,'in','Yes'),(1032,174,402,'Swimming_Shorts','Retailquipo',2126,'Phasellus','Yes'),(1033,173,402,'Underwear','Retailable',3641,'pede','Yes'),(1034,174,402,'Waistcoat','Storebea',3249,'metus','Yes'),(1035,170,402,'Blazer','Retailster',1990,'volutpat','No'),(1036,163,402,'Slippers','Storeadil',2195,'lorem','No'),(1037,162,402,'Jogging','Storeooze',1500,'Mauris','Yes'),(1038,153,402,'Slippers','Storescape',1289,'vel,','Yes'),(1039,169,402,'Skirt','Storeorama',3380,'nisl.','No'),(1040,174,402,'Shoes','Storejet',772,'Pellentesque','Yes'),(1041,164,402,'Shirt','Storescape',1791,'semper,','No'),(1042,163,402,'T-Shirt','Storeadil',2905,'dui.','Yes'),(1043,171,402,'Jeans','Retailgenix',3969,'elementum,','No'),(1044,154,402,'Skirt','Retailium',1795,'lobortis','Yes'),(1045,158,402,'Belt','Retailium',2919,'imperdiet','Yes'),(1046,169,402,'Shawl','Storen',986,'ligula','Yes'),(1047,156,402,'Scarf','Retailoryx',1762,'lorem,','No'),(1048,160,402,'Blouse','Storeium',1627,'congue,','No'),(1049,159,402,'Sunglasses','Retaillance',1311,'interdum','No'),(1050,174,403,'Vibraphone','Retaillaza',4834,'nec','No'),(1051,163,403,'Stylophone','Retaillance',3743,'est.','Yes'),(1052,170,403,'Zither','Retailbia',3113,'Quisque','No'),(1053,171,403,'Recorder','Storeaza',3908,'Duis','No'),(1054,164,403,'Violin','Storeify',4727,'fringilla,','Yes'),(1055,155,403,'Ukulele','Retailry',7987,'quam.','No'),(1056,172,403,'Violin','Retailquipo',5009,'dolor','No'),(1057,164,403,'Stylophone','Storen',5449,'aliquam,','Yes'),(1058,162,403,'Trombone','Retailprism',4504,'primis','No'),(1059,164,403,'Stylophone','Retaillance',3160,'nibh.','No'),(1060,174,404,'Hair_Brush','Retailgenix',364,'tristique','No'),(1061,173,404,'Notebooks','Storeadil',253,'quis','Yes'),(1062,172,404,'Nail_Cutter','Retailfluent',153,'ligula.','No'),(1063,151,404,'Handy_mirror','Retailjet',347,'sollicitudin','Yes'),(1064,157,404,'Eyelash_curler','Storeify',163,'Proin','Yes'),(1065,156,404,'Handy_mirror','Storeadil',217,'magna.','No'),(1066,163,404,'Tweessors','Storeoont',396,'magna.','No'),(1067,160,404,'Nail_Cutter','Storearc',373,'Nam','Yes'),(1068,159,404,'Handy_mirror','Retailjet',136,'elementum','No'),(1069,157,404,'Notebooks','Retailster',372,'hendrerit.','Yes'),(1070,165,404,'Handy_mirror','Storeoont',366,'eget','Yes'),(1071,167,404,'Staplers.','Storeooze',344,'pellentesque','No'),(1072,164,404,'Handy_mirror','Storeocity',137,'pharetra','No'),(1073,167,404,'Note_Holders.','Retailish',358,'et','No'),(1074,163,404,'Hair_Brush','Storeify',266,'dolor.','Yes'),(1080,173,406,'Eye_primer','Storeoont',1320,'vehicula','No'),(1081,171,406,'Foundation','Retailbia',1321,'ac','Yes'),(1082,160,406,'Highlighter','Retailprism',1472,'Morbi','No'),(1083,155,406,'Face_primer','Storequipo',1634,'a','Yes'),(1084,168,406,'Eyeshadow','Storeoont',1065,'feugiat','Yes'),(1085,154,406,'Highlighter','Storeverse',1456,'nisi','No'),(1086,173,406,'Blush','Retaillance',1117,'risus.','No'),(1087,174,406,'Setting_sprays','Retailgenics',478,'ullamcorper.','No'),(1088,153,406,'Eyeliner','Retaillytical',889,'Nam','Yes'),(1089,163,406,'Highlighter','Retailbes',483,'ornare','No'),(1090,165,406,'Bronzer','Storewind',1712,'erat.','Yes'),(1091,161,406,'Mascara','Storearc',1984,'Integer','Yes'),(1092,158,406,'Bronzer','Storescape',1842,'eros','Yes'),(1093,155,406,'Powders','Storeverse',1386,'sociis','Yes'),(1094,155,406,'Highlighter','Retailbes',805,'sollicitudin','No'),(1095,159,406,'Bronzer','Retailjet',1896,'dapibus','No'),(1096,154,406,'Powders','Retaillaza',1888,'odio.','Yes'),(1097,160,406,'Lip_liner','Storeaza',1565,'mauris,','No'),(1098,164,406,'Corrector','Retailgenix',1050,'Duis','Yes'),(1099,159,406,'Lip_gloss','Storewind',1213,'Duis','No'),(1100,169,407,'Hershey\'s_Kisses','Storearo',232,'Nulla','No'),(1101,162,407,'Twizzlers','Storequipo',489,'egestas,','No'),(1102,155,407,'Baby_Ruth','Retailology',358,'eu','No'),(1103,154,407,'Milky_Way','Storeoont',173,'euismod','Yes'),(1104,172,407,'Snickers','Retailprism',157,'egestas.','Yes'),(1105,172,407,'M&Ms','Retailnetic',510,'turpis','No'),(1106,171,407,'Cotton_candy','Retaillytical',671,'Etiam','No'),(1107,152,407,'Necco_wafers','Retailbia',421,'orci','No'),(1108,151,407,'Nerds','Storeprism',772,'et,','No'),(1109,170,407,'Baby_Ruth','Storewind',792,'id','Yes'),(1110,162,408,'UncleChips_SpicyTreat','Retailonus',194,'Nulla','Yes'),(1111,163,408,'SnacLite','Storen',292,'Nunc','No'),(1112,163,408,'Makhana','Retailprism',178,'arcu.','No'),(1113,160,408,'Haldiram_Bhel','Storeocity',155,'Aenean','Yes'),(1114,156,408,'Haldiram_Bhel','Storeprism',299,'ut,','No'),(1115,167,408,'Tedhe_Medhe','Retailgenics',271,'quam','No'),(1116,153,408,'Haldiram_KachoriNamkeen','Storebes',291,'cubilia','Yes'),(1117,153,408,'Lays_ChilliTomato','Storearc',153,'egestas.','No'),(1118,156,408,'Haldiram_Bhujia','Retailfluent',105,'elit,','Yes'),(1119,154,408,'UncleChips_SpicyTreat','Retailology',103,'elementum','Yes'),(1120,167,409,'Mascara_wands','Retailry',313,'Nulla','No'),(1121,170,409,'Wipes','Storex',295,'nibh.','Yes'),(1122,156,409,'Razors','Storeadil',271,'aliquam','No'),(1123,155,409,'AlcoholWipes','Retaillaza',155,'at','Yes'),(1124,159,409,'Makeup_wedges','Retailbes',325,'mattis.','Yes'),(1125,165,409,'Makeup_removers','Retailonus',441,'iaculis','No'),(1126,173,409,'Shadow_shield','Storeprism',200,'non','No'),(1127,161,409,'Shadow_shield','Storen',328,'risus.','No'),(1128,167,409,'Mascara_wands','Storeprism',388,'lobortis','Yes'),(1129,152,409,'AlcoholWipes','Storeverse',125,'semper','Yes'),(1130,174,410,'Raspberry','Retaillaza',235,'mauris','Yes'),(1131,164,410,'Cherry','Storebea',138,'ac','Yes'),(1132,159,410,'Raspberry','Retailonus',375,'malesuada','Yes'),(1133,154,410,'Sidecar','Retailry',928,'ante,','No'),(1134,174,410,'Cherry','Retailbia',780,'fermentum','No'),(1135,168,410,'Cherry','Storearo',148,'commodo','Yes'),(1136,157,410,'DragonFruit','Retaillytical',545,'Maecenas','Yes'),(1137,153,410,'Raspberry','Storearc',227,'a','No'),(1138,169,410,'Sidecar','Storeprism',218,'non,','No'),(1139,163,410,'Dates','Storewind',516,'risus.','No'),(1140,155,410,'Grapes','Retailster',778,'quis','No'),(1141,159,410,'Sidecar','Storequipo',289,'eget,','No'),(1142,165,410,'Mango','Retaillaza',568,'Quisque','No'),(1143,173,410,'SexOnTheBeach','Storeium',235,'in,','Yes'),(1144,152,410,'Cherry','Storearo',880,'nec','No'),(1145,152,410,'Cherry','Storearo',271,'vestibulum.','No'),(1146,163,410,'Dates','Storeooze',883,'magna.','Yes'),(1147,168,410,'Mango','Storebea',468,'tristique','Yes'),(1148,158,410,'DragonFruit','Storescape',728,'ac,','Yes'),(1149,152,410,'Raspberry','Retailster',755,'cursus','Yes'),(1150,165,400,'nail_file','Retailprism',2137,'sed,','No'),(1151,159,400,'chair','Storen',2946,'at,','Yes'),(1152,160,400,'mop','Retailium',2452,'metus.','Yes'),(1153,173,400,'keychain','Storeverse',2971,'ligula.','No'),(1154,163,400,'floor','Retailish',980,'semper','Yes'),(1155,164,400,'piano','Retailprism',2619,'nibh.','No'),(1156,170,400,'sharpie','Retailry',1864,'augue','No'),(1157,157,400,'table','Storeorama',2808,'Vivamus','Yes'),(1158,165,400,'television','Storeadri',1361,'consequat','No'),(1159,160,400,'doll','Storeadri',1519,'dolor.','Yes'),(1160,163,400,'wallet','Storebes',2937,'quam.','No'),(1161,173,400,'lamp_shade','Retailquipo',1519,'pellentesque','Yes'),(1162,158,400,'nail','Storebea',2823,'tortor.','Yes'),(1163,161,400,'keyboard','Storeverse',2554,'sit','Yes'),(1164,164,400,'wallet','Retailprism',1250,'elit.','Yes'),(1165,165,400,'drawer','Storebes',2246,'Cum','No'),(1166,151,400,'hanger','Storescape',1939,'Mauris','No'),(1167,163,400,'piano','Retailbia',2653,'ut','Yes'),(1168,152,400,'flag','Storeverse',2212,'Phasellus','Yes'),(1169,168,400,'fork','Storeoont',1741,'non','Yes'),(1170,165,400,'plate','Storeooze',2573,'tincidunt','Yes'),(1171,153,400,'greeting_card','Retailgenics',1164,'dui.','No'),(1172,174,400,'keyboard','Storeverse',1609,'Maecenas','Yes'),(1173,174,400,'canvas','Storeooze',2609,'nonummy','No'),(1174,167,400,'magnet','Storen',2717,'risus.','Yes'),(1175,168,400,'bowl','Retailio',1902,'enim','No'),(1176,161,400,'mop','Storen',2445,'Pellentesque','Yes'),(1177,151,400,'white_out','Storebes',2369,'Aliquam','Yes'),(1178,166,400,'sharpie','Retailry',2540,'et','No'),(1179,158,400,'table','Retailster',2981,'magna','No'),(1180,172,401,'Marigold','Retaillytical',627,'vulputate','No'),(1181,154,401,'Cosmos','Retailnetic',578,'ac','No'),(1182,166,401,'Tulip','Storeadil',496,'Pellentesque','Yes'),(1183,163,401,'Delphinium','Retaillaza',993,'vulputate','No'),(1184,160,401,'Lilac','Retailium',511,'taciti','No'),(1185,165,401,'Marigold','Storex',1140,'nascetur','Yes'),(1186,160,401,'Hyacinth','Storeify',961,'augue','No'),(1187,161,401,'Hydrangea','Retailable',743,'odio','Yes'),(1188,153,401,'Lavender','Storeium',1021,'eu','Yes'),(1189,156,401,'Lily','Storearo',485,'Fusce','No'),(1190,160,401,'Carnation','Storen',1083,'placerat.','No'),(1191,151,401,'Pansy','Retailgenics',1274,'egestas','No'),(1192,153,401,'Lily','Storeorama',597,'mollis','No'),(1193,159,401,'Hibiscus','Storeprism',1124,'orci','No'),(1194,169,401,'Hydrangea','Storeooze',797,'Pellentesque','Yes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier_ID` mediumint NOT NULL,
  `Supplier_name` varchar(255) NOT NULL,
  `Supplier_pass` varchar(255) NOT NULL,
  `Supplier_mobile` varchar(100) NOT NULL,
  `Supplier_email` varchar(255) DEFAULT NULL,
  `Supplier_street` varchar(255) NOT NULL,
  `Supplier_city` varchar(255) NOT NULL,
  `Supplier_country` varchar(100) NOT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (150,'Quinn George','LUP58DAH1HB','5163226176','quinngeorge@aol.net','4761 Tellus. Ave','Kohima','India'),(151,'Ezra Padilla','JKC17HPH2PG','4513365162','ezrapadilla@protonmail.org','Ap #992-859 Nunc Rd.','Kavaratti','India'),(152,'Benjamin Harper','PEB59PCK0ST','5323676512','benjaminharper@yahoo.couk','2421 Justo. Rd.','Panjim','India'),(153,'Kyla Livingston','TVC55VLD3IL','7391731834','kylalivingston1900@yahoo.com','Ap #951-9970 Cursus. Road','Bellary','India'),(154,'Breanna Mercado','JFX28POL1WY','5654723046','breannamercado@google.edu','934-2614 Maecenas Avenue','Wazirabad','India'),(155,'Joseph Dunn','WTO79ZEF2UR','7284015959','josephdunn6602@protonmail.edu','8877 Egestas Avenue','Baidyabati','India'),(156,'Sierra Hunter','FTN12VFS9JS','6225320026','sierrahunter@aol.org','583-9938 Est Rd.','Gandhinagar','India'),(157,'Talon Goff','EBJ77RCN9OI','1586939734','talongoff@hotmail.couk','580-2992 Nonummy St.','Aizwal','India'),(158,'Malachi Griffin','PWX11SXW0GL','1641399251','malachigriffin1247@outlook.ca','552 Nullam St.','Pondicherry','India'),(159,'Neil Wheeler','RFF84IXL6RW','1703157887','neilwheeler2987@hotmail.org','7852 Mi Street','Aizwal','India'),(160,'Berk Austin','JGK74NPP4OD','9589802987','berkaustin@yahoo.org','2128 Fusce Av.','Gwalior','India'),(161,'Clarke Roman','EPI51GXG1UM','7323666288','clarkeroman7283@icloud.net','P.O. Box 275, 3946 Malesuada Avenue','Hassan','India'),(162,'Calista Lucas','ORN61NSS6JP','0147563117','calistalucas4503@aol.couk','Ap #241-4538 Odio. Street','Agartala','India'),(163,'Noah Bauer','LPU44RVK3HL','3254588531','noahbauer1799@outlook.edu','4396 Nunc St.','Anand','India'),(164,'Jasmine Browning','GQS75HVO2XX','8352993886','jasminebrowning@hotmail.com','870-8280 Diam Ave','Karnal','India'),(165,'Maia Clarke','QRL36NMD8RX','7662202977','maiaclarke2255@icloud.net','Ap #528-7932 Rutrum Rd.','Jammu','India'),(166,'Cailin O\'donnell','VIE67ONS1DK','2323448184','cailinodonnell@hotmail.edu','672-2641 Ullamcorper, Rd.','Surendranagar','India'),(167,'Nadine Mathis','BDR52DHM8YL','3847534276','nadinemathis1636@icloud.couk','442-5830 Phasellus St.','Palakkad','India'),(168,'Cedric Mullen','PCH67PWC4EJ','3465645405','cedricmullen@yahoo.com','7269 Porttitor Road','Kohima','India'),(169,'Jackson Carter','FJB34TTS7YW','6724814430','jacksoncarter5841@google.com','P.O. Box 388, 4892 Consectetuer St.','Itanagar','India'),(170,'Jared Burks','BJZ41LFO4KX','9794454282','jaredburks2981@icloud.org','P.O. Box 554, 596 Semper Road','Allahabad','India'),(171,'Clio Hale','GRG73OTC3RE','2686217982','cliohale3618@yahoo.ca','P.O. Box 245, 2094 Quisque Avenue','Jodhpur','India'),(172,'Paula Hunter','TCC50WCN8GF','5862314431','paulahunter8404@hotmail.org','666 Aptent Ave','Aizwal','India'),(173,'Cheyenne Ramirez','XYO25SZK2PK','0537847348','cheyenneramirez5250@protonmail.ca','Ap #801-2832 Elit Rd.','Delhi','India'),(174,'Samson Jordan','CTJ73NPD2KV','1743476672','samsonjordan8163@google.edu','Ap #350-4912 Et, Avenue','Itanagar','India');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 18:31:28
