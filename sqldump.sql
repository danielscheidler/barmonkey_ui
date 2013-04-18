-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: barmonkey
-- ------------------------------------------------------
-- Server version	5.5.28-1

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
-- Table structure for table `action_log`
--

DROP TABLE IF EXISTS `action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `zeit` int(30) NOT NULL,
  `request_dump` text NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35357 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_log`
--

LOCK TABLES `action_log` WRITE;
/*!40000 ALTER TABLE `action_log` DISABLE KEYS */;
INSERT INTO `action_log` (`id`, `sessionid`, `userid`, `zeit`, `request_dump`, `geaendert`) VALUES (35146,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681158,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35147,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681213,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35148,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681213,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35149,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681479,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35150,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681479,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35151,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681536,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35152,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681537,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35153,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681840,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35154,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681841,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35155,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681883,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35156,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681884,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35157,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681904,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35158,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681904,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35159,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681920,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35160,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266681921,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35161,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682252,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35162,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682253,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35163,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682302,'run\nstart\n\ntmstmp\n1266682252\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35164,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682303,'run\nstart\n\ntmstmp\n1266682252\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35165,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682321,'run\nstart\n\ntmstmp\n1266682302\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35166,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682322,'run\nstart\n\ntmstmp\n1266682302\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35167,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682327,'run\nlogin\n\ntmstmp\n1266682321\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35168,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682327,'run\nlogin\n\ntmstmp\n1266682321\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35169,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682333,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35170,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682334,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35171,'ar5nnqddodrofnb3vcvc0hlaa0',-1,1266682341,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35172,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682359,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35173,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682362,'run\nstart\n\ntmstmp\n1266682359\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35174,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682362,'run\nstart\n\ntmstmp\n1266682359\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35175,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682364,'changeHeadInfo\nCnge-start\n\ntmstmp\n1266682362\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35176,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682364,'changeHeadInfo\nCnge-start\n\ntmstmp\n1266682362\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35177,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682369,'text1\n\n\nDbTableUpdatekopftexte\nSpeichern\n\nUpdateAllMaskIsActive\ntrue\n\nchangeHeadInfo\nCnge-start\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35178,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682369,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35179,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682377,'text1\n\n\nDbTableUpdatekopftexte\nSpeichern\n\nUpdateAllMaskIsActive\ntrue\n\nchangeHeadInfo\nCnge-start\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35180,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682377,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35181,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682385,'text1\n\n\nDbTableUpdatekopftexte\nSpeichern\n\nUpdateAllMaskIsActive\ntrue\n\nchangeHeadInfo\nCnge-start\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35182,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682386,'CySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35183,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682392,'run\nstart\n\ntmstmp\n1266682385\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35184,'ar5nnqddodrofnb3vcvc0hlaa0',2,1266682392,'run\nstart\n\ntmstmp\n1266682385\n\nCySess\nar5nnqddodrofnb3vcvc0hlaa0\n\n','0000-00-00 00:00:00'),(35185,'3v0ik271bvae13if7onodgdtc2',-1,1266682403,'run\nstart\n\ntmstmp\n1266682392\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35186,'3v0ik271bvae13if7onodgdtc2',-1,1266682408,'run\nvotings\n\ntmstmp\n1266682403\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35187,'3v0ik271bvae13if7onodgdtc2',-1,1266682409,'run\nvotings\n\ntmstmp\n1266682403\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35188,'3v0ik271bvae13if7onodgdtc2',-1,1266682498,'run\nstart\n\ntmstmp\n1266682408\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35189,'3v0ik271bvae13if7onodgdtc2',-1,1266682498,'run\nstart\n\ntmstmp\n1266682408\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35190,'3v0ik271bvae13if7onodgdtc2',-1,1266682501,'run\nlogin\n\ntmstmp\n1266682498\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35191,'3v0ik271bvae13if7onodgdtc2',-1,1266682501,'run\nlogin\n\ntmstmp\n1266682498\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35192,'3v0ik271bvae13if7onodgdtc2',2,1266682510,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35193,'3v0ik271bvae13if7onodgdtc2',2,1266682513,'run\nstart\n\ntmstmp\n1266682510\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35194,'3v0ik271bvae13if7onodgdtc2',2,1266682513,'run\nstart\n\ntmstmp\n1266682510\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35195,'3v0ik271bvae13if7onodgdtc2',2,1266682515,'changeHeadInfo\nCnge-start\n\ntmstmp\n1266682513\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35196,'3v0ik271bvae13if7onodgdtc2',2,1266682515,'changeHeadInfo\nCnge-start\n\ntmstmp\n1266682513\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35197,'3v0ik271bvae13if7onodgdtc2',2,1266682519,'text1\n\r\n\n\nDbTableUpdatekopftexte\nSpeichern\n\nUpdateAllMaskIsActive\ntrue\n\nchangeHeadInfo\nCnge-start\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35198,'3v0ik271bvae13if7onodgdtc2',2,1266682520,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35199,'3v0ik271bvae13if7onodgdtc2',2,1266682523,'run\nstart\n\ntmstmp\n1266682519\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35200,'3v0ik271bvae13if7onodgdtc2',2,1266682524,'run\nstart\n\ntmstmp\n1266682519\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35201,'3v0ik271bvae13if7onodgdtc2',2,1266682531,'run\nbilderbuch\n\ntmstmp\n1266682523\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35202,'3v0ik271bvae13if7onodgdtc2',2,1266682531,'run\nbilderbuch\n\ntmstmp\n1266682523\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35203,'3v0ik271bvae13if7onodgdtc2',2,1266682534,'run\nbilderbuch\n\ntmstmp\n1266682531\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35204,'3v0ik271bvae13if7onodgdtc2',2,1266682535,'run\nbilderbuch\n\ntmstmp\n1266682531\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35205,'3v0ik271bvae13if7onodgdtc2',2,1266682564,'run\nbilderbuch\n\ntmstmp\n1266682534\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35206,'3v0ik271bvae13if7onodgdtc2',2,1266682565,'run\nbilderbuch\n\ntmstmp\n1266682534\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35207,'3v0ik271bvae13if7onodgdtc2',2,1266682570,'run\nforum\n\ntmstmp\n1266682564\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35208,'3v0ik271bvae13if7onodgdtc2',2,1266682570,'run\nforum\n\ntmstmp\n1266682564\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35209,'3v0ik271bvae13if7onodgdtc2',2,1266682572,'run\nadmin\n\ntmstmp\n1266682570\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35210,'3v0ik271bvae13if7onodgdtc2',2,1266682573,'run\nadmin\n\ntmstmp\n1266682570\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35211,'3v0ik271bvae13if7onodgdtc2',2,1266682599,'run\nstart\n\ntmstmp\n1266682572\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35212,'3v0ik271bvae13if7onodgdtc2',2,1266682600,'run\nstart\n\ntmstmp\n1266682572\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35213,'3v0ik271bvae13if7onodgdtc2',2,1266682614,'run\ntest\n\ntmstmp\n1266682599\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35214,'3v0ik271bvae13if7onodgdtc2',2,1266682614,'run\ntest\n\ntmstmp\n1266682599\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35215,'3v0ik271bvae13if7onodgdtc2',2,1266682623,'run\nadmin\n\ntmstmp\n1266682614\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35216,'3v0ik271bvae13if7onodgdtc2',2,1266682623,'run\nadmin\n\ntmstmp\n1266682614\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35217,'3v0ik271bvae13if7onodgdtc2',2,1266682627,'run\nchangeMyProfile\n\ntmstmp\n1266682623\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35218,'3v0ik271bvae13if7onodgdtc2',2,1266682628,'run\nchangeMyProfile\n\ntmstmp\n1266682623\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35219,'3v0ik271bvae13if7onodgdtc2',2,1266682631,'run\nuserpicUpload\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35220,'3v0ik271bvae13if7onodgdtc2',2,1266682632,'run\nuserpicUpload\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35221,'3v0ik271bvae13if7onodgdtc2',2,1266682708,'run\ndoUserpicUpload\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35222,'3v0ik271bvae13if7onodgdtc2',2,1266682709,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35223,'3v0ik271bvae13if7onodgdtc2',2,1266682726,'run\ndoUserpicUpload\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35224,'3v0ik271bvae13if7onodgdtc2',2,1266682727,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35225,'3v0ik271bvae13if7onodgdtc2',2,1266682730,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35226,'3v0ik271bvae13if7onodgdtc2',2,1266682730,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35227,'3v0ik271bvae13if7onodgdtc2',2,1266683122,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35228,'3v0ik271bvae13if7onodgdtc2',2,1266683123,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35229,'3v0ik271bvae13if7onodgdtc2',2,1266683252,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35230,'3v0ik271bvae13if7onodgdtc2',2,1266683253,'run\nchangeMyProfile\n\ntmstmp\n1266682727\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35231,'3v0ik271bvae13if7onodgdtc2',2,1266683667,'run\nadmin\n\ntmstmp\n1266683252\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35232,'3v0ik271bvae13if7onodgdtc2',2,1266683667,'run\nadmin\n\ntmstmp\n1266683252\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35233,'3v0ik271bvae13if7onodgdtc2',2,1266683673,'changeadmintab\nBasisdaten\n\ntmstmp\n1266683667\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35234,'3v0ik271bvae13if7onodgdtc2',2,1266683673,'changeadmintab\nBasisdaten\n\ntmstmp\n1266683667\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35235,'3v0ik271bvae13if7onodgdtc2',2,1266683677,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683673\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35236,'3v0ik271bvae13if7onodgdtc2',2,1266683677,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683673\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35237,'3v0ik271bvae13if7onodgdtc2',2,1266683683,'showUpdateMaskcolors\n12\n\ntmstmp\n1266683677\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35238,'3v0ik271bvae13if7onodgdtc2',2,1266683683,'showUpdateMaskcolors\n12\n\ntmstmp\n1266683677\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35239,'3v0ik271bvae13if7onodgdtc2',2,1266683690,'name12\ntext\n\nfarbwert12\n#454545\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35240,'3v0ik271bvae13if7onodgdtc2',2,1266683690,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35241,'3v0ik271bvae13if7onodgdtc2',2,1266683694,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683690\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35242,'3v0ik271bvae13if7onodgdtc2',2,1266683695,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683690\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35243,'3v0ik271bvae13if7onodgdtc2',2,1266683782,'name3\nlink\n\nfarbwert3\n#e3e518\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35244,'3v0ik271bvae13if7onodgdtc2',2,1266683783,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35245,'3v0ik271bvae13if7onodgdtc2',2,1266683787,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683782\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35246,'3v0ik271bvae13if7onodgdtc2',2,1266683787,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683782\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35247,'3v0ik271bvae13if7onodgdtc2',2,1266683802,'name4\nhover\n\nfarbwert4\n#e3e518\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35248,'3v0ik271bvae13if7onodgdtc2',2,1266683803,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35249,'3v0ik271bvae13if7onodgdtc2',2,1266683811,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683802\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35250,'3v0ik271bvae13if7onodgdtc2',2,1266683811,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683802\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35251,'3v0ik271bvae13if7onodgdtc2',2,1266683874,'name3\nlink\n\nfarbwert3\n#e3e518\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35252,'3v0ik271bvae13if7onodgdtc2',2,1266683874,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35253,'3v0ik271bvae13if7onodgdtc2',2,1266683879,'showUpdateMaskcolors\n6\n\ntmstmp\n1266683874\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35254,'3v0ik271bvae13if7onodgdtc2',2,1266683879,'showUpdateMaskcolors\n6\n\ntmstmp\n1266683874\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35255,'3v0ik271bvae13if7onodgdtc2',2,1266683887,'name6\nmenu\n\nfarbwert6\n#e3e518\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35256,'3v0ik271bvae13if7onodgdtc2',2,1266683887,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35257,'3v0ik271bvae13if7onodgdtc2',2,1266683898,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683887\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35258,'3v0ik271bvae13if7onodgdtc2',2,1266683898,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683887\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35259,'3v0ik271bvae13if7onodgdtc2',2,1266683915,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683898\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35260,'3v0ik271bvae13if7onodgdtc2',2,1266683916,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683898\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35261,'3v0ik271bvae13if7onodgdtc2',2,1266683932,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683916\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35262,'3v0ik271bvae13if7onodgdtc2',2,1266683933,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683916\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35263,'3v0ik271bvae13if7onodgdtc2',2,1266683937,'name3\nlink\n\nfarbwert3\n#664806\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35264,'3v0ik271bvae13if7onodgdtc2',2,1266683937,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35265,'3v0ik271bvae13if7onodgdtc2',2,1266683939,'run\nstart\n\ntmstmp\n1266683937\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35266,'3v0ik271bvae13if7onodgdtc2',2,1266683940,'run\nstart\n\ntmstmp\n1266683937\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35267,'3v0ik271bvae13if7onodgdtc2',2,1266683941,'run\nadmin\n\ntmstmp\n1266683939\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35268,'3v0ik271bvae13if7onodgdtc2',2,1266683942,'run\nadmin\n\ntmstmp\n1266683939\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35269,'3v0ik271bvae13if7onodgdtc2',2,1266683960,'showUpdateMaskcolors\n12\n\ntmstmp\n1266683942\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35270,'3v0ik271bvae13if7onodgdtc2',2,1266683961,'showUpdateMaskcolors\n12\n\ntmstmp\n1266683942\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35271,'3v0ik271bvae13if7onodgdtc2',2,1266683970,'name12\ntext\n\nfarbwert12\n#252525\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35272,'3v0ik271bvae13if7onodgdtc2',2,1266683970,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35273,'3v0ik271bvae13if7onodgdtc2',2,1266683975,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683970\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35274,'3v0ik271bvae13if7onodgdtc2',2,1266683976,'showUpdateMaskcolors\n3\n\ntmstmp\n1266683970\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35275,'3v0ik271bvae13if7onodgdtc2',2,1266683984,'name3\nlink\n\nfarbwert3\n#9b6e0f\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35276,'3v0ik271bvae13if7onodgdtc2',2,1266683984,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35277,'3v0ik271bvae13if7onodgdtc2',2,1266683988,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683984\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35278,'3v0ik271bvae13if7onodgdtc2',2,1266683988,'changemodulestab\nFarben einstellen\n\ntmstmp\n1266683984\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35279,'3v0ik271bvae13if7onodgdtc2',2,1266683995,'showUpdateMaskcolors\n6\n\ntmstmp\n1266683988\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35280,'3v0ik271bvae13if7onodgdtc2',2,1266683996,'showUpdateMaskcolors\n6\n\ntmstmp\n1266683988\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35281,'3v0ik271bvae13if7onodgdtc2',2,1266683999,'name6\nmenu\n\nfarbwert6\n#9b6e0f\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35282,'3v0ik271bvae13if7onodgdtc2',2,1266684000,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35283,'3v0ik271bvae13if7onodgdtc2',2,1266684011,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683999\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35284,'3v0ik271bvae13if7onodgdtc2',2,1266684012,'showUpdateMaskcolors\n4\n\ntmstmp\n1266683999\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35285,'3v0ik271bvae13if7onodgdtc2',2,1266684030,'name4\nhover\n\nfarbwert4\n#d6c006\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35286,'3v0ik271bvae13if7onodgdtc2',2,1266684031,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35287,'3v0ik271bvae13if7onodgdtc2',2,1266684032,'run\nstart\n\ntmstmp\n1266684030\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35288,'3v0ik271bvae13if7onodgdtc2',2,1266684033,'run\nstart\n\ntmstmp\n1266684030\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35289,'3v0ik271bvae13if7onodgdtc2',2,1266684040,'run\nadmin\n\ntmstmp\n1266684032\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35290,'3v0ik271bvae13if7onodgdtc2',2,1266684040,'run\nadmin\n\ntmstmp\n1266684032\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35291,'3v0ik271bvae13if7onodgdtc2',2,1266684047,'showUpdateMaskcolors\n5\n\ntmstmp\n1266684040\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35292,'3v0ik271bvae13if7onodgdtc2',2,1266684047,'showUpdateMaskcolors\n5\n\ntmstmp\n1266684040\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35293,'3v0ik271bvae13if7onodgdtc2',2,1266684050,'name5\ntitel\n\nfarbwert5\n#d6c006\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35294,'3v0ik271bvae13if7onodgdtc2',2,1266684051,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35295,'3v0ik271bvae13if7onodgdtc2',2,1266684053,'run\nadmin\n\ntmstmp\n1266684050\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35296,'3v0ik271bvae13if7onodgdtc2',2,1266684054,'run\nadmin\n\ntmstmp\n1266684050\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35297,'3v0ik271bvae13if7onodgdtc2',2,1266684067,'showUpdateMaskcolors\n13\n\ntmstmp\n1266684053\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35298,'3v0ik271bvae13if7onodgdtc2',2,1266684067,'showUpdateMaskcolors\n13\n\ntmstmp\n1266684053\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35299,'3v0ik271bvae13if7onodgdtc2',2,1266684072,'name13\npanel_background\n\nfarbwert13\n#eeeeee\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35300,'3v0ik271bvae13if7onodgdtc2',2,1266684073,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35301,'3v0ik271bvae13if7onodgdtc2',2,1266684075,'run\nadmin\n\ntmstmp\n1266684072\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35302,'3v0ik271bvae13if7onodgdtc2',2,1266684076,'run\nadmin\n\ntmstmp\n1266684072\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35303,'3v0ik271bvae13if7onodgdtc2',2,1266684092,'showUpdateMaskcolors\n15\n\ntmstmp\n1266684075\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35304,'3v0ik271bvae13if7onodgdtc2',2,1266684093,'showUpdateMaskcolors\n15\n\ntmstmp\n1266684075\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35305,'3v0ik271bvae13if7onodgdtc2',2,1266684100,'name15\nTabelle_Hintergrund_2\n\nfarbwert15\n#dddddd\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35306,'3v0ik271bvae13if7onodgdtc2',2,1266684101,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35307,'3v0ik271bvae13if7onodgdtc2',2,1266684103,'run\nadmin\n\ntmstmp\n1266684100\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35308,'3v0ik271bvae13if7onodgdtc2',2,1266684104,'run\nadmin\n\ntmstmp\n1266684100\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35309,'3v0ik271bvae13if7onodgdtc2',2,1266684126,'showUpdateMaskcolors\n4\n\ntmstmp\n1266684103\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35310,'3v0ik271bvae13if7onodgdtc2',2,1266684127,'showUpdateMaskcolors\n4\n\ntmstmp\n1266684103\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35311,'3v0ik271bvae13if7onodgdtc2',2,1266684131,'name4\nhover\n\nfarbwert4\n#f4db0a\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35312,'3v0ik271bvae13if7onodgdtc2',2,1266684132,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35313,'3v0ik271bvae13if7onodgdtc2',2,1266684139,'showUpdateMaskcolors\n5\n\ntmstmp\n1266684131\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35314,'3v0ik271bvae13if7onodgdtc2',2,1266684139,'showUpdateMaskcolors\n5\n\ntmstmp\n1266684131\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35315,'3v0ik271bvae13if7onodgdtc2',2,1266684143,'name5\ntitel\n\nfarbwert5\n#f4db0a\n\nDbTableUpdatecolors\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35316,'3v0ik271bvae13if7onodgdtc2',2,1266684143,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35317,'3v0ik271bvae13if7onodgdtc2',2,1266684144,'run\nadmin\n\ntmstmp\n1266684143\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35318,'3v0ik271bvae13if7onodgdtc2',2,1266684145,'run\nadmin\n\ntmstmp\n1266684143\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35319,'3v0ik271bvae13if7onodgdtc2',2,1266684147,'run\nadmin\n\ntmstmp\n1266684144\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35320,'3v0ik271bvae13if7onodgdtc2',2,1266684147,'run\nadmin\n\ntmstmp\n1266684144\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35321,'3v0ik271bvae13if7onodgdtc2',2,1266684170,'run\nstart\n\ntmstmp\n1266684147\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35322,'3v0ik271bvae13if7onodgdtc2',2,1266684170,'run\nstart\n\ntmstmp\n1266684147\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35323,'3v0ik271bvae13if7onodgdtc2',2,1266684267,'run\nadmin\n\ntmstmp\n1266684170\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35324,'3v0ik271bvae13if7onodgdtc2',2,1266684267,'run\nadmin\n\ntmstmp\n1266684170\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35325,'3v0ik271bvae13if7onodgdtc2',2,1266684272,'changemodulestab\nGrundeinstellungen\n\ntmstmp\n1266684267\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35326,'3v0ik271bvae13if7onodgdtc2',2,1266684272,'changemodulestab\nGrundeinstellungen\n\ntmstmp\n1266684267\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35327,'3v0ik271bvae13if7onodgdtc2',2,1266684274,'showUpdateMaskpageconfig\n1\n\ntmstmp\n1266684272\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35328,'3v0ik271bvae13if7onodgdtc2',2,1266684275,'showUpdateMaskpageconfig\n1\n\ntmstmp\n1266684272\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35329,'3v0ik271bvae13if7onodgdtc2',2,1266684284,'name1\npagetitel\n\nvalue1\nHomepage\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35330,'3v0ik271bvae13if7onodgdtc2',2,1266684285,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35331,'3v0ik271bvae13if7onodgdtc2',2,1266684287,'showUpdateMaskpageconfig\n2\n\ntmstmp\n1266684285\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35332,'3v0ik271bvae13if7onodgdtc2',2,1266684288,'showUpdateMaskpageconfig\n2\n\ntmstmp\n1266684285\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35333,'3v0ik271bvae13if7onodgdtc2',2,1266684293,'name2\npageowner\n\nvalue2\n\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35334,'3v0ik271bvae13if7onodgdtc2',2,1266684293,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35335,'3v0ik271bvae13if7onodgdtc2',2,1266684306,'showUpdateMaskpageconfig\n13\n\ntmstmp\n1266684293\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35336,'3v0ik271bvae13if7onodgdtc2',2,1266684306,'showUpdateMaskpageconfig\n13\n\ntmstmp\n1266684293\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35337,'3v0ik271bvae13if7onodgdtc2',2,1266684309,'name13\npagedesigner\n\nvalue13\n\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35338,'3v0ik271bvae13if7onodgdtc2',2,1266684310,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35339,'3v0ik271bvae13if7onodgdtc2',2,1266684313,'showUpdateMaskpageconfig\n18\n\ntmstmp\n1266684309\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35340,'3v0ik271bvae13if7onodgdtc2',2,1266684314,'showUpdateMaskpageconfig\n18\n\ntmstmp\n1266684309\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35341,'3v0ik271bvae13if7onodgdtc2',2,1266684317,'name18\nsuchbegriffe\n\nvalue18\n\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35342,'3v0ik271bvae13if7onodgdtc2',2,1266684318,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35343,'3v0ik271bvae13if7onodgdtc2',2,1266684321,'showUpdateMaskpageconfig\n20\n\ntmstmp\n1266684317\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35344,'3v0ik271bvae13if7onodgdtc2',2,1266684322,'showUpdateMaskpageconfig\n20\n\ntmstmp\n1266684317\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35345,'3v0ik271bvae13if7onodgdtc2',2,1266684331,'name20\nNotifyTargetMail\n\nvalue20\ncyborgone@gmx.de\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35346,'3v0ik271bvae13if7onodgdtc2',2,1266684332,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35347,'3v0ik271bvae13if7onodgdtc2',2,1266684334,'showUpdateMaskpageconfig\n21\n\ntmstmp\n1266684331\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35348,'3v0ik271bvae13if7onodgdtc2',2,1266684335,'showUpdateMaskpageconfig\n21\n\ntmstmp\n1266684331\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35349,'3v0ik271bvae13if7onodgdtc2',2,1266684344,'name21\nKontaktformularTargetMail\n\nvalue21\ncyborgone@gmx.de\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35350,'3v0ik271bvae13if7onodgdtc2',2,1266684345,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35351,'3v0ik271bvae13if7onodgdtc2',2,1266684349,'showUpdateMaskpageconfig\n19\n\ntmstmp\n1266684344\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35352,'3v0ik271bvae13if7onodgdtc2',2,1266684349,'showUpdateMaskpageconfig\n19\n\ntmstmp\n1266684344\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35353,'3v0ik271bvae13if7onodgdtc2',2,1266684353,'name19\ngoogle_maps_API_key\n\nvalue19\n\n\nDbTableUpdatepageconfig\nSpeichern\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35354,'3v0ik271bvae13if7onodgdtc2',2,1266684353,'CySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35355,'3v0ik271bvae13if7onodgdtc2',2,1266684361,'changeadmintab\nFramework\n\ntmstmp\n1266684353\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00'),(35356,'3v0ik271bvae13if7onodgdtc2',2,1266684361,'changeadmintab\nFramework\n\ntmstmp\n1266684353\n\nCySess\n3v0ik271bvae13if7onodgdtc2\n\n','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adressen`
--

DROP TABLE IF EXISTS `adressen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adressen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `strasse` varchar(50) NOT NULL,
  `hausnummer` varchar(10) NOT NULL,
  `plz` int(5) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `ortsteil` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telefon` varchar(25) NOT NULL,
  `handy` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `icq` varchar(11) NOT NULL,
  `homepage` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `showMail` enum('J','N') NOT NULL DEFAULT 'N',
  `showAdress` enum('J','N') NOT NULL DEFAULT 'J',
  `showText` enum('J','N') NOT NULL DEFAULT 'N',
  `showTelefon` enum('J','N') NOT NULL DEFAULT 'N',
  `showHandy` enum('J','N') NOT NULL DEFAULT 'N',
  `showFax` enum('J','N') NOT NULL DEFAULT 'N',
  `showIcq` enum('J','N') NOT NULL DEFAULT 'N',
  `showHomepage` enum('J','N') NOT NULL DEFAULT 'J',
  `ansprechpartner` enum('J','N') NOT NULL DEFAULT 'N',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `breitengrad` double DEFAULT NULL,
  `laengengrad` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strasse` (`strasse`,`hausnummer`),
  KEY `ortsteil_ind` (`ortsteil`)
) ENGINE=MyISAM AUTO_INCREMENT=4639 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adressen`
--

LOCK TABLES `adressen` WRITE;
/*!40000 ALTER TABLE `adressen` DISABLE KEYS */;
/*!40000 ALTER TABLE `adressen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anschluesse`
--

DROP TABLE IF EXISTS `anschluesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anschluesse` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `zutat_id` int(11) DEFAULT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anschluesse`
--

LOCK TABLES `anschluesse` WRITE;
/*!40000 ALTER TABLE `anschluesse` DISABLE KEYS */;
INSERT INTO `anschluesse` (`id`, `zutat_id`, `geaendert`) VALUES (1,9,'2013-04-06 23:42:58'),(2,26,'2013-04-06 23:33:20'),(3,3,'2013-04-06 23:33:30'),(4,14,'2013-04-06 23:33:42'),(5,6,'2013-04-06 23:33:58'),(6,4,'2013-04-06 23:34:18'),(7,13,'2013-04-06 23:58:23'),(8,23,'2013-04-06 23:58:34'),(9,22,'2013-04-06 23:58:51'),(10,11,'2013-04-06 23:59:36'),(11,NULL,'0000-00-00 00:00:00'),(12,NULL,'0000-00-00 00:00:00'),(13,NULL,'0000-00-00 00:00:00'),(14,NULL,'0000-00-00 00:00:00'),(15,NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `anschluesse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comments`
--

DROP TABLE IF EXISTS `bb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(300) NOT NULL,
  `comment` text NOT NULL,
  `autor` varchar(50) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pic` (`pic`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comments`
--

LOCK TABLES `bb_comments` WRITE;
/*!40000 ALTER TABLE `bb_comments` DISABLE KEYS */;
INSERT INTO `bb_comments` (`id`, `pic`, `comment`, `autor`, `geaendert`) VALUES (1,'/stadtplan/pics/unknownpic.jpg','test kommentar\r\n\r\nhier sollte nu was stehen\r\n','Developer ','0000-00-00 00:00:00'),(2,'stadtplan/pics/bilderbuch/2.JPG','Hier sollte nun ein Kommentar erscheinen ;)','Developer ','0000-00-00 00:00:00'),(29,'stadtplan/pics/testberichte/2__HPIM0144.JPG','Rotkehlanolis (Anolis carolinensis)','Daniel Scheidler','0000-00-00 00:00:00'),(28,'stadtplan/pics/testberichte/2__HPIM0181.JPG','Langschwanzechsen \r\n\r\n[ Takydromus sexlineatus ]','Daniel Scheidler','0000-00-00 00:00:00'),(27,'pics/bilderbuch/Lebenswelt_Wald/PA109364.jpg','QUAAAAAAAAAAAAAAK','Developer ','0000-00-00 00:00:00'),(26,'stadtplan/pics/bilderbuch/Kopie von Kopie von 3.JPG','nice one','Developer ','0000-00-00 00:00:00'),(9,'stadtplan/pics/bilderbuch/Kopie von 4.JPG','kommentieren geht nun also auch :)\r\n\r\nsehr sehr schön sag ich da nur :-P','Developer ','0000-00-00 00:00:00'),(24,'stadtplan/pics/bilderbuch/4.JPG','quaaaaaaaaaaaaaaak','Daniel Scheidler','0000-00-00 00:00:00'),(25,'stadtplan/pics/bilderbuch/2.JPG','supi... mit scrollen mit zentrierung... sehr sehr schön ;)','Daniel Scheidler','0000-00-00 00:00:00'),(23,'pics/bilderbuch/Lebenswelt_Stadt/DSCF1785.jpg','jetzt aber...','Developer ','0000-00-00 00:00:00'),(22,'pics/bilderbuch/Lebenswelt_Stadt/DSCF1775.jpg','ring ring ring ','Daniel Scheidler','0000-00-00 00:00:00'),(21,'pics/bilderbuch/Lebenswelt_Stadt/DSCF1775.jpg','keep on calling\r\n','Daniel Scheidler','0000-00-00 00:00:00'),(20,'stadtplan/pics/bilderbuch/2.JPG','un noch mal n text ;)\r\n','Daniel Scheidler','0000-00-00 00:00:00'),(19,'stadtplan/pics/bilderbuch/2.JPG','dann haun wir mal direkt noch n  comment dazu\r\n','Daniel Scheidler','0000-00-00 00:00:00'),(17,'pics/bilderbuch/Lebenswelt_Stadt/DSCF1785.jpg','hmmm... leere','Daniel Scheidler','0000-00-00 00:00:00'),(18,'stadtplan/pics/bilderbuch/2.JPG','dann haun wir mal direkt noch n  comment dazu\r\n','Daniel Scheidler','0000-00-00 00:00:00'),(30,'stadtplan/pics/testberichte/2__HPIM0228.JPG','brumm :-D','Daniel Scheidler','0000-00-00 00:00:00'),(31,'pics/bilderbuch/Lebenswelt_Wald/IMGP1227.jpg','Gras!','Daniel Scheidler','0000-00-00 00:00:00'),(32,'stadtplan/pics/bilderbuch/Kopie von 2.JPG','kjhkjhlkl','Daniel Scheidler','0000-00-00 00:00:00'),(33,'hp/pics/bilderbuch/Lebenswelt_Wald/M0011005.jpg','quaaaaaaaaaaaaak','Developer X','0000-00-00 00:00:00'),(34,'','Im Innenraum des Jugend Treffs','','0000-00-00 00:00:00'),(35,'','Im Innenraum des Jugend Treffs','','0000-00-00 00:00:00'),(36,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(37,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(38,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(39,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(40,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(41,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(42,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(43,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(44,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(45,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(46,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(47,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(48,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(49,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(50,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(51,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(52,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(53,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(54,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(55,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(56,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(57,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(58,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(59,'','Der Wermelskirchener Stadtkirchenturm','','0000-00-00 00:00:00'),(60,'','Sorry, für Qualität!','','0000-00-00 00:00:00'),(61,'','Sorry, für Qualität!','','0000-00-00 00:00:00'),(62,'','Sorry, für Qualität!','','0000-00-00 00:00:00'),(63,'','Sorry, für Qualität!','','0000-00-00 00:00:00'),(64,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(65,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(66,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(67,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(68,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(69,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(70,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(71,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(72,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(73,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(74,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00'),(75,'','Entschuldigung! Das Bild ist ausversehen eingefügt worden.  /user/','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `bb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berechtigung`
--

DROP TABLE IF EXISTS `berechtigung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berechtigung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_grp_id` int(11) NOT NULL,
  `prog_grp_id` int(11) NOT NULL,
  `run_link_id` int(11) NOT NULL,
  `insertjn` enum('J','N') NOT NULL DEFAULT 'N',
  `updatejn` enum('J','N') NOT NULL DEFAULT 'N',
  `deletejn` enum('J','N') NOT NULL DEFAULT 'N',
  `showjn` enum('J','N') NOT NULL DEFAULT 'N',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berechtigung`
--

LOCK TABLES `berechtigung` WRITE;
/*!40000 ALTER TABLE `berechtigung` DISABLE KEYS */;
INSERT INTO `berechtigung` (`id`, `user_id`, `user_grp_id`, `prog_grp_id`, `run_link_id`, `insertjn`, `updatejn`, `deletejn`, `showjn`, `geaendert`) VALUES (19,0,1,1,0,'J','J','J','J','2008-08-23 20:33:42'),(3,0,1,2,0,'J','J','J','J','2008-08-23 20:33:42'),(4,0,1,3,0,'J','J','J','J','2008-08-23 20:33:42'),(5,0,1,4,0,'J','J','J','J','2008-08-23 20:33:42'),(6,0,1,5,0,'J','J','J','J','2008-08-23 20:33:42'),(7,0,2,1,0,'J','J','J','J','2008-08-23 20:33:42'),(8,0,2,2,0,'J','J','J','J','2008-08-23 20:33:42'),(9,0,2,3,0,'J','J','J','J','2008-08-23 20:33:42'),(10,0,2,4,0,'J','J','J','J','2008-08-23 20:33:42'),(11,0,2,5,0,'J','J','J','J','2008-08-23 20:33:43'),(12,0,3,1,0,'J','J','J','J','2008-11-23 16:33:47'),(13,0,3,2,0,'J','J','J','J','2008-08-23 20:33:43'),(14,0,3,3,0,'J','J','J','J','2008-11-23 16:33:47'),(15,0,3,5,0,'J','J','J','J','2008-11-23 16:33:47'),(16,0,4,1,0,'J','N','N','J','2008-11-23 16:49:40'),(18,0,4,5,0,'J','N','N','J','2008-11-23 16:49:40'),(20,3,0,4,0,'N','J','J','J','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `berechtigung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berichte`
--

DROP TABLE IF EXISTS `berichte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berichte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `autor` int(11) NOT NULL,
  `datum` date NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berichte`
--

LOCK TABLES `berichte` WRITE;
/*!40000 ALTER TABLE `berichte` DISABLE KEYS */;
/*!40000 ALTER TABLE `berichte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `farbwert` varchar(20) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`id`, `name`, `farbwert`, `page_id`, `geaendert`) VALUES (12,'text','#ddffff',0,'2013-03-18 22:59:01'),(3,'link','#55bbff',0,'2013-03-18 22:57:48'),(4,'hover','#f4db0a',0,'2010-02-20 15:42:11'),(5,'titel','#77ddff',0,'2013-03-18 22:57:16'),(6,'menu','#55bbff',0,'2013-03-24 01:34:10'),(8,'background','#666666',0,'2013-03-18 22:53:53'),(13,'panel_background','#666666',0,'2013-03-18 22:59:22'),(14,'Tabelle_Hintergrund_1','#555555',0,'2013-04-01 21:55:07'),(15,'Tabelle_Hintergrund_2','#777777',0,'2013-04-01 21:55:30');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbcombos`
--

DROP TABLE IF EXISTS `dbcombos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbcombos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_name` varchar(50) NOT NULL,
  `col_name` varchar(50) NOT NULL,
  `combo_tab` varchar(50) NOT NULL,
  `combo_code_col` varchar(50) NOT NULL,
  `combo_text_col` varchar(250) NOT NULL,
  `onlyinsert` enum('true','false') NOT NULL DEFAULT 'false',
  `combo_where` text NOT NULL,
  `combo_orderby` varchar(50) NOT NULL,
  `distinct_jn` enum('J','N') NOT NULL DEFAULT 'J',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbcombos`
--

LOCK TABLES `dbcombos` WRITE;
/*!40000 ALTER TABLE `dbcombos` DISABLE KEYS */;
INSERT INTO `dbcombos` (`id`, `tab_name`, `col_name`, `combo_tab`, `combo_code_col`, `combo_text_col`, `onlyinsert`, `combo_where`, `combo_orderby`, `distinct_jn`) VALUES (1,'geplant','status','geplant_status','tag','name','true','','name','J'),(3,'koordinatenzuordnung','str_id','strassenschluessel','id','name','true','','name','J'),(4,'stadt_angebot','ansprech','adressen','id','concat(name, \' \', strasse) as adr','true','ansprechpartner=\'J\'','','J'),(6,'stadt_institution','adresse','adressen','id','CONCAT(name, \' - \', plz, \' \', strasse, \' \', hausnummer) as adresse','true','ansprechpartner=\'N\'','','J'),(7,'links','topic','links','topic','topic','true','link is not null and descr is not null and link != \'-\' and descr != \'-\'','topic','J'),(9,'menu','parent','menu','text','text','true','','text','J'),(10,'stadt_kategorien','symbol','stadt_symbole','id','tooltip','true','','tooltip','J'),(11,'stadt_institution','kategorie','stadt_kategorien','id','name','true','','name','J'),(12,'user','status','userstatus','id','title','false','','title','J'),(13,'testbericht','institution_id','stadt_institution i, adressen a','i.id','CONCAT(i.name, \' - \', a.strasse, \' \', a.hausnummer) AS adresse','false','i.adresse = a.id order by i.name','','J'),(14,'stadt_angebot','institutionid','stadt_institution i, adressen a','i.id','CONCAT(i.name, \' - \', a.strasse, \' \', a.hausnummer) AS adresse','false','i.adresse = a.id ','','J'),(15,'menu','status','userstatus','id','title','false','','title','J'),(16,'stadt_angebot','kategorie','stadt_angebot_kategorie','id','name','false','','name','J'),(17,'run_links','parent','menu','text','text','false','','text','J'),(18,'run_links','prog_grp_id','programm_gruppen','id','name','false','','name','J'),(19,'berechtigung','user_id','user','id','concat(Vorname, \' \',Nachname) as nme','false','Vorname != \'Developer\' and \r\nVorname != \'Superuser\'','','J'),(20,'berechtigung','user_grp_id','user_groups','id','name','false','','name','J'),(21,'berechtigung','run_link_id','run_links','id','name','false','','name','J'),(22,'berechtigung','prog_grp_id','programm_gruppen','id','name','false','','name','J'),(23,'terminserie','monat','default_combo_values','code','value','false','combo_name = \'Monate\'','value','J'),(24,'terminserie','jaehrlichwochentag','default_combo_values','code','value','false','combo_name = \'tage\'','value','J'),(25,'user','user_group_id','user_groups','id','name','false','','name','J'),(26,'adressen','ortsteil','ortsteile','id','name','false','plz in (select plz from adressen where id=#id#)','name','J'),(27,'kopftexte','runlink','run_links','name','name','false','','name','J'),(28,'kopftexte','parent','run_links','parent','parent','false','','parent','J'),(29,'adressen','strasse','strassenschluessel','name','name','false','plz = #plz#','','J'),(30,'zutaten_zuordnung','zutat_id','zutaten','id','name','false','','name','J'),(31,'zutaten_zuordnung','rezept_id','rezepte','id','name','false','','name','J'),(32,'rezepte','rezept_gruppe','rezept_gruppen','id','name','false','','','J'),(33,'anschluesse','zutat_id','zutaten','id','name','false','not exists(\r\nselect \'X\' from anschluesse where zutaten.id = zutat_id\r\n) or zutaten.id is null','name','J');
/*!40000 ALTER TABLE `dbcombos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_combo_values`
--

DROP TABLE IF EXISTS `default_combo_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_combo_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_combo_values`
--

LOCK TABLES `default_combo_values` WRITE;
/*!40000 ALTER TABLE `default_combo_values` DISABLE KEYS */;
INSERT INTO `default_combo_values` (`id`, `combo_name`, `code`, `value`) VALUES (1,'tage','1','Montag'),(2,'tage','2','Dienstag'),(3,'tage','3','Mittwoch'),(4,'tage','4','Donnerstag'),(5,'tage','5','Freitag'),(6,'tage','6','Samstag'),(7,'tage','7','Sonntag'),(8,'Monate','1','Januar'),(9,'Monate','2','Februar'),(10,'Monate','3','März'),(11,'Monate','4','April'),(12,'Monate','5','Mai'),(13,'Monate','6','Juni'),(14,'Monate','7','Juli'),(15,'Monate','8','August'),(16,'Monate','9','September'),(17,'Monate','10','Oktober'),(18,'Monate','11','November'),(19,'Monate','12','Dezember'),(20,'DatumTagzahl','1','1'),(21,'DatumTagzahl','2','2'),(22,'DatumTagzahl','3','3'),(23,'DatumTagzahl','4','4'),(24,'DatumTagzahl','5','5'),(25,'DatumTagzahl','6','6'),(26,'DatumTagzahl','7','7'),(27,'DatumTagzahl','8','8'),(28,'DatumTagzahl','9','9'),(29,'DatumTagzahl','10','10'),(30,'DatumTagzahl','11','11'),(31,'DatumTagzahl','12','12'),(32,'DatumTagzahl','13','13'),(33,'DatumTagzahl','14','14'),(34,'DatumTagzahl','15','15'),(35,'DatumTagzahl','16','16'),(36,'DatumTagzahl','17','17'),(37,'DatumTagzahl','18','18'),(38,'DatumTagzahl','19','19'),(39,'DatumTagzahl','20','20'),(40,'DatumTagzahl','21','21'),(41,'DatumTagzahl','22','22'),(42,'DatumTagzahl','23','23'),(43,'DatumTagzahl','24','24'),(44,'DatumTagzahl','25','25'),(45,'DatumTagzahl','26','26'),(46,'DatumTagzahl','27','27'),(47,'DatumTagzahl','28','28'),(48,'DatumTagzahl','29','29'),(49,'DatumTagzahl','30','30'),(50,'DatumTagzahl','31','31');
/*!40000 ALTER TABLE `default_combo_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pageconfig`
--

DROP TABLE IF EXISTS `default_pageconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pageconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pageconfig`
--

LOCK TABLES `default_pageconfig` WRITE;
/*!40000 ALTER TABLE `default_pageconfig` DISABLE KEYS */;
INSERT INTO `default_pageconfig` (`id`, `name`, `value`, `page_id`) VALUES (1,'pagetitel','Meine Homepage',0),(2,'pageowner','',0),(3,'background_pic','',0),(4,'banner_pic','',0),(5,'sessiontime','0',0),(6,'logging_aktiv','true',0),(7,'debugoutput_aktiv','false',0),(10,'classes_autoupdate','false',0),(11,'pagedeveloper','Daniel Scheidler',0),(12,'pagedesigner','Daniel Scheidler',0),(13,'hauptmenu_button_image','pics/hauptmenu_button.jpg',0),(14,'max_rowcount_for_dbtable','50',0),(15,'suchbegriffe','',0),(16,'NotifyTargetMail','d.scheidler@web.de',0),(17,'KontaktformularTargetMail','d.scheidler@web.de',0);
/*!40000 ALTER TABLE `default_pageconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixtexte`
--

DROP TABLE IF EXISTS `fixtexte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixtexte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixtexte`
--

LOCK TABLES `fixtexte` WRITE;
/*!40000 ALTER TABLE `fixtexte` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixtexte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_insert_validation`
--

DROP TABLE IF EXISTS `form_insert_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_insert_validation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chkVal` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chkVal` (`chkVal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_insert_validation`
--

LOCK TABLES `form_insert_validation` WRITE;
/*!40000 ALTER TABLE `form_insert_validation` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_insert_validation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `tooltip` text NOT NULL,
  `autor` int(11) NOT NULL,
  `created` date NOT NULL,
  `open` set('J','N') NOT NULL DEFAULT 'J',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Die Tabelle enthÃ¤lt die Archivstruktur des Forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `datum` date NOT NULL,
  `autor` int(11) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_posts`
--

LOCK TABLES `forum_posts` WRITE;
/*!40000 ALTER TABLE `forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freundesliste`
--

DROP TABLE IF EXISTS `freundesliste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freundesliste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `accepted` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `friend_id` (`friend_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freundesliste`
--

LOCK TABLES `freundesliste` WRITE;
/*!40000 ALTER TABLE `freundesliste` DISABLE KEYS */;
/*!40000 ALTER TABLE `freundesliste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gb`
--

DROP TABLE IF EXISTS `gb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL DEFAULT '',
  `Text` text NOT NULL,
  `Autor` varchar(30) NOT NULL DEFAULT 'Gast',
  `Date` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gb`
--

LOCK TABLES `gb` WRITE;
/*!40000 ALTER TABLE `gb` DISABLE KEYS */;
/*!40000 ALTER TABLE `gb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geplant`
--

DROP TABLE IF EXISTS `geplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geplant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `sortier_nr` int(10) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'i',
  `autor` varchar(50) NOT NULL DEFAULT '',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geplant`
--

LOCK TABLES `geplant` WRITE;
/*!40000 ALTER TABLE `geplant` DISABLE KEYS */;
/*!40000 ALTER TABLE `geplant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geplant_status`
--

DROP TABLE IF EXISTS `geplant_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geplant_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` char(1) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geplant_status`
--

LOCK TABLES `geplant_status` WRITE;
/*!40000 ALTER TABLE `geplant_status` DISABLE KEYS */;
INSERT INTO `geplant_status` (`id`, `tag`, `name`, `descr`, `status`) VALUES (1,'5','ToDo','noch zu bearbeiten (erwünschte Änderung ohne Priorität)','admin'),(2,'8','neue Idee','noch nicht durchdachte Idee (noch unbekannt ob es realisiert wird)','user'),(3,'9','fertig bearbeitet','Bearbeitung abgeschlossen aber noch nicht released (oder vergessen hier zu löschen :) )','admin'),(5,'7','zurück gestellt','Änderung gewünscht, aber erst nachdem alle anderen Änderungen gemacht sind','admin'),(6,'1','Priorität 1','Änderung hat höchste Priorität  (z.B. wenn für nächste Release benötigt)','admin'),(7,'3','Fehler (BUG)','Dieser Status besagt, dass hier ein Fehler in der Aktuellen Umgebung ist!',''),(8,'2','in Bearbeitung','Dieser Status besagt, dass an diesem Punkt gerade gearbeitet wird.\r\n\r\nEs kann somit auch zeitweise an dieser Stelle zu Fehlern kommen!','admin');
/*!40000 ALTER TABLE `geplant_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kopftexte`
--

DROP TABLE IF EXISTS `kopftexte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kopftexte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `runlink` varchar(250) NOT NULL,
  `text` text,
  `parent` varchar(50) DEFAULT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `runlink_name` (`runlink`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kopftexte`
--

LOCK TABLES `kopftexte` WRITE;
/*!40000 ALTER TABLE `kopftexte` DISABLE KEYS */;
INSERT INTO `kopftexte` (`id`, `runlink`, `text`, `parent`, `geaendert`) VALUES (1,'start','\r\n','Treffpunkt','2010-02-20 15:15:19'),(3,'forum','Hier im Forum habt ihr die Möglichkeit alles nach Themen-Gruppiert zu besprechen.\r\n\r\nWenn euch Themengruppen fehlen sollten, wendet euch einfach an einen der Administratoren.\r\n\r\n','Treffpunkt','2008-10-12 08:26:47'),(4,'todo','Hier seht ihr eine Übersicht aller noch ausstehenden Änderungen an der Seite.\r\n\r\nWenn euch auch noch etwas auffällt, was falsch läuft oder was an Informationen fehlt, tragt es doch einfach hier ein.\r\n\r\nDie Entwicklung wird sich schnellstmöglich damit befassen.\r\nWird der Vorschlag für sinnvoll angesehen, wird er auch so gut und so schnell es geht umgesetzt!\r\n\r\n',NULL,'2008-10-14 21:20:47'),(5,'test','testing',NULL,'0000-00-00 00:00:00'),(6,'kontakt','Wenn Sie uns eine Nachricht zukommen lassen möchten, haben Sie mit diesem Formular die möglichkeit uns eine Email schreiben.\r\nWir werden uns schnellstmöglich mit Ihnen in Verbindung setzen.\r\n',NULL,'0000-00-00 00:00:00'),(9,'bbUpload','In diesem Bereich könnt Ihr eure eigenen Bilder ins Bilderbuch einfügen.\r\n\r\n[fett]1. rechtsklick \"Add New Folder\"  um ein neues Verzeichniss anzulegen.[/fett]\r\nDer Name dieses Verzeichnisses wird später im Bilderbuch als Name der Bildergruppe angezeigt.\r\n\r\n[fett]2. das neue Verzeichniss auswählen und \"Dateien hinzufügen\"[/fett]\r\n\r\n[fett]3. In der Vorschau die Bilder überprüfen und ggf. in JPG oder PNG Konvertieren oder aus der Liste entfernen[/fett]\r\n\r\n[fett]4. Bilder \"Hochladen\"[/fett]\r\n\r\n[red][fett]Achtung![/fett] Ein späteres auswählen der angelegten Kategorie ist nach dem Hochladen nicht mehr möglich! Es können nachträglich somit keine Bilder mehr hinzugefügt werden.[/red]\r\n\r\n','Bilder','2009-03-16 22:19:25');
/*!40000 ALTER TABLE `kopftexte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(25) DEFAULT NULL,
  `User` varchar(30) NOT NULL DEFAULT '',
  `Ip` varchar(20) DEFAULT NULL,
  `Action` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1507 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`, `Date`, `User`, `Ip`, `Action`) VALUES (1505,'2010-02-20','Superuser','78.48.45.228','Login OK'),(1506,'2010-02-20','Superuser','78.48.45.228','Login OK');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookupwerte`
--

DROP TABLE IF EXISTS `lookupwerte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lookupwerte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_name` varchar(50) NOT NULL,
  `col_name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `validation_flag` varchar(50) NOT NULL,
  `sprache` varchar(2) NOT NULL DEFAULT 'de',
  `sortnr` int(5) NOT NULL DEFAULT '0',
  `default` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookupwerte`
--

LOCK TABLES `lookupwerte` WRITE;
/*!40000 ALTER TABLE `lookupwerte` DISABLE KEYS */;
INSERT INTO `lookupwerte` (`id`, `tab_name`, `col_name`, `code`, `text`, `validation_flag`, `sprache`, `sortnr`, `default`) VALUES (1,'terminserie','serienmuster','1','Täglich','','de',0,'Y'),(2,'terminserie','serienmuster','2','Wöchentlich','','de',0,'N'),(3,'terminserie','serienmuster','3','Monatlich','','de',0,'N'),(4,'terminserie','serienmuster','4','Jährlich','','de',0,'N');
/*!40000 ALTER TABLE `lookupwerte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) NOT NULL DEFAULT '',
  `parent` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(5) DEFAULT NULL,
  `target` varchar(25) NOT NULL DEFAULT '_top',
  `tooltip` text NOT NULL,
  `sortnr` int(11) NOT NULL DEFAULT '9999',
  `name` varchar(50) NOT NULL DEFAULT 'main',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `text` (`text`),
  KEY `parent_gruppe` (`parent`),
  KEY `sortnr` (`sortnr`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `text`, `parent`, `link`, `status`, `target`, `tooltip`, `sortnr`, `name`, `geaendert`) VALUES (115,'Cocktail Auswahl','','?run=start',NULL,'_top','Cocktail aus der Übersicht auswählen und ',0,'Fussmenue','2013-03-24 01:32:31'),(116,'Cocktails bearbeiten','','?run=editCocktails','user','_top','',200,'Fussmenue','2013-03-30 23:40:53'),(110,'Anschluesse bearbeiten','','?run=editAnschluesse','admin','_top','',905,'Fussmenue','2013-04-06 23:20:50'),(100,'Zutaten bearbeiten','','?run=editZutaten','admin','_top','',910,'Fussmenue','2013-04-06 23:17:22'),(105,'Login','','?run=login',NULL,'_top','Hier können Sie sich an- oder abmelden',999,'Fussmenue','2013-03-24 02:12:27');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL DEFAULT '',
  `Datum` date NOT NULL DEFAULT '0000-00-00',
  `Autor` varchar(100) NOT NULL DEFAULT '',
  `Text` text NOT NULL,
  `Link` varchar(150) DEFAULT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_emails`
--

DROP TABLE IF EXISTS `newsletter_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `aktiv` enum('J','N') NOT NULL DEFAULT 'J',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_emails`
--

LOCK TABLES `newsletter_emails` WRITE;
/*!40000 ALTER TABLE `newsletter_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsticker`
--

DROP TABLE IF EXISTS `newsticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsticker` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(250) NOT NULL DEFAULT '',
  `link` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsticker`
--

LOCK TABLES `newsticker` WRITE;
/*!40000 ALTER TABLE `newsticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pageconfig`
--

DROP TABLE IF EXISTS `pageconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pageconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageconfig`
--

LOCK TABLES `pageconfig` WRITE;
/*!40000 ALTER TABLE `pageconfig` DISABLE KEYS */;
INSERT INTO `pageconfig` (`id`, `name`, `value`, `page_id`, `geaendert`) VALUES (1,'pagetitel','Barmonkey',0,'2013-04-02 21:37:41'),(2,'pageowner','\r\nKattwinkelsche Fabrik und das Kinder und Jugendparlament Wermelskirchen\r\n\r\n\r\n[fett]Kattwinkelsche Fabrik[/fett]\r\nKattwinkelstraße 3\r\n42929 Wermelskirchen\r\n\r\n[fett]Tel.[/fett] 0 21 96 - 72 40-0\r\n[fett]Fax.[/fett] 0 21 96 - 72 40-25\r\n[fett]eMail:[/fett] info@kattwinkelsche-fabrik.de \r\n\r\n[fett]Ansprechpartner:[/fett] Jessica Jung\r\n[fett]eMail:[/fett] jessica.jung@kattwinkelsche-fabrik.de \r\n\r\n\r\n\r\n[fett]Kinder und Jugendparlament Wermelskirchen[/fett]\r\n42929 Wermelskirchen\r\n\r\n[fett]Ansprechpartner:[/fett] Britta Wagner\r\n[fett]eMail:[/fett] Britta.Wagner@stadt.wermelskirchen.de  ',0,'0000-00-00 00:00:00'),(3,'background_pic','',0,'2008-09-18 13:19:00'),(4,'banner_pic','pics/banner/13.jpg',0,'2008-11-13 22:20:50'),(5,'sessiontime','0',0,'0000-00-00 00:00:00'),(6,'logging_aktiv','true',0,'0000-00-00 00:00:00'),(7,'debugoutput_aktiv','false',0,'2008-10-25 09:37:21'),(11,'classes_autoupdate','false',0,'0000-00-00 00:00:00'),(12,'pagedeveloper','Daniel Scheidler\r\n42929 Wermelskirchen\r\n\r\n[fett]Email:[/fett]    D.Scheidler@web.de\r\n[fett]ICQ:[/fett]      272911518\r\n\r\n\r\n[fett]Banner-Animation und System-Tester[/fett]\r\n\r\nVolker Schaefer\r\n42929 Wermelskirchen\r\n\r\n[fett]Email:[/fett]   schaefer.volker@googlemail.com',0,'2008-11-30 21:36:38'),(13,'pagedesigner','Pascal Kloss\r\n42929 Wermelskirchen\r\n\r\n[fett]Email:[/fett]    toxic_ed@hotmail.de',0,'2008-11-30 21:35:52'),(15,'background_repeat','repeat',0,'0000-00-00 00:00:00'),(14,'hauptmenu_button_image','pics/hauptmenu_button.jpg',0,'0000-00-00 00:00:00'),(16,'max_rowcount_for_dbtable','25',0,'2008-10-14 21:14:17'),(17,'hauptmenu_button_image_hover','pics/hauptmenu_button_hover.jpg',0,'2008-10-20 05:18:56'),(18,'suchbegriffe','stadtplan, karte, informationen, wermelskirchen, kinder, jugend, angebote, attraktionen, freizeit, freizeitangebot, kreise, gruppen, spielplätze, schule, bolzplatz ',0,'2008-12-27 10:21:27'),(19,'google_maps_API_key','ABQIAAAAD-ESr-Kr7XTN1bwaaP4FxBTEcnlpfI5kTYmfvC_C0KPKa3QFCRRMlBqHYb0L3EDBvZKRICz_3oWgHg',0,'2009-02-28 12:29:34'),(20,'NotifyTargetMail','cyborgone@gmx.de',0,'2010-02-20 15:45:31'),(21,'KontaktformularTargetMail','cyborgone@gmx.de',0,'2010-02-20 15:45:44'),(22,'arduino_url','192.168.1.15',0,'2013-03-18 22:52:48');
/*!40000 ALTER TABLE `pageconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pm_messages`
--

DROP TABLE IF EXISTS `pm_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `sender` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `gelesen` enum('J','N') NOT NULL DEFAULT 'N',
  `senddate` date NOT NULL DEFAULT '0000-00-00',
  `delbysender` enum('J','N') NOT NULL DEFAULT 'N',
  `delbyreceiver` enum('J','N') NOT NULL DEFAULT 'N',
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `receiver` (`receiver`),
  KEY `sender` (`sender`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_messages`
--

LOCK TABLES `pm_messages` WRITE;
/*!40000 ALTER TABLE `pm_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pm_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programm_gruppen`
--

DROP TABLE IF EXISTS `programm_gruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programm_gruppen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` varchar(250) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programm_gruppen`
--

LOCK TABLES `programm_gruppen` WRITE;
/*!40000 ALTER TABLE `programm_gruppen` DISABLE KEYS */;
INSERT INTO `programm_gruppen` (`id`, `name`, `text`, `geaendert`) VALUES (3,'Bilder','Alles was zum Bilderbuch gehört','0000-00-00 00:00:00'),(4,'Einstellungen','Einstellungsmasken und Administrative Links','0000-00-00 00:00:00'),(5,'Allgemeines','Hier kommt alles rein, was generell zur Verfügung steht','0000-00-00 00:00:00'),(6,'Mein Profil','Alles rund ums Userprofil','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `programm_gruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_vars`
--

DROP TABLE IF EXISTS `public_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gruppe` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `titel` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `sortnr` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_vars`
--

LOCK TABLES `public_vars` WRITE;
/*!40000 ALTER TABLE `public_vars` DISABLE KEYS */;
INSERT INTO `public_vars` (`id`, `gruppe`, `name`, `titel`, `text`, `sortnr`) VALUES (1,'texte','impressum','Inhalt des Onlineangebotes','Der Autor übernimmt keinerlei Gewähr für die Aktualität, Korrektheit, Vollständigkeit oder Qualität der bereitgestellten Informationen. Haftungsansprüche gegen den Autor, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständiger Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern seitens des Autors kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt. Alle Angebote sind freibleibend und unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.',1),(2,'texte','impressum','Verweise und Links','Bei direkten oder indirekten Verweisen auf fremde Webseiten (\"Hyperlinks\"), die außerhalb des Verantwortungsbereiches des Autors liegen, würde eine Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem der Autor von den Inhalten Kenntnis hat und es ihm technisch möglich und zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern. Der Autor erklärt hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung keine illegalen Inhalte auf den zu verlinkenden Seiten erkennbar waren. Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die Urheberschaft der gelinkten/verknüpften Seiten hat der Autor keinerlei Einfluss. Deshalb distanziert er sich hiermit ausdrücklich von allen Inhalten aller gelinkten /verknüpften Seiten, die nach der Linksetzung verändert wurden. Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes gesetzten Links und Verweise sowie für Fremdeinträge in vom Autor eingerichteten Gästebüchern, Diskussionsforen, Linkverzeichnissen, Mailinglisten und in allen anderen Formen von Datenbanken, auf deren Inhalt externe Schreibzugriffe möglich sind. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen, haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der über Links auf die jeweilige Veröffentlichung lediglich verweist.\r\n',2),(3,'texte','impressum','Urheber- und Kennzeichenrecht','Der Autor ist bestrebt, in allen Publikationen die Urheberrechte der verwendeten Grafiken, Tondokumente, Videosequenzen und Texte zu beachten, von ihm selbst erstellte Grafiken, Tondokumente, Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken, Tondokumente, Videosequenzen und Texte zurückzugreifen. Alle innerhalb des Internetangebotes genannten und ggf. durch Dritte geschützten Marken- und Warenzeichen unterliegen uneingeschränkt den Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch Rechte Dritter geschützt sind! Das Copyright für veröffentlichte, vom Autor selbst erstellte Objekte bleibt allein beim Autor der Seiten. Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente, Videosequenzen und Texte in anderen elektronischen oder gedruckten Publikationen ist ohne ausdrückliche Zustimmung des Autors nicht gestattet.',3),(4,'texte','impressum','Datenschutz','Sofern innerhalb des Internetangebotes die Möglichkeit zur Eingabe persönlicher oder geschäftlicher Daten (Kontodaten, Namen, Anschriften) besteht, so erfolgt die Preisgabe dieser Daten seitens des Nutzers auf ausdrücklich freiwilliger Basis. Die Inanspruchnahme und Bezahlung aller angebotenen Dienste ist - soweit technisch möglich und zumutbar - auch ohne Angabe solcher Daten bzw. unter Angabe anonymisierter Daten oder eines Pseudonyms gestattet. Die Nutzung der im Rahmen des Impressums oder vergleichbarer Angaben veröffentlichten Kontaktdaten wie Postanschriften, Telefon- und Faxnummern sowie Emailadressen durch Dritte zur Übersendung von nicht ausdrücklich angeforderten Informationen ist nicht gestattet. Rechtliche Schritte gegen die Versender von sogenannten Spam-Mails bei Verstössen gegen dieses Verbot sind ausdrücklich vorbehalten.',4),(5,'texte','impressum','Rechtswirksamkeit','Sofern Teile oder einzelne Formulierungen dieses Textes der geltenden Rechtslage nicht, nicht mehr oder nicht vollständig entsprechen sollten, bleiben die übrigen Teile des Dokumentes in ihrem Inhalt und ihrer Gültigkeit davon unberührt.',5);
/*!40000 ALTER TABLE `public_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezept_gruppen`
--

DROP TABLE IF EXISTS `rezept_gruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezept_gruppen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `beschreibung` text NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezept_gruppen`
--

LOCK TABLES `rezept_gruppen` WRITE;
/*!40000 ALTER TABLE `rezept_gruppen` DISABLE KEYS */;
INSERT INTO `rezept_gruppen` (`id`, `name`, `beschreibung`, `geaendert`) VALUES (0,'Sonstige','Alls Drinks die in keine Gruppe passen oder noch nicht zugeordnet wurden.','2013-03-21 23:23:10'),(1,'Alkoholfrei','Die meisten alkoholfreien Cocktails sind sehr fruchtig im Geschmack und damit eine absolut attraktive Alternative für Autofahrer und Gesundheitsbewußte. Sie sollten jedoch nur mit frischen Säften und Früchten zubereitet werden. Inbesondere an heissen Sommertagen sind sie sehr zu empfehlen.','0000-00-00 00:00:00'),(2,'Aperitif','Der Aperitif wird auch „Pre-Dinner“ oder „Before-Dinner genannt, das sind in erster Linie die trockenen Cocktails, die eine Basisspirituose wie Gin Wodka, Rum, Whisky oder Tequila enthalten. Sie wirken appetitanregend und werden deshalb auch vor dem Essen getrunken. Diese Drinks werden gerührt, sehr wenig garniert und auch ohne Eis serviert. Sollte ein Aperitif dennoch eine schwere Zutat enthalten, wird er dennoch im Shaker zubereitet.\r\n','0000-00-00 00:00:00'),(3,'Digestif','Der Digestif oder After-Dinner-Drink wird entweder mit vielen alkoholischen Spirituosen gemischt und anschließend serviert aber meist besteht er aus Sahne oder Säften und ist im Geschmack eher süß, aber auch „Verdauungsschnäpse“ werden als nach dem Essen serviert.','0000-00-00 00:00:00'),(4,'Sekt-Cocktails','Sekt-Cocktails werden mit Schaumweine serviert, enthalten Sekt, Champagner oder Prosecco. Sind für feierliche Anlässe gut geeignet und werden je nach Cocktail im Longdrinkglas oder in der Sektflöte serviert. Auch als Aperitif bestens geeignet.\r\n','0000-00-00 00:00:00'),(5,'Shooter','Ein Shooter, Shot oder Kurzer genannt, ist ein Mixgetränk oder eine Spirituose, der in einem Stamper serviert wird. Im engl. bedeutet es soviel wie „ein Schuß“, deshalb wird dieses Getränk auch in einem Zug getrunken.','0000-00-00 00:00:00'),(6,'Longdrinks','Der Longdrink ist eine Variante des Cocktails mit einem relativ großen Volumen.\r\n\r\nBestehend aus einer Spirituose (20-40ml) und dem Filler (Saft, Soda), mit dem das Highballglas bzw. der Tumbler (üblicherweise 0,2 bis 0,3 Liter Volumen) nach Hineingeben von Eis und Spirituose aufgefüllt wird. \r\n\r\nDiese einfachen Longdrinks werden meist nach der Kombination der gemischten Getränke benannt, z. B. Wodka-Lemon (Wodka mit Bitter Lemon) oder Whiskey-Cola (Whiskey mit Cola). ','2013-04-05 01:11:36'),(7,'Fancy und Exotic','Diese Drinks können nur schwer in einen Cocktailkategorie eingeordnet werden das sie, wie der Name schon sagt, fantasievoll, ausgefallen, kunstvoll und exotisch mit den unterschiedlichsten Zutaten und Dekorationen gemixt und gestylt.Beliebt sind z.B. Punches. Diese bestehen aus mehreren Fruchtsäften in unendlich viele Variationen. Der bekannteste ist wohl Planters Punch. Die Säfte sollten immer frisch sein.','2013-04-05 01:13:40'),(8,'Heisse Cocktails','Heisse Cocktails bzw. Hot Drinks sind heisse Cocktails und Kaffeegetränke. In den meisten Fällen werden Hot Drinks aus Tee oder Kaffee und verschiedenen alkoholischen und nicht alkoholischen Zutaten gemischt.','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `rezept_gruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezepte`
--

DROP TABLE IF EXISTS `rezepte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezepte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `vorbereitung` text NOT NULL,
  `nachbereitung` text NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rezept_gruppe` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezepte`
--

LOCK TABLES `rezepte` WRITE;
/*!40000 ALTER TABLE `rezepte` DISABLE KEYS */;
INSERT INTO `rezepte` (`id`, `name`, `pic`, `vorbereitung`, `nachbereitung`, `geaendert`, `rezept_gruppe`) VALUES (1,'Pernod Cola','','EiswÃ¼rfel in das Longdrinkglas geben und es auf die Wage stellen.\r\n','Mit Cola auffÃ¼llen.\r\n\r\nAnschlieÃŸend mit einer Zitronenscheibe garnieren und mit einem Trinkhalm servieren.','2013-04-04 23:58:30',6),(2,'Bacardi Orange','','Das Eis in ein Longdrinkglas geben.\nDen Rum darÃ¼ber gieÃŸen.\nMit Orangensaft auffÃ¼llen.','','2013-04-04 00:10:34',6),(3,'Batida Orange','','Zutaten zusammen mit Eisw&uuml;rfel in das Longdrinkglas geben','','2013-04-04 00:08:19',6),(4,'Cuba Libre','','Limette zerdrÃ¼cken und die restlichen Zutaten dazugeben.\r\nAnschlieÃŸend kurz verrÃ¼hren','','2013-04-04 23:37:31',6),(6,'Fire on Ice','','Shaker auf die Wage stellen mit einigen EiswÃ¼rfeln','Shaker schlieÃŸen und schÃ¼tteln.\r\nAnschlieÃŸend ins Glas gieÃŸen.','2013-04-05 00:10:56',6),(7,'Hurricane','','Alle Zutaten auf Eis krÃ¤ftig shaken und den Drink in ein zur HÃ¤lfte mit Crushed Ice gefÃ¼lltes Longdrinkglas abseihen.','','2013-04-04 00:00:52',6),(9,'Mai Tai','','Shaker mit einigen EiswÃ¼rfeln auf die Wage stellen.','Shaker schlieÃŸen und krÃ¤ftig schÃ¼tteln.\r\nAnschlieÃŸend ins Longdrinkglas umfÃ¼llen.','2013-04-05 00:05:55',6),(10,'Zombie','','Den ShakerÂ mit 4 EiswÃ¼rfel auf die Wage stellen.','Shaker schlieÃŸenÂ und etwa 15 Sekunden schÃ¼tteln.','2013-04-05 00:40:45',7),(11,'White Russian','','Sahne rein Schnaps drauf.\r\nVollgas','trinken','2013-04-07 18:58:05',6);
/*!40000 ALTER TABLE `rezepte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `run_links`
--

DROP TABLE IF EXISTS `run_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `run_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `link` varchar(250) NOT NULL,
  `target` varchar(50) NOT NULL DEFAULT 'mainpage',
  `parent` varchar(50) NOT NULL,
  `prog_grp_id` int(11) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`name`,`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `run_links`
--

LOCK TABLES `run_links` WRITE;
/*!40000 ALTER TABLE `run_links` DISABLE KEYS */;
INSERT INTO `run_links` (`id`, `name`, `link`, `target`, `parent`, `prog_grp_id`, `geaendert`) VALUES (8,'gb','includes/Gb.php','mainpage','',0,'2010-02-20 15:16:00'),(12,'impressum','includes/Impressum.php','mainpage','',0,'0000-00-00 00:00:00'),(2,'kontakt','includes/Kontakt.php','mainpage','',0,'0000-00-00 00:00:00'),(3,'service','includes/Service.php','mainpage','',0,'0000-00-00 00:00:00'),(1,'start','includes/Startseite.php','mainpage','',0,'2010-02-20 15:16:00'),(5,'todo','includes/ToDo.php','mainpage','',0,'0000-00-00 00:00:00'),(6,'admin','includes/admin/admin.php','mainpage','',0,'2010-02-20 15:16:00'),(7,'gbedit','includes/admin/module/gb_edit.php','mainpage','',0,'2010-02-20 15:16:00'),(15,'newsedit','includes/admin/module/news_edit.php','mainpage','',0,'2010-02-20 15:16:00'),(10,'configchange','includes/admin/framework/config_edit.php','mainpage','',0,'2010-02-20 15:16:00'),(11,'menuchange','includes/admin/framework/menu_edit.php','mainpage','',0,'2010-02-20 15:16:00'),(13,'colorchange','includes/admin/framework/colors_edit.php','mainpage','',0,'2010-02-20 15:16:00'),(14,'bilderbuch','includes/Bilderbuch.php','mainpage','',0,'2010-02-20 15:16:00'),(16,'test','includes/Test.php','mainpage','',0,'2010-02-20 15:16:00'),(17,'stadtplan','includes/Stadtplan.php','mainpage','',5,'2010-02-20 15:16:00'),(18,'links','includes/Links.php','mainpage','',0,'2010-02-20 15:16:00'),(19,'changeMyProfile','includes/user/user_change.php','mainpage','',6,'2008-09-11 21:49:04'),(20,'doUserpicUpload','includes/user/userpic_upload2.php','mainpage','',0,'0000-00-00 00:00:00'),(21,'userpicUpload','includes/user/userpic_upload.php','mainpage','',0,'0000-00-00 00:00:00'),(22,'userRequestPw','includes/user/user_request_pw.php','mainpage','',0,'0000-00-00 00:00:00'),(23,'testberichtNeu','includes/stadtplan/bericht/bericht_neu.php','mainpage','',0,'2010-02-20 15:16:00'),(24,'showUserList','includes/user/user_liste.php','mainpage','',0,'2010-02-20 15:16:00'),(25,'berichtarchiv','includes/stadtplan/bericht/show_berichte.php','mainpage','',0,'2010-02-20 15:16:00'),(26,'UploadBerichtsPic','includes/stadtplan/bericht/uploadPic.php','mainpage','',0,'2010-02-20 15:16:00'),(27,'berichtdetail','includes/stadtplan/bericht/show_bericht.php','mainpage','',0,'2010-02-20 15:16:00'),(28,'forum','includes/forum/forum.php','mainpage','',0,'2010-02-20 15:16:00'),(29,'showUserProfil','includes/user/show_userprofil.php','mainpage','',0,'0000-00-00 00:00:00'),(30,'userListe','includes/user/user_liste.php','mainpage','',0,'0000-00-00 00:00:00'),(31,'newAngebot','includes/stadtplan/angebot/angebot_neu.php','mainpage','',0,'0000-00-00 00:00:00'),(32,'votings','includes/Votings.php','mainpage','',0,'2008-08-07 20:33:55'),(34,'pm','includes/PM.php','mainpage','',6,'2010-02-20 15:16:00'),(35,'calendar','includes/Calendar.php','mainpage','',2,'2010-02-20 15:16:00'),(36,'login','includes/Login.php','mainpage','',0,'2008-11-16 21:08:45'),(37,'newInstEntry','includes/stadtplan/institution/institution_neu.php','mainpage','',2,'2010-02-20 15:16:00'),(38,'InstitutionChange','includes/stadtplan/institution/institution_edit.php','mainpage','',2,'2010-02-20 15:16:00'),(39,'UploadInstitutionsPic','includes/stadtplan/institution/uploadPic.php','mainpage','',2,'2010-02-20 15:16:00'),(40,'UploadAngebotPic','includes/stadtplan/angebot/uploadPic.php','mainpage','',2,'2010-02-20 15:16:00'),(41,'redaktionsgruppe','includes/empty.php','mainpage','',1,'2010-02-20 15:16:00'),(42,'ferienangebote','includes/Ferienangebote.php','mainpage','',2,'2010-02-20 15:16:00'),(43,'stadtplanSuche','includes/KategorieSuche.php','mainpage','',5,'2010-02-20 15:16:00'),(44,'bbUpload','includes/BB_Uploader.php','mainpage','',3,'2010-02-20 15:16:00'),(45,'manageAng','includes/ManageNewAngebote.php','mainpage','',2,'2010-02-20 15:16:00'),(46,'berichte','includes/Berichte.php','mainpage','',5,'2010-02-20 15:16:00'),(47,'UpdateLog','includes/UpdateLog.php','mainpage','',5,'2009-05-03 12:38:16'),(48,'UploadBerichtPic','includes/uploadBerichtPic.php','mainpage','',1,'2010-02-20 15:16:00'),(49,'newInstEntryPopup','includes/stadtplan/institution/institution_neu.php','mainpage','',2,'2010-02-20 15:16:00'),(50,'imageUploaderPopup','includes/ImageUploaderPopup.php','mainpage','',0,'2009-06-27 09:01:28'),(51,'rezeptgruppen','includes/KategorieListe.php','mainpage','',0,'0000-00-00 00:00:00'),(52,'editCocktails','includes/editMode.php','mainpage','',0,'0000-00-00 00:00:00'),(53,'editZutaten','includes/editZutaten.php','mainpage','',0,'0000-00-00 00:00:00'),(54,'editAnschluesse','includes/editAnschluesse.php','mainpage','',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `run_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site-enter`
--

DROP TABLE IF EXISTS `site-enter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site-enter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site-enter`
--

LOCK TABLES `site-enter` WRITE;
/*!40000 ALTER TABLE `site-enter` DISABLE KEYS */;
INSERT INTO `site-enter` (`id`, `name`, `value`) VALUES (1,'Box in','0'),(2,'Box Out','1'),(3,'Circle in','2'),(4,'Circle out','3'),(5,'Wipe up','4'),(6,'Wipe down','5'),(7,'Wipe right','6'),(8,'Wipe left','7'),(9,'Vertical Blinds','8'),(10,'Horizontal Blinds','9'),(11,'Checkerboard across','10'),(12,'Checkerboard down','11'),(13,'Random Disolve','12'),(14,'Split vertical in','13'),(15,'Split vertical out','14'),(16,'Split horizontal in','15'),(17,'Split horizontal out','16'),(18,'Strips left down','17'),(19,'Strips left up','18'),(20,'Strips right down','19'),(21,'Strips right up','20'),(22,'Random bars horizontal','21'),(23,'Random bars vertical','22'),(24,'Random','23');
/*!40000 ALTER TABLE `site-enter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smileys`
--

DROP TABLE IF EXISTS `smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smileys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Title` (`title`),
  UNIQUE KEY `Link` (`link`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smileys`
--

LOCK TABLES `smileys` WRITE;
/*!40000 ALTER TABLE `smileys` DISABLE KEYS */;
INSERT INTO `smileys` (`id`, `title`, `link`) VALUES (1,':-)','pics/smileys/grins.gif'),(4,':-P','pics/smileys/baeh.gif'),(11,'cry','pics/smileys/crying.gif'),(13,'lol','pics/smileys/biglaugh.gif'),(16,':-@','pics/smileys/motz.gif'),(17,':-O','pics/smileys/confused.gif'),(20,':-D','pics/smileys/auslach.gif'),(26,'rofl','pics/smileys/rofl.gif');
/*!40000 ALTER TABLE `smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(15) NOT NULL DEFAULT '',
  `html` varchar(150) NOT NULL DEFAULT '',
  `btn` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  KEY `tag1` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `tag`, `html`, `btn`) VALUES (1,'cybi','<a href=\'http://www.cyborgone.de\' target=\'cybi\'><img src=\'http://cyborgone.de/pics/banner13.gif\' width=\'200\' border=\'0\'></a>','n'),(2,'fett','<b>','J'),(3,'/fett','</b>','J'),(4,'unter','<u>','J'),(5,'/unter','</u>','J'),(6,'normal','<font size=\'2\'>','J'),(7,'/normal','</font>','J'),(8,'klein','<font size=\'1\'>','J'),(9,'/klein','</font>','J'),(10,'mittel','<font size=\'3\'>','J'),(11,'/mittel','</font>','J'),(12,'blue','<font color=\'blue\'>','J'),(13,'red','<font color=\'red\'>','J'),(14,'green','<font color=\'green\'>','J'),(15,'gray','<font color=\'gray\'>','J'),(16,'/gray','</font>','J'),(17,'/red','</font>','J'),(18,'/blue','</font>','J'),(19,'/green','</font>','J'),(20,'quote','<table border=\'1\' cellpadding=\'0\' cellspacing=\'0\'><tr><td class=\'zitat\'><i>','N'),(21,'hr','<hr>','J'),(22,'/quote','</i></td></tr></table>','N'),(23,'changed','<br><br><i><u><b>Geändert:','N'),(24,'/changed','</b></u></i>','N'),(25,'bild_500','<img src=\'','J'),(26,'/bild_500','\' width=\'500\'>','J'),(28,'bild_150','<img src=\'','J'),(29,'/bild_150','\' width=\'150\'>','J'),(30,'code','<textarea cols=\'70\' rows=\'10\' readonly>','J'),(31,'/code','</textarea>','N'),(32,'yellow','<font color=\'yellow\'>','N'),(33,'/yellow','</font>','N'),(34,'groß','<font size=\'4\'>','J'),(35,'/groß','</font>','J'),(36,'mitte','<center>',NULL),(37,'/mitte','</center>',NULL),(38,'italian','<i>',NULL),(39,'/italian','</i>',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_log`
--

DROP TABLE IF EXISTS `update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `update_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_log`
--

LOCK TABLES `update_log` WRITE;
/*!40000 ALTER TABLE `update_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vorname` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Nachname` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Geburtstag` date NOT NULL DEFAULT '0000-00-00',
  `Strasse` varchar(50) CHARACTER SET latin1 DEFAULT '-',
  `Plz` varchar(50) CHARACTER SET latin1 DEFAULT '-',
  `Ort` varchar(50) CHARACTER SET latin1 DEFAULT '-',
  `Email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Telefon` varchar(50) CHARACTER SET latin1 DEFAULT '-',
  `Fax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Handy` varchar(50) CHARACTER SET latin1 DEFAULT '-',
  `Icq` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Aim` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `Homepage` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `User` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Pw` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Nation` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `Status` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'waitForActivate',
  `user_group_id` int(11) NOT NULL DEFAULT '1',
  `Newsletter` enum('true','false') CHARACTER SET latin1 DEFAULT 'true',
  `Signatur` text CHARACTER SET latin1,
  `Lastlogin` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Posts` int(10) DEFAULT '0',
  `Beschreibung` text CHARACTER SET latin1,
  `pic` varchar(150) CHARACTER SET latin1 NOT NULL DEFAULT 'unknown.jpg',
  `pnnotify` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `autoforumnotify` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `emailJN` enum('J','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `icqJN` enum('J','N') CHARACTER SET latin1 NOT NULL DEFAULT 'J',
  `telefonJN` enum('J','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `Level` double NOT NULL,
  `EP` double NOT NULL,
  `Gold` double NOT NULL,
  `Holz` double NOT NULL,
  `Erz` double NOT NULL,
  `Felsen` double NOT NULL,
  `Wasser` double NOT NULL,
  `Nahrung` double NOT NULL,
  `aktiv` set('J','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `activationString` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `angelegt` date NOT NULL COMMENT 'timestamp angelegt',
  `clan_id` int(11) DEFAULT NULL,
  `rasse_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `User` (`User`),
  KEY `Name` (`Name`(8))
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `Vorname`, `Nachname`, `Name`, `Geburtstag`, `Strasse`, `Plz`, `Ort`, `Email`, `Telefon`, `Fax`, `Handy`, `Icq`, `Aim`, `Homepage`, `User`, `Pw`, `Nation`, `Status`, `user_group_id`, `Newsletter`, `Signatur`, `Lastlogin`, `Posts`, `Beschreibung`, `pic`, `pnnotify`, `autoforumnotify`, `geaendert`, `emailJN`, `icqJN`, `telefonJN`, `Level`, `EP`, `Gold`, `Holz`, `Erz`, `Felsen`, `Wasser`, `Nahrung`, `aktiv`, `activationString`, `angelegt`, `clan_id`, `rasse_id`) VALUES (39,'Developer','X','Developer X','0000-00-00','','42929','Wermelskirchen','','-','','','272911518','','http://framework.cyborgone.de','Developer','8277e0910d750195b448797616e091ad','0','admin',1,'true','Ich bin ROOT, ich darf das!','2013-04-08 1:27:11',33,'Eigendlich gibts mich ja garnicht ','391293802542.JPG','Y','Y','2013-04-07 23:27:11','N','J','N',1,0,14241500,466500,1000000,190000,19500,20000,'J','','0000-00-00',0,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `beschreibung` varchar(250) NOT NULL,
  `pic` varchar(150) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstatus`
--

DROP TABLE IF EXISTS `userstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstatus` (
  `id` varchar(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstatus`
--

LOCK TABLES `userstatus` WRITE;
/*!40000 ALTER TABLE `userstatus` DISABLE KEYS */;
INSERT INTO `userstatus` (`id`, `title`) VALUES ('gast','Gast'),('user','Hauptbenutzer'),('admin','Administrator');
/*!40000 ALTER TABLE `userstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zutaten`
--

DROP TABLE IF EXISTS `zutaten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zutaten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `prozente` int(3) NOT NULL,
  `cl_preis` int(11) NOT NULL,
  `beschreibung` text NOT NULL,
  `manuell` enum('J','N') NOT NULL DEFAULT 'N',
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zutaten`
--

LOCK TABLES `zutaten` WRITE;
/*!40000 ALTER TABLE `zutaten` DISABLE KEYS */;
INSERT INTO `zutaten` (`id`, `name`, `prozente`, `cl_preis`, `beschreibung`, `manuell`, `geaendert`) VALUES (3,'weiÃŸer Rum',40,20,'<p>\r\n	Rum ist die Spirituose mit dem intensivsten Aroma. Grundlage f&uuml;r seine Herstellung ist die braune, z&auml;hfl&uuml;ssige Melasse, die bei der Zuckergewinnung aus Zuckerrohr entsteht. Sie wird mit Wasser verd&uuml;nnt, zur G&auml;rung gebracht und anschlie&szlig;end destilliert.&nbsp;<br />\r\n	Nur dieser aus Zuckerrohr gewonnene Rum darf als echter Rum bezeichnet werden.<br />\r\n	<br />\r\n	Die Bezeichnung kommt wohl von dem Wort &quot;Rumbullion&quot; (Krawall, Aufruhr), was darauf schlie&szlig;en l&auml;sst, dass vielen Trinkgelagen entsprechende Tumulte folgten.<br />\r\n	<br />\r\n	Die&nbsp; fr&uuml;he Popularit&auml;t von Rum in Deutschland beruht auf den Handelsaktivit&auml;ten der sogenannten Westindienflotte. Sie hatte ihren Sitz in Flensburg und importierte schon im 18. Jahrhundert Rum aus der Karibik und von den Jungferninseln nach Europa.<br />\r\n	<br />\r\n	Mit 54 % vol, hervorragend geeignet f&uuml;r die ber&uuml;hmte Feuerzangenbowle, zum Flambieren raffinierter Delikatessen und zum Einlegen von Fr&uuml;chten.<br />\r\n	<br />\r\n	Mit 40 % vol, feurighei&szlig; in Tee, Grog und Punsch getrunken oder eiskalt in vielen bekannten Cocktails serviert &ndash; zum Beispiel bei&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/cuba-libre-cocktail\">&quot;Cuba Libre&quot;</a>,&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/daiquiri-classic-cocktail\" >&quot;Daiquiri&quot;</a>&nbsp;oder&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/mai-tai-cocktail\">&quot;Mai Tai&quot;</a>.</p>\r\n','N','2013-04-02 22:26:17'),(4,'brauner Rum',40,20,'<p>\r\n	Rum ist die Spirituose mit dem intensivsten Aroma. Grundlage f&uuml;r seine Herstellung ist die braune, z&auml;hfl&uuml;ssige Melasse, die bei der Zuckergewinnung aus Zuckerrohr entsteht. Sie wird mit Wasser verd&uuml;nnt, zur G&auml;rung gebracht und anschlie&szlig;end destilliert.&nbsp;<br />\r\n	Nur dieser aus Zuckerrohr gewonnene Rum darf als echter Rum bezeichnet werden.</p>\r\n<p>\r\n	Die Bezeichnung kommt wohl von dem Wort &quot;Rumbullion&quot; (Krawall, Aufruhr), was darauf schlie&szlig;en l&auml;sst, dass vielen Trinkgelagen entsprechende Tumulte folgten.</p>\r\n<p>\r\n	Die&nbsp; fr&uuml;he Popularit&auml;t von Rum in Deutschland beruht auf den Handelsaktivit&auml;ten der sogenannten Westindienflotte. Sie hatte ihren Sitz in Flensburg und importierte schon im 18. Jahrhundert Rum aus der Karibik und von den Jungferninseln nach Europa.</p>\r\n<p>\r\n	Heute ist der meistgekaufte braune Rum in Deutschland &bdquo;der Gute Pott&ldquo;, der als Garantie f&uuml;r h&ouml;chste Qualit&auml;t und Reife gilt. Goldfarben, mit erlesenem Aroma und reicher Duftf&uuml;lle bietet er ein ausgepr&auml;gtes Geschmackserlebnis in zwei Trinkst&auml;rken:</p>\r\n<p>\r\n	Mit 54 % vol, hervorragend geeignet f&uuml;r die ber&uuml;hmte Feuerzangenbowle, zum Flambieren raffinierter Delikatessen und zum Einlegen von Fr&uuml;chten</p>\r\n<p>\r\n	Mit 40 % vol, feurighei&szlig; in Tee, Grog und Punsch getrunken oder eiskalt in vielen bekannten Cocktails serviert &ndash; zum Beispiel bei&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/cuba-libre-cocktail\">&quot;Cuba Libre&quot;</a>,&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/daiquiri-classic-cocktail\" >&quot;Daiquiri&quot;</a>&nbsp;oder&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/mai-tai-cocktail\">&quot;Mai Tai&quot;</a>.</p>\r\n','N','2013-04-02 22:28:28'),(5,'43er',43,25,'','N','2013-04-01 23:42:22'),(6,'Stroh-Rum',80,30,'','N','2013-04-01 22:53:50'),(7,'Orange Curacao',24,20,'<span>Der typische Geschmack dieses Curacaos kommt von den Schalen s&uuml;&szlig;er und bitterer Orangen von der gleichnamigen Karibikinsel Curacao. Spezielle bittere Zutaten runden den Charakter des Lik&ouml;rs ab. Am Gaumen entwickelt sich zun&auml;chst ein zarter Zitrusgeschmack, der mit fruchtiger S&uuml;&szlig;e ausgeglichen wird und ein intensives, trockenes Aroma ergibt. Die leuchtend dunkelrote Farbe ist ein interessanter Akzent f&uuml;r das Mixen von kreativen Cocktails oder Longdrinks.</span>','N','2013-04-02 22:29:17'),(8,'Cachaca (Pitu)',40,15,'<span>Der Zuckerrohrschnaps Cachaca Pitu wird in Deutschland von dem renommierten Siruphersteller Anton Riemerschmid vertrieben. Destilliert wird er in Brasilien und wurde im Jahre 1938 von Ferrer de Morais und C&acirc;ndido Carneiro entwickelt. Den Namen verdankt der Pit&uacute; einer Krabbe, die in der N&auml;he der Produktionsst&auml;tten beheimatet ist. Cachaca ist Hauptbestandteil der Caipirinha, aber auch der Batida de Coco und diverse andere Batidas enthalten den Zuckerrohrschnaps. Der Cachaca Pitu hat einen Alkoholgehalt von 40% Vol., ist von glasklarer Farbe und hat eine leichte Zuckerrohrnote. Eine Fassreife von mindestens einem Jahr gew&auml;hrleistet das einzigartige Aroma. Die Marke Pitu z&auml;hlt zu den beliebtesten Cachaca Sorten in Deutschland</span>','N','2013-04-02 22:27:09'),(9,'Limettensaft',0,20,'','N','2013-04-01 23:01:21'),(10,'Orangensaft',0,5,'','N','2013-04-01 23:02:38'),(11,'Annanassaft',0,10,'','N','2013-04-01 23:03:04'),(12,'Mandelsirup',0,25,'','N','2013-04-01 23:04:05'),(13,'OrangenlikÃ¶r',35,20,'','N','2013-04-01 23:04:41'),(14,'Grenadine',0,20,'','N','2013-04-01 23:07:59'),(15,'Pernod',40,15,'','N','2013-04-01 23:08:18'),(16,'Tequila',38,35,'','N','2013-04-01 23:10:41'),(17,'Wodka',38,15,'<p>\r\n	Wodka ist ein farbloser Branntwein, der heute &uuml;berwiegend aus Getreide destilliert wird. Der Rohstoff ist dabei fast egal. Gesetzlich ist lediglich vorgeschrieben, dass Wodka aus einem Agrarprodukt destilliert werden muss. Um unerw&uuml;nschte Aromen zu entfernen, gibt es verschiedene Filtrationsverfahren. Sie sind haupts&auml;chlich entscheidend f&uuml;r die Reinheitsstufe und damit die Qualit&auml;t eines Wodkas.</p>\r\n<p>\r\n	Im Allgemeinen kann man Wodka in zwei Arten untergliedern. Zum einen die Russische Variante, bei der ein deutlicher Eigengeschmack erw&uuml;nscht ist, zum anderen die amerikanische Variante, bei&nbsp;<br />\r\n	der vor allem Reinheit, Neutralit&auml;t und Weiche<br />\r\n	gefragt sind.&nbsp;</p>\r\n<p>\r\n	Das russische Nationalgetr&auml;nk kommt urspr&uuml;nglich aus Polen. Dort bezeichnete man fr&uuml;her verschiedene, als Heilmittel geltende W&auml;sserchen mit &quot;Wodka&quot;. F&uuml;r die westliche Welt begann der Siegeszug des Wodkas erst in den letzten zwanzig Jahren, als er immer &ouml;fter den Gin ersetzte.</p>\r\n<p>\r\n	In Deutschland ist heute Wodka Gorbatschow der meist getrunkene Wodka. Er wird nach &uuml;berliefertem Rezept und in einem einzigartigen K&auml;ltefiltrationsverfahren hergestellt. Sein Alkoholgehalt liegt je nach Sorte (blaues oder schwarzes Etikett) zwischen 37,5% vol. und 50% vol.</p>\r\n<p>\r\n	Die Osteurop&auml;er trinken Wodka meist pur aus eiskalten kleinen Gl&auml;sern. Hierzulande wird er meist zum Mixen von Cocktails oder Longdrinks eingesetzt. Bekannteste Beispiele sind:&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/screwdriver-cocktail\"><span>&quot;Screwdriver&quot;</span></a>,&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/bloody-mary-cocktail\" ><span>&quot;Bloody Mary&quot;</span></a>&nbsp;oder<a href=\"http://www.cocktails.de/cocktail-rezepte/moscow-mule-cocktail\" >&nbsp;&quot;Moscow Mule&quot;</a>.</p>\r\n','N','2013-04-02 22:24:47'),(18,'Cranbeerysaft',0,15,'','N','2013-04-01 23:15:35'),(19,'Gin',38,15,'<p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); font-family: Helvetica, Arial, sans-serif; line-height: 18px;\">\r\n	Gin wird aus Getreide destilliert und erh&auml;lt sein Aroma haupts&auml;chlich durch&nbsp; Wacholderbeeren und erg&auml;nzende Gew&uuml;rze. Verd&uuml;nnt auf Trinkst&auml;rke ist er nach der Destillation ohne Lagerzeit sofort trinkfertig. Sein Alkoholgehalt betr&auml;gt in Deutschland mindestens 38 % vol. Als &bdquo;Dry Gin&ldquo; darf er keinerlei Zuckerzusatz enthalten. Auch die bekannte Bezeichnung &bdquo;London Dry Gin&ldquo; bezieht sich nur auf die Zuckerfreiheit, nicht aber auf den Herstellungsort.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); font-family: Helvetica, Arial, sans-serif; line-height: 18px;\">\r\n	In Deutschland wird Gin haupts&auml;chlich f&uuml;r Mixgetr&auml;nke verwendet, besonders beim Martini oder im&nbsp;<a href=\"http://www.cocktails.de/cocktail-rezepte/gin-fizz-cocktail\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-color: transparent; text-decoration: none; color: rgb(102, 51, 102);\">&quot;Gin-Fizz&quot;</a>&nbsp;mit Zucker, Zitrone und Mineralwasser.</p>\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); font-family: Helvetica, Arial, sans-serif; line-height: 18px;\">\r\n	Vorl&auml;ufer des heutigen Gins war der holl&auml;ndische Genever, der dort im 17. Jahrhundert als Medizin verordnet und nur in Apotheken abgegeben wurde. Die Engl&auml;nder ertr&auml;nkten ihre ausufernden sozialen Probleme zu Beginn des Industriezeitalters in selbstgebranntem Gin, so dass dort mit Gesetzen gegen das Gin-Trinken vorgegangen und strenge Qualit&auml;tskontrollen angeordnet werden mussten.</p>\r\n','N','2013-04-02 22:45:30'),(20,'Zitronensaft',0,15,'','N','2013-04-01 23:18:26'),(21,'Cola',0,5,'','J','2013-04-05 00:48:19'),(22,'Whiskey',40,20,'','N','2013-04-01 23:19:06'),(23,'Sahne',0,20,'','J','2013-04-05 00:48:19'),(24,'Pfirsichnektar',0,10,'','N','2013-04-01 23:21:11'),(25,'PfirsichlikÃ¶r',36,25,'','N','2013-04-01 23:22:00'),(26,'Milch',0,15,'','N','2013-04-01 23:42:51'),(27,'Batida de Coco',16,25,'<span style=\"font-family: Helvetica, Arial, sans-serif; line-height: 18px; background-color: rgb(255, 255, 255);\">&quot;Batida&quot; nennen die Brasilianer ihre erfrischenden Mixdrinks mit viel Geschmack und wenig Alkohol. Sie werden stets auf Basis von&nbsp;</span><a href=\"http://www.cocktails.de/zutaten/cachaca\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(102, 51, 102); font-family: Helvetica, Arial, sans-serif; line-height: 18px;\">Cacha&ccedil;a</a><span style=\"font-family: Helvetica, Arial, sans-serif; line-height: 18px; background-color: rgb(255, 255, 255);\">&nbsp;(Zuckerrohrschnaps) hergestellt und mit Rohrzucker, Fr&uuml;chten, Fruchts&auml;ften und evtl. Sahne oder Milch gemixt.Der Batida de C&ocirc;co ist der Lieblings-Batida der Brasilianer. Ihn gibt es auch schon als fertig gemixten Cremelik&ouml;r zu kaufen, was ihn besonders popul&auml;r macht.</span><br style=\"font-family: Helvetica, Arial, sans-serif; line-height: 18px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"font-family: Helvetica, Arial, sans-serif; line-height: 18px; background-color: rgb(255, 255, 255);\">Sein Hauptbestandteil ist Kokosnussmilch.Mit 16 % vol. Alkoholgehalt kann man ihn angenehm pur auf Eis trinken. Gleichzeitig wird er f&uuml;r viele tropische Cocktails verwendet und ist unverzichtbar f&uuml;r jede Barausstattung</span>','N','2013-04-02 22:43:49'),(28,'Maracuja Saft',0,15,'','N','2013-04-05 00:15:40');
/*!40000 ALTER TABLE `zutaten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zutaten_zuordnung`
--

DROP TABLE IF EXISTS `zutaten_zuordnung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zutaten_zuordnung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zutat_id` int(11) NOT NULL,
  `rezept_id` int(11) NOT NULL,
  `menge` int(4) NOT NULL,
  `geaendert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zutaten_zuordnung`
--

LOCK TABLES `zutaten_zuordnung` WRITE;
/*!40000 ALTER TABLE `zutaten_zuordnung` DISABLE KEYS */;
INSERT INTO `zutaten_zuordnung` (`id`, `zutat_id`, `rezept_id`, `menge`, `geaendert`) VALUES (1,15,1,40,'2013-04-03 23:33:42'),(2,21,1,140,'2013-04-03 23:33:43'),(3,3,2,40,'2013-04-03 23:15:25'),(10,10,2,140,'2013-04-03 23:15:25'),(15,3,9,30,'2013-04-04 22:12:41'),(16,4,9,30,'2013-04-04 22:25:10'),(17,13,9,20,'2013-04-04 22:27:21'),(18,12,9,30,'2013-04-04 22:28:11'),(19,20,9,20,'2013-04-04 22:28:35'),(20,9,9,10,'2013-04-04 22:30:17'),(21,11,9,80,'2013-04-04 22:31:43'),(22,27,3,50,'2013-04-04 23:01:41'),(23,10,3,100,'2013-04-04 23:02:01'),(24,3,4,45,'2013-04-04 23:32:11'),(25,21,4,120,'2013-04-04 23:37:13'),(26,13,6,30,'2013-04-05 00:11:12'),(27,4,6,20,'2013-04-05 00:11:29'),(28,20,6,20,'2013-04-05 00:11:44'),(29,10,6,80,'2013-04-05 00:12:06'),(30,14,6,10,'2013-04-05 00:12:25'),(31,4,7,40,'2013-04-05 00:13:25'),(32,3,7,20,'2013-04-05 00:13:42'),(33,28,7,10,'2013-04-05 00:17:08'),(34,10,7,20,'2013-04-05 00:20:03'),(35,11,7,20,'2013-04-05 00:21:31'),(37,4,10,20,'2013-04-05 00:36:53'),(38,3,10,20,'2013-04-05 00:37:02'),(39,13,10,20,'2013-04-05 00:37:10'),(40,10,10,40,'2013-04-05 00:37:26'),(41,11,10,40,'2013-04-05 00:37:41'),(42,20,10,10,'2013-04-05 00:37:51'),(43,14,10,20,'2013-04-05 00:39:47'),(44,17,11,40,'2013-04-07 18:58:24'),(45,23,11,140,'2013-04-07 18:58:52');
/*!40000 ALTER TABLE `zutaten_zuordnung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-08 10:10:38
