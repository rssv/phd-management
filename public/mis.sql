-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: mis
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cbcs_branches`
--

DROP TABLE IF EXISTS `cbcs_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbcs_branches` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `wef` varchar(20) NOT NULL,
  `wet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcs_branches`
--

LOCK TABLES `cbcs_branches` WRITE;
/*!40000 ALTER TABLE `cbcs_branches` DISABLE KEYS */;
INSERT INTO `cbcs_branches` VALUES ('agl','Applied Geology',1,'2019-2020','2019-2020'),('agp','Applied Geophysics',1,'2019-2020','2019-2020'),('phy','Physics',1,'2019-2020','2019-2020'),('chem','Chemistry',1,'2019-2020','2019-2020'),('civ','Civil Engineering',1,'2019-2020','2019-2020'),('comm','Common Branch for 1st Year',1,'2019-2020','2019-2020'),('cse','Computer Science and Engineering',1,'2019-2020','2019-2020'),('cse+cse','Computer Science and Engineering+Computer Science and Engineering',1,'2019-2020','2019-2020'),('cseis','Computer Science and Engineering with Spl. in Information Security',1,'2019-2020','2019-2020'),('ece','Electronics and Communication Engineering',1,'2019-2020','2019-2020'),('ee','Electrical Engineering',1,'2019-2020','2019-2020'),('eg','Engineering Geology',1,'2019-2020','2019-2020'),('env','Environmental Engineering',1,'2019-2020','2019-2020'),('ep','Engineering Physics',1,'2019-2020','2019-2020'),('eqse','Earthquake Science & Engineering',1,'2019-2020','2019-2020'),('ese','Environmental Science and Engineering',1,'2019-2020','2019-2020'),('fe','Fuel Engineering',1,'2019-2020','2019-2020'),('geo','Geomatics',1,'2019-2020','2019-2020'),('gte','Geotechnical Engineering',1,'2019-2020','2019-2020'),('iem','Industrial Engineering and Management',1,'2019-2020','2019-2020'),('m&c','Mathematics and Computing',1,'2019-2020','2019-2020'),('mba','Master of Business Administration',1,'2019-2020','2019-2020'),('me','Mining Engineering',1,'2019-2020','2019-2020'),('mech','Mechanical Engineering',1,'2019-2020','2019-2020'),('mech+mfg','Mechanical Engg. (Spl: Manufacturing Engineering)',1,'2019-2020','2019-2020'),('mech+te','Mechanical Engg. (Spl: Thermal Engineering)',1,'2019-2020','2019-2020'),('mee','Mechanical Engg (Spl: Machine Design)',1,'2019-2020','2019-2020'),('met','Mechanical Engg. (Spl: Maintenance Engineering and Tribology)',1,'2019-2020','2019-2020'),('mexp','Mineral Exploration',1,'2019-2020','2019-2020'),('mineee','Mine Electrical Engineering',1,'2019-2020','2019-2020'),('mle','Mineral Engineering',1,'2019-2020','2019-2020'),('mme','Mining Machinery Engineering',1,'2019-2020','2019-2020'),('ocm','Opencast Mining',1,'2019-2020','2019-2020'),('ooce','Optoelectronics and Optical Communication Engineering',1,'2019-2020','2019-2020'),('pe','Petroleum Engineering',1,'2019-2020','2019-2020'),('peed','Power Electronics and Electrical Drives',1,'2019-2020','2019-2020'),('pexp','Petroleum Exploration',1,'2019-2020','2019-2020'),('phd','Doctor of Philosophy',1,'2019-2020','2019-2020'),('prep','Preparatory',1,'2019-2020','2019-2020'),('pse','Power System Engineering',1,'2019-2020','2019-2020'),('jrf','Junior Research Fellow',1,'2019-2020','2019-2020'),('rfme','RF & Microwave Engineering',1,'2019-2020','2019-2020'),('se','Structural Engineering',1,'2019-2020','2019-2020'),('tust','Tunnelling and Underground Space Technology',1,'2019-2020','2019-2020'),('vlsid','VLSI Design',1,'2019-2020','2019-2020'),('da','Data Analytics',1,'2019-2020','2019-2020'),('gexp','Geo-Exploration',1,'2019-2020','2019-2020'),('ce','Chemical Engineering',1,'2019-2020','2019-2020'),('hss','Humanities & Social Sciences',1,'2019-2020','2019-2020'),('es','Environmental Science',1,'2019-2020','2019-2020'),('eng','English',1,'2019-2020','2019-2020'),('math','Mathematics',1,'2019-2020','2019-2020'),('stat','Statisctics',1,'2019-2020','2019-2020'),('mgmt','Management',1,'2019-2020','2019-2020'),('csp','Communication and Signal Processing',1,'2019-2020','2019-2020'),('me+me','Mining Engineering+Mining Engineering',1,'2019-2020','2019-2020'),('ei','Electronics and Instrumentation Engineering',1,'2019-2020','2019-2020'),('om','Operation Management',1,'2019-2020','2019-2020'),('fm','Finance  Management',1,'2019-2020','2019-2020'),('mle+mle','Mineral Engineering+Mineral Engineering',1,'2019-2020','2019-2020'),('emba','Executive Master of Business Administration',1,'2019-2020','2019-2020'),('che','Chemical Engineering',1,'2019-2020','2019-2020'),('min','Mining Engineering',1,'2019-2020','2019-2020'),('online','Online',1,'2019-2020','2019-2020');
/*!40000 ALTER TABLE `cbcs_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbcs_departments`
--

DROP TABLE IF EXISTS `cbcs_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbcs_departments` (
  `id` varchar(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `wef` varchar(20) NOT NULL,
  `wet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcs_departments`
--

LOCK TABLES `cbcs_departments` WRITE;
/*!40000 ALTER TABLE `cbcs_departments` DISABLE KEYS */;
INSERT INTO `cbcs_departments` VALUES ('ac','Applied Chemistry','academic',0,'2019-2020','2019-2020'),('acad','Academic Section','nonacademic',1,'2019-2020','2019-2020'),('acc','Accounts Section','nonacademic',1,'2019-2020','2019-2020'),('admin','Administration Department','nonacademic',1,'2019-2020','2019-2020'),('agl','Applied Geology','academic',1,'2019-2020','2019-2020'),('agp','Applied Geophysics','academic',1,'2019-2020','2019-2020'),('am','Applied Mathematics','academic',0,'2019-2020','2019-2020'),('ap','Applied Physics','academic',0,'2019-2020','2019-2020'),('auc','Audit  Section','nonacademic',1,'2019-2020','2019-2020'),('ca','Campus Administration Section','nonacademic',1,'2019-2020','2019-2020'),('cc','Computer Centre','nonacademic',1,'2019-2020','2019-2020'),('ce','Chemical Engineering','academic',1,'2019-2020','2019-2020'),('cmu','Campus Maintenance Section','nonacademic',1,'2019-2020','2019-2020'),('comm','Common','academic',1,'2019-2020','2019-2020'),('crf','CRF Section','nonacademic',1,'2019-2020','2019-2020'),('cse','Computer Science and Engineering','academic',1,'2019-2020','2019-2020'),('cve','Civil Engineering','academic',1,'2019-2020','2019-2020'),('droffice','Director Secretariate','non academic',1,'2019-2020','2019-2020'),('dsw','DSW Office','nonacademic',1,'2019-2020','2019-2020'),('ece','Electronics Engineering','academic',1,'2019-2020','2019-2020'),('edc','Executive Development Centre','nonacademic',1,'2019-2020','2019-2020'),('ee','Electrical Engineering','academic',1,'2019-2020','2019-2020'),('ese','Environmental Science & Engineering','academic',1,'2019-2020','2019-2020'),('est','Establishment Section','nonacademic',1,'2019-2020','2019-2020'),('exam','Examination Section','nonacademic',1,'2019-2020','2019-2020'),('fme','Fuel, Minerals and Metallurgical Engineering','academic',1,'2019-2020','2019-2020'),('hc','Health Centre','nonacademic',1,'2019-2020','2019-2020'),('hoad','Hostel Administration','nonacademic',1,'2019-2020','2019-2020'),('hss','Humanities and Social Sciences','academic',1,'2019-2020','2019-2020'),('jeeoffice','JEE Office','nonacademic',1,'2019-2020','2019-2020'),('lib','Library','nonacademic',1,'2019-2020','2019-2020'),('me','Mining Engineering','academic',1,'2019-2020','2019-2020'),('mech','Mechanical Engineering','academic',1,'2019-2020','2019-2020'),('mis','Automation Centre','nonacademic',1,'2019-2020','2019-2020'),('mme','Mining Machinery Engineering','academic',1,'2019-2020','2019-2020'),('ms','Management Studies','academic',1,'2019-2020','2019-2020'),('nlhc','New Lecture Hall Complex','nonacademic',1,'2019-2020','2019-2020'),('pc','Project Section','nonacademic',1,'2019-2020','2019-2020'),('pcesection','PCE Section','nonacademic',1,'2019-2020','2019-2020'),('pe','Petroleum Engineering','academic',1,'2019-2020','2019-2020'),('prep','Preparatory','academic',1,'2019-2020','2019-2020'),('rgoff','RG Secretariate','nonacademic',1,'2019-2020','2019-2020'),('s&p','Store and Purchase Section','nonacademic',1,'2019-2020','2019-2020'),('sracadh','Sr. Acdaamic  Hostel','nonacademic',1,'2019-2020','2019-2020'),('ss','Sports Section','academic',1,'2019-2020','2019-2020'),('t&p','Training & Placement Section','nonacademic',1,'2019-2020','2019-2020'),('tc','Transport & Vehicle Section','nonacademic',1,'2019-2020','2019-2020'),('ws','Workshop Section','nonacademic',1,'2019-2020','2019-2020'),('chem','Chemistry','academic',1,'2019-2020','2019-2020'),('phy','Physics','academic',1,'2019-2020','2019-2020'),('mc','Mathematics and Computing','academic',1,'2019-2020','2019-2020');
/*!40000 ALTER TABLE `cbcs_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprehensiveExamination`
--

DROP TABLE IF EXISTS `comprehensiveExamination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprehensiveExamination` (
  `id` varchar(50) DEFAULT NULL,
  `dateOfExamination` varchar(30) DEFAULT NULL,
  `recommendationOfDSC` varchar(30) DEFAULT NULL,
  `DSCminutes` varchar(256) DEFAULT NULL,
  `updatedOn` varchar(50) DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprehensiveExamination`
