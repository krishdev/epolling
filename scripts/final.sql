-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: eyf
-- ------------------------------------------------------
-- Server version	5.6.31-log

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
-- Table structure for table `constituencies`
--

DROP TABLE IF EXISTS `constituencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constituencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constituency` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `stateCode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constituencies`
--

LOCK TABLES `constituencies` WRITE;
/*!40000 ALTER TABLE `constituencies` DISABLE KEYS */;
INSERT INTO `constituencies` VALUES (1,'Gummidipoondi','Tiruvallur','TN'),(2,'Ponneri','Tiruvallur','TN'),(3,'Tiruttani','Tiruvallur','TN'),(4,'Thiruvallur','Chennai','TN'),(5,'Poonamallee','Tiruvallur','TN'),(6,'Avadi','Tiruvallur','TN'),(7,'Maduravoyal','Tiruvallur','TN'),(8,'Ambattur','Tiruvallur','TN'),(9,'Madavaram','Tiruvallur','TN'),(10,'Thiruvottiyur','Tiruvallur','TN'),(11,'Radhakrishnan Nagar','Chennai','TN'),(12,'Perambur','Chennai','TN'),(13,'Kolathur','Chennai','TN'),(14,'Villivakkam','Chennai','TN'),(15,'Thiru. Vi. Ka. Nagar','Chennai','TN'),(16,'Egmore','Chennai','TN'),(17,'Royapuram','Chennai','TN'),(18,'Harbour','Chennai','TN'),(19,'Chepauk-Thiruvallikeni','Chennai','TN'),(20,'Thousand Lights','Chennai','TN'),(21,'Anna Nagar','Chennai','TN'),(22,'Virugambakkam','Chennai','TN'),(23,'Saidapet','Chennai','TN'),(24,'T. Nagar','Chennai','TN'),(25,'Mylapore','Chennai','TN'),(26,'Velachery','Chennai','TN'),(27,'Sholinganallur','Chengalpattu','TN'),(28,'Alandur','Kancheepuram','TN'),(29,'Sriperumbudur','Kancheepuram','TN'),(30,'Pallavaram','Chengalpattu','TN'),(31,'Tambaram','Chengalpattu','TN'),(32,'Chengalpattu','Chengalpattu','TN'),(33,'Tirupporur','Chengalpattu','TN'),(34,'Cheyyur','Chengalpattu','TN'),(35,'Maduranthakam','Chengalpattu','TN'),(36,'Uthiramerur','Kancheepuram','TN'),(37,'Kancheepuram','Kancheepuram','TN'),(38,'Arakkonam','Ranipet','TN'),(39,'Sholingur','Ranipet','TN'),(40,'Katpadi','Vellore','TN'),(41,'Ranipet','Ranipet','TN'),(42,'Arcot','Ranipet','TN'),(43,'Vellore (Vellore south)','Vellore','TN'),(44,'Anaikattu','Vellore','TN'),(45,'K. V. Kuppam','Vellore','TN'),(46,'Gudiyattam','Vellore','TN'),(47,'Vaniyambadi','Tirupattur','TN'),(48,'Ambur','Tirupattur','TN'),(49,'Jolarpet','Tirupattur','TN'),(50,'Tirupattur, Vellore','Tirupattur','TN'),(51,'Uthangarai','Krishnagiri','TN'),(52,'Bargur','Krishnagiri','TN'),(53,'Krishnagiri','Krishnagiri','TN'),(54,'Veppanahalli','Krishnagiri','TN'),(55,'Hosur','Krishnagiri','TN'),(56,'Thalli','Krishnagiri','TN'),(57,'Palacode','Dharmapuri','TN'),(58,'Pennagaram','Dharmapuri','TN'),(59,'Dharmapuri','Dharmapuri','TN'),(60,'Pappireddippatti','Dharmapuri','TN'),(61,'Harur','Dharmapuri','TN'),(62,'Chengam','Tiruvannamalai','TN'),(63,'Tiruvannamalai','Tiruvannamalai','TN'),(64,'Kilpennathur','Tiruvannamalai','TN'),(65,'Kalasapakkam','Tiruvannamalai','TN'),(66,'Polur','Tiruvannamalai','TN'),(67,'Arani','Tiruvannamalai','TN'),(68,'Cheyyar','Tiruvannamalai','TN'),(69,'Vandavasi','Tiruvannamalai','TN'),(70,'Gingee','Viluppuram','TN'),(71,'Mailam','Viluppuram','TN'),(72,'Tindivanam','Viluppuram','TN'),(73,'Vanur','Viluppuram','TN'),(74,'Villupuram','Viluppuram','TN'),(75,'Vikravandi','Viluppuram','TN'),(76,'Tirukkoyilur','Viluppuram','TN'),(77,'Ulundurpettai','Kallakurichi','TN'),(78,'Rishivandiyam','Kallakurichi','TN'),(79,'Sankarapuram','Kallakurichi','TN'),(80,'Kallakurichi','Kallakurichi','TN'),(81,'Gangavalli','Salem','TN'),(82,'Attur','Salem','TN'),(83,'Yercaud','Salem','TN'),(84,'Omalur','Salem','TN'),(85,'Mettur','Salem','TN'),(86,'Edappadi','Salem','TN'),(87,'Sankari','Salem','TN'),(88,'Salem (West)','Salem','TN'),(89,'Salem (North)','Salem','TN'),(90,'Salem (South)','Salem','TN'),(91,'Veerapandi','Salem','TN'),(92,'Rasipuram','Namakkal','TN'),(93,'Senthamangalam','Namakkal','TN'),(94,'Namakkal','Namakkal','TN'),(95,'Paramathi Velur','Namakkal','TN'),(96,'Tiruchengodu','Namakkal','TN'),(97,'Kumarapalayam','Namakkal','TN'),(98,'Erode (East)','Erode','TN'),(99,'Erode (West)','Erode','TN'),(100,'Modakkurichi','Erode','TN'),(101,'Dharapuram','Tiruppur','TN'),(102,'Kangayam','Tiruppur','TN'),(103,'Perundurai','Erode','TN'),(104,'Bhavani','Erode','TN'),(105,'Anthiyur','Erode','TN'),(106,'Gobichettipalayam','Erode','TN'),(107,'Bhavanisagar','Erode','TN'),(108,'Udhagamandalam','Nilgiris','TN'),(109,'Coonoor','Nilgiris','TN'),(110,'Gudalur','Nilgiris','TN'),(111,'Mettupalayam','Coimbatore','TN'),(112,'Avanashi','Tiruppur','TN'),(113,'Tiruppur North','Tiruppur','TN'),(114,'Tiruppur South','Tiruppur','TN'),(115,'Palladam','Tiruppur','TN'),(116,'Sulur','Coimbatore','TN'),(117,'Kavundampalayam','Coimbatore','TN'),(118,'Coimbatore North','Coimbatore','TN'),(119,'Thondamuthur','Coimbatore','TN'),(120,'Coimbatore South','Coimbatore','TN'),(121,'Singanallur','Coimbatore','TN'),(122,'Kinathukadavu','Coimbatore','TN'),(123,'Pollachi','Coimbatore','TN'),(124,'Valparai','Coimbatore','TN'),(125,'Udumalaipettai','Tiruppur','TN'),(126,'Madathukulam','Tiruppur','TN'),(127,'Palani','Dindigul','TN'),(128,'Oddanchatram','Dindigul','TN'),(129,'Athoor','Dindigul','TN'),(130,'Nilakottai','Dindigul','TN'),(131,'Natham','Dindigul','TN'),(132,'Dindigul','Dindigul','TN'),(133,'Vedasandur','Dindigul','TN'),(134,'Aravakurichi','Karur','TN'),(135,'Karur','Karur','TN'),(136,'Krishnarayapuram','Karur','TN'),(137,'Kulithalai','Karur','TN'),(138,'Manapaarai','Tiruchirappalli','TN'),(139,'Srirangam','Tiruchirappalli','TN'),(140,'Tiruchirappalli (West)','Tiruchirappalli','TN'),(141,'Tiruchirappalli (East)','Tiruchirappalli','TN'),(142,'Thiruverumbur','Tiruchirappalli','TN'),(143,'Lalgudi','Tiruchirappalli','TN'),(144,'Manachanallur','Tiruchirappalli','TN'),(145,'Musiri','Tiruchirappalli','TN'),(146,'Thuraiyur','Tiruchirappalli','TN'),(147,'Perambalur','Perambalur','TN'),(148,'Kunnam','Perambalur','TN'),(149,'Ariyalur','Ariyalur','TN'),(150,'Jayankondam','Ariyalur','TN'),(151,'Tittakudi','Cuddalore','TN'),(152,'Virudhachalam','Cuddalore','TN'),(153,'Neyveli','Cuddalore','TN'),(154,'Panruti','Cuddalore','TN'),(155,'Cuddalore','Cuddalore','TN'),(156,'Kurinjipadi','Cuddalore','TN'),(157,'Bhuvanagiri','Cuddalore','TN'),(158,'Chidambaram','Cuddalore','TN'),(159,'Kattumannarkoil','Cuddalore','TN'),(160,'Sirkazhi','Mayiladuthurai','TN'),(161,'Mayiladuthurai','Mayiladuthurai','TN'),(162,'Poompuhar','Mayiladuthurai','TN'),(163,'Nagapattinam','Nagapattinam','TN'),(164,'Kilvelur','Nagapattinam','TN'),(165,'Vedaranyam','Nagapattinam','TN'),(166,'Thiruthuraipoondi','Thiruvarur','TN'),(167,'Mannargudi','Thiruvarur','TN'),(168,'Thiruvarur','Thiruvarur','TN'),(169,'Nannilam','Thiruvarur','TN'),(170,'Thiruvidaimarudur','Thanjavur','TN'),(171,'Kumbakonam','Thanjavur','TN'),(172,'Papanasam','Thanjavur','TN'),(173,'Thiruvaiyaru','Thanjavur','TN'),(174,'Thanjavur','Thanjavur','TN'),(175,'Orathanadu','Thanjavur','TN'),(176,'Pattukkottai','Thanjavur','TN'),(177,'Peravurani','Thanjavur','TN'),(178,'Gandharvakottai','Pudukkottai','TN'),(179,'Viralimalai','Pudukkottai','TN'),(180,'Pudukkottai','Pudukkottai','TN'),(181,'Thirumayam','Pudukkottai','TN'),(182,'Alangudi','Pudukkottai','TN'),(183,'Aranthangi','Pudukkottai','TN'),(184,'Karaikudi','Sivaganga','TN'),(185,'Tiruppattur, Sivaganga','Sivaganga','TN'),(186,'Sivaganga','Sivaganga','TN'),(187,'Manamadurai, (Ilayangudi merged in 2007)','Sivaganga','TN'),(188,'Melur','Madurai','TN'),(189,'Madurai East','Madurai','TN'),(190,'Sholavandan','Madurai','TN'),(191,'Madurai North','Madurai','TN'),(192,'Madurai South','Madurai','TN'),(193,'Madurai Central','Madurai','TN'),(194,'Madurai West','Madurai','TN'),(195,'Thiruparankundram','Madurai','TN'),(196,'Tirumangalam','Madurai','TN'),(197,'Usilampatti, (Sedapatti merged in 2007)','Madurai','TN'),(198,'Andipatti','Theni','TN'),(199,'Periyakulam','Theni','TN'),(200,'Bodinayakanur','Theni','TN'),(201,'Cumbum','Theni','TN'),(202,'Rajapalayam','Virudhunagar','TN'),(203,'Srivilliputhur','Virudhunagar','TN'),(204,'Sattur','Virudhunagar','TN'),(205,'Sivakasi','Virudhunagar','TN'),(206,'Virudhunagar','Virudhunagar','TN'),(207,'Aruppukkottai','Virudhunagar','TN'),(208,'Tiruchuli','Virudhunagar','TN'),(209,'Paramakudi','Ramanathapuram','TN'),(210,'Tiruvadanai','Ramanathapuram','TN'),(211,'Ramanathapuram','Ramanathapuram','TN'),(212,'Mudhukulathur','Ramanathapuram','TN'),(213,'Vilathikulam','Thoothukudi','TN'),(214,'Thoothukudi','Thoothukudi','TN'),(215,'Tiruchendur','Thoothukudi','TN'),(216,'Thiruvaikundam','Thoothukudi','TN'),(217,'Ottapidaram','Thoothukudi','TN'),(218,'Kovilpatti','Thoothukudi','TN'),(219,'Sankarankovil','Tenkasi','TN'),(220,'Vasudevanallur','Tenkasi','TN'),(221,'Kadayanallur','Tenkasi','TN'),(222,'Tenkasi','Tenkasi','TN'),(223,'Alangulam','Tenkasi','TN'),(224,'Tirunelveli','Tirunelveli','TN'),(225,'Ambasamudram','Tirunelveli','TN'),(226,'Palayamkottai','Tirunelveli','TN'),(227,'Nanguneri','Tirunelveli','TN'),(228,'Radhapuram','Tirunelveli','TN'),(229,'Kanniyakumari','Kanniyakumari','TN'),(230,'Nagercoil','Kanniyakumari','TN'),(231,'Colachal','Kanniyakumari','TN'),(232,'Padmanabhapuram','Kanniyakumari','TN'),(233,'Vilavancode','Kanniyakumari','TN'),(234,'Killiyoor','Kanniyakumari','TN'),(235,'Mannadipet','Puducherry','PY'),(236,'Thirubuvanai','Puducherry','PY'),(237,'Ossudu','Puducherry','PY'),(238,'Mangalam','Puducherry','PY'),(239,'Villianur','Puducherry','PY'),(240,'Ozhukarai','Puducherry','PY'),(241,'Kadirkamam','Puducherry','PY'),(242,'Indira Nagar','Puducherry','PY'),(243,'Thattanchavady','Puducherry','PY'),(244,'Kamaraj Nagar','Puducherry','PY'),(245,'Lawspet','Puducherry','PY'),(246,'Kalapet','Puducherry','PY'),(247,'Muthialpet','Puducherry','PY'),(248,'Raj Bhavan','Puducherry','PY'),(249,'Oupalam','Puducherry','PY'),(250,'Orleampeth','Puducherry','PY'),(251,'Nellithope','Puducherry','PY'),(252,'Mudaliarpet','Puducherry','PY'),(253,'Ariankuppam','Puducherry','PY'),(254,'Manavely','Puducherry','PY'),(255,'Embalam','Puducherry','PY'),(256,'Nettapakkam','Puducherry','PY'),(257,'Bahour','Puducherry','PY'),(258,'Nedungadu','Karaikal','PY'),(259,'Thirunallar','Karaikal','PY'),(260,'Karaikal North','Karaikal','PY'),(261,'Karaikal South','Karaikal','PY'),(262,'Neravy T R Pattinam','Karaikal','PY'),(263,'Mahe','Mahe','PY'),(264,'Yanam','Yanam','PY');
/*!40000 ALTER TABLE `constituencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_token`
--

DROP TABLE IF EXISTS `email_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_token`
--

LOCK TABLES `email_token` WRITE;
/*!40000 ALTER TABLE `email_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_address`
--

DROP TABLE IF EXISTS `ip_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(45) NOT NULL,
  `count` int(11) NOT NULL,
  `isBlocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_address`
--

LOCK TABLES `ip_address` WRITE;
/*!40000 ALTER TABLE `ip_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `stateCode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'DMK/CONGRESS Alliance','TN'),(2,'ADMK/BJP Alliance','TN'),(3,'Naam Tamilar NTK','TN'),(4,'Makkal Nidhi Maiyam MNM','TN'),(5,'AMMK Alliance','TN'),(6,'INC Alliance','PY'),(7,'AINRC Alliance','PY');
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polling`
--

DROP TABLE IF EXISTS `polling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constituencyId` int(11) NOT NULL,
  `partyId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polling`
--

LOCK TABLES `polling` WRITE;
/*!40000 ALTER TABLE `polling` DISABLE KEYS */;
/*!40000 ALTER TABLE `polling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'TN','Tamil Nadu'),(2,'PY','Puducherry');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 16:58:53
