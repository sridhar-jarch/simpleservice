-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 3.132.135.249    Database: pearltec_compoxdb
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `accesstype`
--

DROP TABLE IF EXISTS `accesstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesstype` (
  `id` int(3) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesstype`
--

LOCK TABLES `accesstype` WRITE;
/*!40000 ALTER TABLE `accesstype` DISABLE KEYS */;
INSERT INTO `accesstype` VALUES (0,'NoAccess'),(1,'View'),(2,'Add'),(3,'Edit');
/*!40000 ALTER TABLE `accesstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accordion`
--

DROP TABLE IF EXISTS `accordion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accordion` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT '',
  `Aorder` decimal(10,0) NOT NULL DEFAULT '0',
  `parent_id` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=564;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accordion`
--

LOCK TABLES `accordion` WRITE;
/*!40000 ALTER TABLE `accordion` DISABLE KEYS */;
INSERT INTO `accordion` VALUES ('1','Services','',0,NULL),('1.1','Instant','localhost:8080/compox/Welcome.jsp#to',1,'1'),('1.2','Regular','http://localhost:8080/compox/Welcome.jsp#to',2,'1'),('1.3','Appointed','',3,'1'),('1.4','serviceagency','',4,'1'),('2','Home Business','',0,NULL),('2.1','Pickles and Snacks','http://www.google.com',1,'2'),('2.2','Curry Point','',2,'2'),('2.3','Tailor','',3,'2'),('2.4','Yoga Classes','',4,'2'),('2.5','Dance Classes','',5,'2'),('2.6','Baby Sitter','',6,'2'),('2.7','Beauty Parlour','',7,'2'),('2.8','Sarees and Emboidary','',7,'2'),('3','Technicians','',3,NULL),('3.1','Plumber','',1,'3'),('3.2','Electrician','',2,'3'),('3.3','Carpenter','',3,'3'),('3.4','Painter','',4,'3'),('3.5','GasStoveRepair','',5,'3'),('3.6','CivilMestry','',6,'3'),('3.7','Chef&Cook','',7,'3'),('3.8','Laundry','',8,'3'),('4','StreetBusiness','',5,NULL),('4.1','PhotoStudio','',1,'4'),('4.2','DTP,Xerox,Print','',2,'4'),('4.3','TicketBooking','',3,'4'),('4.4','Stationary','',4,'4'),('4.5','Govt ID - Helper','',5,'4'),('4.6','Document Writer','',6,'4'),('5','config','',6,NULL),('5.1','version',NULL,1,'5'),('5.2','category','',2,'5'),('5.3','percentdone','',3,'5'),('5.4','status','',4,'5'),('5.5','sevierity','',5,'5'),('5.6','issue type','',6,'5'),('5.7','priority','',7,'5');
/*!40000 ALTER TABLE `accordion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_md`
--

DROP TABLE IF EXISTS `area_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_md` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_md`
--

LOCK TABLES `area_md` WRITE;
/*!40000 ALTER TABLE `area_md` DISABLE KEYS */;
INSERT INTO `area_md` VALUES (1,'mvp'),(2,'lawsons'),(3,'waltair'),(4,'siripuram');
/*!40000 ALTER TABLE `area_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_md`
--

DROP TABLE IF EXISTS `city_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_md` (
  `id` decimal(3,0) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_md`
--

LOCK TABLES `city_md` WRITE;
/*!40000 ALTER TABLE `city_md` DISABLE KEYS */;
INSERT INTO `city_md` VALUES (1,'Vizag'),(2,'Kakinada'),(3,'hyderabad'),(4,'chennai');
/*!40000 ALTER TABLE `city_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Id` int(11) NOT NULL,
  `Name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Maxis'),(2,'BenefitFocus'),(3,'Celgene'),(4,'GFK');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_md`
--

DROP TABLE IF EXISTS `country_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_md` (
  `id` decimal(10,0) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_md`
--

LOCK TABLES `country_md` WRITE;
/*!40000 ALTER TABLE `country_md` DISABLE KEYS */;
INSERT INTO `country_md` VALUES (1,'india'),(2,'america'),(3,'canada'),(4,'london');
/*!40000 ALTER TABLE `country_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts_md`
--

DROP TABLE IF EXISTS `districts_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts_md` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2048;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts_md`
--

LOCK TABLES `districts_md` WRITE;
/*!40000 ALTER TABLE `districts_md` DISABLE KEYS */;
INSERT INTO `districts_md` VALUES (1,'srikakulam'),(2,'vizianagaram'),(3,'vizag'),(4,'EG'),(5,'WG'),(6,'Vijayawada'),(7,'Guntur'),(8,'Ongole');
/*!40000 ALTER TABLE `districts_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=585;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (4,'accesstype'),(5,'accordion'),(6,'area_md'),(7,'city_md'),(8,'client'),(9,'country_md'),(11,'districts_md'),(13,'entities_md'),(14,'entity'),(15,'events'),(16,'fieldtype'),(17,'gender_md'),(19,'language'),(20,'projects'),(21,'role'),(22,'rows'),(23,'salutation_md'),(24,'screen_cx'),(25,'state'),(26,'status'),(27,'tab'),(28,'technology'),(29,'theme'),(30,'validations'),(31,'yesno_md'),(32,'tablecolumns'),(33,'status_master'),(34,'servicerequesttype');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'onBlur'),(2,'onLoad'),(3,'onSubmit'),(4,'onClick'),(5,'onFocus');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(100) DEFAULT NULL,
  `fieldtype` varchar(25) DEFAULT NULL,
  `entity` varchar(30) DEFAULT NULL,
  `validation` varchar(30) DEFAULT NULL,
  `Event` varchar(30) DEFAULT 'onblur',
  `fOrder` int(3) DEFAULT NULL,
  `position` int(1) DEFAULT '0',
  `editable` int(1) DEFAULT '1',
  `searchable` int(1) DEFAULT '0',
  `rowss` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `style` varchar(40) DEFAULT NULL,
  `fk` varchar(50) DEFAULT NULL,
  `pk` int(1) DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `fieldtypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=210;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (1,'user.username','11',NULL,'7','2',1,0,1,0,NULL,NULL,NULL,'',1,NULL,NULL),(2,'user.email','11',NULL,NULL,'2',2,1,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(3,'groups.group_id','11',NULL,NULL,'2',3,0,1,1,10,10,NULL,'',0,NULL,NULL),(4,'groups.group_name','11',NULL,NULL,'2',4,1,1,1,10,10,NULL,'',0,NULL,NULL),(5,'groups.group_type','2',NULL,NULL,'2',5,1,1,1,3,4,NULL,'',0,NULL,NULL),(6,'user.password','8',NULL,'8','2',6,1,1,1,10,10,NULL,'1',0,NULL,NULL),(7,'registration.name','11',NULL,NULL,'2',7,0,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(8,'registration.department','3',NULL,NULL,'2',8,1,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(9,'registration.gender','9','17',NULL,'2',9,0,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(10,'registration.address','12',NULL,NULL,'2',10,1,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(11,'registration.language','2','19',NULL,'2',11,0,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(12,'user_address.house_no','11',NULL,NULL,'2',1,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(13,'user_address.street_name','12',NULL,NULL,'2',2,1,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(14,'user_address.area','3','6',NULL,'2',3,0,1,0,8,6,NULL,'',0,NULL,NULL),(15,'user_address.postal_code','11',NULL,'1','2',4,1,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(16,'user_address.city','11',NULL,NULL,'2',5,0,1,1,NULL,NULL,NULL,'19',0,NULL,NULL),(17,'user_address.userid','5',NULL,NULL,'2',6,0,1,0,NULL,NULL,NULL,'1',1,NULL,NULL),(18,'groups.group_role','6',NULL,NULL,'2',14,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(19,'user_address.district','3','11',NULL,NULL,15,1,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(20,'user.gender','9','17',NULL,'2',16,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(21,'user.dob','1',NULL,NULL,'2',17,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(22,'user.height','10',NULL,NULL,'2',18,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(23,'user.salutation','4','23',NULL,'2',19,0,1,0,NULL,NULL,NULL,'',0,NULL,NULL),(24,'user.phone','11',NULL,'1','2',20,0,1,1,NULL,NULL,NULL,'',0,NULL,NULL),(25,'user_pref.user_id','5',NULL,NULL,'2',21,0,1,0,NULL,NULL,NULL,'1',1,NULL,NULL),(26,'user_pref.language_id','3','19',NULL,'2',22,1,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(27,'user_pref.theme_id','3','29',NULL,'2',23,0,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(28,'user_pref.no_of_rows','11',NULL,'1','2',24,1,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(29,'user_role_cx.userid','5',NULL,NULL,'2',25,0,1,0,NULL,NULL,NULL,'1',1,NULL,NULL),(30,'user_role_cx.roleid','3','21',NULL,'2',26,1,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(32,'user.LangId','9','19',NULL,'2',28,1,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(48,'trainings.Id','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,1,NULL,NULL),(49,'trainings.TrainingName','11','0','0','1',2,0,1,1,1,1,'',NULL,0,NULL,NULL),(50,'trainings.Trainer','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(51,'trainings.Slides','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(52,'trainings.Evaluation','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(53,'trainings.Venue','11',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(54,'trainings.Schedule','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(55,'trainings.Duration','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(56,'trainings.TechnologyId','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(57,'trainings.ProjectId','11',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(139,'field.fieldid','11',NULL,'5','5',1,0,1,1,1,1,NULL,NULL,1,NULL,NULL),(140,'field.field','3','32',NULL,'2',2,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(141,'field.fieldtype','4','16',NULL,'2',3,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(142,'field.entity','4','14',NULL,'2',4,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(143,'field.validation','4','30',NULL,'2',5,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(144,'field.Event','4','15',NULL,'2',6,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(145,'field.fOrder','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(146,'field.position','9','31',NULL,'2',8,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(147,'field.editable','9','31',NULL,'2',9,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(148,'field.searchable','9','31',NULL,'2',10,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(149,'field.rowss','11',NULL,NULL,'2',11,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(150,'field.cols','11',NULL,NULL,'2',12,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(151,'field.style','11',NULL,NULL,'2',13,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(152,'field.fk','11','31',NULL,'2',14,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(153,'field.pk','9','31',NULL,'2',15,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(200,'savedsearch_cx.criteria','11',NULL,'4','4',65,1,1,0,3,4,'red','1',1,NULL,NULL),(201,'fieldmap.parentfielid','11','23','3','3',16,1,1,0,7,2,'gfg','1',0,NULL,NULL),(202,'projects.id','11',NULL,NULL,'2',1,1,1,1,1,1,'red',NULL,1,NULL,NULL),(203,'projects.pname','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(204,'projects.ptype','3',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(205,'projects.client','11','8',NULL,'2',4,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(206,'projects.size','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(207,'projects.technologies','7','28',NULL,'2',6,0,1,1,1,1,'red','1',0,NULL,NULL),(208,'projects.kickofDate','1',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(209,'projects.status','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(210,'projects.briefdesc','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(212,'studentdetails.studId','11',NULL,NULL,'2',1,0,1,1,1,1,NULL,'1',0,NULL,NULL),(213,'studentdetails.StudName','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(214,'student.rank','11',NULL,NULL,'2',11,1,1,1,1,1,NULL,NULL,0,NULL,NULL),(215,'studentdetails.studDob','1',NULL,NULL,'2',3,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(216,'studentdetails.studPlace','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(217,'studentdetails.studBlodGroup','3',NULL,NULL,'2',5,0,1,1,1,1,NULL,NULL,0,NULL,NULL),(218,'student.collegeid','3',NULL,NULL,'2',9,1,1,1,1,1,NULL,'0',0,NULL,NULL),(224,'student.branchid','7',NULL,NULL,'2',10,1,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(225,'studentdetails.gender','9',NULL,NULL,'2',6,0,1,0,NULL,NULL,NULL,NULL,0,NULL,NULL),(227,'studentdetails.height',NULL,NULL,NULL,'2',7,0,1,0,1,1,NULL,NULL,0,NULL,NULL),(229,'student.collegeloc','11',NULL,NULL,'2',12,1,1,0,1,1,NULL,NULL,0,NULL,NULL),(278,'pts_version.id','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(279,'pts_version.versiondesc','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(280,'pts_version.versionbegindate','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(281,'pts_version.versiontargeteddate','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(282,'pts_version.sortorder','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(283,'pts_version.status','11',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(284,'pts_version.createduser','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(285,'pts_version.createddate','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(286,'pts_version.updateddate','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(287,'pts_version.updateduser','11',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(288,'servicerequest.servicerequestid','11',NULL,'5','5',1,1,0,1,1,1,NULL,NULL,1,NULL,NULL),(291,'servicerequest.serviceagentid','11',NULL,'8','2',4,0,0,1,1,1,NULL,NULL,NULL,NULL,NULL),(293,'servicerequest.community_member_id','11',NULL,'8','2',6,0,0,1,1,1,NULL,NULL,NULL,NULL,NULL),(296,'servicerequest.servicerequesttypeid','4','34',NULL,NULL,9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(299,'servicerequest.servicerequeststatusid','4','33',NULL,NULL,12,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(302,'servicerequest.scanned_notes','12',NULL,'8','2',15,1,1,1,3,5,NULL,NULL,NULL,NULL,NULL),(395,'serviceagent.id','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(396,'serviceagent.service_agency_id','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(397,'serviceagent.Servicing_orders','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(398,'serviceagent.Total_orders_served','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(399,'serviceagent.Rating_average','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(402,'serviceagency.id','11',NULL,'5','5',1,1,1,1,1,1,NULL,NULL,1,NULL,NULL),(403,'serviceagency.landline','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(404,'serviceagency.agency_primary_contact_name','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(405,'serviceagency.agency_name','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(406,'serviceagency.sagencyregdid','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(407,'serviceagency.SAgencyActivationDate','1',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(408,'serviceagency.SAgencyBankAccountID','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(409,'serviceagency.SAgencyBankBranch','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(410,'serviceagency.SAgencyBankName','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(411,'serviceagency.SAgencyRegdDate','1',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(417,'CM_HomeBusiness.ID','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(418,'CM_HomeBusiness.CommunityMemberID','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(419,'CM_HomeBusiness.HomeBusinessCategoryid','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(420,'CM_HomeBusiness.HomeBusinessSkillID','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(421,'CM_HomeBusiness.DeliveryTypeID','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(422,'CM_HomeBusiness.FromDate','11',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(423,'CM_HomeBusiness.Todate','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(424,'CM_HomeBusiness.IsActive','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(425,'CM_HomeBusiness.VisibleToNearCommunities_Flag','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(426,'CM_HomeBusiness.BusinessDesription','11',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(427,'CM_HomeBusiness.Cost','11',NULL,NULL,'2',11,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(428,'CM_HomeBusiness.SkillLevel','11',NULL,NULL,'2',12,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(429,'CM_HomeBusiness.CM_HB_Bank','11',NULL,NULL,'2',13,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(430,'CM_HomeBusiness.AccountNo','11',NULL,NULL,'2',14,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(431,'CM_HomeBusiness.ifsccode','11',NULL,NULL,'2',15,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(432,'CM_HomeBusiness.TeamSize_Min','11',NULL,NULL,'2',16,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(433,'CM_HomeBusiness.IsRegistered','11',NULL,NULL,'2',17,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(434,'CM_HomeBusiness.Paytm_alternate_phone','11',NULL,NULL,'2',18,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(435,'CM_HomeBusiness.Paymentmode','11',NULL,NULL,'2',19,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(436,'CM_HomeBusiness.alternatevenue','11',NULL,NULL,'2',20,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(437,'CM_HomeBusiness.ProductName','11',NULL,NULL,'2',21,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(448,'CM_Homebusiness_requests.CM_UserID','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(449,'CM_Homebusiness_requests.ID','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(450,'CM_Homebusiness_requests.HomeBusinessSkillID','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(451,'CM_Homebusiness_requests.SlotTime','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(452,'CM_Homebusiness_requests.EstimatedCost','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(453,'CM_Homebusiness_requests.RequirementNotes','11',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(454,'CM_Homebusiness_requests.SlotDate','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(455,'CM_Homebusiness_requests.NeedSASuperVision','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(456,'CM_Homebusiness_requests.HomeBusinessCategoryID','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(457,'CM_Homebusiness_requests.IsAccepted','11',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(458,'CM_Homebusiness_requests.PreferedMobileID','11',NULL,NULL,'2',11,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(463,'CM_HomeBusiness_subscribe.ID','11',NULL,NULL,'2',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(464,'CM_HomeBusiness_subscribe.CM_HomeBusinessID','11',NULL,NULL,'2',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(465,'CM_HomeBusiness_subscribe.CommunityID','11',NULL,NULL,'2',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(466,'CM_HomeBusiness_subscribe.CommunityMemberID','11',NULL,NULL,'2',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(467,'CM_HomeBusiness_subscribe.CM_Mobile','11',NULL,NULL,'2',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(468,'CM_HomeBusiness_subscribe.SubScribeDate','11',NULL,NULL,'2',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(469,'CM_HomeBusiness_subscribe.SlotTime','11',NULL,NULL,'2',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(470,'CM_HomeBusiness_subscribe.ActualCost','11',NULL,NULL,'2',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(471,'CM_HomeBusiness_subscribe.SlotDate','11',NULL,NULL,'2',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(472,'CM_HomeBusiness_subscribe.CM_Homebusiness_requests_ID','11',NULL,NULL,'2',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(474,'screen.id','11',NULL,'5','5',1,0,0,1,1,1,NULL,NULL,1,2,NULL),(475,'screen.name','11',NULL,'7','2',2,0,1,1,1,1,NULL,NULL,0,2,NULL),(476,'screen.select','12',NULL,'8','2',3,1,1,1,5,30,NULL,NULL,0,2,NULL),(477,'screen.sortCol','11',NULL,NULL,'2',4,0,1,1,NULL,NULL,NULL,NULL,0,2,NULL),(478,'screen.columns','12',NULL,NULL,'2',5,1,1,0,5,30,NULL,NULL,0,NULL,NULL),(479,'serviceorder.serviceorderid','11',NULL,NULL,'onBlur',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(480,'serviceorder.billingaddr1','11',NULL,NULL,'onBlur',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(481,'serviceorder.billingaddr2','11',NULL,NULL,'onBlur',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(482,'serviceorder.billingcityid','11',NULL,NULL,'onBlur',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(483,'serviceorder.billinglastname','11',NULL,NULL,'onBlur',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(484,'serviceorder.billinglocationid','11',NULL,NULL,'onBlur',6,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(485,'serviceorder.billingstateid','11',NULL,NULL,'onBlur',7,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(486,'serviceorder.billingzip','11',NULL,NULL,'onBlur',8,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(487,'serviceorder.created_datetime','11',NULL,NULL,'onBlur',9,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(488,'serviceorder.deliveryaddr1','11',NULL,NULL,'onBlur',10,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(489,'serviceorder.deliveryaddr2','11',NULL,NULL,'onBlur',11,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(490,'serviceorder.deliverycityid','11',NULL,NULL,'onBlur',12,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(491,'serviceorder.deliverylastname','11',NULL,NULL,'onBlur',13,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(492,'serviceorder.deliverylocationid','11',NULL,NULL,'onBlur',14,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(493,'serviceorder.deliveryslotid','11',NULL,NULL,'onBlur',15,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(494,'serviceorder.deliverystateid','11',NULL,NULL,'onBlur',16,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(495,'serviceorder.deliverytypeid','11',NULL,NULL,'onBlur',17,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(496,'serviceorder.deliveryzip','11',NULL,NULL,'onBlur',18,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(497,'serviceorder.communitymemberid','11',NULL,NULL,'onBlur',19,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(498,'serviceorder.totalordercost','11',NULL,NULL,'onBlur',20,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(499,'serviceorder.paymentmodeid','11',NULL,NULL,'onBlur',21,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(500,'serviceorder.securecode','11',NULL,NULL,'onBlur',22,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(501,'serviceorder.updated_datetime','11',NULL,NULL,'onBlur',23,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(502,'serviceorder.updateduserid','11',NULL,NULL,'onBlur',24,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(503,'serviceorder.servicerequestid','11',NULL,NULL,'onBlur',25,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(667,'tab.id','11','0','5','5',1,1,1,1,1,1,'',NULL,1,NULL,NULL),(668,'tab.name','11','0','7','1',2,0,1,1,1,1,'',NULL,NULL,NULL,NULL),(669,'tab.div','11',NULL,NULL,'onBlur',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(670,'tab.link','11',NULL,NULL,'onBlur',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(674,'role_tab.roleid','4','21','0','0',1,1,1,1,1,1,'',NULL,NULL,NULL,NULL),(675,'role_tab.tabid','11','0','0','0',2,0,1,1,1,1,'','667',NULL,NULL,NULL),(676,'accordion.id','11','0','5','5',1,1,1,1,1,1,'','',1,NULL,NULL),(677,'accordion.name','11',NULL,NULL,'onBlur',2,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(678,'accordion.url','11',NULL,NULL,'onBlur',3,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(679,'accordion.Aorder','11',NULL,NULL,'onBlur',4,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(680,'accordion.parent_id','11',NULL,NULL,'onBlur',5,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(683,'role_accordion.roleid','11',NULL,NULL,'onBlur',1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(684,'role_accordion.accordionid','11','0','0','0',2,0,1,1,1,1,'','676',NULL,NULL,NULL);
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_access`
--

DROP TABLE IF EXISTS `field_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_access` (
  `field_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`field_id`,`permission_id`),
  KEY `FK_field_access_permission_id2` (`permission_id`),
  CONSTRAINT `FK_field_access_permission_id2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK_field_access_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1365;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_access`
--

LOCK TABLES `field_access` WRITE;
/*!40000 ALTER TABLE `field_access` DISABLE KEYS */;
INSERT INTO `field_access` VALUES (3,3,'ram',1),(4,5,'ram',1),(5,3,'ram',1),(7,3,'ram',1),(8,3,'ram',1),(9,3,'ram',1),(10,3,'ram',1),(14,5,'ram',1),(3,3,'sri',2),(4,5,'sri',2),(5,3,'sri',2),(14,3,'sri',2);
/*!40000 ALTER TABLE `field_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_access_role`
--

DROP TABLE IF EXISTS `field_access_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_access_role` (
  `field_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  KEY `FK_field_access_role_permissio` (`permission_id`),
  KEY `FK_field_access_role_roleid` (`roleid`),
  CONSTRAINT `FK_field_access_role_permissio` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK_field_access_role_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1170;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_access_role`
--

LOCK TABLES `field_access_role` WRITE;
/*!40000 ALTER TABLE `field_access_role` DISABLE KEYS */;
INSERT INTO `field_access_role` VALUES (4,5,1),(5,3,1),(3,3,2),(4,5,2),(5,3,2),(3,3,1),(7,3,2),(8,3,2),(9,3,2),(10,3,2),(14,3,1),(14,5,2),(17,3,1),(19,3,1);
/*!40000 ALTER TABLE `field_access_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldmap`
--

DROP TABLE IF EXISTS `fieldmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldmap` (
  `fieldid` int(10) NOT NULL,
  `parentfielid` int(10) NOT NULL,
  PRIMARY KEY (`fieldid`,`parentfielid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldmap`
--

LOCK TABLES `fieldmap` WRITE;
/*!40000 ALTER TABLE `fieldmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldtype`
--

DROP TABLE IF EXISTS `fieldtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldtype` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldtype`
--

LOCK TABLES `fieldtype` WRITE;
/*!40000 ALTER TABLE `fieldtype` DISABLE KEYS */;
INSERT INTO `fieldtype` VALUES (1,'Calendar'),(2,'Check'),(3,'DropKisV'),(4,'Drop'),(5,'Hidden'),(6,'logo_tag'),(7,'MultipleSelect'),(8,'Password'),(9,'Radio'),(10,'Range'),(11,'Text'),(12,'TextArea'),(13,'RadioKisV');
/*!40000 ALTER TABLE `fieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender_md`
--

DROP TABLE IF EXISTS `gender_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender_md` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_md`
--

LOCK TABLES `gender_md` WRITE;
/*!40000 ALTER TABLE `gender_md` DISABLE KEYS */;
INSERT INTO `gender_md` VALUES (1,'male'),(2,'female');
/*!40000 ALTER TABLE `gender_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int(4) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1260;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'B +ve'),(2,'O +ve'),(3,'O'),(4,'cricket'),(5,'plants'),(6,'politics'),(7,'soft'),(8,'fights'),(9,'party'),(10,'act'),(11,'help'),(12,'dance'),(13,'movie');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchymenu`
--

DROP TABLE IF EXISTS `hierarchymenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hierarchymenu` (
  `menuid` varchar(30) NOT NULL,
  `menuname` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `parentmenuid` varchar(30) DEFAULT '',
  `menuord` int(11) NOT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=862;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchymenu`
--

LOCK TABLES `hierarchymenu` WRITE;
/*!40000 ALTER TABLE `hierarchymenu` DISABLE KEYS */;
INSERT INTO `hierarchymenu` VALUES ('11','Configuration','remotedbadmin.com',0,NULL,1),('11.1','Config issue metadata','',0,'11',0),('11.2','Config Admin and Roles','',0,'11',1);
/*!40000 ALTER TABLE `hierarchymenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchymenu_copy`
--

DROP TABLE IF EXISTS `hierarchymenu_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hierarchymenu_copy` (
  `menuid` varchar(30) NOT NULL,
  `menuname` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `parentmenuid` varchar(30) DEFAULT '',
  `menuord` int(11) NOT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=862;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchymenu_copy`
--

LOCK TABLES `hierarchymenu_copy` WRITE;
/*!40000 ALTER TABLE `hierarchymenu_copy` DISABLE KEYS */;
INSERT INTO `hierarchymenu_copy` VALUES ('1','Student',NULL,0,NULL,1),('1.1','Student Info',NULL,0,'1',1),('1.2','Parent Info',NULL,0,'1',2),('1.2.1','search','google.com',0,'1.2',0),('1.3','Marksheet',NULL,0,'1',3),('1.4','Attendance',NULL,0,'1',1),('1.5','Activities',NULL,0,'1',1),('11','Configuration','remotedbadmin.com',0,NULL,11),('11.1','Config issue metadata','',0,'11',0),('11.2','Config Admin and Roles','',0,'11',1),('2','Teacher',NULL,0,NULL,2),('2.1','subjects',NULL,0,'2',0),('2.1.1','yahoo','yahoo.com',0,'2.1',12),('2.2','maths',NULL,0,'2',0),('2.3','schedule','',0,'2',3),('3','Groups','group.jsp',0,NULL,3),('3.1','science','',0,'3',0),('3.2','social','',0,'3',0),('4','Classes','about.jsp',0,NULL,4),('5','Management','',0,NULL,1),('5.1','school configuration','',0,'1',1),('5.2','leaves','',0,'',0);
/*!40000 ALTER TABLE `hierarchymenu_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int(5) NOT NULL,
  `language_id` int(8) DEFAULT NULL,
  `model_id` int(5) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'english'),(2,'telugu'),(3,'hindi');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'s','s','s','s',1),(2,'p','p','p','p',2),(3,'sri','sri','sri@gmail.com','die eike',23456789),(4,'rames','rames','ramesh@pearltechsoft.com','',801345678);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `screenfield` varchar(30) DEFAULT NULL,
  `field_id` int(4) DEFAULT NULL,
  `screen_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=941 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=163;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (243,'projects.id',202,7),(244,'projects.pname',203,7),(245,'projects.ptype',204,7),(246,'projects.client',205,7),(247,'projects.size',206,7),(248,'projects.technologies',207,7),(249,'projects.kickofDate',208,7),(250,'projects.status',209,7),(251,'projects.briefdesc',210,7),(258,'trainings.Id',48,4),(259,'trainings.TrainingName',49,4),(260,'trainings.Trainer',50,4),(261,'trainings.Slides',51,4),(262,'trainings.Evaluation',52,4),(263,'trainings.Venue',53,4),(264,'trainings.Schedule',54,4),(265,'trainings.Duration',55,4),(266,'trainings.TechnologyId',56,4),(267,'trainings.ProjectId',57,4),(273,'field.fieldid',139,3),(274,'field.field',140,3),(275,'field.fieldtype',141,3),(276,'field.entity',142,3),(277,'field.validation',143,3),(278,'field.Event',144,3),(279,'field.fOrder',145,3),(280,'field.position',146,3),(281,'field.editable',147,3),(282,'field.searchable',148,3),(283,'field.rows',149,3),(284,'field.cols',150,3),(285,'field.style',151,3),(286,'field.fk',152,3),(287,'field.pk',153,3),(295,'user_role_cx.userid',29,2),(296,'user_role_cx.roleid',30,2),(298,'user_pref.user_id',25,2),(299,'user_pref.language_id',26,2),(300,'user_pref.theme_id',27,2),(301,'user_pref.no_of_rows',28,2),(302,'pk',153,3),(303,'fk',152,3),(304,'style',151,3),(305,'cols',150,3),(306,'rows',149,3),(307,'searchable',148,3),(308,'editable',147,3),(309,'position',146,3),(310,'forder',145,3),(311,'Event',144,3),(312,'validation',143,3),(313,'entity',142,3),(314,'fieldtype',141,3),(315,'field',140,3),(316,'fieldid',139,3),(317,'User Name',1,1),(318,'EMail',2,1),(319,'Password',6,1),(320,'House No',12,1),(321,'Address',13,1),(322,'Community',14,1),(323,'Zip Code',15,1),(324,'City',16,1),(325,'UserId',17,1),(326,'District',19,1),(327,'Gender',20,1),(328,'Data of  Birth',21,1),(329,'Height',22,1),(330,'Salutation',23,1),(331,'Phone',24,1),(332,'user name ',1,2),(333,'Field Id',31,3),(334,'Mother Toungue',32,1),(335,'studentdetails.studId',212,8),(336,'studentdetails.StudName',213,8),(338,'studentdetails.studDob',215,8),(339,'studentdetails.studPlace',216,8),(340,'studentdetails.studBlodGroup',217,8),(342,'abcdef',228,8),(343,'student.collegeid',218,8),(344,'student.branchid',224,8),(345,'student.rank',214,8),(346,'student.collegeloc',229,8),(347,'studentdetails.studbranchid',224,8),(348,'studentdetails.gender',225,8),(349,'studentdetails.height',227,8),(365,'ID',245,10),(366,'s_agnecy_name',246,10),(367,'landline',247,10),(368,'location_id',248,10),(369,'SAgencyActivationDate',249,10),(370,'SAgencyREGDID',250,10),(371,'SAgencyRegdDate',251,10),(372,'SAgencyBankName',252,10),(373,'SAgencyBankBranch',253,10),(374,'SAgencyBankAccountID',254,10),(716,'serviceorderid',479,17),(717,'billingaddr1',480,17),(718,'billingaddr2',481,17),(719,'billingcityid',482,17),(720,'billinglastname',483,17),(721,'billinglocationid',484,17),(722,'billingstateid',485,17),(723,'billingzip',486,17),(724,'created_datetime',487,17),(725,'deliveryaddr1',488,17),(726,'deliveryaddr2',489,17),(727,'deliverycityid',490,17),(728,'deliverylastname',491,17),(729,'deliverylocationid',492,17),(730,'deliveryslotid',493,17),(731,'deliverystateid',494,17),(732,'deliverytypeid',495,17),(733,'deliveryzip',496,17),(734,'communitymemberid',497,17),(735,'totalordercost',498,17),(736,'paymentmodeid',499,17),(737,'securecode',500,17),(738,'updated_datetime',501,17),(739,'updateduserid',502,17),(740,'servicerequestid',503,17),(747,'id',395,18),(748,'service_agency_id',396,18),(749,'Servicing_orders',397,18),(750,'Total_orders_served',398,18),(751,'Rating_average',399,18),(754,'servicerequestid',288,15),(755,'serviceagentid',291,15),(756,'community_member_id',293,15),(757,'servicerequesttypeid',296,15),(758,'servicerequeststatusid',299,15),(759,'scanned_notes',302,15),(761,'id',402,19),(762,'landline',403,19),(763,'agency_primary_contact_name',404,19),(764,'agency_name',405,19),(765,'sagencyregdid',406,19),(766,'SAgencyActivationDate',407,19),(767,'SAgencyBankAccountID',408,19),(768,'SAgencyBankBranch',409,19),(769,'SAgencyBankName',410,19),(770,'SAgencyRegdDate',411,19),(791,'ID',417,20),(792,'CommunityMemberID',418,20),(793,'HomeBusinessCategoryid',419,20),(794,'HomeBusinessSkillID',420,20),(795,'DeliveryTypeID',421,20),(796,'FromDate',422,20),(797,'Todate',423,20),(798,'IsActive',424,20),(799,'VisibleToNearCommunities_Flag',425,20),(800,'BusinessDesription',426,20),(801,'Cost',427,20),(802,'SkillLevel',428,20),(803,'CM_HB_Bank',429,20),(804,'AccountNo',430,20),(805,'ifsccode',431,20),(806,'TeamSize_Min',432,20),(807,'IsRegistered',433,20),(808,'Paytm_alternate_phone',434,20),(809,'Paymentmode',435,20),(810,'alternatevenue',436,20),(811,'ProductName',437,20),(822,'CM_UserID',448,21),(823,'ID',449,21),(824,'HomeBusinessSkillID',450,21),(825,'SlotTime',451,21),(826,'EstimatedCost',452,21),(827,'RequirementNotes',453,21),(828,'SlotDate',454,21),(829,'NeedSASuperVision',455,21),(830,'HomeBusinessCategoryID',456,21),(831,'IsAccepted',457,21),(832,'PreferedMobileID',458,21),(833,'CM_UserID',605,21),(834,'ID',606,21),(835,'HomeBusinessSkillID',607,21),(836,'SlotTime',608,21),(837,'EstimatedCost',609,21),(838,'RequirementNotes',610,21),(839,'SlotDate',611,21),(840,'NeedSASuperVision',612,21),(841,'HomeBusinessCategoryID',613,21),(842,'IsAccepted',614,21),(843,'PreferedMobileID',615,21),(844,'CM_UserID',616,21),(845,'ID',617,21),(846,'HomeBusinessSkillID',618,21),(847,'SlotTime',619,21),(848,'EstimatedCost',620,21),(849,'RequirementNotes',621,21),(850,'SlotDate',622,21),(851,'NeedSASuperVision',623,21),(852,'HomeBusinessCategoryID',624,21),(853,'IsAccepted',625,21),(854,'PreferedMobileID',626,21),(885,'ID',463,22),(886,'CM_HomeBusinessID',464,22),(887,'CommunityID',465,22),(888,'CommunityMemberID',466,22),(889,'CM_Mobile',467,22),(890,'SubScribeDate',468,22),(891,'SlotTime',469,22),(892,'ActualCost',470,22),(893,'SlotDate',471,22),(894,'CM_Homebusiness_requests_ID',472,22),(895,'ID',636,22),(896,'CM_HomeBusinessID',637,22),(897,'CommunityID',638,22),(898,'CommunityMemberID',639,22),(899,'HomeBusinessCategoryid',640,22),(900,'HomeBusinessSkillID',641,22),(901,'BusinessDesription',642,22),(902,'CM_Mobile',643,22),(903,'IsAccepted',644,22),(904,'ID',645,22),(905,'CM_HomeBusinessID',646,22),(906,'CommunityID',647,22),(907,'CommunityMemberID',648,22),(908,'CM_Mobile',649,22),(909,'SubScribeDate',650,22),(910,'SlotTime',651,22),(911,'ActualCost',652,22),(912,'SlotDate',653,22),(913,'CM_Homebusiness_requests_ID',654,22),(916,'id',474,23),(917,'name',475,23),(918,'select',476,23),(919,'sortCol',477,23),(920,'columns',478,23),(923,'id',667,24),(924,'name',668,24),(925,'div',669,24),(926,'link',670,24),(930,'roleid',674,24),(931,'tabid',675,24),(932,'id',676,25),(933,'name',677,25),(934,'url',678,25),(935,'Aorder',679,25),(936,'parent_id',680,25),(939,'role_roleid',683,25),(940,'role_accordionid',684,25);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'Hidden'),(2,'View'),(3,'Disable'),(4,'Add'),(5,'Edit'),(6,'Search');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2048;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'CommunityMember',NULL),(2,'StreetBusiness',NULL),(3,'HomeBusiness',NULL),(4,'SkilledWorker',NULL),(5,'ServiceAgency',NULL),(6,'ServiceAgent_Field',NULL),(7,'ServiceAgent_Office',NULL),(8,'Investor',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_accordion`
--

DROP TABLE IF EXISTS `role_accordion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_accordion` (
  `roleid` int(11) NOT NULL,
  `accordionid` varchar(20) NOT NULL,
  PRIMARY KEY (`roleid`,`accordionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=564;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_accordion`
--

LOCK TABLES `role_accordion` WRITE;
/*!40000 ALTER TABLE `role_accordion` DISABLE KEYS */;
INSERT INTO `role_accordion` VALUES (2,'5'),(2,'5.1'),(2,'5.2'),(2,'5.3'),(2,'5.4'),(2,'5.5'),(2,'5.6'),(2,'5.7'),(3,'1'),(3,'1.1'),(3,'1.2'),(3,'2'),(3,'2.1'),(3,'2.2'),(3,'2.3'),(3,'2.4'),(3,'3'),(3,'3.1'),(3,'3.2'),(3,'3.3'),(3,'3.4'),(3,'3.5'),(3,'3.6'),(3,'4'),(3,'4.1'),(3,'4.2'),(3,'4.3'),(3,'4.4'),(3,'4.5'),(3,'4.6'),(3,'5'),(3,'5.1');
/*!40000 ALTER TABLE `role_accordion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_field_access`
--

DROP TABLE IF EXISTS `role_field_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_field_access` (
  `roleid` int(10) NOT NULL,
  `field1` varchar(100) NOT NULL DEFAULT '',
  `hidden1` int(1) DEFAULT NULL,
  `view1` int(1) DEFAULT NULL,
  `add1` int(1) DEFAULT NULL,
  `edit1` int(1) DEFAULT NULL,
  PRIMARY KEY (`roleid`,`field1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=182;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_field_access`
--

LOCK TABLES `role_field_access` WRITE;
/*!40000 ALTER TABLE `role_field_access` DISABLE KEYS */;
INSERT INTO `role_field_access` VALUES (0,'2',NULL,NULL,NULL,NULL),(1,'colleges.cBranches',0,1,0,1),(1,'colleges.cFacultyCount',0,1,0,1),(1,'student.branchid',0,1,0,0),(1,'student.collegeid',0,1,0,1),(1,'student.collegeloc',0,1,0,1),(1,'student.rank',0,1,0,1),(1,'studentdetails.gender',0,1,0,0),(1,'studentdetails.height',0,1,0,1),(1,'studentdetails.studBlodGroup',0,1,0,1),(1,'studentdetails.studDob',0,1,0,1),(1,'studentdetails.studId',0,1,0,1),(1,'studentdetails.StudName',0,1,0,1),(1,'studentdetails.studPlace',0,1,0,1),(1,'user.dob',0,1,1,1),(1,'user.email',0,1,0,1),(1,'user.gender',0,1,1,1),(1,'user.height',0,1,1,1),(1,'user.LangId',0,1,1,1),(1,'user.password',0,1,1,1),(1,'user.phone',0,1,1,1),(1,'user.salutation',0,1,1,1),(1,'user.username',0,1,0,1),(1,'user_address.area',0,1,1,1),(1,'user_address.city',0,1,0,1),(1,'user_address.district',0,1,1,1),(1,'user_address.house_no',0,1,0,1),(1,'user_address.postal_code',0,1,0,1),(1,'user_address.street_name',0,1,0,1),(1,'user_address.userid',0,1,1,1),(1,'workorder.amount',0,1,1,0),(1,'workorder.bill_no',0,1,0,0),(1,'workorder.customer_id',0,1,1,1),(1,'workorder.customer_no',0,1,0,0),(1,'workorder.delivery_code',0,0,0,1),(1,'workorder.description',0,1,0,1),(1,'workorder.id',0,1,0,0),(1,'workorder.monthly',0,1,0,1),(1,'workorder.onetime',0,1,0,1),(1,'workorder.quarterly',0,1,0,1),(1,'workorder.resident_id',0,1,0,1),(1,'workorder.services_type',0,1,0,0),(1,'workorder.service_no',0,1,0,0),(1,'workorder.status',0,1,0,1),(1,'workorder.transaction_code',0,1,1,1),(1,'workorder.wbc',0,1,0,0),(1,'workorder.wordorder_id',0,1,0,0),(2,'accordion.Aorder',0,1,0,1),(2,'accordion.id',0,1,0,1),(2,'accordion.name',0,1,0,1),(2,'accordion.parent_id',0,1,0,1),(2,'accordion.url',0,1,0,1),(2,'pts_version.createddate',0,1,0,1),(2,'pts_version.createduser',0,1,0,1),(2,'pts_version.id',0,1,0,1),(2,'pts_version.sortorder',0,1,0,1),(2,'pts_version.status',0,1,0,1),(2,'pts_version.updateddate',0,1,0,1),(2,'pts_version.updateduser',0,1,0,1),(2,'pts_version.versionbegindate',0,1,0,1),(2,'pts_version.versiondesc',0,1,0,1),(2,'pts_version.versiontargeteddate',0,1,0,1),(2,'role_accordion.accordionid',0,1,0,1),(2,'role_accordion.roleid',0,1,0,1),(2,'role_tab.roleid',0,1,0,1),(2,'role_tab.tabid',0,1,0,1),(2,'screen.columns',0,1,1,1),(2,'screen.id',0,1,1,1),(2,'screen.name',0,1,1,1),(2,'screen.select',0,1,1,1),(2,'screen.sortcol',0,1,1,1),(2,'serviceagency.id',0,1,0,1),(2,'serviceagency.landline',0,1,0,1),(2,'serviceagency.location_id',0,1,0,1),(2,'serviceagency.SAgencyActivationDate',0,1,0,1),(2,'serviceagency.SAgencyBankAccountID',0,1,0,1),(2,'serviceagency.SAgencyBankBranch',0,1,0,1),(2,'serviceagency.SAgencyBankName',0,1,0,1),(2,'serviceagency.SAgencyRegdDate',0,1,0,1),(2,'serviceagency.SAgencyREGDID',0,1,0,1),(2,'serviceagency.s_agnecy_name',0,1,0,1),(2,'serviceagent.id',0,1,0,1),(2,'serviceagent.Rating_average',0,1,0,1),(2,'serviceagent.service_agency_id',0,1,0,1),(2,'serviceagent.Servicing_orders',0,1,0,1),(2,'serviceagent.Total_orders_served',0,1,0,1),(2,'serviceorder.communitymemberid',0,1,0,1),(2,'serviceorder.deliveryaddr1',0,1,0,1),(2,'serviceorder.deliveryslotid',0,1,0,1),(2,'serviceorder.deliverytypeid',0,1,0,1),(2,'serviceorder.paymentmodeid',0,1,0,1),(2,'serviceorder.serviceorderid',0,1,0,1),(2,'serviceorder.servicerequestid',0,1,0,1),(2,'servicereorder.servicerequeststatusid',0,1,0,1),(2,'servicerequest.community_member_id',0,1,0,1),(2,'servicerequest.scanned_notes',0,1,0,1),(2,'servicerequest.serviceagentid',0,1,0,1),(2,'servicerequest.servicerequestid',0,1,0,1),(2,'servicerequest.servicerequeststatusid',0,1,0,1),(2,'servicerequest.servicerequesttypeid',0,1,0,1),(2,'servicerorder.totalordercost',0,1,0,1),(2,'tab.div',0,1,0,1),(2,'tab.id',0,1,0,1),(2,'tab.link',0,1,0,1),(2,'tab.name',0,1,0,1),(2,'trainings.Duration',0,1,0,1),(2,'trainings.Evaluation',0,1,0,1),(2,'trainings.Id',0,1,0,1),(2,'trainings.ProjectId',0,1,0,1),(2,'trainings.Schedule',0,1,0,1),(2,'trainings.Slides',0,1,0,1),(2,'trainings.TechnologyId',0,1,0,1),(2,'trainings.Trainer',0,1,0,1),(2,'trainings.TrainingName',0,1,0,1),(2,'trainings.Venue',0,1,0,1),(3,'CM_HomeBusiness.AccountNo',0,1,0,1),(3,'CM_HomeBusiness.alternatevenue',0,1,0,1),(3,'CM_HomeBusiness.BusinessDesription',0,1,0,1),(3,'CM_HomeBusiness.CM_HB_Bank',0,1,0,1),(3,'CM_HomeBusiness.CommunityMemberID',0,1,0,1),(3,'CM_HomeBusiness.Cost',0,1,0,1),(3,'CM_HomeBusiness.DeliveryTypeID',0,1,0,1),(3,'CM_HomeBusiness.FromDate',0,1,0,1),(3,'CM_HomeBusiness.HomeBusinessCategoryid',0,1,0,1),(3,'CM_HomeBusiness.HomeBusinessSkillID',0,1,0,1),(3,'CM_HomeBusiness.ID',0,1,0,1),(3,'CM_HomeBusiness.ifsccode',0,1,0,1),(3,'CM_HomeBusiness.IsActive',0,1,0,1),(3,'CM_HomeBusiness.IsRegistered',0,1,0,1),(3,'CM_HomeBusiness.Paymentmode',0,1,0,1),(3,'CM_HomeBusiness.Paytm_alternate_phone',0,1,0,1),(3,'CM_HomeBusiness.ProductName',0,1,0,1),(3,'CM_HomeBusiness.SkillLevel',0,1,0,1),(3,'CM_HomeBusiness.TeamSize_Min',0,1,0,1),(3,'CM_HomeBusiness.Todate',0,1,0,1),(3,'CM_HomeBusiness.VisibleToNearCommunities_Flag',0,1,0,1),(3,'CM_Homebusiness_requests.CM_UserID',0,1,0,1),(3,'CM_Homebusiness_requests.EstimatedCost',0,1,0,1),(3,'CM_Homebusiness_requests.HomeBusinessCategoryID',0,1,0,1),(3,'CM_Homebusiness_requests.HomeBusinessSkillID',0,1,0,1),(3,'CM_Homebusiness_requests.ID',0,1,0,1),(3,'CM_Homebusiness_requests.IsAccepted',0,1,0,1),(3,'CM_Homebusiness_requests.NeedSASuperVision',0,1,0,1),(3,'CM_Homebusiness_requests.PreferedMobileID',0,1,0,1),(3,'CM_Homebusiness_requests.RequirementNotes',0,1,0,1),(3,'CM_Homebusiness_requests.SlotDate',0,1,0,1),(3,'CM_Homebusiness_requests.SlotTime',0,1,0,1),(3,'field.cols',0,1,0,1),(3,'field.editable',0,1,0,1),(3,'field.entity',0,1,0,1),(3,'field.Event',0,1,0,1),(3,'field.field',0,1,0,1),(3,'field.fieldid',0,1,0,1),(3,'field.fieldtype',0,1,0,1),(3,'field.fk',0,1,0,1),(3,'field.fOrder',0,1,0,1),(3,'field.pk',0,1,0,1),(3,'field.position',0,1,0,1),(3,'field.rows',0,1,0,1),(3,'field.searchable',0,1,0,1),(3,'field.style',0,1,0,1),(3,'field.validation',0,1,0,1),(3,'projects.briefdesc',0,1,0,1),(3,'projects.client',0,1,0,1),(3,'projects.id',0,1,0,1),(3,'projects.kickofDate',0,1,0,1),(3,'projects.pname',0,1,0,1),(3,'projects.ptype',0,1,0,1),(3,'projects.size',0,1,0,1),(3,'projects.status',0,1,0,1),(3,'projects.technologies',0,1,1,1),(3,'screen.columns',0,1,0,1),(3,'screen.id',0,1,0,1),(3,'screen.name',0,1,0,1),(3,'screen.select',0,1,0,1),(3,'screen.sortCol',0,1,0,1),(3,'trainings.Duration',0,1,0,1),(3,'trainings.Evaluation',0,1,0,1),(3,'trainings.Id',0,1,0,1),(3,'trainings.ProjectId',0,1,0,1),(3,'trainings.Schedule',0,1,0,1),(3,'trainings.Slides',0,1,0,1),(3,'trainings.TechnologyId',0,1,0,1),(3,'trainings.Trainer',0,1,0,1),(3,'trainings.TrainingName',0,1,0,1),(3,'trainings.Venue',0,1,0,1);
/*!40000 ALTER TABLE `role_field_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_menu`
--

DROP TABLE IF EXISTS `role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_menu` (
  `roleid` int(10) NOT NULL,
  `menuid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1260;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_menu`
--

LOCK TABLES `role_menu` WRITE;
/*!40000 ALTER TABLE `role_menu` DISABLE KEYS */;
INSERT INTO `role_menu` VALUES (1,'1.1'),(1,'1.2'),(1,'1'),(1,'2'),(1,'3'),(1,'1.2.1'),(1,'5'),(1,'5.1'),(1,'5.2'),(2,'11'),(2,'11.1'),(2,'11.2');
/*!40000 ALTER TABLE `role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tab`
--

DROP TABLE IF EXISTS `role_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tab` (
  `roleid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1820;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tab`
--

LOCK TABLES `role_tab` WRITE;
/*!40000 ALTER TABLE `role_tab` DISABLE KEYS */;
INSERT INTO `role_tab` VALUES (2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(3,1),(3,2),(3,3),(3,4),(3,5),(3,10),(3,19),(3,20),(3,21),(3,22),(0,29),(3,30),(3,31),(3,23),(3,33),(3,34);
/*!40000 ALTER TABLE `role_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rows`
--

DROP TABLE IF EXISTS `rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rows` (
  `id` decimal(10,0) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1365;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rows`
--

LOCK TABLES `rows` WRITE;
/*!40000 ALTER TABLE `rows` DISABLE KEYS */;
INSERT INTO `rows` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12');
/*!40000 ALTER TABLE `rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salutation_md`
--

DROP TABLE IF EXISTS `salutation_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salutation_md` (
  `id` int(1) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salutation_md`
--

LOCK TABLES `salutation_md` WRITE;
/*!40000 ALTER TABLE `salutation_md` DISABLE KEYS */;
INSERT INTO `salutation_md` VALUES (1,'Mr.'),(2,'Mrs.'),(3,'Miss.'),(4,'Dr.');
/*!40000 ALTER TABLE `salutation_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedsearch`
--

DROP TABLE IF EXISTS `savedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savedsearch` (
  `id` int(11) DEFAULT NULL,
  `SearchName` varchar(90) DEFAULT NULL,
  `screen` varchar(60) DEFAULT NULL,
  `criteria` varchar(6000) DEFAULT NULL,
  `userid` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedsearch`
--

LOCK TABLES `savedsearch` WRITE;
/*!40000 ALTER TABLE `savedsearch` DISABLE KEYS */;
INSERT INTO `savedsearch` VALUES (1,'first','useraddress','vizag,hos,fjru,ss','sri'),(3,'third','useraddress','vzm,ddos,aaafjru,ss','sri'),(10,'imax','useraddress','pmpalem,dddhos,fjru,ss','sri');
/*!40000 ALTER TABLE `savedsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedsearch_cols`
--

DROP TABLE IF EXISTS `savedsearch_cols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savedsearch_cols` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `search_id` int(5) DEFAULT NULL,
  `column` varchar(30) DEFAULT NULL,
  `operator` varchar(6) DEFAULT NULL,
  `value` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedsearch_cols`
--

LOCK TABLES `savedsearch_cols` WRITE;
/*!40000 ALTER TABLE `savedsearch_cols` DISABLE KEYS */;
INSERT INTO `savedsearch_cols` VALUES (1,1,'user.email','like','sridar@gmail.com'),(2,1,'user.phone','equals','3989938292');
/*!40000 ALTER TABLE `savedsearch_cols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen`
--

DROP TABLE IF EXISTS `screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `select` varchar(2000) DEFAULT NULL,
  `sortCol` varchar(50) DEFAULT NULL,
  `columns` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen`
--

LOCK TABLES `screen` WRITE;
/*!40000 ALTER TABLE `screen` DISABLE KEYS */;
INSERT INTO `screen` VALUES (1,'useraddress','SELECT user.username,user.email,user_address.house_no,user_address.street_name,user_address.postal_code FROM user user, user_address user_address WHERE user.userid = user_address.userid  ','user_address.username','user.username|User Name,user.email|Email,user_address.house_no|House No,user_address.street_name|Street No,user_address.postal_code|Postal Code '),(2,'usersettings','SELECT user.username, user.email, language.name, theme.name, role.name,user_pref.no_of_rows FROM USER USER, user_pref user_pref, user_role_cx user_role_cx, role role, LANGUAGE LANGUAGE, theme theme WHERE user.username = user_pref.user_id AND user.username = user_role_cx.userid AND user_role_cx.roleid = role.id AND user_pref.language_id = language.id AND user_pref.theme_id = theme.id \r\n','user.username','user.username|User Name,user.email|Email,language.name|Language,theme.name|Theme,role.name|Role,user_pref.no_of_rows|No of Rows'),(3,'fields','SELECT field.fieldid,field.field,field.fieldtype,field.entity,field.validation,field.Event,field.fOrder,field.position,field.editable,field.searchable,field.rowss,field.cols,field.style,field.fk,field.pk FROM field field ','field.fieldid','field.fieldid|Field Id,field.field|Field Name,field.fieldtype|Field Type,field.entity|Meta Data,field.validation|Validation,field.Event|Event,field.fOrder|Order,field.position|Position,field.editable|Editable,field.searchable|Searchable,field.rows|Rows,field.cols|Columns,field.style|CSS Style,field.fk|Foreign Key,field.pk|Primary Key'),(4,'trainings','SELECT trainings.Id,trainings.TrainingName,trainings.Trainer,trainings.Slides,trainings.Evaluation,trainings.Venue,trainings.Schedule,trainings.Duration,trainings.TechnologyId,trainings.ProjectId FROM trainings trainings ','trainings.Id','trainings.Id|ID,trainings.TrainingName|Training Name,trainings.Trainer|Trainer,trainings.Slides|Slides,trainings.Evaluation|Written Test,trainings.Venue|Venue,trainings.Schedule|Schedule,trainings.Duration|Duration,trainings.TechnologyId|Technology,trainings.ProjectId|Project\r\n'),(7,'projects','SELECT projects.id,projects.pname,projects.ptype,projects.client,projects.size,projects.technologies,projects.kickofdate,projects.status,projects.briefdesc FROM projects projects ','projects.id','projects.pnam|PrjName,projects.ptype|Prj Type,projects.client|Client,projects.size|Size,projects.technologies|Tech,projects.kickofdate|StartDate,projects.status|Status,projects.briefdesc|Description'),(8,'studentdetails','SELECT studentdetails.studId,studentdetails.studname,studentdetails.studDob,studentdetails.studPlace,studentdetails.studBlodGroup,studentdetails.height,studentdetails.gender,student.collegeid,student.branchid,student.rank,student.collegeloc FROM studentdetails studentdetails,student student WHERE studentdetails.studId=student.id ','studentdetails.studId ','studentdetails.studId|ID ,studentdetails.studname|name,studentdetails.studDob|DOB,studentdetails.studPlace|Lived in Area,studentdetails.studBlodGroup|Blood Group,studentdetails.height|Height,studentdetails.gender|Gender,student.collegeid|College,student.branchid|Branch,student.rank|Rank,student.collegeloc|CLoc '),(14,'pts_version','SELECT pts_version.id,pts_version.versiondesc,pts_version.versionbegindate,pts_version.versiontargeteddate,pts_version.sortorder,pts_version.status,pts_version.createduser,pts_version.createddate,pts_version.updateddate,pts_version.updateduser from pts_version  ','pts_version.id','id |id,versiondesc |versiondesc,versionbegindate |versionbegindate,versiontargeteddate |versiontargeteddate,sortorder |sortorder,status |status,createduser |createduser,createddate |createddate,updateddate |updateddate,updateduser |updateduser'),(15,'servicerequest','SELECT servicerequest.servicerequestid,servicerequest.community_member_id,servicerequest.serviceagentid,\r\nservicerequest.servicerequesttypeid,servicerequest.servicerequeststatusid,servicerequest.scanned_notes from servicerequest ','servicerequestid','servicerequestid | servicerequestid,community_member_id | community_member_id,serviceagentid | serviceagentid,servicerequesttypeid |servicerequesttypeid,servicerequeststatusid |servicerequeststatusid,scanned_notes |scanned_notes  '),(17,'serviceorder','SELECT\r\n  `serviceorder`.`serviceorderid` AS `serviceorderid`,\r\n  orderstatus_master.SHORTDESC as status,\r\n  `serviceorder`.`deliveryslotid` AS `deliveryslotid`,\r\n  `serviceorder`.`deliverytypeid` AS `deliverytypeid`,\r\n  `serviceorder`.`communitymemberid` AS `communitymemberid`,\r\n  `serviceorder`.`totalordercost` AS `totalordercost`,\r\n  `serviceorder`.`paymentmodeid` AS `paymentmodeid`,\r\n  `serviceorder`.`servicerequestid` AS `servicerequestid`,\r\n  `serviceorder`.`deliveryaddr1` AS `deliveryaddr1`\r\nFROM `serviceorder`\r\n  JOIN `servicerequest`\r\n    ON `serviceorder`.`servicerequestid` = `servicerequest`.`servicerequestid`\r\n    join orderstatus_master on orderstatus_master.ID= servicerequest.servicerequeststatusid ','serviceorder.serviceorderid','serviceorderid |serviceorderid,servicerequeststatusid |shortdesc,deliveryslotid |deliveryslotid,deliverytypeid |deliverytypeid,communitymemberid |communitymemberid,totalordercost |totalordercost,paymentmodeid |paymentmodeid,servicerequestid |servicerequestid,deliveryaddr1 |deliveryaddr1   '),(18,'serviceagent','SELECT serviceagent.id,serviceagent.service_agency_id,serviceagent.Servicing_orders,serviceagent.Total_orders_served,serviceagent.Rating_average from serviceagent ','serviceagent.id','id |id,service_agency_id |service_agency_id,Servicing_orders |Servicing_orders,Total_orders_served |Total_orders_served,Rating_average |Rating_average  '),(19,'serviceagency','SELECT serviceagency.id,serviceagency.landline,serviceagency.agency_primary_contact_name,serviceagency.agency_name,serviceagency.sagencyregdid,serviceagency.SAgencyActivationDate,serviceagency.SAgencyBankAccountID,serviceagency.SAgencyBankBranch,serviceagency.SAgencyBankName,serviceagency.SAgencyRegdDate from serviceagency ','serviceagency.id','id |id,landline |landline,agency_primary_contact_name |agency_primary_contact_name,agency_name |agency_name,sagencyregdid |sagencyregdid,SAgencyActivationDate |SAgencyActivationDate,SAgencyBankAccountID |SAgencyBankAccountID,SAgencyBankBranch |SAgencyBankBranch,SAgencyBankName |SAgencyBankName,SAgencyRegdDate |SAgencyRegdDate'),(20,'CMHomeBusiness','SELECT cm_homebusiness.ID,cm_homebusiness.CommunityMemberID,cm_homebusiness.HomeBusinessCategoryid,cm_homebusiness.HomeBusinessSkillID,cm_homebusiness.DeliveryTypeID,cm_homebusiness.FromDate,cm_homebusiness.Todate,cm_homebusiness.IsActive,cm_homebusiness.VisibleToNearCommunities_Flag,cm_homebusiness.BusinessDesription,cm_homebusiness.Cost,cm_homebusiness.SkillLevel,cm_homebusiness.CM_HB_Bank,cm_homebusiness.AccountNo,cm_homebusiness.ifsccode,cm_homebusiness.TeamSize_Min,cm_homebusiness.IsRegistered,cm_homebusiness.Paytm_alternate_phone,cm_homebusiness.Paymentmode,cm_homebusiness.alternatevenue,cm_homebusiness.ProductName from pearltec_howsmart.cm_homebusiness \n','ID','ID |ID,CommunityMemberID |CommunityMemberID,HomeBusinessCategoryid |HomeBusinessCategoryid,HomeBusinessSkillID |HomeBusinessSkillID,DeliveryTypeID |DeliveryTypeID,FromDate |FromDate,Todate |Todate,IsActive |IsActive,VisibleToNearCommunities_Flag |VisibleToNearCommunities_Flag,BusinessDesription |BusinessDesription,Cost |Cost,SkillLevel |SkillLevel,CM_HB_Bank |CM_HB_Bank,AccountNo |AccountNo,ifsccode |ifsccode,TeamSize_Min |TeamSize_Min,IsRegistered |IsRegistered,Paytm_alternate_phone |Paytm_alternate_phone,Paymentmode |Paymentmode,alternatevenue |alternatevenue,ProductName |ProductName'),(21,'CMHomebusinessRequests','SELECT CM_Homebusiness_requests.CM_UserID,CM_Homebusiness_requests.ID,CM_Homebusiness_requests.HomeBusinessSkillID,CM_Homebusiness_requests.SlotTime,CM_Homebusiness_requests.EstimatedCost,CM_Homebusiness_requests.RequirementNotes,CM_Homebusiness_requests.SlotDate,CM_Homebusiness_requests.NeedSASuperVision,CM_Homebusiness_requests.HomeBusinessCategoryID,CM_Homebusiness_requests.IsAccepted,CM_Homebusiness_requests.PreferedMobileID from CM_Homebusiness_requests  ','ID','CM_UserID |CM_UserID,ID |ID,HomeBusinessSkillID |HomeBusinessSkillID,SlotTime |SlotTime,EstimatedCost |EstimatedCost,RequirementNotes |RequirementNotes,SlotDate |SlotDate,NeedSASuperVision |NeedSASuperVision,HomeBusinessCategoryID |HomeBusinessCategoryID,IsAccepted |IsAccepted,PreferedMobileID |PreferedMobileID'),(22,'CMHomeBusinessSubscriber','SELECT CM_HomeBusiness_subscribe.ID,CM_HomeBusiness_subscribe.CM_HomeBusinessID,CM_HomeBusiness_subscribe.CommunityID,CM_HomeBusiness_subscribe.CommunityMemberID,CM_HomeBusiness_subscribe.CM_Mobile,CM_HomeBusiness_subscribe.SubScribeDate,CM_HomeBusiness_subscribe.SlotTime,CM_HomeBusiness_subscribe.ActualCost,CM_HomeBusiness_subscribe.SlotDate,CM_HomeBusiness_subscribe.CM_Homebusiness_requests_ID from CM_HomeBusiness_subscribe  ','ID','ID |ID,CM_HomeBusinessID |CM_HomeBusinessID,CommunityID |CommunityID,CommunityMemberID |CommunityMemberID,CM_Mobile |CM_Mobile,SubScribeDate |SubScribeDate,SlotTime |SlotTime,ActualCost |ActualCost,SlotDate |SlotDate,CM_Homebusiness_requests_ID |CM_Homebusiness_requests_ID'),(23,'screen','select screen.id, screen.name, screen.sortCol, screen.columns, screen.select from pearltec_compoxdb.screen screen ','Id','screen.id|ID,screen.name|Name,screen.sortCol|Sort By,screen.columns|Column Alias,screen.select|Query'),(24,'tab','SELECT tab.id,tab.name,tab.div,tab.link,role_tab.roleid,role_tab.tabid from tab join role_tab on tab.id = role_tab.tabid ','id','tab.id|id,tab.name|tab,tab.div|div,tab.link|links to'),(25,'accordion','SELECT accordion.id,accordion.name,accordion.url,accordion.Aorder,accordion.parent_id from accordion join role_accordion on accordion.id = role_accordion.accordionid ','id','accordion.id|Id,accordion.name|Accordion Name,accordion.url|Link,accordion.Aorder|Sorting Order,accordion.parent_id|Parent');
/*!40000 ALTER TABLE `screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_md`
--

DROP TABLE IF EXISTS `state_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_md` (
  `id` decimal(4,0) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_md`
--

LOCK TABLES `state_md` WRITE;
/*!40000 ALTER TABLE `state_md` DISABLE KEYS */;
INSERT INTO `state_md` VALUES (1,'Andra Pradesh'),(2,'Utter Pradesh'),(3,'Madya Pradesh');
/*!40000 ALTER TABLE `state_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_md`
--

DROP TABLE IF EXISTS `status_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_md` (
  `id` decimal(3,0) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_md`
--

LOCK TABLES `status_md` WRITE;
/*!40000 ALTER TABLE `status_md` DISABLE KEYS */;
INSERT INTO `status_md` VALUES (1,'new'),(2,'open'),(3,'inprogress'),(4,'at desposal'),(5,'delivered');
/*!40000 ALTER TABLE `status_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab`
--

DROP TABLE IF EXISTS `tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `div` varchar(20) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1638;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab`
--

LOCK TABLES `tab` WRITE;
/*!40000 ALTER TABLE `tab` DISABLE KEYS */;
INSERT INTO `tab` VALUES (1,'Service Requests','go','dbgrid/servicerequest.jsp'),(2,'Orders','to','dbgrid/serviceorder.jsp'),(3,'Agents','sa','dbgrid/serviceagent.jsp'),(4,'ServiceAgency','train','dbgrid/serviceagency.jsp'),(5,'HomeBusiness','sn','dbgrid/CMHomeBusiness.jsp'),(6,'Projects','fg','yt'),(7,'Requirement','vvb','tyt'),(8,'ResourceList','yu','gh'),(9,'FieldConfig','fields','dbgrid/fields.jsp'),(10,'tab','prjs','dbgrid/tab.jsp'),(11,'Version','ver','dbgrid/pts_version.jsp'),(12,'Category',NULL,'Category'),(13,'Priority',NULL,'Priority'),(14,'% Done',NULL,'percentdone'),(15,'Action',NULL,'Action'),(16,'Status',NULL,'Status'),(17,'Severity',NULL,'Severity'),(18,'IssueType',NULL,'IssueType'),(19,'HB Requests','hb','dbgrid/CMHomebusinessRequests.jsp'),(20,'FieldConfig','hr','dbgrid/fields.jsp'),(21,'useraddress','ua','dbgrid/useraddress.jsp'),(22,'Screens','scr','dbgrid/screen.jsp'),(32,'Settings','stng','dbgrid/usersettings.jsp'),(33,'User Settings','stngs','dbgrid/usersettings.jsp'),(34,'Accordion','acco','dbgrid/accordion.jsp');
/*!40000 ALTER TABLE `tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablecolumns`
--

DROP TABLE IF EXISTS `tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablecolumns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=79;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablecolumns`
--

LOCK TABLES `tablecolumns` WRITE;
/*!40000 ALTER TABLE `tablecolumns` DISABLE KEYS */;
INSERT INTO `tablecolumns` VALUES (1,'accesstype.id'),(2,'accesstype.name'),(3,'accordion.id'),(4,'accordion.name'),(5,'accordion.url'),(6,'accordion.Aorder'),(7,'accordion.parent_id'),(8,'area.id'),(9,'area.name'),(10,'city.id'),(11,'city.name'),(12,'client.Id'),(13,'client.Name'),(14,'country.id'),(15,'country.name'),(16,'department.id'),(17,'department.name'),(18,'department.loc'),(19,'districts.id'),(20,'districts.name'),(21,'employee.Id'),(22,'employee.Name'),(23,'entities.id'),(24,'entities.name'),(25,'entity.id'),(26,'entity.name'),(27,'events.id'),(28,'events.name'),(29,'familyinfo.personid'),(30,'familyinfo.name'),(31,'familyinfo.flat_ownername'),(32,'familyinfo.relationship'),(33,'familyinfo.age'),(34,'familyinfo.office_name'),(35,'familyinfo.flat_number'),(36,'field.fieldid'),(37,'field.field'),(38,'field.fieldtype'),(39,'field.entity'),(40,'field.validation'),(41,'field.Event'),(42,'field.fOrder'),(43,'field.position'),(44,'field.editable'),(45,'field.searchable'),(46,'field.rows'),(47,'field.cols'),(48,'field.style'),(49,'field.fk'),(50,'field.pk'),(51,'field_access.field_id'),(52,'field_access.permission_id'),(53,'field_access.user_id'),(54,'field_access_role.field_id'),(55,'field_access_role.permission_id'),(56,'field_access_role.roleid'),(57,'fieldmap.fieldid'),(58,'fieldmap.parentfielid'),(59,'fieldtype.id'),(60,'fieldtype.name'),(61,'flatinfo.apartment_id'),(62,'flatinfo.flat_number'),(63,'flatinfo.flat_owner'),(64,'flatinfo.phone_number'),(65,'flatinfo.email_id'),(66,'flatinfo.address'),(67,'flatinfo.notes'),(68,'flatinfo.no_of_people'),(69,'gender.id'),(70,'gender.name'),(71,'group_type.id'),(72,'group_type.name'),(73,'groups.group_id'),(74,'groups.group_name'),(75,'groups.group_type'),(76,'groups.group_role'),(77,'groups.last_modified'),(78,'groups.created'),(79,'groups.parent_id'),(80,'hierarchymenu.menuid'),(81,'hierarchymenu.menuname'),(82,'hierarchymenu.url'),(83,'hierarchymenu.order'),(84,'hierarchymenu.parentmenuid'),(85,'hierarchymenu.menuord'),(86,'label.id'),(87,'label.language_id'),(88,'label.model_id'),(89,'label.label'),(90,'language.id'),(91,'language.name'),(92,'login.id'),(93,'login.loginid'),(94,'login.password'),(95,'login.email'),(96,'login.address'),(97,'login.phno'),(98,'menuitem.itemname'),(99,'menuitem.position'),(100,'model.id'),(101,'model.screenfield'),(102,'model.field_id'),(103,'model.screen_id'),(104,'permission.id'),(105,'permission.description'),(106,'projects.Id'),(107,'projects.Name'),(108,'projects.ClientId'),(109,'registration.name'),(110,'registration.department'),(111,'registration.gender'),(112,'registration.address'),(113,'registration.language'),(114,'role.id'),(115,'role.name'),(116,'role.desc'),(117,'role_accordion.roleid'),(118,'role_accordion.accordionid'),(119,'role_field_access.roleid'),(120,'role_field_access.field1'),(121,'role_field_access.hidden1'),(122,'role_field_access.view1'),(123,'role_field_access.add1'),(124,'role_field_access.edit1'),(125,'role_menu.roleid'),(126,'role_menu.menuid'),(127,'role_tab.roleid'),(128,'role_tab.tabid'),(129,'rows.id'),(130,'rows.name'),(131,'salutation.id'),(132,'salutation.name'),(133,'savedsearch_cols_cx.id'),(134,'savedsearch_cols_cx.search_id'),(135,'savedsearch_cols_cx.column'),(136,'savedsearch_cols_cx.operator'),(137,'savedsearch_cols_cx.value'),(138,'savedsearch_cx.id'),(139,'savedsearch_cx.SearchName'),(140,'savedsearch_cx.screen'),(141,'savedsearch_cx.criteria'),(142,'savedsearch_cx.userid'),(143,'screen_cx.id'),(144,'screen_cx.name'),(145,'screen_cx.select'),(146,'screen_cx.sortCol'),(147,'screen_cx.columns'),(148,'state.id'),(149,'state.name'),(150,'status.id'),(151,'status.name'),(152,'subject.SubjectID'),(153,'subject.SubjectName'),(154,'tab.id'),(155,'tab.name'),(156,'tab.div'),(157,'tab.link'),(158,'tablecolumns.id'),(159,'tablecolumns.name'),(160,'technology.Id'),(161,'technology.Name'),(162,'technology.ParentId'),(163,'theme.id'),(164,'theme.name'),(165,'trainings.Id'),(166,'trainings.TrainingName'),(167,'trainings.Trainer'),(168,'trainings.Slides'),(169,'trainings.Evaluation'),(170,'trainings.Venue'),(171,'trainings.Schedule'),(172,'trainings.Duration'),(173,'trainings.TechnologyId'),(174,'trainings.ProjectId'),(175,'user.username'),(176,'user.password'),(177,'user.email'),(178,'user.gender'),(179,'user.dob'),(180,'user.height'),(181,'user.salutation'),(182,'user.phone'),(183,'user.LangId'),(184,'user_address.id'),(185,'user_address.user_id'),(186,'user_address.house_no'),(187,'user_address.street_name'),(188,'user_address.area'),(189,'user_address.city'),(190,'user_address.postal_code'),(191,'user_address.district'),(192,'user_pref.user_id'),(193,'user_pref.language_id'),(194,'user_pref.theme_id'),(195,'user_pref.no_of_rows'),(196,'user_role_cx.userid'),(197,'user_role_cx.roleid'),(198,'userpreferences.userid'),(199,'userpreferences.language'),(200,'userpreferences.country'),(201,'userpreferences.no_of_rows_pergrid'),(202,'userpreferences.theme'),(203,'userpreferences.richui'),(204,'validations.id'),(205,'validations.name'),(206,'yesno.id'),(207,'yesno.name'),(208,'user_address.userid'),(209,'projects.pname'),(210,'projects.ptype'),(211,'projects.client'),(212,'projects.size'),(213,'projects.technologies'),(214,'projects.kickofDate'),(215,'projects.status'),(216,'projects.briefdesc'),(217,'studentdetails.studId'),(218,'studentdetails.StudName'),(219,'student.rank'),(220,'studentdetails.studDob'),(221,'studentdetails.studPlace'),(222,'studentdetails.studBlodGroup'),(223,'student.collegeid'),(224,'student.branchid'),(225,'studentdetails.gender'),(226,'studentdetails.height'),(227,'student.collegeloc'),(228,'pts_version.id'),(229,'pts_version.versiondesc'),(230,'pts_version.versionbegindate'),(231,'pts_version.versiontargeteddate'),(232,'pts_version.sortorder'),(233,'pts_version.status'),(234,'pts_version.createduser'),(235,'pts_version.createddate'),(236,'pts_version.updateddate'),(237,'pts_version.updateduser'),(238,'servicerequest.servicerequestid'),(239,'servicerequest.serviceagentid'),(240,'servicerequest.community_member_id'),(241,'servicerequest.servicerequesttypeid'),(242,'servicerequest.servicerequeststatusid'),(243,'servicerequest.scanned_notes'),(244,'serviceagent.id'),(245,'serviceagent.service_agency_id'),(246,'serviceagent.Servicing_orders'),(247,'serviceagent.Total_orders_served'),(248,'serviceagent.Rating_average'),(249,'serviceagency.id'),(250,'serviceagency.landline'),(251,'serviceagency.agency_primary_contact_name'),(252,'serviceagency.agency_name'),(253,'serviceagency.sagencyregdid'),(254,'serviceagency.SAgencyActivationDate'),(255,'serviceagency.SAgencyBankAccountID'),(256,'serviceagency.SAgencyBankBranch'),(257,'serviceagency.SAgencyBankName'),(258,'serviceagency.SAgencyRegdDate'),(259,'CM_HomeBusiness.ID'),(260,'CM_HomeBusiness.CommunityMemberID'),(261,'CM_HomeBusiness.HomeBusinessCategoryid'),(262,'CM_HomeBusiness.HomeBusinessSkillID'),(263,'CM_HomeBusiness.DeliveryTypeID'),(264,'CM_HomeBusiness.FromDate'),(265,'CM_HomeBusiness.Todate'),(266,'CM_HomeBusiness.IsActive'),(267,'CM_HomeBusiness.VisibleToNearCommunities_Flag'),(268,'CM_HomeBusiness.BusinessDesription'),(269,'CM_HomeBusiness.Cost'),(270,'CM_HomeBusiness.SkillLevel'),(271,'CM_HomeBusiness.CM_HB_Bank'),(272,'CM_HomeBusiness.AccountNo'),(273,'CM_HomeBusiness.ifsccode'),(274,'CM_HomeBusiness.TeamSize_Min'),(275,'CM_HomeBusiness.IsRegistered'),(276,'CM_HomeBusiness.Paytm_alternate_phone'),(277,'CM_HomeBusiness.Paymentmode'),(278,'CM_HomeBusiness.alternatevenue'),(279,'CM_HomeBusiness.ProductName'),(280,'CM_Homebusiness_requests.CM_UserID'),(281,'CM_Homebusiness_requests.ID'),(282,'CM_Homebusiness_requests.HomeBusinessSkillID'),(283,'CM_Homebusiness_requests.SlotTime'),(284,'CM_Homebusiness_requests.EstimatedCost'),(285,'CM_Homebusiness_requests.RequirementNotes'),(286,'CM_Homebusiness_requests.SlotDate'),(287,'CM_Homebusiness_requests.NeedSASuperVision'),(288,'CM_Homebusiness_requests.HomeBusinessCategoryID'),(289,'CM_Homebusiness_requests.IsAccepted'),(290,'CM_Homebusiness_requests.PreferedMobileID'),(291,'CM_HomeBusiness_subscribe.ID'),(292,'CM_HomeBusiness_subscribe.CM_HomeBusinessID'),(293,'CM_HomeBusiness_subscribe.CommunityID'),(294,'CM_HomeBusiness_subscribe.CommunityMemberID'),(295,'CM_HomeBusiness_subscribe.CM_Mobile'),(296,'CM_HomeBusiness_subscribe.SubScribeDate'),(297,'CM_HomeBusiness_subscribe.SlotTime'),(298,'CM_HomeBusiness_subscribe.ActualCost'),(299,'CM_HomeBusiness_subscribe.SlotDate'),(300,'CM_HomeBusiness_subscribe.CM_Homebusiness_requests_ID'),(301,'- Select -'),(302,'screen.id'),(303,'screen.name'),(304,'screen.select'),(305,'screen.sortCol'),(306,'screen.columns'),(335,'serviceorder.serviceorderid'),(336,'serviceorder.billingaddr1'),(337,'serviceorder.billingaddr2'),(338,'serviceorder.billingcityid'),(339,'serviceorder.billinglastname'),(340,'serviceorder.billinglocationid'),(341,'serviceorder.billingstateid'),(342,'serviceorder.billingzip'),(343,'serviceorder.created_datetime'),(344,'serviceorder.deliveryaddr1'),(345,'serviceorder.deliveryaddr2'),(346,'serviceorder.deliverycityid'),(347,'serviceorder.deliverylastname'),(348,'serviceorder.deliverylocationid'),(349,'serviceorder.deliveryslotid'),(350,'serviceorder.deliverystateid'),(351,'serviceorder.deliverytypeid'),(352,'serviceorder.deliveryzip'),(353,'serviceorder.communitymemberid'),(354,'serviceorder.totalordercost'),(355,'serviceorder.paymentmodeid'),(356,'serviceorder.securecode'),(357,'serviceorder.updated_datetime'),(358,'serviceorder.updateduserid'),(359,'serviceorder.servicerequestid'),(366,'cm_homebusiness_subscribe.HomeBusinessCategoryid'),(367,'cm_homebusiness_subscribe.HomeBusinessSkillID'),(368,'cm_homebusiness_subscribe.BusinessDesription'),(369,'cm_homebusiness_subscribe.IsAccepted');
/*!40000 ALTER TABLE `tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'grey'),(2,'red'),(3,'green1'),(4,'yellow');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT '0',
  `dob` varchar(30) DEFAULT NULL,
  `height` varchar(10) DEFAULT '5',
  `salutation` varchar(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `LangId` varchar(3) DEFAULT '1',
  `userid` int(11) NOT NULL,
  UNIQUE KEY `UK_user_userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192 COMMENT='User Primary Information ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ram','ram','ramram@gmail.com','1','2013/02/11','49','1','123456712345','3',1),('sri','sri','btechmosuru@gmail.com','2','2008/11/06','16','1','9494241240','1',2),('chandra','chandra','chandra@pts.com','1','2018/02/16','5','3','2132121','1',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `street_name` varchar(30) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postal_code` int(10) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_address_userid` (`userid`),
  CONSTRAINT `FK_user_address_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,'sri','8907','this to inform what is what','4','punjagutta',2345,'5',2),(2,'ram','209','nowhere','1','2',1234568990,'2',1),(3,'chandra','202','tulasi nagar','waltair','3',530041,'Vijayawada',3),(4,'siri','9092','ghnhgj','3','3',2147483647,'3',NULL);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pref`
--

DROP TABLE IF EXISTS `user_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pref` (
  `usename` varchar(20) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `no_of_rows` int(11) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `FK_user_pref_language_id` (`language_id`),
  KEY `FK_user_pref_theme_id` (`theme_id`),
  CONSTRAINT `FK_user_pref_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FK_user_pref_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  CONSTRAINT `FK_user_pref_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pref`
--

LOCK TABLES `user_pref` WRITE;
/*!40000 ALTER TABLE `user_pref` DISABLE KEYS */;
INSERT INTO `user_pref` VALUES ('sri',1,3,2,1),('ram',3,2,50,2);
/*!40000 ALTER TABLE `user_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_cx`
--

DROP TABLE IF EXISTS `user_role_cx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_cx` (
  `username` varchar(20) DEFAULT NULL,
  `roleid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `FK_user_role_cx_roleid` (`roleid`),
  CONSTRAINT `FK_user_role_cx_roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_user_role_cx_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_cx`
--

LOCK TABLES `user_role_cx` WRITE;
/*!40000 ALTER TABLE `user_role_cx` DISABLE KEYS */;
INSERT INTO `user_role_cx` VALUES ('ram',2,1),('sri',3,2);
/*!40000 ALTER TABLE `user_role_cx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validations`
--

DROP TABLE IF EXISTS `validations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validations` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validations`
--

LOCK TABLES `validations` WRITE;
/*!40000 ALTER TABLE `validations` DISABLE KEYS */;
INSERT INTO `validations` VALUES (1,'numeric'),(2,'alphanumeric'),(3,'email'),(4,'URL'),(5,'autogen'),(7,'checkpk'),(8,'requi');
/*!40000 ALTER TABLE `validations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yesno_md`
--

DROP TABLE IF EXISTS `yesno_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yesno_md` (
  `id` int(11) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yesno_md`
--

LOCK TABLES `yesno_md` WRITE;
/*!40000 ALTER TABLE `yesno_md` DISABLE KEYS */;
INSERT INTO `yesno_md` VALUES (0,'no'),(1,'yes');
/*!40000 ALTER TABLE `yesno_md` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 13:04:27