--

LOCK TABLES `comprehensiveExamination` WRITE;
/*!40000 ALTER TABLE `comprehensiveExamination` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprehensiveExamination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseDetails`
--

DROP TABLE IF EXISTS `courseDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseDetails` (
  `srNo` int DEFAULT NULL,
  `courseCode` varchar(20) DEFAULT NULL,
  `courseName` varchar(30) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `sessionYear` varchar(20) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `id` varchar(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseDetails`
--

LOCK TABLES `courseDetails` WRITE;
/*!40000 ALTER TABLE `courseDetails` DISABLE KEYS */;
INSERT INTO `courseDetails` VALUES (1,'CSC120','JLAL','Nonsoom','3012','G','19JE0001'),(2,'CSC120','JLAL','Nonsoom','3012','G','19JE0001'),(3,'CSC120','JLAL','Nonsoom','3012','G','19JE0001');
/*!40000 ALTER TABLE `courseDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `duration` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('b.tech','Bachelor of Technology',4),('be','Bachelor of Engineering',4),('comm','1st Year JEE Advanced',4),('dualdegree','Dual Degree',5),('execmba','Executive Master of Business Administration',3),('exemtech','Master of Technology (3 Years)',3),('honour','Bachelor of Technology (Honours)',4),('int.m.sc','Integrated Master of Science',5),('int.m.tech','Integrated Master of Technology',5),('int.msc.tech','Integrated Master of Science and Technology',5),('jrf','Junior Research Fellow',4),('m.phil','Master of Philosophy',1),('m.sc','Master of Science',2),('m.sc.tech','Master of Science and Technology',3),('m.tech','Master of Technology',2),('mba','Master of Business Administration',2),('phd','Doctor of Philosophy',5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currentRegistration`
--

DROP TABLE IF EXISTS `currentRegistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currentRegistration` (
  `id` varchar(30) DEFAULT NULL,
  `session` varchar(30) DEFAULT NULL,
  `sessionYear` varchar(15) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `dateOfRegistration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentRegistration`
--

LOCK TABLES `currentRegistration` WRITE;
/*!40000 ALTER TABLE `currentRegistration` DISABLE KEYS */;
INSERT INTO `currentRegistration` VALUES ('19JE0001','jjkas','3012',3,'2012-12-25');
/*!40000 ALTER TABLE `currentRegistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` varchar(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('ac','Applied Chemistry','academic'),('acad','Academic Section','nonacademic'),('acc','Accounts Section','nonacademic'),('admin','Administration Department','nonacademic'),('agl','Applied Geology','academic'),('agp','Applied Geophysics','academic'),('am','Applied Mathematics','academic'),('ap','Applied Physics','academic'),('auc','Audit  Section','nonacademic'),('ca','Campus Administration Section','nonacademic'),('cc','Computer Centre','academic'),('cdc','Career Development Centre','nonacademic'),('ce','Chemical Engineering','academic'),('cere','Centre of Excellence in Renewable Energy','nonacademic'),('chem','Chemistry','academic'),('cmu','Campus Maintenance Section','nonacademic'),('comm','Common','academic'),('crf','CRF Section','nonacademic'),('cse','Computer Science and Engineering','academic'),('cve','Civil Engineering','academic'),('droffice','Director Secretariate','non academic'),('dsw','DSW Office','nonacademic'),('ece','Electronics Engineering','academic'),('edc','Executive Development Centre','nonacademic'),('ee','Electrical Engineering','academic'),('ese','Environmental Science & Engineering','academic'),('est','Establishment Section','nonacademic'),('exam','Examination Section','nonacademic'),('fme','Fuel, Minerals and Metallurgical Engineering','academic'),('hc','Health Centre','nonacademic'),('hoad','Hostel Administration','nonacademic'),('horti','Horticulture','nonacademic'),('hss','Humanities and Social Sciences','academic'),('jeeoffice','JEE Office','nonacademic'),('lib','Library','nonacademic'),('mc','Mathematics and Computing','academic'),('me','Mining Engineering','academic'),('mech','Mechanical Engineering','academic'),('mis','Automation Centre','nonacademic'),('mme','Mining Machinery Engineering','academic'),('ms','Management Studies','academic'),('nlhc','New Lecture Hall Complex','nonacademic'),('pc','Project Section','nonacademic'),('pcesection','PCE Section','nonacademic'),('pe','Petroleum Engineering','academic'),('phy','Physics','academic'),('prep','Preparatory','academic'),('rgoff','RG Secretariate','nonacademic'),('s&p','Store and Purchase Section','nonacademic'),('sracadh','Sr. Acdaamic  Hostel','nonacademic'),('ss','Sports Section','academic'),('t&p','Training & Placement Section','nonacademic'),('tc','Transport & Vehicle Section','nonacademic'),('teqip','TEQIP','nonacademic'),('ws','Workshop Section','nonacademic');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftThesis`
--

DROP TABLE IF EXISTS `draftThesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `draftThesis` (
  `id` varchar(30) DEFAULT NULL,
  `uploadedOn` varchar(50) DEFAULT NULL,
  `file` varchar(256) DEFAULT NULL,
  `otherFile` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftThesis`
--

LOCK TABLES `draftThesis` WRITE;
/*!40000 ALTER TABLE `draftThesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftThesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finalThesis`
--

DROP TABLE IF EXISTS `finalThesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finalThesis` (
  `id` varchar(30) DEFAULT NULL,
  `uploadedOn` varchar(50) DEFAULT NULL,
  `file` varchar(256) DEFAULT NULL,
  `otherFile` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finalThesis`
--

LOCK TABLES `finalThesis` WRITE;
/*!40000 ALTER TABLE `finalThesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `finalThesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jrfToSrf`
--

DROP TABLE IF EXISTS `jrfToSrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jrfToSrf` (
  `id` varchar(50) DEFAULT NULL,
  `convertedOn` varchar(50) DEFAULT NULL,
  `convertedBy` varchar(50) DEFAULT NULL,
  `DSCminutes` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jrfToSrf`
--

LOCK TABLES `jrfToSrf` WRITE;
/*!40000 ALTER TABLE `jrfToSrf` DISABLE KEYS */;
/*!40000 ALTER TABLE `jrfToSrf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phdReportStatus`
--

DROP TABLE IF EXISTS `phdReportStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phdReportStatus` (
  `id` varchar(30) DEFAULT NULL,
  `comprehensiveExamination` varchar(10) DEFAULT NULL,
  `preSubmissionSeminar` varchar(10) DEFAULT NULL,
  `jrfToSrf` varchar(10) DEFAULT NULL,
  `researchProposalSeminar` varchar(10) DEFAULT NULL,
  `phdVivaVoce` varchar(10) DEFAULT NULL,
  `finalThesis` varchar(20) DEFAULT NULL,
  `draftThesis` varchar(20) DEFAULT NULL,
  `synopsys` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phdReportStatus`
--

LOCK TABLES `phdReportStatus` WRITE;
/*!40000 ALTER TABLE `phdReportStatus` DISABLE KEYS */;
INSERT INTO `phdReportStatus` VALUES ('19JE0001','unupdated','unupdated','unupdated','unupdated','unupdated','unupdated','unupdated','unupdated');
/*!40000 ALTER TABLE `phdReportStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phdVivaVoce`
--

DROP TABLE IF EXISTS `phdVivaVoce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phdVivaVoce` (
  `id` varchar(50) DEFAULT NULL,
  `dateOfExamination` varchar(30) DEFAULT NULL,
  `DSCminutes` varchar(256) DEFAULT NULL,
  `updatedOn` varchar(50) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phdVivaVoce`
--

LOCK TABLES `phdVivaVoce` WRITE;
/*!40000 ALTER TABLE `phdVivaVoce` DISABLE KEYS */;
/*!40000 ALTER TABLE `phdVivaVoce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preSubmissionSeminar`
--

DROP TABLE IF EXISTS `preSubmissionSeminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preSubmissionSeminar` (
  `id` varchar(50) DEFAULT NULL,
  `dateOfExamination` varchar(30) DEFAULT NULL,
  `recommendationOfDSC` varchar(30) DEFAULT NULL,
  `DSCminutes` varchar(256) DEFAULT NULL,
  `updatedOn` varchar(50) DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preSubmissionSeminar`
--

LOCK TABLES `preSubmissionSeminar` WRITE;
/*!40000 ALTER TABLE `preSubmissionSeminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `preSubmissionSeminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researchProposalSeminar`
--

DROP TABLE IF EXISTS `researchProposalSeminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `researchProposalSeminar` (
  `id` varchar(50) DEFAULT NULL,
  `dateOfExamination` varchar(30) DEFAULT NULL,
  `recommendationOfDSC` varchar(30) DEFAULT NULL,
  `DSCminutes` varchar(256) DEFAULT NULL,
  `updatedOn` varchar(50) DEFAULT NULL,
  `updatedBy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researchProposalSeminar`
--

LOCK TABLES `researchProposalSeminar` WRITE;
/*!40000 ALTER TABLE `researchProposalSeminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `researchProposalSeminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synopsisAndDraftThesis`
--

DROP TABLE IF EXISTS `synopsisAndDraftThesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synopsisAndDraftThesis` (
  `id` varchar(50) DEFAULT NULL,
  `synopsis` varchar(100) DEFAULT NULL,
  `synopsisOtherDocument` varchar(100) DEFAULT NULL,
  `draftThesis` varchar(100) DEFAULT NULL,
  `draftThesisOtherDocument` varchar(100) DEFAULT NULL,
  `synopsisUploadDate` date DEFAULT NULL,
  `draftThesisUploadDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synopsisAndDraftThesis`
--

LOCK TABLES `synopsisAndDraftThesis` WRITE;
/*!40000 ALTER TABLE `synopsisAndDraftThesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `synopsisAndDraftThesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synopsys`
--

DROP TABLE IF EXISTS `synopsys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synopsys` (
  `id` varchar(30) DEFAULT NULL,
  `uploadedOn` varchar(50) DEFAULT NULL,
  `file` varchar(256) DEFAULT NULL,
  `otherFile` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synopsys`
--

LOCK TABLES `synopsys` WRITE;
/*!40000 ALTER TABLE `synopsys` DISABLE KEYS */;
/*!40000 ALTER TABLE `synopsys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_types`
--

DROP TABLE IF EXISTS `user_auth_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth_types` (
  `id` varchar(20) NOT NULL,
  `auth_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_types`
--

LOCK TABLES `user_auth_types` WRITE;
/*!40000 ALTER TABLE `user_auth_types` DISABLE KEYS */;
INSERT INTO `user_auth_types` VALUES ('086','dugc'),('1000','tpo'),('1001','ttc'),('1005','hostel_cwd'),('101','dean_fnp'),('101','ism_admin'),('1010','dpgc'),('1014','dugc'),('1019','ttc'),('1033','ttc'),('1038','adsw'),('1038','nda'),('1039','hostel_cwd'),('1039','ttc'),('104','acad_da2'),('1044','dugc'),('1046','hod'),('1047','dugc'),('1048','ttc'),('1051','dpgc'),('1052','ttc'),('1055','est_dr'),('1057','da_elec_payroll'),('1057','hos'),('1057','spvr_civil'),('1057','spvr_ee'),('1058','dpgc'),('106','dean_acad'),('106','ism_admin'),('1061','ttc'),('1063','ttc'),('1064','dugc'),('1075','nda'),('1076','nda'),('1078','tpo'),('1080','acad_arpg'),('1090','hod'),('1095','hos'),('1097','ttc'),('1101','nda'),('1102','nda'),('1106','acc_hos'),('1106','hos'),('1106','rg'),('1106','spvr_contingency'),('1108','est_ar'),('1108','hos'),('1113','web_tender_purchase'),('1115','acad_certi'),('1115','acad_exam'),('1116','acc_opr_caw'),('1116','acc_opr_cons'),('1116','acc_opr_hon'),('1116','acc_opr_oth'),('1116','acc_sal'),('1116','da_elec_payroll'),('1116','dev_salary'),('1116','mis-snrai'),('1117','acad_exam'),('1117','acad_sec'),('1117','acad_stu'),('1117','exam_spec'),('1118','web_tender_purchase'),('1119','web_tender_purchase'),('1120','acad_exam'),('1120','acad_phd'),('1124','adm_jee'),('1124','adm_msc'),('1124','adm_mtech'),('1124','exam_da2'),('1124','new_adm'),('1126','emp_pass_auth'),('1126','est_da1'),('1127','acc_opr_hon'),('1129','appoint_clerk'),('1131','web_tender_purchase'),('1134','spvr_contingency'),('1135','web_tender_purchase'),('1136','acc_opr_cons'),('1136','project_so'),('1137','acad_exam'),('1139','acad_exam'),('1139','acad_id'),('1139','acad_stu'),('1139','exam_phd'),('1141','acad_exam'),('1141','acad_stu'),('1141','exam_certi'),('1141','exam_res'),('1141','exam_spec'),('1142','emp_pass_auth'),('1142','est_da1'),('1145','web_tender_purchase'),('1147','hos'),('1147','pictp'),('1148','ft'),('1148','spvr_phone'),('1150','adaa'),('1151','hostel_cwd'),('1153','ttc'),('1154','dpgc'),('1155','ttc'),('1161','mis_db_da'),('1162','hos'),('1162','nda'),('1163','spvr_ee'),('1164','spvr_civil'),('117','hod'),('1172','fa'),('1177','ttc'),('1182','hod'),('1183','dt'),('1183','ft'),('1183','ism_admin'),('1184','hos'),('1184','web_tender_purchase'),('1185','cmi_aee'),('1185','da_elec_payroll'),('1185','info'),('1185','spvr_ee'),('1186','cmi_ace'),('1186','spvr_civil'),('1186','web_tender_civil'),('1187','fa'),('1187','ttc'),('1189','ar_fa'),('1225','acad_dr'),('134','ttc'),('149','dugc'),('155','lib_da1'),('16','admin_exam'),('16','mis_admin'),('16','mis_db_exam'),('164','hod'),('169','appoint_clerk'),('16DR000111','ta'),('16DR000112','ta'),('16DR000113','ta'),('16DR000117','ta'),('16DR000142','ta'),('16DR000146','ta'),('16DR000148','ta'),('16DR000149','ta'),('16DR000151','ta'),('16DR000158','ta'),('16DR000160','ta'),('16DR000161','ta'),('16DR000164','ta'),('16DR000165','ta'),('16DR000170','ta'),('16DR000172','ta'),('16DR000177','ta'),('16DR000185','ta'),('16DR000186','ta'),('16DR000190','ta'),('16DR000195','ta'),('16DR000207','ta'),('16DR000209','ta'),('16DR000212','ta'),('16DR000213','ta'),('16DR000218','ta'),('16DR000220','ta'),('16DR000224','ta'),('16DR000227','ta'),('16DR000229','ta'),('16DR000230','ta'),('16DR000231','ta'),('16DR000232','ta'),('16DR000241','ta'),('16DR000242','ta'),('16DR000249','ta'),('16DR000254','ta'),('16DR000258','ta'),('16DR000264','ta'),('16DR000266','ta'),('16DR000267','ta'),('16DR000274','ta'),('16ID000003','ta'),('175','acad_ar'),('175','exam_dr'),('175','examacad_jr'),('175','id_card'),('175','ism_admin'),('175','mis_db_da'),('175','nda'),('179','spvr_civil'),('17DR000288','ta'),('17DR000289','ta'),('17DR000295','ta'),('17DR000296','ta'),('17DR000298','ta'),('17DR000306','ta'),('17DR000307','ta'),('17DR000308','ta'),('17DR000310','ta'),('17DR000311','ta'),('17DR000314','ta'),('17DR000316','ta'),('17DR000317','ta'),('17DR000320','ta'),('17DR000326','ta'),('17DR000327','ta'),('17DR000329','ta'),('17DR000330','ta'),('17DR000333','ta'),('17DR000336','ta'),('17DR000340','ta'),('17DR000342','ta'),('17DR000345','ta'),('17DR000350','ta'),('17DR000352','ta'),('17DR000366','ta'),('17DR000373','ta'),('17DR000376','ta'),('17DR000383','ta'),('17DR000385','ta'),('17DR000387','ta'),('17DR000393','ta'),('17DR000395','ta'),('17DR000396','ta'),('17DR000398','ta'),('17DR000399','ta'),('17DR000409','ta'),('17DR000413','ta'),('17DR000415','ta'),('17DR000424','ta'),('17DR000426','ta'),('17DR000429','ta'),('17DR000431','ta'),('17DR000437','ta'),('17DR000440','ta'),('17DR000442','ta'),('17DR000446','ta'),('17DR000451','ta'),('17DR000453','ta'),('17DR000455','ta'),('17DR000458','ta'),('17DR000463','ta'),('17DR000467','ta'),('17DR000468','ta'),('17DR000470','ta'),('17DR000473','ta'),('17DR000474','ta'),('17DR000475','ta'),('17DR000479','ta'),('17DR000483','ta'),('17DR000484','ta'),('17DR000485','ta'),('17DR000486','ta'),('17DR000491','ta'),('17DR000492','ta'),('17DR000493','ta'),('17DR000494','ta'),('17DR000496','ta'),('17DR000502','ta'),('17DR000505','ta'),('17DR000506','ta'),('17DR000508','ta'),('17DR000512','ta'),('17DR000513','ta'),('17DR000517','ta'),('17DR000518','ta'),('17DR000519','ta'),('17DR000520','ta'),('17DR000521','ta'),('17DR000523','ta'),('17DR000525','ta'),('17DR000528','ta'),('17DR000531','ta'),('17DR000533','ta'),('17DR000547','ta'),('17DR000548','ta'),('17DR000557','ta'),('17DR000561','ta'),('17DR000572','ta'),('17DR000581','ta'),('17DR000583','ta'),('17DR000586','ta'),('17DR000591','ta'),('17DR000593','ta'),('17DR000598','ta'),('17DR000599','ta'),('17DR000601','ta'),('17DR000602','ta'),('17DR000604','ta'),('17DR000607','ta'),('17DR000608','ta'),('17DR000609','ta'),('17DR000610','ta'),('17DR000611','ta'),('17DR000612','ta'),('17DR000613','ta'),('17DR000616','ta'),('17DR000618','ta'),('17DR000622','ta'),('17DR000624','ta'),('17DR000626','ta'),('17DR000630','ta'),('17DR000631','ta'),('17DR000636','ta'),('17DR000640','ta'),('17DR000642','ta'),('17DR000644','ta'),('17DR000646','ta'),('17DR000647','ta'),('17DR000649','ta'),('17DR000651','ta'),('17DR000654','ta'),('17DR000661','ta'),('17DR000663','ta'),('17ID000004','ta'),('17ID000005','ta'),('17ID000008','ta'),('17MT001579','ta'),('17MT001583','ta'),('17MT001734','ta'),('18DR0009','ta'),('18DR0010','ta'),('18DR0016','ta'),('18DR0019','ta'),('18DR0020','ta'),('18DR0023','ta'),('18DR0034','ta'),('18DR0036','ta'),('18DR0038','ta'),('18DR0044','ta'),('18DR0048','ta'),('18DR0050','ta'),('18DR0066','ta'),('18DR0074','ta'),('18DR0076','ta'),('18DR0078','ta'),('18DR0079','ta'),('18DR0080','ta'),('18DR0090','ta'),('18DR0094','ta'),('18DR0098','ta'),('18DR0102','ta'),('18DR0121','ta'),('18DR0139','ta'),('18DR0148','ta'),('18DR0150','ta'),('18DR0165','ta'),('18MT0012','ta'),('18MT0022','ta'),('18MT0058','ta'),('18MT0132','ta'),('18MT0134','ta'),('18MT0143','ta'),('18MT0153','ta'),('18MT0180','ta'),('18MT0205','ta'),('18MT0212','ta'),('18MT0220','ta'),('18MT0225','ta'),('18MT0228','ta'),('18MT0233','ta'),('18MT0245','ta'),('18MT0271','ta'),('18MT0273','ta'),('18MT0285','ta'),('18MT0289','ta'),('18MT0298','ta'),('18MT0313','ta'),('18MT0321','ta'),('18MT0337','ta'),('18MT0339','ta'),('18MT0347','ta'),('18MT0348','ta'),('18MT0354','ta'),('18MT0360','ta'),('18MT0366','ta'),('18MT0372','ta'),('18MT0376','ta'),('18MT0384','ta'),('18MT0406','ta'),('18MT0413','ta'),('18MT0426','ta'),('18MT0434','ta'),('18MT0445','ta'),('18MT0449','ta'),('18MT0459','ta'),('18MT0485','ta'),('18MT0487','ta'),('18MT0500','ta'),('18MT0504','ta'),('18MT0509','ta'),('18MT0525','ta'),('18MT0539','ta'),('18MT0585','ta'),('193','acad_da2'),('194','spvr_snt'),('2014DR0022','ta'),('2014DR0036','ta'),('2014DR0058','ta'),('2014DR0064','ta'),('2014DR0086','ta'),('2014DR0089','ta'),('2014DR0124','ta'),('2014DR0126','ta'),('2014DR0128','ta'),('2014DR0138','ta'),('2014DR0144','ta'),('2014DR0147','ta'),('2014DR0153','ta'),('2014DR0155','ta'),('2014DR0158','ta'),('2014DR0161','ta'),('2014DR0170','ta'),('2014DR0186','ta'),('2014DR0213','ta'),('2014DR0217','ta'),('2014DR0221','ta'),('2014DR0222','ta'),('2014DR0228','ta'),('2014DR0235','ta'),('2014DR0246','ta'),('2014DR0253','ta'),('2014DR0257','ta'),('2014DR0270','ta'),('2014DR0273','ta'),('2014DR0285','ta'),('2015DR0003','ta'),('2015DR0008','ta'),('2015DR0016','ta'),('2015DR0017','ta'),('2015DR0029','ta'),('2015DR0030','ta'),('2015DR0031','ta'),('2015DR0037','ta'),('2015DR0042','ta'),('2015DR0043','ta'),('2015DR0044','ta'),('2015DR0050','ta'),('2015DR0055','ta'),('2015DR0056','ta'),('2015DR0058','ta'),('2015DR0061','ta'),('2015DR0066','ta'),('2015DR0071','ta'),('2015DR0079','ta'),('2015DR0081','ta'),('2015DR0082','ta'),('2015DR0089','ta'),('2015DR0092','ta'),('2015DR0111','ta'),('2015DR0129','ta'),('2015DR0136','ta'),('2015DR0140','ta'),('2015DR0148','ta'),('2015DR0165','ta'),('2015DR0171','ta'),('2015DR0174','ta'),('2015DR0175','ta'),('2015DR0177','ta'),('2015DR0179','ta'),('2015DR0183','ta'),('2015DR0184','ta'),('2015DR0185','ta'),('2015DR0187','ta'),('2015DR0189','ta'),('2015DR0191','ta'),('2015DR0192','ta'),('2015DR0194','ta'),('2015DR0197','ta'),('2015DR0202','ta'),('2015DR0203','ta'),('2015DR0211','ta'),('2015DR0215','ta'),('2015DR0216','ta'),('2015DR0220','ta'),('2015DR0225','ta'),('2015DR0227','ta'),('2015DR0229','ta'),('2015DR0232','ta'),('2015DR0239','ta'),('2015DR0240','ta'),('2015DR0250','ta'),('2015DR0251','ta'),('2015DR0254','ta'),('2015DR0260','ta'),('2015DR0263','ta'),('2015DR0265','ta'),('2015DR0277','ta'),('2015DR0278','ta'),('2015DR0279','ta'),('2015DR0280','ta'),('2015DR0281','ta'),('2015DR0288','ta'),('2015DR0289','ta'),('2015DR0298','ta'),('2015DR0302','ta'),('2015DR0304','ta'),('2015DR0308','ta'),('2015DR0313','ta'),('2015DR1141','ta'),('2016DR0003','ta'),('2016DR0004','ta'),('2016DR0007','ta'),('2016DR0010','ta'),('2016DR0011','ta'),('2016DR0024','ta'),('2016DR0033','ta'),('2016DR0038','ta'),('2016DR0043','ta'),('2016DR0046','ta'),('2016DR0047','ta'),('2016DR0048','ta'),('2016DR0055','ta'),('2016DR0057','ta'),('2016DR0063','ta'),('2016DR0068','ta'),('2016DR0071','ta'),('2016DR0082','ta'),('2016DR0085','ta'),('2016DR0086','ta'),('2016DR0087','ta'),('2016DR0089','ta'),('2016DR0091','ta'),('2016DR0093','ta'),('2016DR0099','ta'),('2016DR0101','ta'),('2016DR0105','ta'),('2016DR0106','ta'),('225','info'),('228','web_tender_purchase'),('229','acc_opr_caw'),('229','acc_opr_cons'),('229','acc_opr_hon'),('229','acc_opr_oth'),('229','acc_opr1'),('229','acc_opr2'),('229','acc_sal'),('229','da_elec_payroll'),('272','ddt'),('272','dean_infra'),('272','ism_admin'),('275','da_tpo'),('275','web_tender_purchase'),('326','acad_so'),('364','spvr_mess'),('424','lib_da1'),('424','nda'),('425','acad_certi'),('425','acad_exam'),('425','acad_phd'),('458','da_elec_payroll'),('458','spvr_ee'),('461','acad_da2'),('524','dpgc'),('536','adm_jrf'),('536','adm_others'),('566','dev'),('566','dev_feed'),('566','mis_admin'),('566','spvr_cc'),('666','spvr_civil'),('679','dept_da5'),('679','sw_ar'),('68','dugc'),('683','hod'),('685','dpgc'),('696','spvr_snt'),('720','acad_certi'),('720','acad_exam'),('721','web_tender_purchase'),('722','pns_da1'),('727','acad_exam'),('727','exam_res'),('749','spvr_phone'),('752','dean_admin'),('752','dpgc'),('753','hc_lmo'),('756','nda'),('757','nda'),('768','info'),('768','spvr_cc'),('769','admin'),('769','da_mis'),('769','email_admin'),('769','info'),('769','mis_admin'),('769','mis_da'),('769','mis_db'),('769','mis-office'),('769','mis-snrai'),('769','msg'),('769','msg_admin'),('769','parent_incharge'),('769','stu_report'),('769','web_admin'),('769','web_tender_admin'),('773','dugc'),('779','hos'),('779','ism_admin'),('779','jee_c'),('787','dean_rnd'),('787','ism_admin'),('789','hod'),('791','adii'),('798','hc_smo'),('798','hos'),('800','dpgc'),('800','dugc'),('800','hod'),('801','dpgc'),('802','adsr'),('802','hod'),('803','adug'),('804','hos'),('805','adop'),('805','hos'),('806','acad_ar'),('806','adis'),('806','admin'),('806','ar_fa'),('806','dean_is'),('806','deo'),('806','est_ar'),('806','est_da1'),('806','exam_dr'),('806','hos'),('806','ism_admin'),('806','mis_db'),('806','nda'),('806','parent_incharge'),('808','dsw'),('808','ism_admin'),('808','nda'),('810','dean_iraa'),('810','ism_admin'),('810','teqipcord'),('811','hod'),('812','hod'),('817','dugc'),('817','hos'),('817','stu_report'),('817','tequip'),('819','ft'),('819','hos'),('819','hosp'),('819','spo_da'),('827','adrec'),('830','hos'),('830','project_admin'),('830','stu_report'),('836','dugc'),('836','hod'),('836','jee_vc'),('837','hod'),('838','dugc'),('842','hod'),('844','dpgc'),('845','dpgc'),('847','adcm'),('847','stu_report'),('852','dpgc'),('852','hostel_cwd'),('853','adhm'),('853','dugc'),('853','hos_stu_admin'),('855','dugc'),('856','dugc'),('858','adac'),('858','picexam'),('858','ttc'),('858','ttch'),('859','hod'),('861','dugc'),('865','hod'),('870','dpgc'),('871','hod'),('872','adsa'),('872','hosp'),('875','car_sup'),('875','est_da4'),('875','hos'),('875','vehicle_inc'),('877','acad_arug'),('877','car_sup'),('880','adadmin'),('880','dpgc'),('882','dugc'),('882','piclib'),('883','adpp'),('886','adpg'),('888','dpgc'),('893','dpgc'),('895','hos'),('896','admr'),('896','hos'),('897','hos'),('9040','acc_gpf'),('9045','acc_opr_hon'),('9045','acc_opr_med'),('905','dpgc'),('910','info'),('910','spvr_ee'),('914','elec_fa'),('914','hostel_cwd'),('916','dugc'),('916','ttc'),('922','hostel_cwd'),('927','dugc'),('927','ttc'),('933','ttc'),('934','ttc'),('935','est_da5'),('936','da_elec_payroll'),('936','email_admin'),('941','ttc'),('942','da_elec_payroll'),('942','spvr_ee'),('945','hos'),('945','web_tender_purchase'),('950','hc_da1'),('950','hc_da2'),('950','hc_da3'),('950','hc_da4'),('950','hc_man'),('950','info'),('963','ttc'),('964','ttc'),('968','hostel_cwd'),('968','ttch'),('969','ttc'),('970','dpgc'),('974','dpgc'),('976','ttc'),('984','hostel_wd'),('985','ttc'),('986','ttc'),('988','ttc'),('989','dugc'),('992','dugc'),('996','hod'),('996','stu_report'),('997','hostel_cwd'),('999','hostel_cwd'),('admin','admin'),('cc-jitendra','da_elec_payroll'),('cc-jitendra','emp_pass_auth'),('cc-jitendra','est_da1'),('cc-jitendra','mis_db_da'),('cc-jitendra','mis-office'),('cc-jitendra','project_so'),('cc-jitendra','stu_pass_auth'),('cc-mukesh','da_elec_payroll'),('cc-mukesh','dept_pns'),('cc-mukesh','emp_pass_auth'),('cc-mukesh','id_card'),('cc-mukesh','mis_db_da'),('cc-mukesh','mis-office'),('cc-mukesh','pns_da1'),('cc-mukesh','stock_inc'),('cc-mukesh','stu_pass_auth'),('cc-sps','hc_mo'),('dc-amit','email_admin'),('dr_jay','hc_mo'),('hc_rjp','hc_mo'),('hc-dr-pinu','hc_mo'),('hc-dr-santo','hc_mo'),('mis-anuj','adm_all'),('mis-anuj','dev'),('mis-anuj','dev_att'),('mis-anuj','dev_examacad'),('mis-anuj','dev_feed'),('mis-anuj','dev_grade'),('mis-anuj','dev_info'),('mis-anuj','dev_login'),('mis-anuj','dev_salary'),('mis-anuj','dev_semreg'),('mis-rituraj','admin_exam'),('mis-rituraj','dev_att'),('mis-rituraj','dev_examacad'),('mis-rituraj','dev_hall'),('mis-snrai','dev_salary'),('netsupport','spvr_cc'),('oac','info'),('oacad','info'),('oacct','info'),('oagl','info'),('oagp','info'),('oam','info'),('oap','info'),('oautoc','info'),('oca','info'),('ocampe','info'),('occ','info'),('occ','smartid'),('ocdc','info'),('oce','info'),('ochw','info'),('ociv','info'),('ocl','info'),('ocse','info'),('odacad','info'),('odinfra','info'),('odiraa','info'),('odrnd','info'),('odsw','info'),('odt','info'),('odydt','info'),('oece','info'),('oedc','info'),('oee','info'),('oese','info'),('oestt','info'),('oexam','info'),('ofme','info'),('ohc','info'),('ohss','info'),('oinau','info'),('ojeea','info'),('ome','info'),('omech','info'),('omme','info'),('oms','info'),('ope','info'),('opns','info'),('org','info'),('ospo','info'),('oveh','info'),('ows','info'),('tp-jyoti','stu_report'),('tp-jyoti','tpo');
/*!40000 ALTER TABLE `user_auth_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `id` varchar(11) NOT NULL,
  `salutation` varchar(5) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `allocated_category` varchar(25) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `photopath` varchar(150) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `physically_challenged` varchar(5) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('19JE0001','Mr','A','','Ashwin','m','OBC-NCL','OBC-NCL','2000-05-18','ajitkumartg@gmail.com','student/19je0001/19je0001_1.jpg','unmarried','no','mme','2019-09-16 05:14:25'),('806','Prof','Chiranjeev','','Kumar','m','General','','1974-10-31','k_chiranjeev@yahoo.co.uk','','married','no','cse','2020-09-07 05:30:33');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(11) NOT NULL,
  `password` varchar(150) NOT NULL,
  `auth_id` varchar(10) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` enum('A','D','P','L') NOT NULL DEFAULT 'A',
  `remark` varchar(100) NOT NULL DEFAULT 'emp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('19JE0001','9a736c475dc463db9a52911576e72b34','stu','2014-09-16 00:13:56','A',''),('806','9a736c475dc463db9a52911576e72b34','emp','2014-09-16 00:13:56','A','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 14:42:37
