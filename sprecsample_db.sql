-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: sprecsample_db
-- ------------------------------------------------------
-- Server version	5.7.38

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
-- Table structure for table `centrifugations`
--

DROP TABLE IF EXISTS `centrifugations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifugations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `braking` varchar(255) DEFAULT NULL,
  `delay` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifugations`
--

LOCK TABLES `centrifugations` WRITE;
/*!40000 ALTER TABLE `centrifugations` DISABLE KEYS */;
INSERT INTO `centrifugations` VALUES (2,'C','no braking','10 to 15 min','<3000g','2 to 10°C'),(3,'D','with braking','10 to 15 min','<3000g','20 to 10°C'),(4,'J','with braking','10 to 15 min','>10000g','2 to 10°C'),(5,'F','with braking','10 to 15 min','3000g to 6000g','2 to 10°C'),(6,'H','with braking','10 to 15 min','6000g to 10000g','2 to 10°C'),(7,'N','No centrifugation','No centrifugation','No centrifugation','No centrifugation'),(8,'Z','Other','Other','Other','Other'),(9,'A','no braking','10 to 15 min','<3000g','RT'),(10,'B','with braking','10 to 15 min','<3000g','RT'),(11,'I','with braking','10 to 15 min','>10000g','RT'),(12,'E','with braking','10 to 15 min','3000g to 6000g','RT'),(13,'G','with braking','10 to 15 min','6000g to 10000g','RT'),(14,'M','no braking','30 min','<1000g','RT'),(15,'X','Unknown','Unknown','Unknown','Unknown');
/*!40000 ALTER TABLE `centrifugations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_types`
--

DROP TABLE IF EXISTS `collection_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_types`
--

LOCK TABLES `collection_types` WRITE;
/*!40000 ALTER TABLE `collection_types` DISABLE KEYS */;
INSERT INTO `collection_types` VALUES (1,'A06','Autopsy < 6 h post-mortem'),(2,'A12','Autopsy 06-12 h post-mortem'),(3,'A24','Autopsy 12-24 h post-mortem'),(4,'A48','Autopsy 24-48 h post-mortem'),(5,'A72','Autopsy 48-72 h post-portem'),(6,'BPS','Biopsy'),(7,'BCM','Biopsy in culture media'),(8,'BSL','Biopsy in normal saline or phosphate buffered saline'),(9,'BTM','Biopsy in tissue low temperature transport media'),(10,'FNA','Fine needle aspirate'),(11,'ZZZ','Other'),(12,'PUN','Punction'),(13,'SRG','Surgical excision'),(14,'SCM','Surgical excision in culture media'),(15,'SSL','Surgical excision in normal saline or phosphate buffered saline'),(16,'STM','Surgical excision in tissue low temperature transport media'),(17,'VAC','Surgical excision in vacuum container'),(18,'SWB','Swab');
/*!40000 ALTER TABLE `collection_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixation_stabilizations`
--

DROP TABLE IF EXISTS `fixation_stabilizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixation_stabilizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixation_stabilizations`
--

LOCK TABLES `fixation_stabilizations` WRITE;
/*!40000 ALTER TABLE `fixation_stabilizations` DISABLE KEYS */;
INSERT INTO `fixation_stabilizations` VALUES (1,'ETH','Alcohol-based'),(2,'ALD','Aldehyde-based'),(3,'ALL','Allprotect tissue reagent'),(4,'HST','Heat stabilization'),(5,'NBF','Neutral buffered formalin'),(6,'NAA','Non-aldehyde based without acetic acid'),(7,'ACA','Non-aldehyde with acetic acid'),(8,'FOR','Non-buffered formalin'),(9,'OCT','Optimum cutting temperature medium'),(10,'ZZZ','Other'),(11,'PXT','PAXgene tissue'),(12,'RNL','RNA Later'),(13,'SNP','Snap freezing'),(14,'XXX','Unknown');
/*!40000 ALTER TABLE `fixation_stabilizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixation_times`
--

DROP TABLE IF EXISTS `fixation_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixation_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixation_times`
--

LOCK TABLES `fixation_times` WRITE;
/*!40000 ALTER TABLE `fixation_times` DISABLE KEYS */;
INSERT INTO `fixation_times` VALUES (1,'A','< 15 min'),(2,'B','15 min-1 h'),(3,'C','1-4 h '),(4,'D','4-8 h'),(5,'E','8-24 h'),(6,'F','24-48 h'),(7,'G','48-72 h'),(8,'N','Not applicable'),(9,'X','Unknown'),(10,'Z','Other');
/*!40000 ALTER TABLE `fixation_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `long_term_storages`
--

DROP TABLE IF EXISTS `long_term_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `long_term_storages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_term_storages`
--

LOCK TABLES `long_term_storages` WRITE;
/*!40000 ALTER TABLE `long_term_storages` DISABLE KEYS */;
INSERT INTO `long_term_storages` VALUES (1,'Q','Bag','Liquid Nitrogen'),(2,'D','Cryotube 1 to 2 mL','(-85) to (-60) °C'),(3,'C','Cryotube 1 to 2 mL','Liquid Nitrogen'),(4,'N','Cryotube 1 to 2 mL','LN after temporary (-85) to (-60) °C'),(5,'E','Cryotube 1 to 2 mL','Programmable freezing to < -135 °C'),(6,'R','Dry technology medium','RT'),(7,'M','Microplate','(-35) to (-18) °C'),(8,'L','Microplate','(-85) to (-60) °C'),(9,'Y','Original primary container','(-35) to (-18) °C'),(10,'Y','Original Primary Container','(-85) to (-60) °C'),(11,'Z','Other','Other'),(12,'P','Paraffin Block','2 to 10 °C'),(13,'P','Paraffin Block','RT'),(14,'F','Plastic cryo straw','Liquid Nitrogen'),(15,'O','Plastic cryo straw','LN after temporary (-85) to (-60) °C'),(16,'K','PP tube >= 5 mL','(-35) to (-18) °C'),(17,'J','PP tube >= 5 mL','(-85) to (-60) °C'),(18,'B','PP tube 0.5 to 2 mL','(-35) to (-18) °C'),(19,'A','PP tube 0.5 to 2 mL','(-85) to (-60) °C'),(20,'V','PP tube 0.5 to 2 mL','< -135 °C'),(21,'T','PP tube 40 to 500 uL','(-35) to (-18) °C'),(22,'S','PP tube 40 to 500 uL','(-85) to (-60) °C'),(23,'W','PP tube 40 to 500 uL','< -135 °C'),(24,'H','Straw','(-35) to (-18) °C'),(25,'G','Straw','(-85) to (-60) °C'),(26,'I','Straw','Programmable freezing to < -135 °C'),(27,'X','Unknown','Unknown');
/*!40000 ALTER TABLE `long_term_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_centrifugations`
--

DROP TABLE IF EXISTS `post_centrifugations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_centrifugations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `delay` varchar(255) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_centrifugations`
--

LOCK TABLES `post_centrifugations` WRITE;
/*!40000 ALTER TABLE `post_centrifugations` DISABLE KEYS */;
INSERT INTO `post_centrifugations` VALUES (1,'A','<1 h','2 to 10°C'),(2,'B','<1 h','RT'),(3,'I','>24 h','2 to 10°C'),(4,'J','>24 h','RT'),(5,'C','1 to 2 h','2 to 10°C'),(6,'D','1 to 2 h','RT'),(7,'E','2 to 8 h','2 to 10°C'),(8,'F','2 to 8 h','RT'),(9,'G','8 to 24 h','2 to 10°C'),(10,'H','8 to 24 h','RT'),(11,'N','N','2 to 10°C'),(12,'N','N','Other'),(13,'N','N','RT'),(14,'N','N','Unknown'),(15,'N','Not Applicable','Unknown'),(16,'Z','Other','Other'),(17,'X','Other','Unknown'),(18,'X','Unknown','Unknown'),(19,'X','Unknown','Other');
/*!40000 ALTER TABLE `post_centrifugations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_centrifugations`
--

DROP TABLE IF EXISTS `pre_centrifugations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_centrifugations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `delay` varchar(255) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_centrifugations`
--

LOCK TABLES `pre_centrifugations` WRITE;
/*!40000 ALTER TABLE `pre_centrifugations` DISABLE KEYS */;
INSERT INTO `pre_centrifugations` VALUES (1,'B','< 2 h','2 to 10°C'),(2,'N','> 48 h','2 to 10°C'),(3,'J','12 to 24 h','2 to 10°C'),(4,'D','2 to 4 h','2 to 10°C'),(5,'L','24 to 48 h','2 to 10°C'),(6,'F','4 to 8 h','2 to 10°C'),(7,'H','8 to 12 h','2 to 10°C'),(8,'X','Unknown','2 to 10°C'),(9,'O','< 2 h','35 to 38°C'),(10,'X','Unknown','35 to 38°C'),(11,'X','Unknown','Other'),(12,'A','< 2 h','RT'),(13,'M','> 48 h','RT'),(14,'I','12 to 24 h','RT'),(15,'C','2 to 4 h','RT'),(16,'K','24 to 48 h','RT'),(17,'E','4 to 8 h','RT'),(18,'G','8 to 12 h','RT'),(19,'X','Unknown','RT'),(20,'X','Unknown','Unknown');
/*!40000 ALTER TABLE `pre_centrifugations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_containers`
--

DROP TABLE IF EXISTS `primary_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primary_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_containers`
--

LOCK TABLES `primary_containers` WRITE;
/*!40000 ALTER TABLE `primary_containers` DISABLE KEYS */;
INSERT INTO `primary_containers` VALUES (1,'ACD','Acid citrate dextrose'),(2,'ADD','Chemical additives/stabilizers'),(3,'CAT','Serum tube without clot activator'),(4,'CPD','Citrate phosphate dextrose'),(5,'CPT','Cell Preparation Tube citrate'),(6,'CPH','Cell Preparation Tube heparin'),(7,'CSV','Aldehyde-based stabilizer for CTCs'),(8,'EDG','EDTA and gel'),(9,'FIL','Physical filtration system'),(10,'GLS','Glass'),(11,'HEP','Lithium Heparin'),(12,'HIR','Hirudin'),(13,'LHB','Lithium heparin and rubber plug'),(14,'LHG','Lithium heparin and gel'),(15,'ORG','Oragene collection container or equivalent'),(16,'OMN','Stool collection container with DNA stabilizer'),(17,'PAX','PAXgene blood RNA+'),(18,'PED','Potassium EDTA'),(19,'PET','Polyethylene tube sterile'),(20,'PI1','S8820 protease inhibitor tablets or equivalent'),(21,'PIX','Protease inhibitors'),(22,'PPS','Polypropylene tube sterile'),(23,'PXD','PAXgene blood DNA'),(24,'PXR','PAXgene bone marrow RNA'),(25,'RNL','RNA Later'),(26,'SCI','Sodium Citrate'),(27,'SCK','Nonaldehyde-bsaed stabilizer for cell-free nucleic acids'),(28,'SED','Sodium EDTA'),(29,'SHP','Sodium Heparin'),(30,'SPO','Sodium fluoride/potassium oxalate'),(31,'SST','Serum separator tube with clot activator'),(32,'TEM','Tempus Tube'),(33,'TRC','Trace elements tube'),(34,'XXX','Unknown'),(35,'ZZZ','Other');
/*!40000 ALTER TABLE `primary_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprec_samples`
--

DROP TABLE IF EXISTS `sprec_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprec_samples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_type` int(11) DEFAULT NULL,
  `sprec` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `long_term_storage` int(11) DEFAULT NULL,
  `centrifugation` int(11) DEFAULT NULL,
  `cold_ischemia` int(11) DEFAULT NULL,
  `collection_type` int(11) DEFAULT NULL,
  `fixation_time` int(11) DEFAULT NULL,
  `fixation_type` int(11) DEFAULT NULL,
  `post_centrifugation` int(11) DEFAULT NULL,
  `pre_centrifugation` int(11) DEFAULT NULL,
  `primary_container` int(11) DEFAULT NULL,
  `second_centrifugation` int(11) DEFAULT NULL,
  `warm_ischemia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt633cvpxddfe8vsnnlryjo5c7` (`long_term_storage`),
  KEY `FKkdh8m0nvuxur5gk9x0tvr5s33` (`centrifugation`),
  KEY `FKjapyym8ts8b2stlgcy2hctuxe` (`cold_ischemia`),
  KEY `FKiqi6vb92261qts06j61musq1g` (`collection_type`),
  KEY `FKjqx6ebg28hn9bqm9igfcb4ae8` (`fixation_time`),
  KEY `FK18qpm2cgwwqqjhfd37qnvao6d` (`fixation_type`),
  KEY `FKqryrib3qxuc1a6gm8hxjkhenf` (`post_centrifugation`),
  KEY `FKh6h7ve4062eyiti1voak1yk8s` (`pre_centrifugation`),
  KEY `FK99j7f8h3l1bkjepr0puauk3dy` (`primary_container`),
  KEY `FKg38xla6pjvamq36lniqg1y9em` (`second_centrifugation`),
  KEY `FKrows60f9a8i5cutylocg8cd1b` (`warm_ischemia`),
  CONSTRAINT `FK18qpm2cgwwqqjhfd37qnvao6d` FOREIGN KEY (`fixation_type`) REFERENCES `fixation_stabilizations` (`id`),
  CONSTRAINT `FK99j7f8h3l1bkjepr0puauk3dy` FOREIGN KEY (`primary_container`) REFERENCES `primary_containers` (`id`),
  CONSTRAINT `FKg38xla6pjvamq36lniqg1y9em` FOREIGN KEY (`second_centrifugation`) REFERENCES `centrifugations` (`id`),
  CONSTRAINT `FKh6h7ve4062eyiti1voak1yk8s` FOREIGN KEY (`pre_centrifugation`) REFERENCES `pre_centrifugations` (`id`),
  CONSTRAINT `FKiqi6vb92261qts06j61musq1g` FOREIGN KEY (`collection_type`) REFERENCES `collection_types` (`id`),
  CONSTRAINT `FKjapyym8ts8b2stlgcy2hctuxe` FOREIGN KEY (`cold_ischemia`) REFERENCES `warm_ischemias` (`id`),
  CONSTRAINT `FKjqx6ebg28hn9bqm9igfcb4ae8` FOREIGN KEY (`fixation_time`) REFERENCES `fixation_times` (`id`),
  CONSTRAINT `FKkdh8m0nvuxur5gk9x0tvr5s33` FOREIGN KEY (`centrifugation`) REFERENCES `centrifugations` (`id`),
  CONSTRAINT `FKqryrib3qxuc1a6gm8hxjkhenf` FOREIGN KEY (`post_centrifugation`) REFERENCES `post_centrifugations` (`id`),
  CONSTRAINT `FKrows60f9a8i5cutylocg8cd1b` FOREIGN KEY (`warm_ischemia`) REFERENCES `warm_ischemias` (`id`),
  CONSTRAINT `FKt633cvpxddfe8vsnnlryjo5c7` FOREIGN KEY (`long_term_storage`) REFERENCES `long_term_storages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprec_samples`
--

LOCK TABLES `sprec_samples` WRITE;
/*!40000 ALTER TABLE `sprec_samples` DISABLE KEYS */;
INSERT INTO `sprec_samples` VALUES (1,'2019-08-08 13:19:51.000000',NULL,2,38,'CEN-A06-B-B-HST-C-D','2019-08-08 13:19:51.000000',2,NULL,2,1,3,4,NULL,NULL,NULL,NULL,2),(2,'2019-08-08 13:20:32.000000',NULL,2,38,'CEN-A06-B-B-ALL-B-D','2019-08-08 13:20:32.000000',2,NULL,2,1,2,3,NULL,NULL,NULL,NULL,2),(3,'2019-09-09 13:13:44.000000',NULL,1,39,'CLN-A12-B-B-ACA-G-T','2019-09-09 13:13:44.000000',21,NULL,2,2,7,7,NULL,NULL,NULL,NULL,2),(4,'2019-09-19 08:27:27.000000',NULL,3,2,'AMN-ADD-J-N-N-J-N','2019-09-19 08:27:27.000000',4,7,NULL,NULL,NULL,NULL,4,3,2,7,NULL),(5,'2019-09-30 14:24:19.000000',NULL,4,2,'AMN-CAT-B-C-C-B-X','2019-09-30 14:24:19.000000',27,2,NULL,NULL,NULL,NULL,2,1,3,2,NULL),(6,'2020-10-20 14:19:09.000000',NULL,5,2,'AMN-ACD-N-J-N-J-N','2020-10-20 14:19:09.000000',4,4,NULL,NULL,NULL,NULL,4,2,1,7,NULL);
/*!40000 ALTER TABLE `sprec_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warm_ischemias`
--

DROP TABLE IF EXISTS `warm_ischemias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warm_ischemias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warm_ischemias`
--

LOCK TABLES `warm_ischemias` WRITE;
/*!40000 ALTER TABLE `warm_ischemias` DISABLE KEYS */;
INSERT INTO `warm_ischemias` VALUES (1,'A','< 2 min'),(2,'B','2-10 min'),(3,'C','10-20 min'),(4,'D','20-30 min'),(5,'E','30-60 min'),(6,'F','> 60 min'),(7,'X','Unknown'),(8,'N','Not applicable (e.g. biopsy)'),(9,'Z','Other');
/*!40000 ALTER TABLE `warm_ischemias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 14:17:06
