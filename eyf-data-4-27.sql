-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: eyf
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `constituencies`
--

DROP TABLE IF EXISTS `constituencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constituencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `constituency` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `stateCode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_token`
--

LOCK TABLES `email_token` WRITE;
/*!40000 ALTER TABLE `email_token` DISABLE KEYS */;
INSERT INTO `email_token` VALUES (1,'token','dX-6HFaLTWNPfMH_sWq4r4:APA91bEDlZpagWEWFUmX2911EBiu_fUfcRa_qQYnE0CXQJ2hDQThXmfF0IqLr2Ka3sW9JrGvkjuS0Nn9669jkSyz5dkzHhlhBRxvOX1gEjYhR7_R_VJGq5sGBa1p6yRLD1STi88vXSps'),(2,'email','sabhadhini@gmail.com'),(3,'token','eeKpn1oDsIQaO3YS70xWAh:APA91bE-znPMdWYHcjx9dkqr7P4X1Czr3tbXpOho4H5YGJnL5Jo0QEH2kb_7Xfqx7s4odQZwag-JLee2eNd7ade1xcZ3qDTTJncxGBLkC7uEqhlX8I-gGqmcO8zBfAUlznelThZnghTO'),(4,'email','karthikasarathy84@gmail.com'),(5,'email','shreenivas.ram@gmail.com'),(6,'email','crazykaarthi@gmail.com'),(7,'token','feKaLK7Ag7X45Q5z4viAFV:APA91bEprV05lynG03PoFo4M2f_klKtBpWl5k_MGshhiWNX_tcpXcpXvhq0CpJQzZgO8UHZj74w8yxohFtRJgyu-CAgKrA4z_vWID518ylRi9gRd1Zhhrdc2H-P57ZdsuZQCmvh-6ygy'),(8,'email','sanmugavadivel1mba@gmail.com'),(9,'email','mailkrishna2@gmail.com'),(10,'email','rajen.nanda@gmail.com'),(11,'token','cjcHjW-IbZz_VZ9HeJRCch:APA91bGeFLz8NxPMdOZ1XqzyBs8vNGHEHmbgl4l2fY4tOEXdeSbwJsboX3Uh5PjK-donXqph9Z9LEdY41IHS-QvoC-6mfXSTp4e-fM6l_BUtxMJQ0Jfz90tu01XzGx6I2tpJpsuwaQI2'),(12,'token','frOQgm6_cZXAb-mz8kbwMh:APA91bEK2LOh8pt0KizQ3VNN0anjREsEozi5Filx7yxoKgKMoX-SCd9zOknTxidnb5WUvizp50niwIld4D7YArV5WAMnKHQIZJ4XeL4flD71Ul3P6e1kmuDHa-3xSYlJ5QXBs1jju783'),(13,'token','cHiv6Ix1HQn3vsoSkRV5qG:APA91bGoQddEutMeQ1cBG5idjz_k-ZL4cdRjyGnyi_Qqgi7bOG5Rw36vdIr9sX-GDrDSkUdvJmb7BbAf61wAsyLRpRYo9f5g1MJnZqhFHxBKdRqTLoxSu6hQ3qFT91ozkgG0VzF1VrjP'),(14,'token','eqTwpMf9_2nhot860KCH-w:APA91bFYZjBn_aWZRedZTaCgyX0vpiZLKx9jlB6GOiZHGU_K1Rm59qQXNqu2v74GDovfg26J-ArLo59RCEJaTJM4MXoXq8nc-XcA1ivQQwtBn-QslsdlisKtPPyeF-U72gji8LOy3utx'),(15,'token','fE-dfSQi0wRw4t4n1yz_hx:APA91bGgBs0jiRFacWvVC4D06kfABd8AqMjoEMUHqeBe5X4jBAoEGsKb_ctWR7LGTuWXFH39lGpzVAo8zLwfRCPSpf1jTniihUnEp3b7VRpFpS28WbzeMZgwZwS9P15syHx1erHsCUnx'),(16,'email','emailtorsounder@gmail.com'),(17,'email','vijip19@gmail.com'),(18,'email','santosh_remedy@yahoo.co.in'),(19,'token','dhudu0GTJhcUzoo29XYZuW:APA91bHALAseQX6TiQNXunIqdNFgdfSOp2vfXhP5TMtRINV2qEZF-ytKPhrpXEiTxh-ZaPrOkm1ykWvYvQDSZEEyL9wOen8QtfcEBaujTAQgOrOSd8fLOIFeEsmdJ8tI9WJS3aFpQ3rY'),(20,'email','sheik9835@gmail.com'),(21,'email','9951.arctic.dr@gmail.com'),(22,'email','dharmesh.g10@gmail.com'),(23,'email','sureshkannas@gmail.com'),(24,'token','d4-FYa44DBnJAQh_hqGrKO:APA91bExVSrtU3d4hIoiOz3ptd0wj3ZhFMgmsX93lsuY5tKMIYSLkdlE_zZiF8Ws6aPVPoloCSCc9W8SLXu9XUsJemTj9XK5R3OFGlnFFmrWFYjWeNYtpmPHfBHRS6IUZAxOIMXZ5Y4L'),(25,'token','cgDANQ-k3_fAA562O7gMxx:APA91bEpyUpY3geVO5jAGb0RxHwmh5wlwilHgjuiKiqYZr0PaeHmHAsEGlsiG4nyuaLaY5zPtNjgaEwV3HSDlQtul9g_pW6BOmrlf0K98NMhHE_yXXm3T4pksgZoWDXnlfvQzVdSLNuA'),(26,'email','sar_rene@yahoo.com'),(27,'token','dtG6_D-J6eMMju03FvstLa:APA91bGxRzzPPUUnx7e6q4Dxn6cKtyr18tYpbiuZ28__apPj6i4gDyBUSQ9hjRxRCpSOPjSkLls2yD_CLb8NvOPtt7BR22Uo2_28bAl28fdvGEd0OzxoHaM547H32Sp8ojUCya8mUqG5'),(28,'email','rajendran710@gmail.com'),(29,'email','chiranjeevisekar@gmail.com'),(30,'email','gokulraj15cse039@gmail.com'),(31,'email','karthiwithedu@gmail.com'),(32,'token','fx2_aACaL5n020fhgLyTnU:APA91bHmaxorih4Z-cAXP6dHvaR9YyqS-1B7dNBtZB7yvOM_RI1AenrwZXaTdMzG67Fqa2_BihSQ4EZWgRxEdbc0N8HLZ7tlvH3WLVMAeC2OgtwLYx6Ocv6yg8hYS6RDWlIDz6vRlLxx'),(33,'token','c0MvJPxXd5eNaPn8TGLwNg:APA91bGvdZxr-Yx9O20iUVaQxHwi6e8Be05_jkqRIgYt8gruvwXDaqBeSpsWKl0pGx9Cxo_3uoz2IixOSvmwijzNRac1ec5XWV5Im6jV23zF4kZ6iBPFevtZbEsgmjnkRBXu4UTvqF3y'),(34,'token','dP6PK1PTOaH3yiHwtEppp8:APA91bEOL11HZ3b97NSxYYHrmKUTbpw1p5BkQt6vlm3W8NjZNmyhqHUflLnw9Bsifwpv7o7bpi_YirNB_e-KdNW8fGJT2rq7-iHSiKh5BJt6m9tZ3fJj3OmmzDARyCDVpcWNxzECWnrK'),(35,'email','gokulviswa.sivam@gmail.com'),(36,'email','duraibalaji@yahoo.com'),(37,'email','theerajkumar46@gmail.com'),(38,'token','d7AMfEov_4TDPHDStSeCAF:APA91bGoWUus6sZbpj8phQJ-IOB4wIN5ZuupoPC6N-xgFaKCyUiMQhfQ_BplsjFi_WTc-NhgdMYcd7r6rBmZIbHDbriBsmHoMcWW3oVdmz6FFpBKaBrblgDbWy66J9H6IdIn5azXSO7K'),(39,'email','karthikmeenashi@gmail.com'),(40,'email','nishad_karimbanam@yahoo.co.in'),(41,'email','udaybodi@gmail.com'),(42,'email','prakash.selva1@gmail.com'),(43,'email','esmnkl@gmail.com'),(44,'email','aswathn1696@gmail.com'),(45,'email','msarguna@yahoo.com'),(46,'email','aravind12mech@gmail.com'),(47,'email','kirthi12star@gmail.com'),(48,'email','loganspeaks@gmail.com'),(49,'email','jerome16u@gmail.com'),(50,'token','fkGiCcryQKzBvN2E2R_G0P:APA91bExYU1Sdhofevl48lW9PsGvCM_jskCkbHC1cRramPiqKrbYetuXPZQu3rDPHCqYcgxCAszCt_G5BsWc3bT1a9UbGYXHSDc-eQ30BjYiTH-YVwkEyclCYdN2nHhgrAZ7L-0qmIev'),(51,'email','vickyprksh@gmail.com'),(52,'email','scar.aryan48@gmail.com'),(53,'email','savitha.nagavalli@gmail.com'),(54,'email','ibrah.lodi@gmail.com'),(55,'email','mukesh.papi.107@gmail.com'),(56,'email','goodbutbadbutright@gmail.com'),(57,'email','knavenkumardemoemail@gmail.com'),(58,'email','selvasamthoshbv@gmail.com'),(59,'email','adishiny@gmail.com'),(60,'email','nithishgunasekaran1@gmail.com'),(61,'email','rajhemanth318@gmail.com'),(62,'email','akashakashraina234@gmail.com'),(63,'email','dkokilavani@gmail.com'),(64,'email','kamalsiva09@gmail.com'),(65,'email','g.joefelix@gmail.com'),(66,'email','sameer.mubaraq@gmail.com'),(67,'email','ktgowtham20@gmail.com'),(68,'email','muralimk58@gmail.com'),(69,'email','preethimohanraj2004@gmail.com'),(70,'email','jagadeeshbakthav@gmail.com'),(71,'email','ragudev9944@gmail.com'),(72,'email','sraje05@gmail.com'),(73,'email','ajaashiq@gmail.com'),(74,'email','sakthivel.s.kkd@gmail.com'),(75,'email','sribalaji.vasanth@gmail.com'),(76,'email','saravanaganesh555@gmail.com'),(77,'email','saddamakram15@gmail.com'),(78,'token','eDUbpWsx_SJrK9SryP13J5:APA91bHEGMZfYvAz0l-243ZQZL8GJTfPKyFgR0l1rfaAyAo8CaqxDBl7tSrsmbbEc80A-6Eab1L-TEg3T1Soqosd0LK0xMCXklZ5cCDZy3_dnAw7Vf7kGdgMxGx4YWZuzExes2mm4-6r'),(79,'token','d9hW94aQnFSIfpYqLKxOZ-:APA91bErGZyceS0HbDJuctNwTvPLeR_JDrg29nWWSTrqEATDbbMRc87Eu_AxPoLakny40uJpfBsKsebEykjmFoKbNu8GS1ekCGvheGJWwx68l_R5volVGlbiZIvx2HQth0EldnOqGczV'),(80,'email','kumar.senthil.ks@gmail.com'),(81,'email','jeraldsaminathan@yahoo.com');
/*!40000 ALTER TABLE `email_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_address`
--

DROP TABLE IF EXISTS `ip_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(45) NOT NULL,
  `count` int NOT NULL,
  `isBlocked` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `stateCode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `constituencyId` int NOT NULL,
  `partyId` int NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polling`
