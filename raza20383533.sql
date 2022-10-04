-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: raza20383533
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `idcandidate` varchar(45) NOT NULL DEFAULT 'c0',
  `namecandidate` varchar(45) NOT NULL DEFAULT 'cnoname',
  `surnamecandidate` varchar(45) NOT NULL DEFAULT 'cnosurname',
  `addresscandidate` varchar(45) NOT NULL DEFAULT 'cnoaddress',
  `telephonecandidate` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idcandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('c01','Asad','Raza','3 Belgrove, Apt 6, Room 4, UCD, Dublin ',831237890),('c02','Saanvi','Vashisht','3 Ashfield, Apt 8, Room 1, UCD, Dublin',859976734),('c03','Arno','Banerjee','5 Glenomena, Apt 4, Room 3, UCD, Dublin',896746901),('c04','Shivansh','Verma','1 Glenomena, Apt 2, Room 2, UCD, Dublin',838975577),('c05','Cookie','Monster','3 Ashfield, Apt 5, Room 1, UCD, Dublin',856677893),('c06','Teddy','Bear','33 Belgrove, Apt 4, Room 4, UCD, Dublin ',838879010),('c07','Noor','Fatima','3 Ashfield, Apt 4, Room 6, UCD, Dublin',834458877),('c08','Adam','Burke','2 Glenomena, Apt 4, Room 3, UCD, Dublin',851119999),('c09','Shivansh','Verma','7 Belgrove, Apt 6, Room 1, UCD, Dublin ',893335555),('c10','Anamta','Atiq','4 Glenomena, Apt 5, Room 7, UCD, Dublin',851116643),('c11','Paryn','Khara','3 Merville, Apt 6, Room 4, UCD, Dublin ',838933800),('c12','Arno','Banerjee','9 Glenomena, Apt 4, Room 3, UCD, Dublin',898849569),('c13','Idil','Bilgic','1 Ashfield, Apt 1, Room 4, UCD, Dublin',868567927),('c14','logitech','mouse','my room',902895223);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idhospital` varchar(45) NOT NULL DEFAULT 'h0',
  `namehospital` varchar(45) NOT NULL DEFAULT 'hnoname',
  `addresshospital` varchar(45) NOT NULL DEFAULT 'hnoaddress',
  `telephonehospital` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idhospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('h01','Belgrove Hospital','UCD, Dublin',897685362),('h02','Portlaoise Hospital','Dublin Road, Portlaoise',705692823),('h03','Ashfield Hospital','UCD, Dublin',736073934),('h04','Village Hospital','UCD, Dublin',376038952),('h05','Centra Hospital','UCD, Dublin',276094273),('h06','Glenomena Hospital','UCD, Dublin',689845615),('h07','Merville Hospital','UCD, Dublin',765892235),('h08','Roebuck Hospital','UCD, Dublin',768927630),('h09','Main Lake Hospital','UCD, Dublin',720689752),('h10','Veterinary Hospital','UCD, Dublin',682753689);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `idinterview` varchar(45) NOT NULL DEFAULT 'i0',
  `candidateid` varchar(45) DEFAULT 'c0',
  `positionid` varchar(45) DEFAULT 'p0',
  `selected` varchar(45) NOT NULL DEFAULT 'N/A',
  `dateinterview` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`idinterview`),
  KEY `candidateid_idx` (`candidateid`),
  KEY `idcancid_idx` (`candidateid`),
  KEY `idpos_idx` (`positionid`),
  CONSTRAINT `canid` FOREIGN KEY (`candidateid`) REFERENCES `candidate` (`idcandidate`) ON DELETE SET NULL,
  CONSTRAINT `posid` FOREIGN KEY (`positionid`) REFERENCES `position` (`idposition`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('i01','c01','p10','yes','2020-09-14'),('i02','c03','p08','yes','2020-09-13'),('i03','c05','p06','no','2020-09-12'),('i04','c07','p04','no','2020-09-11'),('i05','c09','p02','yes','2020-09-15'),('i06','c11','p01','no','2020-09-01'),('i07','c13','p03','yes','2020-09-02'),('i08','c02','p05','no','2020-09-03'),('i09','c04','p07','no','2020-09-04'),('i10','c06','p09','yes','2020-09-05'),('i11','c08','p10','no','2020-09-06'),('i12','c10','p08','yes','2020-09-07'),('i13','c12','p06','no','2020-09-08'),('i14','c02','p04','yes','2020-09-08');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `idposition` varchar(45) NOT NULL DEFAULT 'p0',
  `typeposition` varchar(45) NOT NULL DEFAULT 'pnotype',
  `hospitalid` varchar(45) DEFAULT 'h0',
  PRIMARY KEY (`idposition`),
  KEY `hosid_idx` (`hospitalid`),
  CONSTRAINT `hosid` FOREIGN KEY (`hospitalid`) REFERENCES `hospital` (`idhospital`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('p01','Coder','h01'),('p02','Cook','h02'),('p03','Nurse','h03'),('p04','Data Analyst','h04'),('p05','Doctor','h05'),('p06','Plumber','h06'),('p07','Technician','h07'),('p08','Psychologist','h08'),('p09','Therapist','h09'),('p10','Driver','h10'),('p12','mouse','h01');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskills`
--

DROP TABLE IF EXISTS `positionskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionskills` (
  `positionskillslogid` varchar(45) NOT NULL DEFAULT 'ps0',
  `positionid` varchar(45) DEFAULT 'p0',
  `skillsid` varchar(45) DEFAULT 's0',
  PRIMARY KEY (`positionskillslogid`),
  KEY `idcand_idx` (`positionid`),
  KEY `idskill_idx` (`skillsid`),
  CONSTRAINT `idcand` FOREIGN KEY (`positionid`) REFERENCES `position` (`idposition`) ON DELETE SET NULL,
  CONSTRAINT `idskill` FOREIGN KEY (`skillsid`) REFERENCES `skills` (`idskills`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskills`
--

LOCK TABLES `positionskills` WRITE;
/*!40000 ALTER TABLE `positionskills` DISABLE KEYS */;
INSERT INTO `positionskills` VALUES ('ps01','p01','s01'),('ps02','p01','s03'),('ps03','p01','s05'),('ps04','p02','s07'),('ps05','p03','s01'),('ps06','p03','s09'),('ps07','p04','s03'),('ps08','p05','s02'),('ps09','p05','s04'),('ps10','p06','s06'),('ps11','p07','s06'),('ps12','p07','s08'),('ps13','p08','s02'),('ps14','p08','s10'),('ps15','p09','s04'),('ps16','p10','s01'),('ps17','p10','s03'),('ps18','p10','s05'),('ps19','p10','s10');
/*!40000 ALTER TABLE `positionskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillcandidate`
--

DROP TABLE IF EXISTS `skillcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillcandidate` (
  `skillcandidatelogid` varchar(45) NOT NULL DEFAULT 'sc0',
  `skillsid` varchar(45) DEFAULT 's0',
  `candidateid` varchar(45) DEFAULT 'c0',
  PRIMARY KEY (`skillcandidatelogid`),
  KEY `candidateid_idx` (`candidateid`),
  KEY `idski_idx` (`skillsid`),
  CONSTRAINT `candid` FOREIGN KEY (`candidateid`) REFERENCES `candidate` (`idcandidate`) ON DELETE SET NULL,
  CONSTRAINT `skilid` FOREIGN KEY (`skillsid`) REFERENCES `skills` (`idskills`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillcandidate`
--

LOCK TABLES `skillcandidate` WRITE;
/*!40000 ALTER TABLE `skillcandidate` DISABLE KEYS */;
INSERT INTO `skillcandidate` VALUES ('sc01','s01','c01'),('sc02','s05','c01'),('sc03','s03','c02'),('sc04','s07','c02'),('sc05','s01','c03'),('sc06','s05','c03'),('sc07','s04','c04'),('sc08','s07','c04'),('sc09','s01','c05'),('sc10','s06','c05'),('sc11','s04','c06'),('sc12','s08','c06'),('sc13','s01','c07'),('sc14','s06','c07'),('sc15','s04','c08'),('sc16','s09','c08'),('sc17','s02','c09'),('sc18','s06','c09'),('sc19','s04','c10'),('sc20','s10','c10'),('sc21','s02','c11'),('sc22','s06','c11'),('sc23','s05','c12'),('sc24','s10','c12'),('sc25','s02','c13'),('sc26','s07','c13'),('sc27','s03','c03'),('sc28','s05','c05'),('sc29','s07','c07');
/*!40000 ALTER TABLE `skillcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `idskills` varchar(45) NOT NULL DEFAULT 's0',
  `nameskills` varchar(45) NOT NULL DEFAULT 'snoname',
  PRIMARY KEY (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('s01','WORD'),('s02','EXCEL'),('s03','POWERPOINT'),('s04','JAVA'),('s05','NURSING'),('s06','PYTHON'),('s07','COOKING'),('s08','FIRST AID'),('s09','HTML'),('s10','Driving');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'raza20383533'
--

--
-- Dumping routines for database 'raza20383533'
--
/*!50003 DROP PROCEDURE IF EXISTS `3_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_candidate`(IN idcandidate VARCHAR(45),
								namecandidate VARCHAR(45),
                                surnamecandidate VARCHAR(45),
                                addresscandidate VARCHAR(45),
                                telephonecandidate VARCHAR(45))
BEGIN
		INSERT INTO candidate(idcandidate, namecandidate, surnamecandidate, addresscandidate, telephonecandidate)
		VALUES (idcandidate, namecandidate, surnamecandidate, addresscandidate, telephonecandidate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_hospital`(IN idhospital VARCHAR(45),
								namehospital VARCHAR(45),
	
                                addresshospital VARCHAR(45),
                                telephonehospital VARCHAR(45))
BEGIN
		INSERT INTO hospital(idhospital, namehospital,  addresshospital, telephonehospital)
		VALUES (idhospital, namehospital, addresshospital, telephonehospital);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_interview`(IN idinterview VARCHAR(45),

								dateinterview DATE,
                                selected VARCHAR(45),
	
                                candidateid VARCHAR(45),
                                positionid VARCHAR(45))
BEGIN
		INSERT INTO interview(idinterview, positionid,  candidateid, dateinterview, selected)
		VALUES (idinterview, positionid,  candidateid, dateinterview, selected);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_position`(IN idposition VARCHAR(45),
								typeposition VARCHAR(45),
                                hospitalid VARCHAR(45))
BEGIN
		INSERT INTO `raza20383533`.position(idposition, typeposition, hospitalid)
		VALUES (idposition, typeposition, hospitalid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_positionskills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_positionskills`(IN positionid VARCHAR(45),
								skillsid VARCHAR(45))
BEGIN
		INSERT INTO positionskills(positionid, skillsid)
		VALUES (positionid, skillsid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_skillcandidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_skillcandidate`(IN candidateid VARCHAR(45),
								skillsid VARCHAR(45))
BEGIN
		INSERT INTO skillcandidate(candidateid, skillsid)
		VALUES (skillsid, skillsid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `3_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `3_skills`(IN idskills VARCHAR(45),
								nameskills VARCHAR(45))
BEGIN
		INSERT INTO skills(idskills, nameskills)
		VALUES (idskills, nameskills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q10_idcandidate_interview_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q10_idcandidate_interview_date`(IN dateinp DATE)
BEGIN
	SELECT incandidate FROM `raza20383533`.interview WHERE dateinterview = dateinp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q11_nameid_candidate_interview_twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q11_nameid_candidate_interview_twice`()
BEGIN
	SELECT i.candidateid, count(*) FROM `raza20383533`.candidate c, `raza20383533`.interview i 
    WHERE c.idcandidate = i.candidateid GROUP BY idcandidate HAVING count(*) > 1;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q1_hospital_given_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q1_hospital_given_id`(IN varhospital VARCHAR(45))
BEGIN
	SELECT * FROM hospital WHERE idhospital = varhospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q2_hospital_given_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q2_hospital_given_name`(IN hospitalname VARCHAR(45))
BEGIN
	SELECT * FROM hospital WHERE namehospital = hospitalname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q3_candidate_given_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q3_candidate_given_surname`(IN surname VARCHAR(45))
BEGIN
	SELECT * FROM candidate WHERE surnamecandidate = surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q4_candidates_given_positionid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q4_candidates_given_positionid`(IN positioninp VARCHAR(45))
BEGIN
	SELECT DISTINCT c.idcandidate, c.namecandidate, c.suranamecandidate
    FROM `raza20383533` .candidate c, `raza20383533`.position p, `raza20383533`.positionskills ps, `raza20383533`.skillcandidate cs, `raza20383533`.skills s
    WHERE  p.idpositon = ps.positionid AND s.idskill=ps.skillsid AND c.idcandidate=sc.candidateid AND s.idskills=sc.skillsid  AND  p.idpositon = positioninp
    ORDER BY c.idcandidate;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q5_candidates_offered_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q5_candidates_offered_position`()
BEGIN
	SELECT DISTINCT c.idcandidate, c.namecandidate, c.suranamecandidate, i.selected
    FROM `raza20383533` .candidate c, `raza20383533`.interview i
    WHERE i.candidateid = c.idcandidate AND i.selected = 'yes';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q6_position_given_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q6_position_given_skill`(IN skillinp VARCHAR(45))
BEGIN
	SELECT DISTINCT p.idposition, p.typeposition, ps.idskill
    FROM `raza20383533`.position p, `raza20383533`.positionskills ps
    WHERE p.idpostion = ps.postionid AND idskill = skillinp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q7_postion_nursing_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q7_postion_nursing_skills`()
BEGIN
	SELECT count(*)
    FROM `raza20383533`.positionskills ps, `raza20383533`.skills s
    WHERE ps.skillsid = s.idskills AND nameskills = 'NURSING';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_Q8_positions_sorts_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_Q8_positions_sorts_hospital`()
BEGIN
	SELECT *
    FROM `raza20383533`.position p
    ORDER BY idhospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4_q9_interviews_given_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_q9_interviews_given_date`(IN dateinp DATE)
BEGIN
	SELECT * FROM `raza20383533`.interview WHERE dateinterview = dateinp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 21:41:16