--

LOCK TABLES `polling` WRITE;
/*!40000 ALTER TABLE `polling` DISABLE KEYS */;
INSERT INTO `polling` VALUES (1,11,2,'2021-04-06 04:40:25'),(2,122,3,'2021-04-06 04:41:56'),(3,122,2,'2021-04-06 04:45:11'),(4,259,6,'2021-04-06 05:16:03'),(5,123,4,'2021-04-06 05:18:45'),(6,85,3,'2021-04-06 05:19:23'),(7,172,4,'2021-04-06 05:29:01'),(8,122,1,'2021-04-06 05:30:13'),(9,261,6,'2021-04-06 05:31:42'),(10,73,1,'2021-04-06 05:33:40'),(11,12,2,'2021-04-06 05:34:14'),(12,132,1,'2021-04-06 05:35:44'),(13,122,2,'2021-04-06 05:41:47'),(14,22,1,'2021-04-06 05:43:29'),(15,31,2,'2021-04-06 05:44:31'),(16,117,4,'2021-04-06 05:46:13'),(17,94,2,'2021-04-06 05:47:32'),(18,261,6,'2021-04-06 05:50:55'),(19,111,2,'2021-04-06 05:53:38'),(20,199,2,'2021-04-06 05:54:44'),(21,12,2,'2021-04-06 05:56:15'),(22,171,2,'2021-04-06 05:58:15'),(23,8,2,'2021-04-06 05:59:29'),(24,116,2,'2021-04-06 06:02:17'),(25,92,2,'2021-04-06 06:02:58'),(26,27,3,'2021-04-06 06:06:20'),(27,118,1,'2021-04-06 06:13:32'),(28,6,4,'2021-04-06 06:20:44'),(29,135,2,'2021-04-06 06:37:16'),(30,119,4,'2021-04-06 06:54:37'),(31,27,2,'2021-04-06 07:12:49'),(32,90,4,'2021-04-06 07:23:59'),(33,122,2,'2021-04-06 07:27:42'),(34,120,4,'2021-04-06 07:30:48'),(35,140,2,'2021-04-06 07:32:00'),(36,4,1,'2021-04-06 07:33:10'),(37,120,1,'2021-04-06 07:44:46'),(38,125,2,'2021-04-06 07:44:55'),(39,123,4,'2021-04-06 07:44:56'),(40,22,4,'2021-04-06 07:48:53'),(41,25,1,'2021-04-06 07:58:53'),(42,120,4,'2021-04-06 08:30:40'),(43,28,2,'2021-04-06 09:13:41'),(44,95,1,'2021-04-06 09:18:33'),(45,121,1,'2021-04-06 09:27:45'),(46,189,2,'2021-04-06 09:47:06'),(47,23,2,'2021-04-06 10:27:59'),(48,121,4,'2021-04-06 10:40:47'),(49,144,4,'2021-04-06 10:56:13'),(50,240,6,'2021-04-06 11:05:13'),(51,201,1,'2021-04-06 11:13:26'),(52,99,4,'2021-04-06 11:14:03'),(53,219,1,'2021-04-06 11:29:08'),(54,14,3,'2021-04-06 11:30:05'),(55,27,4,'2021-04-06 11:32:45'),(56,93,4,'2021-04-06 11:49:38'),(57,106,4,'2021-04-06 11:52:30'),(58,94,4,'2021-04-06 11:57:32'),(59,239,6,'2021-04-06 11:58:50'),(60,110,1,'2021-04-06 12:00:40'),(61,16,1,'2021-04-06 12:03:59'),(62,119,2,'2021-04-06 12:12:36'),(63,3,3,'2021-04-06 12:12:53'),(64,230,1,'2021-04-06 12:18:28'),(65,116,1,'2021-04-06 12:34:43'),(66,221,4,'2021-04-06 12:42:46'),(67,155,4,'2021-04-06 12:49:16'),(68,118,3,'2021-04-06 12:52:04'),(69,118,2,'2021-04-06 12:55:45'),(70,118,4,'2021-04-06 12:57:46'),(71,19,4,'2021-04-06 13:10:36'),(72,133,3,'2021-04-06 13:12:51'),(73,83,3,'2021-04-06 13:13:03'),(74,24,4,'2021-04-06 13:13:18'),(75,111,1,'2021-04-06 13:14:47'),(76,21,1,'2021-04-06 13:15:13'),(77,8,2,'2021-04-06 13:17:48'),(78,50,1,'2021-04-06 13:23:43'),(79,192,1,'2021-04-06 13:27:32'),(80,252,7,'2021-04-06 13:29:37'),(81,27,1,'2021-04-06 13:30:31'),(82,241,6,'2021-04-06 13:36:13'),(83,7,4,'2021-04-06 13:38:58'),(84,193,1,'2021-04-06 13:46:30'),(85,153,4,'2021-04-06 13:55:30'),(86,21,1,'2021-04-06 14:10:22'),(87,119,4,'2021-04-06 14:28:38'),(88,121,1,'2021-04-06 14:36:41'),(89,54,5,'2021-04-06 16:03:21'),(90,54,2,'2021-04-06 16:03:36'),(91,117,4,'2021-04-06 16:03:39'),(92,122,3,'2021-04-06 16:04:21'),(93,122,2,'2021-04-06 16:04:54'),(94,122,3,'2021-04-06 16:06:08'),(95,43,2,'2021-04-06 16:07:46'),(96,121,4,'2021-04-06 16:27:59'),(97,122,4,'2021-04-06 16:33:18'),(98,119,1,'2021-04-06 16:37:14'),(99,212,3,'2021-04-06 16:38:31'),(100,123,1,'2021-04-06 16:53:24'),(101,123,1,'2021-04-06 16:54:03'),(102,21,4,'2021-04-06 17:10:05'),(103,14,1,'2021-04-06 17:15:31'),(104,122,4,'2021-04-06 17:15:33'),(105,30,1,'2021-04-06 17:15:39'),(106,32,4,'2021-04-06 17:15:48'),(107,3,2,'2021-04-06 17:17:06'),(108,17,1,'2021-04-06 17:18:11'),(109,9,2,'2021-04-06 17:24:18'),(110,27,3,'2021-04-06 17:34:04'),(111,19,1,'2021-04-06 17:34:11'),(112,27,1,'2021-04-06 17:35:22'),(113,120,4,'2021-04-06 17:36:57'),(114,224,1,'2021-04-06 17:37:00'),(115,189,4,'2021-04-06 17:37:37'),(116,27,4,'2021-04-06 17:39:55'),(117,19,1,'2021-04-06 17:41:27'),(118,122,4,'2021-04-06 17:41:31'),(119,21,1,'2021-04-06 17:41:51'),(120,101,4,'2021-04-06 17:44:31'),(121,5,4,'2021-04-06 17:50:36'),(122,128,2,'2021-04-06 17:52:23'),(123,191,3,'2021-04-06 17:53:41'),(124,219,2,'2021-04-06 18:14:03'),(125,95,1,'2021-04-06 18:15:18'),(126,213,1,'2021-04-06 19:11:41'),(127,126,3,'2021-04-06 19:23:11'),(128,9,4,'2021-04-06 19:46:40'),(129,6,1,'2021-04-06 19:48:25'),(130,13,1,'2021-04-06 19:59:00'),(131,28,4,'2021-04-06 20:04:42'),(132,242,7,'2021-04-06 20:31:55'),(133,142,4,'2021-04-06 20:48:05'),(134,21,1,'2021-04-06 21:10:05'),(135,37,4,'2021-04-06 21:38:31'),(136,21,4,'2021-04-06 22:12:11'),(137,150,3,'2021-04-06 22:35:05'),(138,191,3,'2021-04-06 23:23:16'),(139,119,3,'2021-04-06 23:30:55'),(140,94,3,'2021-04-07 00:48:59'),(141,13,4,'2021-04-07 00:58:10'),(142,123,1,'2021-04-07 01:12:57'),(143,199,4,'2021-04-07 01:21:24'),(144,108,3,'2021-04-07 01:26:05'),(145,238,7,'2021-04-07 01:39:41'),(146,22,2,'2021-04-07 01:42:28'),(147,121,2,'2021-04-07 01:46:11'),(148,10,1,'2021-04-07 01:58:58'),(149,199,5,'2021-04-07 02:03:32'),(150,93,4,'2021-04-07 02:04:32'),(151,139,1,'2021-04-07 02:11:30'),(152,123,4,'2021-04-07 02:19:13'),(153,120,4,'2021-04-07 02:40:26'),(154,248,7,'2021-04-07 02:40:59'),(155,125,4,'2021-04-07 02:48:03'),(156,22,2,'2021-04-07 02:56:39'),(157,228,3,'2021-04-07 03:25:08'),(158,116,4,'2021-04-07 03:30:53'),(159,122,1,'2021-04-07 03:47:06'),(160,38,1,'2021-04-07 03:47:13'),(161,122,1,'2021-04-07 03:47:35'),(162,227,4,'2021-04-07 03:49:11'),(163,16,4,'2021-04-07 03:50:31'),(164,141,3,'2021-04-07 03:52:03'),(165,20,1,'2021-04-07 04:00:44'),(166,138,4,'2021-04-07 04:01:04'),(167,64,3,'2021-04-07 04:04:20'),(168,122,2,'2021-04-07 04:05:25'),(169,117,4,'2021-04-07 04:05:48'),(170,59,4,'2021-04-07 04:08:04'),(171,12,2,'2021-04-07 04:21:59'),(172,161,4,'2021-04-07 04:22:39'),(173,207,1,'2021-04-07 04:23:29'),(174,191,4,'2021-04-07 04:33:50'),(175,124,2,'2021-04-07 04:41:31'),(176,122,2,'2021-04-07 05:04:37'),(177,114,2,'2021-04-07 05:09:41'),(178,122,1,'2021-04-07 05:10:31'),(179,117,4,'2021-04-07 05:12:20'),(180,123,3,'2021-04-07 05:12:41'),(181,123,3,'2021-04-07 05:12:42'),(182,124,2,'2021-04-07 05:12:51'),(183,122,3,'2021-04-07 05:13:30'),(184,7,3,'2021-04-07 05:13:55'),(185,23,1,'2021-04-07 05:14:30'),(186,102,2,'2021-04-07 05:16:53'),(187,90,2,'2021-04-07 05:17:59'),(188,118,4,'2021-04-07 05:19:26'),(189,117,2,'2021-04-07 05:20:58'),(190,125,4,'2021-04-07 05:21:11'),(191,121,2,'2021-04-07 05:22:22'),(192,122,4,'2021-04-07 05:23:00'),(193,122,2,'2021-04-07 05:26:34'),(194,120,4,'2021-04-07 05:32:01'),(195,39,4,'2021-04-07 05:33:56'),(196,122,2,'2021-04-07 05:34:09'),(197,165,4,'2021-04-07 05:39:52'),(198,120,3,'2021-04-07 05:42:52'),(199,117,1,'2021-04-07 05:49:44'),(200,122,4,'2021-04-07 05:50:22'),(201,31,4,'2021-04-07 05:53:30'),(202,120,4,'2021-04-07 05:53:50'),(203,121,1,'2021-04-07 05:54:45'),(204,122,2,'2021-04-07 05:54:56'),(205,6,1,'2021-04-07 06:14:07'),(206,120,1,'2021-04-07 06:23:02'),(207,193,3,'2021-04-07 06:25:20'),(208,122,5,'2021-04-07 06:57:40'),(209,122,3,'2021-04-07 06:57:49'),(210,122,1,'2021-04-07 06:58:01'),(211,122,2,'2021-04-07 06:58:07'),(212,122,4,'2021-04-07 06:58:11'),(213,125,2,'2021-04-07 07:01:23'),(214,68,1,'2021-04-07 07:06:47'),(215,68,1,'2021-04-07 07:06:52'),(216,96,3,'2021-04-07 07:32:47'),(217,122,4,'2021-04-07 07:38:22'),(218,123,4,'2021-04-07 07:59:00'),(219,16,1,'2021-04-07 07:59:43'),(220,125,4,'2021-04-07 08:11:09'),(221,127,1,'2021-04-07 08:50:35'),(222,122,2,'2021-04-07 09:05:36'),(223,27,4,'2021-04-07 09:40:35'),(224,121,4,'2021-04-07 09:43:20'),(225,167,1,'2021-04-07 10:11:40'),(226,125,3,'2021-04-07 10:27:46'),(227,117,4,'2021-04-07 10:34:15'),(228,123,1,'2021-04-07 10:39:43'),(229,120,4,'2021-04-07 11:10:18'),(230,170,1,'2021-04-07 12:16:37'),(231,218,1,'2021-04-07 12:44:51'),(232,12,1,'2021-04-07 12:56:29'),(233,6,4,'2021-04-07 14:07:06'),(234,122,2,'2021-04-07 14:13:38'),(235,122,2,'2021-04-07 14:19:49'),(236,122,2,'2021-04-07 14:19:50'),(237,242,6,'2021-04-07 15:00:00'),(238,30,3,'2021-04-07 15:15:21'),(239,27,1,'2021-04-07 15:49:35'),(240,122,3,'2021-04-07 15:59:57'),(241,134,4,'2021-04-07 16:29:02'),(242,27,4,'2021-04-07 21:27:51'),(243,121,1,'2021-04-07 23:29:47'),(244,127,2,'2021-04-08 02:11:01'),(245,27,4,'2021-04-08 03:40:03'),(246,140,1,'2021-04-08 04:17:39'),(247,242,7,'2021-04-09 04:40:16'),(248,125,3,'2021-04-09 09:15:30'),(249,6,1,'2021-04-09 11:23:15'),(250,12,1,'2021-04-09 21:30:51'),(251,122,2,'2021-04-10 16:33:09'),(252,7,2,'2021-04-10 22:52:52'),(253,23,1,'2021-04-10 22:53:16'),(254,192,4,'2021-04-14 15:03:11'),(255,118,1,'2021-04-15 00:23:20'),(256,87,1,'2021-04-16 03:02:22'),(257,184,1,'2021-04-17 00:06:17'),(258,122,2,'2021-04-20 02:26:45');
/*!40000 ALTER TABLE `polling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2021-04-28  1:47:49
