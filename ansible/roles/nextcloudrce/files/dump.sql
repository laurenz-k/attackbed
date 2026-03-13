/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nextcloud
-- ------------------------------------------------------
-- Server version	10.6.21-MariaDB-ubu2004-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_accounts`
--

DROP TABLE IF EXISTS `oc_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts`
--

LOCK TABLES `oc_accounts` WRITE;
/*!40000 ALTER TABLE `oc_accounts` DISABLE KEYS */;
INSERT INTO `oc_accounts` VALUES ('admin','{\"displayname\":{\"value\":\"admin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}'),('alice','{\"displayname\":{\"value\":\"Alice\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"1\"},\"avatar\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"profile_enabled\":{\"value\":\"1\",\"scope\":\"v2-local\",\"verified\":\"0\"}}'),('bob','{\"displayname\":{\"value\":\"Bob\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"1\"},\"avatar\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"profile_enabled\":{\"value\":\"1\",\"scope\":\"v2-local\",\"verified\":\"0\"}}');
/*!40000 ALTER TABLE `oc_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_accounts_data`
--

DROP TABLE IF EXISTS `oc_accounts_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accounts_data_uid` (`uid`),
  KEY `accounts_data_name` (`name`),
  KEY `accounts_data_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts_data`
--

LOCK TABLES `oc_accounts_data` WRITE;
/*!40000 ALTER TABLE `oc_accounts_data` DISABLE KEYS */;
INSERT INTO `oc_accounts_data` VALUES (1,'admin','displayname','admin'),(2,'admin','address',''),(3,'admin','website',''),(4,'admin','email',''),(5,'admin','phone',''),(6,'admin','twitter',''),(7,'admin','organisation',''),(8,'admin','role',''),(9,'admin','headline',''),(10,'admin','biography',''),(11,'admin','profile_enabled','1'),(23,'alice','displayname','Alice'),(24,'alice','address',''),(25,'alice','website',''),(26,'alice','email',''),(27,'alice','phone',''),(28,'alice','twitter',''),(29,'alice','organisation',''),(30,'alice','role',''),(31,'alice','headline',''),(32,'alice','biography',''),(33,'alice','profile_enabled','1'),(45,'bob','displayname','Bob'),(46,'bob','address',''),(47,'bob','website',''),(48,'bob','email',''),(49,'bob','phone',''),(50,'bob','twitter',''),(51,'bob','organisation',''),(52,'bob','role',''),(53,'bob','headline',''),(54,'bob','biography',''),(55,'bob','profile_enabled','1');
/*!40000 ALTER TABLE `oc_accounts_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity`
--

DROP TABLE IF EXISTS `oc_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `user` varchar(64) DEFAULT NULL,
  `affecteduser` varchar(64) NOT NULL,
  `app` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `subjectparams` longtext NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageparams` longtext DEFAULT NULL,
  `file` varchar(4000) DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity`
--

LOCK TABLES `oc_activity` WRITE;
/*!40000 ALTER TABLE `oc_activity` DISABLE KEYS */;
INSERT INTO `oc_activity` VALUES (1,1746537191,30,'file_created','admin','admin','files','created_self','[{\"3\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://localhost/index.php/apps/files/?dir=/','files',3),(2,1746537191,30,'file_created','admin','admin','files','created_self','[{\"4\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://localhost/index.php/apps/files/?dir=/','files',4),(3,1746537191,30,'file_created','admin','admin','files','created_self','[{\"5\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://localhost/index.php/apps/files/?dir=/','files',5),(4,1746537191,30,'file_created','admin','admin','files','created_self','[{\"6\":\"\\/Templates\"}]','','[]','/Templates','http://localhost/index.php/apps/files/?dir=/','files',6),(5,1746537191,30,'file_created','admin','admin','files','created_self','[{\"7\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://localhost/index.php/apps/files/?dir=/Templates','files',7),(6,1746537191,30,'file_created','admin','admin','files','created_self','[{\"8\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://localhost/index.php/apps/files/?dir=/Templates','files',8),(7,1746537191,30,'file_created','admin','admin','files','created_self','[{\"9\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',9),(8,1746537191,30,'file_created','admin','admin','files','created_self','[{\"10\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',10),(9,1746537191,30,'file_created','admin','admin','files','created_self','[{\"11\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://localhost/index.php/apps/files/?dir=/Templates','files',11),(10,1746537191,30,'file_created','admin','admin','files','created_self','[{\"12\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://localhost/index.php/apps/files/?dir=/Templates','files',12),(11,1746537191,30,'file_created','admin','admin','files','created_self','[{\"13\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://localhost/index.php/apps/files/?dir=/Templates','files',13),(12,1746537191,30,'file_created','admin','admin','files','created_self','[{\"14\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',14),(13,1746537191,30,'file_created','admin','admin','files','created_self','[{\"15\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://localhost/index.php/apps/files/?dir=/Templates','files',15),(14,1746537191,30,'file_created','admin','admin','files','created_self','[{\"16\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://localhost/index.php/apps/files/?dir=/Templates','files',16),(15,1746537191,30,'file_created','admin','admin','files','created_self','[{\"17\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://localhost/index.php/apps/files/?dir=/Templates','files',17),(16,1746537191,30,'file_created','admin','admin','files','created_self','[{\"18\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://localhost/index.php/apps/files/?dir=/Templates','files',18),(17,1746537192,30,'file_created','admin','admin','files','created_self','[{\"19\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://localhost/index.php/apps/files/?dir=/Templates','files',19),(18,1746537192,30,'file_created','admin','admin','files','created_self','[{\"20\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://localhost/index.php/apps/files/?dir=/Templates','files',20),(19,1746537192,30,'file_created','admin','admin','files','created_self','[{\"21\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',21),(20,1746537192,30,'file_created','admin','admin','files','created_self','[{\"22\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://localhost/index.php/apps/files/?dir=/','files',22),(21,1746537192,30,'file_created','admin','admin','files','created_self','[{\"23\":\"\\/Documents\"}]','','[]','/Documents','http://localhost/index.php/apps/files/?dir=/','files',23),(22,1746537192,30,'file_created','admin','admin','files','created_self','[{\"24\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://localhost/index.php/apps/files/?dir=/Documents','files',24),(23,1746537192,30,'file_created','admin','admin','files','created_self','[{\"25\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://localhost/index.php/apps/files/?dir=/Documents','files',25),(24,1746537192,30,'file_created','admin','admin','files','created_self','[{\"26\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://localhost/index.php/apps/files/?dir=/Documents','files',26),(25,1746537192,30,'file_created','admin','admin','files','created_self','[{\"27\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://localhost/index.php/apps/files/?dir=/Documents','files',27),(26,1746537192,30,'file_created','admin','admin','files','created_self','[{\"28\":\"\\/Photos\"}]','','[]','/Photos','http://localhost/index.php/apps/files/?dir=/','files',28),(27,1746537192,30,'file_created','admin','admin','files','created_self','[{\"29\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',29),(28,1746537192,30,'file_created','admin','admin','files','created_self','[{\"30\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://localhost/index.php/apps/files/?dir=/Photos','files',30),(29,1746537192,30,'file_created','admin','admin','files','created_self','[{\"31\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',31),(30,1746537192,30,'file_created','admin','admin','files','created_self','[{\"32\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',32),(31,1746537192,30,'file_created','admin','admin','files','created_self','[{\"33\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',33),(32,1746537192,30,'file_created','admin','admin','files','created_self','[{\"34\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',34),(33,1746537192,30,'file_created','admin','admin','files','created_self','[{\"35\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',35),(34,1746537192,30,'file_created','admin','admin','files','created_self','[{\"36\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',36),(35,1746537192,30,'file_created','admin','admin','files','created_self','[{\"37\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',37),(36,1746537193,30,'calendar','admin','admin','dav','calendar_add_self','{\"actor\":\"admin\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',1),(37,1746537193,30,'contacts','admin','admin','dav','addressbook_add_self','{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',1),(38,1746537244,30,'contacts','admin','system','dav','addressbook_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"}}','','[]','','','addressbook',2),(39,1746537244,30,'contacts','admin','system','dav','card_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"alice\",\"name\":\"alice\"}}','','[]','','','addressbook',2),(40,1746537244,30,'calendar','admin','system','dav','calendar_add','{\"actor\":\"admin\",\"calendar\":{\"id\":2,\"uri\":\"contact_birthdays\",\"name\":\"Contact birthdays\"}}','','[]','','','calendar',2),(41,1746537244,30,'contacts','admin','system','dav','card_update','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"alice\",\"name\":\"Alice\"}}','','[]','','','addressbook',2),(42,1746537260,30,'contacts','admin','system','dav','card_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"bob\",\"name\":\"bob\"}}','','[]','','','addressbook',2),(43,1746537260,30,'contacts','admin','system','dav','card_update','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"bob\",\"name\":\"Bob\"}}','','[]','','','addressbook',2);
/*!40000 ALTER TABLE `oc_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity_mq`
--

DROP TABLE IF EXISTS `oc_activity_mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT 0,
  `amq_latest_send` int(11) NOT NULL DEFAULT 0,
  `amq_type` varchar(255) NOT NULL,
  `amq_affecteduser` varchar(64) NOT NULL,
  `amq_appid` varchar(32) NOT NULL,
  `amq_subject` varchar(255) NOT NULL,
  `amq_subjectparams` longtext DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity_mq`
--

LOCK TABLES `oc_activity_mq` WRITE;
/*!40000 ALTER TABLE `oc_activity_mq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_activity_mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbookchanges`
--

DROP TABLE IF EXISTS `oc_addressbookchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbookchanges`
--

LOCK TABLES `oc_addressbookchanges` WRITE;
/*!40000 ALTER TABLE `oc_addressbookchanges` DISABLE KEYS */;
INSERT INTO `oc_addressbookchanges` VALUES (1,'Database:alice.vcf',1,2,1),(2,'Database:alice.vcf',2,2,2),(3,'Database:bob.vcf',3,2,1),(4,'Database:bob.vcf',4,2,2);
/*!40000 ALTER TABLE `oc_addressbookchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbooks`
--

DROP TABLE IF EXISTS `oc_addressbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbooks`
--

LOCK TABLES `oc_addressbooks` WRITE;
/*!40000 ALTER TABLE `oc_addressbooks` DISABLE KEYS */;
INSERT INTO `oc_addressbooks` VALUES (1,'principals/users/admin','Contacts','contacts',NULL,1),(2,'principals/system/system','system','system','System addressbook which holds all users of this instance',5);
/*!40000 ALTER TABLE `oc_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_appconfig`
--

DROP TABLE IF EXISTS `oc_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_appconfig`
--

LOCK TABLES `oc_appconfig` WRITE;
/*!40000 ALTER TABLE `oc_appconfig` DISABLE KEYS */;
INSERT INTO `oc_appconfig` VALUES ('accessibility','enabled','yes'),('accessibility','installed_version','1.10.0'),('accessibility','types',''),('activity','enabled','yes'),('activity','installed_version','2.16.0'),('activity','types','filesystem'),('admin_audit','enabled','yes'),('admin_audit','installed_version','1.14.0'),('admin_audit','types','logging'),('backgroundjob','lastjob','6'),('calendar','enabled','yes'),('calendar','installed_version','3.5.9'),('calendar','types',''),('circles','enabled','yes'),('circles','installed_version','24.0.1'),('circles','loopback_tmp_scheme','http'),('circles','types','filesystem,dav'),('cloud_federation_api','enabled','yes'),('cloud_federation_api','installed_version','1.7.0'),('cloud_federation_api','types','filesystem'),('comments','enabled','yes'),('comments','installed_version','1.14.0'),('comments','types','logging'),('contacts','enabled','yes'),('contacts','installed_version','4.2.5'),('contacts','types','dav'),('contactsinteraction','enabled','yes'),('contactsinteraction','installed_version','1.5.0'),('contactsinteraction','types','dav'),('core','backgroundjobs_mode','cron'),('core','installedat','1746537181.5223'),('core','lastcron','1746537396'),('core','lastupdatedat','1746537181.5287'),('core','public_files','files_sharing/public.php'),('core','public_webdav','dav/appinfo/v1/publicwebdav.php'),('core','theming.variables','b92d206521717ac032f8aa58d3c7ff2f'),('core','vendor','nextcloud'),('dashboard','enabled','yes'),('dashboard','installed_version','7.4.0'),('dashboard','types',''),('dav','enabled','yes'),('dav','installed_version','1.22.0'),('dav','types','filesystem'),('deck','enabled','yes'),('deck','installed_version','1.7.5'),('deck','types','dav'),('external','enabled','yes'),('external','installed_version','4.0.1'),('external','types',''),('federatedfilesharing','enabled','yes'),('federatedfilesharing','installed_version','1.14.0'),('federatedfilesharing','types',''),('federation','enabled','yes'),('federation','installed_version','1.14.0'),('federation','types','authentication'),('files','enabled','yes'),('files','installed_version','1.19.0'),('files','types','filesystem'),('files_external','enabled','yes'),('files_external','installed_version','1.16.1'),('files_external','types','filesystem'),('files_pdfviewer','enabled','yes'),('files_pdfviewer','installed_version','2.5.0'),('files_pdfviewer','types',''),('files_rightclick','enabled','yes'),('files_rightclick','installed_version','1.3.0'),('files_rightclick','types',''),('files_sharing','enabled','yes'),('files_sharing','installed_version','1.16.2'),('files_sharing','types','filesystem'),('files_trashbin','enabled','yes'),('files_trashbin','installed_version','1.14.0'),('files_trashbin','types','filesystem,dav'),('files_versions','enabled','yes'),('files_versions','installed_version','1.17.0'),('files_versions','types','filesystem,dav'),('files_videoplayer','enabled','yes'),('files_videoplayer','installed_version','1.13.0'),('files_videoplayer','types',''),('firstrunwizard','enabled','yes'),('firstrunwizard','installed_version','2.13.0'),('firstrunwizard','types','logging'),('forms','enabled','yes'),('forms','installed_version','2.5.2'),('forms','types',''),('logreader','enabled','yes'),('logreader','installed_version','2.9.0'),('logreader','types',''),('lookup_server_connector','enabled','yes'),('lookup_server_connector','installed_version','1.12.0'),('lookup_server_connector','types','authentication'),('mail','enabled','yes'),('mail','installed_version','1.15.4'),('mail','types',''),('nextcloud_announcements','enabled','yes'),('nextcloud_announcements','installed_version','1.13.0'),('nextcloud_announcements','types','logging'),('notifications','enabled','yes'),('notifications','installed_version','2.12.1'),('notifications','types','logging'),('oauth2','enabled','yes'),('oauth2','installed_version','1.12.0'),('oauth2','types','authentication'),('password_policy','enabled','yes'),('password_policy','installed_version','1.14.0'),('password_policy','types','authentication'),('photos','enabled','yes'),('photos','installed_version','1.6.0'),('photos','types',''),('privacy','enabled','yes'),('privacy','installed_version','1.8.0'),('privacy','types',''),('provisioning_api','enabled','yes'),('provisioning_api','installed_version','1.14.0'),('provisioning_api','types','prevent_group_restriction'),('recommendations','enabled','yes'),('recommendations','installed_version','1.3.0'),('recommendations','types',''),('serverinfo','enabled','yes'),('serverinfo','installed_version','1.14.0'),('serverinfo','types',''),('settings','enabled','yes'),('settings','installed_version','1.6.0'),('settings','types',''),('sharebymail','enabled','yes'),('sharebymail','installed_version','1.14.0'),('sharebymail','types','filesystem'),('support','enabled','yes'),('support','installed_version','1.7.0'),('support','types','session'),('survey_client','enabled','yes'),('survey_client','installed_version','1.12.0'),('survey_client','types',''),('systemtags','enabled','yes'),('systemtags','installed_version','1.14.0'),('systemtags','types','logging'),('text','enabled','yes'),('text','installed_version','3.5.1'),('text','types','dav'),('theming','enabled','yes'),('theming','installed_version','1.15.0'),('theming','types','logging'),('twofactor_backupcodes','enabled','yes'),('twofactor_backupcodes','installed_version','1.13.0'),('twofactor_backupcodes','types',''),('updatenotification','enabled','yes'),('updatenotification','installed_version','1.14.0'),('updatenotification','types',''),('user_status','enabled','yes'),('user_status','installed_version','1.4.0'),('user_status','types',''),('viewer','enabled','yes'),('viewer','installed_version','1.8.0'),('viewer','types',''),('weather_status','enabled','yes'),('weather_status','installed_version','1.4.0'),('weather_status','types',''),('webhooks','enabled','yes'),('webhooks','installed_version','0.4.3'),('webhooks','types',''),('workflow_pdf_converter','enabled','yes'),('workflow_pdf_converter','installed_version','1.9.1'),('workflow_pdf_converter','types','filesystem'),('workflow_script','enabled','yes'),('workflow_script','installed_version','1.9.0'),('workflow_script','types','filesystem'),('workflowengine','enabled','yes'),('workflowengine','installed_version','2.6.0'),('workflowengine','types','filesystem');
/*!40000 ALTER TABLE `oc_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authorized_groups`
--

DROP TABLE IF EXISTS `oc_authorized_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authorized_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admindel_groupid_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authorized_groups`
--

LOCK TABLES `oc_authorized_groups` WRITE;
/*!40000 ALTER TABLE `oc_authorized_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_authorized_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authtoken`
--

DROP TABLE IF EXISTS `oc_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `login_name` varchar(255) NOT NULL DEFAULT '',
  `password` longtext DEFAULT NULL,
  `name` longtext NOT NULL,
  `token` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(5) unsigned DEFAULT 0,
  `remember` smallint(5) unsigned DEFAULT 0,
  `last_activity` int(10) unsigned DEFAULT 0,
  `last_check` int(10) unsigned DEFAULT 0,
  `scope` longtext DEFAULT NULL,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` longtext DEFAULT NULL,
  `public_key` longtext DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 1,
  `password_invalid` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authtoken`
--

LOCK TABLES `oc_authtoken` WRITE;
/*!40000 ALTER TABLE `oc_authtoken` DISABLE KEYS */;
INSERT INTO `oc_authtoken` VALUES (1,'admin','admin','gGPn1cmJjnN1e/o24mninYNBVpz/DRpz2IzFN9Z/aMoSmcMFCIi0mezPuk+o4Kd0JsVaa8mskhksZVUk9JXb671xJThnk8dfSskd1BrIqvMbNl0Qf5uhoDzyzaQPd7gAAKSZl9LmYcTxLrsftS5O+F/sqDqaNo7c4CWqa3YVWKOQsxci9ghlL/glhGLbVpKurLSl5/ZFC6dKZslP2MgFSxg2T4KvX2IOLtG0BdaP6QYRaELrVf6YKXX2fyH3FjloRsBgZGPs0BvzLLSAewFhdopGkeVADLvuFVWwsXvLhtolxqBA4RgTXKvJD4hiOU+c9O9HJjuOFvElNZYDwEEyGg==','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0','4d08d8ff30231574f73bf5fe71fb677e2b64884bb61186d21b93c4af1972ead2308b2694d6cf88369aaa5dcd52e5f5f2dc6b6cdc0ea14d3014e9a8815434899f',0,1,1746537606,1746537516,NULL,NULL,'00dbc7e1fc3e405997256a9f3e25febc2adc5d65334e5b3ec508e940b1ef6daa159de166744a54da6405bf0018b7289305af87b7a7cfe263883457232f2b46b137a884e0da2671afef72082346643720760f6973e173fd19a1413530c7f297c47f2dbbc0a7ff9a9f43f54eabf954a4f0762774ec819760406cdf6c033b611cbac65bb0c6b295fd221ae904e3b6c67030c23feea6b6347c049c49c5dfada11ad2e7556d3205698caacaab7863e4eccfc0fd9a8bac823f9742a9cc350bc850c44afd76e90a1e1242460214dd002cc39b7d61eabcb52f37eda0366d4c1a1d0f2a99dbd1bbf309c94cb562ac5213e126c196a47d03a1d7d55b8508b767b882d631edd31661a7ec23a9b5f9cfe69c20945f759e7745aba021b45ddda6cd51654a271b70ee18ce3252028c0b84398869d1ff41246af7afbd6796e014e8004de593f00a16409548d68c99e133672ac4a1ec86d7fa24dfaaa99c1ad753718b7fd9583ecb3b340e390d81449302db394896699413d3f1a4a1a7673131289abf5123a69bb6d875b606dce5c785b77cd377047cd506ab287cfca34885bf0d1f8ac72807b1efed3a5abd76af2e42d6b0d3f36f734ed0757a9c5208d8c458b49a10acf9b36836c2304dea28aca64887429c74fd1b2082f51f483aab09aa5f4e90252b6c4a50bfab5cac865459640a6e75228c0d3e31be697820f2774e7964d13293ae27ad3a98ca76bb6210f3a87997a546260bb7356909c62aaa3e08cb271076ed76d1d4c01535feecfa56ef2386013c7ac9ae199ccef1ba5b58dfe55d72b8bc6920479b98db8433790bfa074c1fed9d9ba6de96f8377d0af8f0115eced1a4e85ed073089feabf23bc1e11f9f35460028321400f085ad3e76b3fb226200356c7de4fdf90c9442a2f1dbbaaff33b95fdba9a9908ebc0df11d65c98a347ac1642c02038c3408930da7ae3ec2e1537a289299c6ff8fcfab713819dc11e4b1a2697eb6953e71443d42ce73bbb6c8719ef05d2092470cf956339bed18003203c2f1b22429416a4cc0813de7068204dab2e4cc9d801b6f4b0143eeebea475028229e17f7ba3c6c85391573841216dfb7602a386f71f6ddbff0cd82c68fee5d26c026979781b658bb4ade53e30a590b96d39d0a837744e62cf7213f72e1a8daf8dd9a6574ffbfdd8c854696dbeab814d41a1dfac8186769548e614186763913c20f527405d0299ace490e6147493386a3fdb65e585cc5d10b0eecd9605e7b2c9528930e2b3827da3f25f0a65ad36ae1707f2e984f91e444cbf501eb23c1feb1945a19dd93f6521554bb2ebb8b44f73d2e4e7383ded694b3d9772cd3d8cd5130dbe05b410175a158904dcf9bfba31316be2c3b1064fc08355cfa03ae0017288cbaa17a02514dfee610bf799e1b6cf0059be5733a5287c6c2721348f4b2ef79b24c4ebefeffbaa0c2aa04b479e0c0b6b825af686cb61bc1bc20d6a5d80e5ba506766c8253445887e5aaa10417e36bbddd686ce3ba272cb9a55659bddc940c348ebd78e3d0098f5c225d9493a42b5dccc9b7618da520a8456c53b768c486b47d84d993b3d942e5522d538832b3f3bb75b3d9eb77466c7a643ff8bae13bb80f0f85e28ce19549c86353c3dbc9b7446ff70571a3a6f6acb4b4c55b15c23c3d6133eae4a6eee2bde99057fbaecc1bc0b0ce0eee306d9a784b05f4b9293d02b323207f5f521d7d4c8bcd1164b495af695ccbc424084da08f1f5a9a6a4e4859548c2877954944075e034d05af9b3f1a2ea0f882d7e69f115853872fa52fbf1a7ad166eb823a871b83e8c05d35d0d34dadd2c2a354895fe6651a4e2b68f80d0f0c375f3921b1a94899b9808e0eaf7a30819ce34a9808bf4312972cfd03bde607880e6b15c73f98caa5655ba8aad7c10264cd1f83b9974316fa4aee3c497280bc8171e9270b62e95b52e39713b6e8de1725d119cf6454f1c5a655d8f6bd2f9c16186c00ce8fc554eab3846d3ce761159ae192624c6b9548ef339187d55b0d6dda0c74839ead317ce9811c45377e0ca382b3de2fb4392c62be8a0b796c8d6efc32205b255840959b9d2bc9e65c8c83b2d8fbc4953f2ccfd693d3e4098920b83967a2d92de3ae072b33919e3435d41cf432fbec2b431680e73d9a0e3393ef852762c66c31d270061c76265a6979de0243782ca3e680306b6daf7391c123136f23623eb54a7b47da54e51975ab17f3ad78623b11388c5edd3d4ec59401132bda73f4e58e58e852da9bb0558e25e7e85728f449443e73969f35df18605b67aa3b0fc83370eba5169e73004255e1d91debbd235b8c55d43262d971a5bc29b72701e35e20b656ee759abca3ce758c0a63c5ac46890276ce98c483927c2f9334b7be4297db5d08072c31e9294286ace318c1890fef0229afe9c2e07616178b155ffd|fcb48399070af8ec22edaed48b2f1b04|238a55f1607d43a334e9e3d742c740f38615b565796876cdbdc8885e4c26a86bc4333f6cbf83cd69042867dc0d44a5573ae96caa28ba329ca14011795883f83c|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwVpeIw5UdptIw4mrxhef\n/WGetVBjCzyFMTWebF8ZcylhfNvXoxc9uUC1YgZxTtL3sjUAFcISr19q+V8wT/qd\nz0p0qNLnmyn3ADj6M7X/xdMAG2J1CbjcLZyuFJ+QQSWTlzTsqZOXa+Vrvr93r0FR\ntdaKYH0Mm2IW8inNzCg4g3z9ZtuFBX4DFMxdbuIfgAkOwSY1tNDMhd0MUrG86xc4\nhZJ3TtgVMsirouBHcSe2HHWy1Ly4LqM1ZXv3rL8xqh9yNnOtQ0VLHIH+AnMW3/bW\nFV7DBQj8hK0PxZn0QDN6P9ExF26JEzsUhO0869WjF2OEAxopDl00k7qa7sYo0a4A\nXwIDAQAB\n-----END PUBLIC KEY-----\n',2,0);
/*!40000 ALTER TABLE `oc_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_bruteforce_attempts`
--

DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `occurred` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `metadata` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_bruteforce_attempts`
--

LOCK TABLES `oc_bruteforce_attempts` WRITE;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_bookings`
--

DROP TABLE IF EXISTS `oc_calendar_appt_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appt_config_id` bigint(20) unsigned NOT NULL,
  `created_at` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `confirmed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_bk_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_bookings`
--

LOCK TABLES `oc_calendar_appt_bookings` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_configs`
--

DROP TABLE IF EXISTS `oc_calendar_appt_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `visibility` varchar(10) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `target_calendar_uri` varchar(255) NOT NULL,
  `calendar_freebusy_uris` longtext DEFAULT NULL,
  `availability` longtext DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `preparation_duration` int(11) NOT NULL DEFAULT 0,
  `followup_duration` int(11) NOT NULL DEFAULT 0,
  `time_before_next_slot` int(11) DEFAULT NULL,
  `daily_max` int(11) DEFAULT NULL,
  `future_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_configs`
--

LOCK TABLES `oc_calendar_appt_configs` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_invitations`
--

DROP TABLE IF EXISTS `oc_calendar_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `recurrenceid` varchar(255) DEFAULT NULL,
  `attendee` varchar(255) NOT NULL,
  `organizer` varchar(255) NOT NULL,
  `sequence` bigint(20) unsigned DEFAULT NULL,
  `token` varchar(60) NOT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_invitations`
--

LOCK TABLES `oc_calendar_invitations` WRITE;
/*!40000 ALTER TABLE `oc_calendar_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_reminders`
--

DROP TABLE IF EXISTS `oc_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) DEFAULT NULL,
  `uid` varchar(255) NOT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) NOT NULL,
  `alarm_hash` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) unsigned NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_reminders`
--

LOCK TABLES `oc_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `oc_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources`
--

DROP TABLE IF EXISTS `oc_calendar_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources`
--

LOCK TABLES `oc_calendar_resources` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources_md`
--

DROP TABLE IF EXISTS `oc_calendar_resources_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources_md`
--

LOCK TABLES `oc_calendar_resources_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms`
--

DROP TABLE IF EXISTS `oc_calendar_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms`
--

LOCK TABLES `oc_calendar_rooms` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms_md`
--

DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms_md`
--

LOCK TABLES `oc_calendar_rooms_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarchanges`
--

DROP TABLE IF EXISTS `oc_calendarchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarchanges`
--

LOCK TABLES `oc_calendarchanges` WRITE;
/*!40000 ALTER TABLE `oc_calendarchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects`
--

DROP TABLE IF EXISTS `oc_calendarobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `calendarid` bigint(20) unsigned NOT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `componenttype` varchar(8) DEFAULT NULL,
  `firstoccurence` bigint(20) unsigned DEFAULT NULL,
  `lastoccurence` bigint(20) unsigned DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `classification` int(11) DEFAULT 0,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects`
--

LOCK TABLES `oc_calendarobjects` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects_props`
--

DROP TABLE IF EXISTS `oc_calendarobjects_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint(20) NOT NULL DEFAULT 0,
  `objectid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `parameter` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects_props`
--

LOCK TABLES `oc_calendarobjects_props` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendars`
--

DROP TABLE IF EXISTS `oc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `description` varchar(255) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `timezone` longtext DEFAULT NULL,
  `components` varchar(64) DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`),
  KEY `cals_princ_del_idx` (`principaluri`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendars`
--

LOCK TABLES `oc_calendars` WRITE;
/*!40000 ALTER TABLE `oc_calendars` DISABLE KEYS */;
INSERT INTO `oc_calendars` VALUES (1,'principals/users/admin','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(2,'principals/system/system','Contact birthdays','contact_birthdays',1,NULL,0,'#E9D859',NULL,'VEVENT',0,NULL);
/*!40000 ALTER TABLE `oc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarsubscriptions`
--

DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `refreshrate` varchar(10) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `source` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarsubscriptions`
--

LOCK TABLES `oc_calendarsubscriptions` WRITE;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards`
--

DROP TABLE IF EXISTS `oc_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `carddata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` bigint(20) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`),
  KEY `cards_abiduri` (`addressbookid`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards`
--

LOCK TABLES `oc_cards` WRITE;
/*!40000 ALTER TABLE `oc_cards` DISABLE KEYS */;
INSERT INTO `oc_cards` VALUES (1,2,'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.3//EN\r\nUID:alice\r\nFN:Alice\r\nN:Alice;;;;\r\nCLOUD:alice@192.168.233.64:8080\r\nEND:VCARD\r\n','Database:alice.vcf',1746537244,'cb24062427f071ab92898a138a3a5d62',146,'alice'),(2,2,'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.3//EN\r\nUID:bob\r\nFN:Bob\r\nN:Bob;;;;\r\nCLOUD:bob@192.168.233.64:8080\r\nEND:VCARD\r\n','Database:bob.vcf',1746537260,'69f37b167a80c8fb2ef13f59df521bad',138,'bob');
/*!40000 ALTER TABLE `oc_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards_properties`
--

DROP TABLE IF EXISTS `oc_cards_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `cardid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards_properties`
--

LOCK TABLES `oc_cards_properties` WRITE;
/*!40000 ALTER TABLE `oc_cards_properties` DISABLE KEYS */;
INSERT INTO `oc_cards_properties` VALUES (5,2,1,'UID','alice',0),(6,2,1,'FN','Alice',0),(7,2,1,'N','Alice;;;;',0),(8,2,1,'CLOUD','alice@192.168.233.64:8080',0),(13,2,2,'UID','bob',0),(14,2,2,'FN','Bob',0),(15,2,2,'N','Bob;;;;',0),(16,2,2,'CLOUD','bob@192.168.233.64:8080',0);
/*!40000 ALTER TABLE `oc_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_circle`
--

DROP TABLE IF EXISTS `oc_circles_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_circle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(31) NOT NULL,
  `name` varchar(127) NOT NULL,
  `display_name` varchar(255) DEFAULT '',
  `sanitized_name` varchar(127) DEFAULT '',
  `instance` varchar(255) DEFAULT '',
  `config` int(10) unsigned DEFAULT NULL,
  `source` int(10) unsigned DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `contact_addressbook` int(10) unsigned DEFAULT NULL,
  `contact_groupname` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8195F548E3C68343` (`unique_id`),
  KEY `IDX_8195F548D48A2F7C` (`config`),
  KEY `IDX_8195F5484230B1DE` (`instance`),
  KEY `IDX_8195F5485F8A7F73` (`source`),
  KEY `IDX_8195F548C317B362` (`sanitized_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_circle`
--

LOCK TABLES `oc_circles_circle` WRITE;
/*!40000 ALTER TABLE `oc_circles_circle` DISABLE KEYS */;
INSERT INTO `oc_circles_circle` VALUES (1,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','user:admin:fr6EGanM2uppAyArxzF8gJLGc4jBUkO','admin','','',1,1,'[]','','2025-05-06 13:13:10',0,''),(2,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','app:circles:DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','Circles','','',8193,10001,'[]','','2025-05-06 13:13:11',0,''),(3,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','user:alice:fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','Alice','','',1,1,'[]','','2025-05-06 13:14:04',0,''),(4,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','user:bob:w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','Bob','','',1,1,'[]','','2025-05-06 13:14:20',0,'');
/*!40000 ALTER TABLE `oc_circles_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_event`
--

DROP TABLE IF EXISTS `oc_circles_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_event` (
  `token` varchar(63) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `event` longtext DEFAULT NULL,
  `result` longtext DEFAULT NULL,
  `interface` int(11) NOT NULL DEFAULT 0,
  `severity` int(11) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `creation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`token`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_event`
--

LOCK TABLES `oc_circles_event` WRITE;
/*!40000 ALTER TABLE `oc_circles_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_member`
--

DROP TABLE IF EXISTS `oc_circles_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `single_id` varchar(31) DEFAULT NULL,
  `circle_id` varchar(31) NOT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `user_id` varchar(127) NOT NULL,
  `user_type` smallint(6) NOT NULL DEFAULT 1,
  `instance` varchar(255) DEFAULT '',
  `invited_by` varchar(31) DEFAULT NULL,
  `level` smallint(6) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `cached_name` varchar(255) DEFAULT '',
  `cached_update` datetime DEFAULT NULL,
  `contact_id` varchar(127) DEFAULT NULL,
  `contact_meta` longtext DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_member_cisiuiutil` (`circle_id`,`single_id`,`user_id`,`user_type`,`instance`,`level`),
  KEY `circles_member_cisi` (`circle_id`,`single_id`),
  KEY `IDX_25C66A49E7A1254A` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_member`
--

LOCK TABLES `oc_circles_member` WRITE;
/*!40000 ALTER TABLE `oc_circles_member` DISABLE KEYS */;
INSERT INTO `oc_circles_member` VALUES (1,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','circles',10000,'',NULL,9,'Member','[]','Circles','2025-05-06 13:13:11','',NULL,'2025-05-06 13:13:11'),(2,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO','admin',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','admin','2025-05-06 13:13:11','',NULL,'2025-05-06 13:13:11'),(3,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','alice',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','alice','2025-05-06 13:14:04','',NULL,'2025-05-06 13:14:04'),(4,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','bob',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','bob','2025-05-06 13:14:20','',NULL,'2025-05-06 13:14:20');
/*!40000 ALTER TABLE `oc_circles_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_membership`
--

DROP TABLE IF EXISTS `oc_circles_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_membership` (
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `inheritance_first` varchar(31) NOT NULL,
  `inheritance_last` varchar(31) NOT NULL,
  `inheritance_depth` int(10) unsigned NOT NULL,
  `inheritance_path` longtext NOT NULL,
  PRIMARY KEY (`single_id`,`circle_id`),
  KEY `IDX_8FC816EAE7C1D92B` (`single_id`),
  KEY `circles_membership_ifilci` (`inheritance_first`,`inheritance_last`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_membership`
--

LOCK TABLES `oc_circles_membership` WRITE;
/*!40000 ALTER TABLE `oc_circles_membership` DISABLE KEYS */;
INSERT INTO `oc_circles_membership` VALUES ('DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',1,'[\"DNx2epvw8ilwQWJnofrgnwfA23O4Fqn\"]'),('fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ',9,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ',1,'[\"fgskkoxDJI9nIy84NwDAjVh75pQd6fQ\"]'),('fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO',9,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO',1,'[\"fr6EGanM2uppAyArxzF8gJLGc4jBUkO\"]'),('w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze',9,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze',1,'[\"w5hmA5jhoYxeK3yrAwjeupXmkbhEvze\"]');
/*!40000 ALTER TABLE `oc_circles_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mount`
--

DROP TABLE IF EXISTS `oc_circles_mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `token` varchar(63) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mount_cimipt` (`circle_id`,`mount_id`,`parent`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mount`
--

LOCK TABLES `oc_circles_mount` WRITE;
/*!40000 ALTER TABLE `oc_circles_mount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mountpoint`
--

DROP TABLE IF EXISTS `oc_circles_mountpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mountpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mountpoint_ms` (`mount_id`,`single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mountpoint`
--

LOCK TABLES `oc_circles_mountpoint` WRITE;
/*!40000 ALTER TABLE `oc_circles_mountpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mountpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_remote`
--

DROP TABLE IF EXISTS `oc_circles_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_remote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT 'Unknown',
  `interface` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(20) DEFAULT NULL,
  `instance` varchar(127) DEFAULT NULL,
  `href` varchar(254) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F94EF834230B1DE` (`instance`),
  KEY `IDX_F94EF83539B0606` (`uid`),
  KEY `IDX_F94EF8334F8E741` (`href`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_remote`
--

LOCK TABLES `oc_circles_remote` WRITE;
/*!40000 ALTER TABLE `oc_circles_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_share_lock`
--

DROP TABLE IF EXISTS `oc_circles_share_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_share_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `instance` varchar(127) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_337F52F8126F525E70EE2FF6` (`item_id`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_share_lock`
--

LOCK TABLES `oc_circles_share_lock` WRITE;
/*!40000 ALTER TABLE `oc_circles_share_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_share_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_token`
--

DROP TABLE IF EXISTS `oc_circles_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `share_id` int(11) DEFAULT NULL,
  `circle_id` varchar(31) DEFAULT NULL,
  `single_id` varchar(31) DEFAULT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `token` varchar(31) DEFAULT NULL,
  `password` varchar(127) DEFAULT NULL,
  `accepted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sicisimit` (`share_id`,`circle_id`,`single_id`,`member_id`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_token`
--

LOCK TABLES `oc_circles_token` WRITE;
/*!40000 ALTER TABLE `oc_circles_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_accesscache`
--

DROP TABLE IF EXISTS `oc_collres_accesscache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) NOT NULL,
  `collection_id` bigint(20) NOT NULL DEFAULT 0,
  `resource_type` varchar(64) NOT NULL DEFAULT '',
  `resource_id` varchar(64) NOT NULL DEFAULT '',
  `access` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_accesscache`
--

LOCK TABLES `oc_collres_accesscache` WRITE;
/*!40000 ALTER TABLE `oc_collres_accesscache` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_accesscache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_collections`
--

DROP TABLE IF EXISTS `oc_collres_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_collections`
--

LOCK TABLES `oc_collres_collections` WRITE;
/*!40000 ALTER TABLE `oc_collres_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_resources`
--

DROP TABLE IF EXISTS `oc_collres_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) NOT NULL,
  `resource_id` varchar(64) NOT NULL,
  PRIMARY KEY (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_resources`
--

LOCK TABLES `oc_collres_resources` WRITE;
/*!40000 ALTER TABLE `oc_collres_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments`
--

DROP TABLE IF EXISTS `oc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `topmost_parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `children_count` int(10) unsigned NOT NULL DEFAULT 0,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `message` longtext DEFAULT NULL,
  `verb` varchar(64) DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `reference_id` varchar(64) DEFAULT NULL,
  `reactions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments`
--

LOCK TABLES `oc_comments` WRITE;
/*!40000 ALTER TABLE `oc_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments_read_markers`
--

DROP TABLE IF EXISTS `oc_comments_read_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments_read_markers`
--

LOCK TABLES `oc_comments_read_markers` WRITE;
/*!40000 ALTER TABLE `oc_comments_read_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments_read_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_cal_proxy`
--

DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) NOT NULL,
  `proxy_id` varchar(64) NOT NULL,
  `permissions` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_cal_proxy`
--

LOCK TABLES `oc_dav_cal_proxy` WRITE;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_shares`
--

DROP TABLE IF EXISTS `oc_dav_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) unsigned NOT NULL,
  `publicuri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_shares`
--

LOCK TABLES `oc_dav_shares` WRITE;
/*!40000 ALTER TABLE `oc_dav_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_assigned_labels`
--

DROP TABLE IF EXISTS `oc_deck_assigned_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_assigned_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL DEFAULT 0,
  `card_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_assigned_labels_idx_i` (`label_id`),
  KEY `deck_assigned_labels_idx_c` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_assigned_labels`
--

LOCK TABLES `oc_deck_assigned_labels` WRITE;
/*!40000 ALTER TABLE `oc_deck_assigned_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_assigned_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_assigned_users`
--

DROP TABLE IF EXISTS `oc_deck_assigned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_assigned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant` varchar(64) NOT NULL,
  `card_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_assigned_users_idx_p` (`participant`),
  KEY `deck_assigned_users_idx_c` (`card_id`),
  KEY `deck_assigned_users_idx_ty` (`type`),
  KEY `idx_card_participant` (`card_id`,`participant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_assigned_users`
--

LOCK TABLES `oc_deck_assigned_users` WRITE;
/*!40000 ALTER TABLE `oc_deck_assigned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_assigned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_attachment`
--

DROP TABLE IF EXISTS `oc_deck_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `last_modified` bigint(20) unsigned DEFAULT 0,
  `created_at` bigint(20) unsigned DEFAULT 0,
  `created_by` varchar(64) NOT NULL,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cardid_deletedat` (`card_id`,`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_attachment`
--

LOCK TABLES `oc_deck_attachment` WRITE;
/*!40000 ALTER TABLE `oc_deck_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_board_acl`
--

DROP TABLE IF EXISTS `oc_deck_board_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_board_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `participant` varchar(64) NOT NULL,
  `permission_edit` tinyint(1) DEFAULT 0,
  `permission_share` tinyint(1) DEFAULT 0,
  `permission_manage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deck_board_acl_uq_i` (`board_id`,`type`,`participant`),
  KEY `deck_board_acl_idx_i` (`board_id`),
  KEY `idx_participant_type` (`participant`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_board_acl`
--

LOCK TABLES `oc_deck_board_acl` WRITE;
/*!40000 ALTER TABLE `oc_deck_board_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_board_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_boards`
--

DROP TABLE IF EXISTS `oc_deck_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `color` varchar(6) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_owner_modified` (`owner`,`last_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_boards`
--

LOCK TABLES `oc_deck_boards` WRITE;
/*!40000 ALTER TABLE `oc_deck_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_cards`
--

DROP TABLE IF EXISTS `oc_deck_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `description_prev` longtext DEFAULT NULL,
  `stack_id` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT 'plain',
  `last_modified` int(10) unsigned DEFAULT 0,
  `last_editor` varchar(64) DEFAULT NULL,
  `created_at` int(10) unsigned DEFAULT 0,
  `owner` varchar(64) NOT NULL,
  `order` bigint(20) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `notified` tinyint(1) DEFAULT 0,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_cards_stack_id_index` (`stack_id`),
  KEY `deck_cards_order_index` (`order`),
  KEY `deck_cards_archived_index` (`archived`),
  KEY `idx_due_notified_archived_deleted` (`duedate`,`notified`,`archived`,`deleted_at`),
  KEY `idx_last_editor` (`last_editor`,`description_prev`(1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_cards`
--

LOCK TABLES `oc_deck_cards` WRITE;
/*!40000 ALTER TABLE `oc_deck_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_labels`
--

DROP TABLE IF EXISTS `oc_deck_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `board_id` bigint(20) NOT NULL,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_labels_board_id_index` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_labels`
--

LOCK TABLES `oc_deck_labels` WRITE;
/*!40000 ALTER TABLE `oc_deck_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_stacks`
--

DROP TABLE IF EXISTS `oc_deck_stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_stacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `order` bigint(20) DEFAULT NULL,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_stacks_board_id_index` (`board_id`),
  KEY `deck_stacks_order_index` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_stacks`
--

LOCK TABLES `oc_deck_stacks` WRITE;
/*!40000 ALTER TABLE `oc_deck_stacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_direct_edit`
--

DROP TABLE IF EXISTS `oc_direct_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `accessed` tinyint(1) DEFAULT 0,
  `file_path` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`),
  KEY `direct_edit_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_direct_edit`
--

LOCK TABLES `oc_direct_edit` WRITE;
/*!40000 ALTER TABLE `oc_direct_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_direct_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_directlink`
--

DROP TABLE IF EXISTS `oc_directlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_directlink` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `token` varchar(60) DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_directlink`
--

LOCK TABLES `oc_directlink` WRITE;
/*!40000 ALTER TABLE `oc_directlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_directlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_applicable`
--

DROP TABLE IF EXISTS `oc_external_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_applicable` (
  `applicable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`applicable_id`),
  UNIQUE KEY `applicable_type_value_mount` (`type`,`value`,`mount_id`),
  KEY `applicable_mount` (`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_applicable`
--

LOCK TABLES `oc_external_applicable` WRITE;
/*!40000 ALTER TABLE `oc_external_applicable` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_applicable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_config`
--

DROP TABLE IF EXISTS `oc_external_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `config_mount_key` (`mount_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_config`
--

LOCK TABLES `oc_external_config` WRITE;
/*!40000 ALTER TABLE `oc_external_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_mounts`
--

DROP TABLE IF EXISTS `oc_external_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_mounts` (
  `mount_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_point` varchar(128) NOT NULL,
  `storage_backend` varchar(64) NOT NULL,
  `auth_backend` varchar(64) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 100,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_mounts`
--

LOCK TABLES `oc_external_mounts` WRITE;
/*!40000 ALTER TABLE `oc_external_mounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_options`
--

DROP TABLE IF EXISTS `oc_external_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_mount_key` (`mount_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_options`
--

LOCK TABLES `oc_external_options` WRITE;
/*!40000 ALTER TABLE `oc_external_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_federated_reshares`
--

DROP TABLE IF EXISTS `oc_federated_reshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_federated_reshares` (
  `share_id` bigint(20) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_federated_reshares`
--

LOCK TABLES `oc_federated_reshares` WRITE;
/*!40000 ALTER TABLE `oc_federated_reshares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_federated_reshares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_locks`
--

DROP TABLE IF EXISTS `oc_file_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_locks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT 0,
  `key` varchar(64) NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_locks`
--

LOCK TABLES `oc_file_locks` WRITE;
/*!40000 ALTER TABLE `oc_file_locks` DISABLE KEYS */;
INSERT INTO `oc_file_locks` VALUES (1,0,'files/38d3fc13a505a341da34815c5ccc8b3d',1746540843),(2,0,'files/71635d113240eaa56b640071e3a65010',1746540810),(3,0,'files/f1a212d2a89a447259f0aa32d5026b6b',1746540810),(5,0,'files/618b97176d84eb528b6ec76481f5ca4a',1746540810),(6,0,'files/e764eba954170638109bccadecfa6a77',1746540810),(7,0,'files/c517f830927298d8f2edc9648c77e52c',1746540810),(8,0,'files/5bb4eaf221e735b1b25010e0ab550a56',1746540810),(10,0,'files/7dd1141c24ef8353588d69dbb398ef24',1746540810),(11,0,'files/bb9007df3828e9d8694c3e5f643e003a',1746540810),(12,0,'files/dd30b390114b8d291e9e362a47ab9556',1746540810),(13,0,'files/2cbc7ca147a73d522c3d38349d23f8d2',1746540810),(14,0,'files/bd4cb034cfd2bec33e727681e5439c74',1746540810),(15,0,'files/327513eb26fb2c4c49b3ac59ae5f9f13',1746540810),(16,0,'files/b24f8a247760dc8356a6d0763198355c',1746540810),(17,0,'files/6a2a0fe5f58ccfa29ef48371f098303e',1746540810),(18,0,'files/9f76a0b0d90056febb3e98f79dc3ce25',1746540810),(19,0,'files/5d66cc968f3041e6b6db17c6bf29d506',1746540810),(20,0,'files/6493c474d39c9cb1caad3d5625173bbe',1746540810),(21,0,'files/94ed24c3ace8fcfcd3f378f1961eeaba',1746540810),(22,0,'files/b24fee3b385e6ec892de5e20ae9f214b',1746540810),(23,0,'files/11015605023f1da9859f1a9f4fc63ebd',1746540810),(24,0,'files/0a3b5e23e460ec83c308cf8d359a28e1',1746540810),(25,0,'files/c8fc151f762d335f44ab05ccb9c633ae',1746540810),(26,0,'files/35293403fe54cec5640601bf5fd827b2',1746540810),(27,0,'files/4b977525704b2c2c406e0b06dc93d3e8',1746540810),(28,0,'files/37af0a250fc202ce3520fc42f4cedd49',1746540810),(29,0,'files/f3c7dc27745c89ce90edde2cccc5305a',1746540810),(30,0,'files/5218127401afc046c73208080fd97103',1746540810),(31,0,'files/b1ddde4b0027ac99ab50ca8039b01753',1746540810),(32,0,'files/0a3d9837fcab8376a5fc0cd39021aadc',1746540810),(33,0,'files/e89e38a2e6aec8788f9c2acb0c6394d9',1746540810),(34,0,'files/d7f93e169178cf12e2d72f9d6f2f7631',1746540810),(35,0,'files/ed67ddd54c8c5e073856084bb9448e12',1746540810),(37,0,'files/76f4c73b545e08cea45d806526415381',1746540810),(39,0,'files/b6ef755cfc70b5eb94f5d3aad8ba833d',1746540810),(40,0,'files/2b7e5de9afe8b3f7b056c0ba2a04af46',1746540810),(46,0,'files/bf37f95f1699b3984e9340cc9910c910',1746540810),(50,0,'files/0bcf776322b017bc4dd9e9ec9c78aa73',1746540843),(52,0,'files/a2e44df3165a9dc76712cd27b1d99ccd',1746540844),(53,0,'files/ceba78de00757eda1ec2ef8d34fbf9a6',1746540844),(55,0,'files/72b3c000ec9974f132606e5a1b0dc5fb',1746540844),(56,0,'files/19d073cd82a9d3590dfa0e3567ed8a51',1746540844),(57,0,'files/4f85cb0adafd6245e5cff8b35f1d00db',1746540860),(58,0,'files/fb2b505fcdd5b0d6de9c01f0ac6d5de4',1746540860),(60,0,'files/44d0288ec059c59ca3eddb541acb80f1',1746540861),(61,0,'files/9fc6377206cab0d6095c64d99d90a597',1746540861);
/*!40000 ALTER TABLE `oc_file_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_metadata`
--

DROP TABLE IF EXISTS `oc_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_metadata` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `metadata` longtext NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`,`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_metadata`
--

LOCK TABLES `oc_file_metadata` WRITE;
/*!40000 ALTER TABLE `oc_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache`
--

DROP TABLE IF EXISTS `oc_filecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage` bigint(20) NOT NULL DEFAULT 0,
  `path` varchar(4000) DEFAULT NULL,
  `path_hash` varchar(32) NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT 0,
  `mimepart` bigint(20) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `mtime` bigint(20) NOT NULL DEFAULT 0,
  `storage_mtime` bigint(20) NOT NULL DEFAULT 0,
  `encrypted` int(11) NOT NULL DEFAULT 0,
  `unencrypted_size` bigint(20) NOT NULL DEFAULT 0,
  `etag` varchar(40) DEFAULT NULL,
  `permissions` int(11) DEFAULT 0,
  `checksum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_id_storage_size` (`fileid`,`storage`,`size`),
  KEY `fs_mtime` (`mtime`),
  KEY `fs_size` (`size`),
  KEY `fs_storage_path_prefix` (`storage`,`path`(64))
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache`
--

LOCK TABLES `oc_filecache` WRITE;
/*!40000 ALTER TABLE `oc_filecache` DISABLE KEYS */;
INSERT INTO `oc_filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,24049432,1746537208,1746537208,0,0,'681a0af88b2f8',23,''),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,24049432,1746537192,1746537192,0,0,'681a0ae8cc71b',31,''),(3,1,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',2,'Nextcloud Manual.pdf',4,3,12764907,1746537191,1746537191,0,0,'a6248f9f221c236218daac9b789c8996',27,''),(4,1,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',2,'Nextcloud intro.mp4',6,5,3963036,1746537191,1746537191,0,0,'97b86d29268d2635b309c683272080b5',27,''),(5,1,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',2,'Nextcloud.png',8,7,50598,1746537191,1746537191,0,0,'41d147ca13a203d1344cfa02969eadde',27,''),(6,1,'files/Templates','530b342d0b8164ff3b4754c2273a453e',2,'Templates',2,1,238269,1746537192,1746537192,0,0,'681a0ae817cd3',31,''),(7,1,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',6,'SWOT analysis.whiteboard',9,3,38605,1746537191,1746537191,0,0,'cc0cffa31d39c548aabdf27aa980b435',27,''),(8,1,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',6,'Product plan.md',11,10,573,1746537191,1746537191,0,0,'b7903a03ac50a7224a3e540614c578f5',27,''),(9,1,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',6,'Org chart.odg',12,3,13878,1746537191,1746537191,0,0,'10d4baae9e7a1114ad76407f548ef54d',27,''),(10,1,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',6,'Business model canvas.odg',12,3,16988,1746537191,1746537191,0,0,'1dc31338be6685e4d3bce1cb6b89967e',27,''),(11,1,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',6,'Diagram & table.ods',13,3,13378,1746537191,1746537191,0,0,'b95531ea66c007ff07e69c3217945479',27,''),(12,1,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',6,'Simple.odp',14,3,14810,1746537191,1746537191,0,0,'c65fd23cee4a9a59e5451d5aebf63fa9',27,''),(13,1,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',6,'Readme.md',11,10,554,1746537191,1746537191,0,0,'dd55ba005700ef7cf3db696cb6dd6f5e',27,''),(14,1,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',6,'Mindmap.odg',12,3,13653,1746537191,1746537191,0,0,'6d393768b496b208bc45f7876e5f844b',27,''),(15,1,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',6,'Impact effort matrix.whiteboard',9,3,52674,1746537191,1746537191,0,0,'a79aaa0e9c9aebc1db307046d4c09cfa',27,''),(16,1,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',6,'Invoice.odt',15,3,17276,1746537191,1746537191,0,0,'ac74aa37fc737f2a33ae5e06981afab8',27,''),(17,1,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',6,'Elegant.odp',14,3,14316,1746537191,1746537191,0,0,'63f17a204b1ef7d5e6ec6a689b719eaf',27,''),(18,1,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',6,'Meeting notes.md',11,10,326,1746537192,1746537192,0,0,'6ec36901cf114ec2b9b25ea52e33cee3',27,''),(19,1,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',6,'Expense report.ods',13,3,13441,1746537192,1746537192,0,0,'35d5ff2e1d29a906adb87df00bf810f9',27,''),(20,1,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',6,'Letter.odt',15,3,15961,1746537192,1746537192,0,0,'022ce854f92378ae2db9fed41de70b14',27,''),(21,1,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',6,'Flowchart.odg',12,3,11836,1746537192,1746537192,0,0,'b6aafc5e3f2832e0073b918231b7b08d',27,''),(22,1,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',2,'Reasons to use Nextcloud.pdf',4,3,976625,1746537192,1746537192,0,0,'dfc1ff507300b6b139d86b9730201c25',27,''),(23,1,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',2,'Documents',2,1,399534,1746537192,1746537192,0,0,'681a0ae869973',31,''),(24,1,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',23,'Readme.md',11,10,136,1746537192,1746537192,0,0,'53a16d05d9433280b07b84fab63f3e44',27,''),(25,1,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',23,'Nextcloud flyer.pdf',4,3,374008,1746537192,1746537192,0,0,'f28776fee4d563155ec92ec1f10dd2c3',27,''),(26,1,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',23,'Welcome to Nextcloud Hub.docx',16,3,24295,1746537192,1746537192,0,0,'013c271fbf5876a388ea11a315303e84',27,''),(27,1,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',23,'Example.md',11,10,1095,1746537192,1746537192,0,0,'761ab6947756e2f6893e629b90d3029e',27,''),(28,1,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',2,'Photos',2,1,5656463,1746537192,1746537192,0,0,'681a0ae8cc71b',31,''),(29,1,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',28,'Nextcloud community.jpg',17,7,797325,1746537192,1746537192,0,0,'0f684b22f11c06a64f1b90c2de0d3622',27,''),(30,1,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',28,'Readme.md',11,10,150,1746537192,1746537192,0,0,'995420ebb7ee58a3b3726ed7dc339037',27,''),(31,1,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',28,'Frog.jpg',17,7,457744,1746537192,1746537192,0,0,'6ff94394f290bdddd7ab756b01feb605',27,''),(32,1,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',28,'Gorilla.jpg',17,7,474653,1746537192,1746537192,0,0,'0a057d2534bccb6389ffb97cecf0cd92',27,''),(33,1,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',28,'Toucan.jpg',17,7,167989,1746537192,1746537192,0,0,'87db72bae479594f028991269f6270c3',27,''),(34,1,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',28,'Steps.jpg',17,7,567689,1746537192,1746537192,0,0,'be950582b575782e5845b539130bb109',27,''),(35,1,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',28,'Vineyard.jpg',17,7,427030,1746537192,1746537192,0,0,'d1f764ff11cee3b89b926dfeb16b399a',27,''),(36,1,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',28,'Birdie.jpg',17,7,593508,1746537192,1746537192,0,0,'32b2cbf4069e1d439253f95999747bf4',27,''),(37,1,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',28,'Library.jpg',17,7,2170375,1746537192,1746537192,0,0,'3e06483e891bbb4394cea16fb146e0f6',27,''),(38,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1746537243,1746537243,0,0,'681a0b1b77a06',23,''),(39,2,'appdata_oc2g02diujsz','52ef96f2dc6c00ad51ea5a099eb19876',38,'appdata_oc2g02diujsz',2,1,0,1746537379,1746537379,0,0,'681a0aea96b51',31,''),(40,2,'appdata_oc2g02diujsz/js','22d915831b4d2d46a7d49c17f50f38e3',39,'js',2,1,0,1746537305,1746537305,0,0,'681a0aea9eada',31,''),(41,2,'appdata_oc2g02diujsz/js/core','4a9195ed34c2a6d16d675cc671c5189c',40,'core',2,1,0,1746537194,1746537194,0,0,'681a0aeaa2a17',31,''),(42,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js','48c513b9f9a78a43ea9079e202ff53b3',41,'merged-template-prepend.js',18,3,11942,1746537194,1746537194,0,0,'4dad45f3c60f5ae67d3d5cec225e5c78',27,''),(43,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.deps','e6f77688a738052365033db2281f1a66',41,'merged-template-prepend.js.deps',9,3,246,1746537194,1746537194,0,0,'c21224b32358674d66b31558631e304e',27,''),(44,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.gzip','7f7e74ed1e6c8624b128f91009507927',41,'merged-template-prepend.js.gzip',19,3,3054,1746537194,1746537194,0,0,'ccc4a1fd26f3efdda9fda01ef8f7ef51',27,''),(45,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1746537208,1746537208,0,0,'681a0af884e7d',31,''),(46,2,'appdata_oc2g02diujsz/css','071abe9537111f64b26bb65b0c0e6d4c',39,'css',2,1,0,1746537352,1746537352,0,0,'681a0af8bda63',31,''),(47,2,'appdata_oc2g02diujsz/css/icons','7b4bde147dba4ee23fd1f2619ab4cfcb',46,'icons',2,1,0,1746537209,1746537209,0,0,'681a0af8c4cf3',31,''),(48,2,'appdata_oc2g02diujsz/css/core','c5d8d00270b0ff902bd68b43a778d78d',46,'core',2,1,0,1746537209,1746537209,0,0,'681a0af8d54a9',31,''),(49,2,'appdata_oc2g02diujsz/css/icons/icons-vars.css','1f08b8bb4a6bfa4ae9e7eb2cc5023765',47,'icons-vars.css',20,10,226434,1746537352,1746537352,0,0,'049d4853fa72970886f2b9cda23a3a8a',27,''),(50,2,'appdata_oc2g02diujsz/css/icons/icons-list.template','7c373332246e16b28e6ecd4a072d83ab',47,'icons-list.template',9,3,20393,1746537352,1746537352,0,0,'529f1104cd5984b97af19700a1d01b86',27,''),(51,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css','912cc167ee8d0996a3f4e1f8c77964ae',48,'7fcc-235b-server.css',20,10,139049,1746537209,1746537209,0,0,'aa9de8348967fb5f28c6c377340629a0',27,''),(52,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.deps','a14887ddc50ea9780d7dddf7235dfd91',48,'7fcc-235b-server.css.deps',9,3,759,1746537209,1746537209,0,0,'e116b69c48b7eea59173ad075810eba2',27,''),(53,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.gzip','5c9d54f0d732602047ccb0e84978e90c',48,'7fcc-235b-server.css.gzip',19,3,19855,1746537209,1746537209,0,0,'6414c1b84fc753f4426fc834e55b57f2',27,''),(54,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css','6cf5f09bece8170e2831eef981a8a054',48,'7fcc-235b-css-variables.css',20,10,1820,1746537209,1746537209,0,0,'88d5ee0b8490e9ae6f0787e930d83bf3',27,''),(55,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.deps','e0e1c54ccb751bc4413dbb183aec26d5',48,'7fcc-235b-css-variables.css.deps',9,3,176,1746537209,1746537209,0,0,'5f99b3e214953dd04a40dee7d2399c0e',27,''),(56,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.gzip','9f373de7b62668096e541519a260e007',48,'7fcc-235b-css-variables.css.gzip',19,3,692,1746537209,1746537209,0,0,'66f5694d0d44c198fd7d3cb53359345a',27,''),(57,2,'appdata_oc2g02diujsz/css/dashboard','58bbac5519a8dcea8407561ad093648d',46,'dashboard',2,1,0,1746537209,1746537209,0,0,'681a0af9209ae',31,''),(58,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css','6eaca6edcb43bcd9eea351b9a67dc6c7',57,'1c83-235b-dashboard.css',20,10,2050,1746537209,1746537209,0,0,'b48ca3f051e85fd2c7b54a832ce7cab3',27,''),(59,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.deps','75b76e724179e178c6a0895f11c00f79',57,'1c83-235b-dashboard.css.deps',9,3,183,1746537209,1746537209,0,0,'0a130e9d574518d72022204c912869e8',27,''),(60,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.gzip','cff4420e83db4edb5e52a1d07c2e273d',57,'1c83-235b-dashboard.css.gzip',19,3,594,1746537209,1746537209,0,0,'98be0d32ad0a5ba6458688f8a82e5ba7',27,''),(61,2,'appdata_oc2g02diujsz/css/activity','1325e6e4ecea1a8cb7627331f8a3d48a',46,'activity',2,1,0,1746537209,1746537209,0,0,'681a0af92fd15',31,''),(62,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css','f03ed3e6f682557b473ea613e0a5463f',61,'6e52-235b-style.css',20,10,3353,1746537209,1746537209,0,0,'7385f575dad7e97590d5260b349d845f',27,''),(63,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.deps','569cfd50fffcb57465adea1711210015',61,'6e52-235b-style.css.deps',9,3,178,1746537209,1746537209,0,0,'318a3573782b30e40aa3e18dc5f777ba',27,''),(64,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.gzip','f5f9e84274afdceea22b41f31e2cf867',61,'6e52-235b-style.css.gzip',19,3,1108,1746537209,1746537209,0,0,'abfbb6895474534bdf9c99d360a72d06',27,''),(65,2,'appdata_oc2g02diujsz/css/text','d42a199a746c39cd47cf8ff369fd3a76',46,'text',2,1,0,1746537209,1746537209,0,0,'681a0af9489df',31,''),(66,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css','8dd37c5c485d5488a5afb7ed0d2ddff3',65,'8931-235b-icons.css',20,10,5861,1746537209,1746537209,0,0,'b5477a1893b4c9e485ad50c6c8601fa2',27,''),(67,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.deps','ee79003bd2647c31c2548f89cf7063af',65,'8931-235b-icons.css.deps',9,3,174,1746537209,1746537209,0,0,'2370f4e1dc95fec8e3fdd3abe166f884',27,''),(68,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.gzip','e76f3dbd7fc63c13909cb4a5615e7865',65,'8931-235b-icons.css.gzip',19,3,832,1746537209,1746537209,0,0,'66d57fa02b85abcc87a381ebf3dfc432',27,''),(69,2,'appdata_oc2g02diujsz/css/notifications','adc1801912516e34d43026c931c0104e',46,'notifications',2,1,0,1746537209,1746537209,0,0,'681a0af960a89',31,''),(70,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css','e50259b82be56d65c0c44bd4940747bb',69,'ae3e-235b-styles.css',20,10,5377,1746537209,1746537209,0,0,'ddfb43ccbd34a180ebdd4e4d38fe5160',27,''),(71,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.deps','f113f46878f2db70a5414759fe56a586',69,'ae3e-235b-styles.css.deps',9,3,184,1746537209,1746537209,0,0,'214a85efd82d7238c34ffd8da4ce8c23',27,''),(72,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.gzip','aed41b7bff5b15981df76c230e1e4ad1',69,'ae3e-235b-styles.css.gzip',19,3,1176,1746537209,1746537209,0,0,'69a569beb8775909d3840b992498d8d6',27,''),(73,2,'appdata_oc2g02diujsz/css/user_status','0484e40e3d96eb90993c62a1daca2715',46,'user_status',2,1,0,1746537209,1746537209,0,0,'681a0af9804c3',31,''),(74,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css','692204ec154b4a996e861f03f6ecca72',73,'1bf6-235b-user-status-menu.css',20,10,999,1746537209,1746537209,0,0,'ea08f01ae97bae63062e1618eff692c4',27,''),(75,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.deps','fa5fdd60583d18d61238d4df8b7091a5',73,'1bf6-235b-user-status-menu.css.deps',9,3,192,1746537209,1746537209,0,0,'34100a3de9af45a405c0fade56e4bb8e',27,''),(76,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.gzip','3a290aa7aa228ca4412462089644cbef',73,'1bf6-235b-user-status-menu.css.gzip',19,3,232,1746537209,1746537209,0,0,'df3fa74187d72f027c8a40e50c11d028',27,''),(77,2,'appdata_oc2g02diujsz/preview','0163211e22d3a82aa32fc48c2d5211c7',39,'preview',2,1,-1,1746537210,1746537210,0,0,'681a0afa7aeff',31,''),(78,2,'appdata_oc2g02diujsz/preview/1','b2b571c70cb7cc9380217f3c53478871',77,'1',2,1,-1,1746537210,1746537210,0,0,'681a0afa81c83',31,''),(79,2,'appdata_oc2g02diujsz/theming','763ca9db6b9a2dcb82c8c44e98b9eec1',39,'theming',2,1,0,1746537210,1746537210,0,0,'681a0afa89aeb',31,''),(80,2,'appdata_oc2g02diujsz/theming/0','ad1db720282b3fc29928da40b1f8bde3',79,'0',2,1,0,1746537210,1746537210,0,0,'681a0afa8ffc1',31,''),(81,2,'appdata_oc2g02diujsz/preview/1/f','94de0e456cc46bbe76482c17d437414c',78,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa961d5',31,''),(82,2,'appdata_oc2g02diujsz/preview/1/f/0','bc8238b7271f4fd1b1d5d06314702c0f',81,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa93940',31,''),(83,2,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_application-pdf.svg','2e7afe9769ad52ff7af49e7715474634',80,'icon-core-filetypes_application-pdf.svg',21,7,1054,1746537210,1746537210,0,0,'f785f7059194a30729acb8aa7a9ce1b5',27,''),(84,2,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_x-office-drawing.svg','1e180f71137928f4fc60137b2831e497',80,'icon-core-filetypes_x-office-drawing.svg',21,7,271,1746537210,1746537210,0,0,'7622bedab5af040df2102d5a1ca67140',27,''),(85,2,'appdata_oc2g02diujsz/preview/1/f/0/e','b2fcb1aadd854ded6758970ff7d92b8c',82,'e',2,1,-1,1746537210,1746537210,0,0,'681a0afa8df0a',31,''),(86,2,'appdata_oc2g02diujsz/preview/6','f9f95644f807a45436a82e3fc7f66fb0',77,'6',2,1,-1,1746537210,1746537210,0,0,'681a0afa9e42f',31,''),(87,2,'appdata_oc2g02diujsz/preview/9','025a211aa8eaf4359bda11684e33b4d2',77,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa9fddf',31,''),(88,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3','26d9d783cbadb2c8ee8d569339fa4dd8',85,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afa8a116',31,''),(89,2,'appdata_oc2g02diujsz/preview/6/f','13b13aa885a19097e5f9a2a63793f3b2',86,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa99b4b',31,''),(90,2,'appdata_oc2g02diujsz/preview/9/8','fffbb94e0b1af26ce0ca170b871ff6ad',87,'8',2,1,-1,1746537210,1746537210,0,0,'681a0afa9b61e',31,''),(91,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d','8a3107329bdb45ecea88249680c0a166',88,'d',2,1,-1,1746537210,1746537210,0,0,'681a0afa87741',31,''),(92,2,'appdata_oc2g02diujsz/preview/3','1a3aa98256a2d9d744e716ed0198b216',77,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afaa3793',31,''),(93,2,'appdata_oc2g02diujsz/preview/6/f/4','7644e951a39211ef1ef86ee21626ee4b',89,'4',2,1,-1,1746537210,1746537210,0,0,'681a0afa96acb',31,''),(94,2,'appdata_oc2g02diujsz/preview/9/8/f','f94c63cd02dfdb550877a171f0d899c0',90,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa98b81',31,''),(95,2,'appdata_oc2g02diujsz/preview/3/c','e9bd4a636e821ba8542ab23dfdf7d8a6',92,'c',2,1,-1,1746537210,1746537210,0,0,'681a0afaa0223',31,''),(96,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a','22a4bbc4f69c9b7bb43697a0105ee9ec',91,'a',2,1,-1,1746537210,1746537210,0,0,'681a0afa8312f',31,''),(97,2,'appdata_oc2g02diujsz/preview/6/f/4/9','aeebcf02d06c325de9245b816ab5f68c',93,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa9059f',31,''),(98,2,'appdata_oc2g02diujsz/preview/9/8/f/1','791a75adf5f75d39e7216411c5182716',94,'1',2,1,-1,1746537210,1746537210,0,0,'681a0afa957c5',31,''),(99,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2','b9db7339b82c5f1913f8c9dacf209efc',97,'2',2,1,-1,1746537210,1746537210,0,0,'681a0afa8c5e5',31,''),(100,2,'appdata_oc2g02diujsz/preview/3/c/5','4ad4bbe4efa1f0f39650e405ca488ac2',95,'5',2,1,-1,1746537210,1746537210,0,0,'681a0afa9b3ee',31,''),(101,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3','76360024f44cc115bb50f15b100de142',98,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afa905ab',31,''),(102,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19','5d67ae79a819649e42b2c146c4934ce1',96,'19',2,1,0,1746537210,1746537210,0,0,'681a0afa81d2a',31,''),(103,2,'appdata_oc2g02diujsz/preview/3/c/5/9','0ec1543a369d3bd8329b2f48365eceac',100,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa98c84',31,''),(104,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2','6106a2820bd20f50a924eb1f1009789d',99,'2',2,1,-1,1746537210,1746537210,0,0,'681a0afa89129',31,''),(105,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7','aff5aa3aeb9f7af49c3394037592adab',101,'7',2,1,-1,1746537210,1746537210,0,0,'681a0afa8c709',31,''),(106,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0','1637c033f0ac14b5c6f5a43dea40530a',105,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa8843d',31,''),(107,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d','9d3359349463e6229b4546d0a32e1e2f',103,'d',2,1,-1,1746537210,1746537210,0,0,'681a0afa961dc',31,''),(108,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f','f51cee41163c1ad1279220ef6c8c4b47',104,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa86c34',31,''),(109,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20','191061539b8d63bc46e857853d3bca92',106,'20',2,1,0,1746537210,1746537210,0,0,'681a0afa8718a',31,''),(110,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c','442512c283235d120dfebd0101bfa0df',107,'c',2,1,-1,1746537210,1746537210,0,0,'681a0afa905a7',31,''),(111,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18','7e3591222fdc9318aa33d6735e6a0d2f',108,'18',2,1,0,1746537211,1746537211,0,0,'681a0afa83640',31,''),(112,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0','96cd94a3f5173fb62df8721b14d9faae',110,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa8d8a6',31,''),(113,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21','e20cb0fc79d58072a98e8c6a684963ef',112,'21',2,1,0,1746537210,1746537210,0,0,'681a0afa8b1c3',31,''),(114,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20/181-256-max.png','663300af3ead3e9cb323bfc201d74444',109,'181-256-max.png',8,7,4052,1746537210,1746537210,0,0,'0776a75a81c9683b611c8a29bed32523',27,''),(115,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19/236-255-max.png','ed45488941049640fac4552f1f86f6a1',102,'236-255-max.png',8,7,4699,1746537210,1746537210,0,0,'0601c8bf5013c4180efaa0b6acc354d3',27,''),(116,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20/181-181-crop.png','c58423571b9b45506ad9e84c0a74f201',109,'181-181-crop.png',8,7,8626,1746537210,1746537210,0,0,'26208aedc446a74959475448a1190c4c',27,''),(117,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19/236-236-crop.png','618122c1cd8ddaa828957b4f6e1e8b6e',102,'236-236-crop.png',8,7,14704,1746537210,1746537210,0,0,'14bda03273d7d5a7f23dc34027b673e6',27,''),(118,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21/181-256-max.png','bebfe567c997e6ad3f9bf1160c853a47',113,'181-256-max.png',8,7,2564,1746537210,1746537210,0,0,'7342349890e542d614cef958fa4f5128',27,''),(119,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21/181-181-crop.png','30e6bea2ea6c9bdefb3a2e80c0242a93',113,'181-181-crop.png',8,7,5219,1746537210,1746537210,0,0,'cc9bfab3d980342d3db60f6d09fb0bb5',27,''),(120,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18/4096-4096-max.png','16b093b52606c449dfedd6441cb78855',111,'4096-4096-max.png',8,7,69461,1746537210,1746537210,0,0,'6013d45433fa0a6742f838d5b999947a',27,''),(121,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18/256-256-crop.png','7660a59fa5378b26ba59930f45d21320',111,'256-256-crop.png',8,7,12242,1746537211,1746537211,0,0,'87291d80a626719bc8101a6c88171b0e',27,''),(122,2,'appdata_oc2g02diujsz/css/settings','c072d18480f5e488c98f7c9c385b4d43',46,'settings',2,1,0,1746537227,1746537227,0,0,'681a0b0b48fd8',31,''),(123,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css','b891f6f7d0edcde62c044d0dcb64f34b',122,'ca9f-235b-settings.css',20,10,33292,1746537227,1746537227,0,0,'9f7c93dbaf27a4d169faec36afb7ecfa',27,''),(124,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css.deps','9e7a0feb8b7e0c92b288e1a4a9f8665f',122,'ca9f-235b-settings.css.deps',9,3,181,1746537227,1746537227,0,0,'ac684b4406d655bddef17d9f3c88ba4e',27,''),(125,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css.gzip','72236520aaa3787f1213f58fe5b7e284',122,'ca9f-235b-settings.css.gzip',19,3,6136,1746537227,1746537227,0,0,'52c00a999ee12ab8a4175653e5835b92',27,''),(126,2,'appdata_oc2g02diujsz/avatar','b663f67947cabc895a0fbd40f4c72a89',39,'avatar',2,1,0,1746537260,1746537260,0,0,'681a0b1c1dced',31,''),(127,2,'appdata_oc2g02diujsz/avatar/alice','c5a7b19f435e8b73e552073d2d1dd871',126,'alice',2,1,0,1746537244,1746537244,0,0,'681a0b1c27049',31,''),(130,2,'appdata_oc2g02diujsz/avatar/alice/avatar.png','596d73d769d6ecf2c4896b517ce89e6d',127,'avatar.png',8,7,15884,1746537244,1746537244,0,0,'594d2ca5d73f4cd6d2df36079e8857a4',27,''),(131,2,'appdata_oc2g02diujsz/avatar/alice/generated','7a990bf2e4d1db4902ea32e37d171fcb',127,'generated',9,3,0,1746537244,1746537244,0,0,'ecfea3385a57a9ac14e216dbe5104a2b',27,''),(132,3,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1746537244,1746537244,0,0,'681a0b1ccc713',23,''),(133,2,'appdata_oc2g02diujsz/avatar/bob','78ea10a20d5c38d936f68953191ed0c3',126,'bob',2,1,0,1746537260,1746537260,0,0,'681a0b2c66dee',31,''),(136,2,'appdata_oc2g02diujsz/avatar/bob/avatar.png','24036d5719ecbd30e1ee434ad8b5cee3',133,'avatar.png',8,7,13943,1746537260,1746537260,0,0,'a767d886c2b000c58ff0a5773e37f2d9',27,''),(137,2,'appdata_oc2g02diujsz/avatar/bob/generated','5fa22c1dbaa9ba8e54ce7e977583fdb2',133,'generated',9,3,0,1746537260,1746537260,0,0,'74c5a001eb23b5aed322d1339e5da16e',27,''),(138,4,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1746537261,1746537261,0,0,'681a0b2d110dd',23,''),(139,2,'appdata_oc2g02diujsz/appstore','58a0c6bb85894944b6601ecc08b730ca',39,'appstore',2,1,0,1746537294,1746537294,0,0,'681a0b4c99d9c',31,''),(140,2,'appdata_oc2g02diujsz/appstore/apps.json','4bd243d6f4647b525fbe407f77d6a861',139,'apps.json',23,3,2234154,1746537293,1746537293,0,0,'3bee5fd945a150abb208593f0405f556',27,''),(141,2,'appdata_oc2g02diujsz/appstore/categories.json','0a1c3fb56872190ae0fe4ca4bc540c20',139,'categories.json',23,3,164215,1746537294,1746537294,0,0,'ca1f8e27ac9688cfeaae1494c49427d4',27,''),(142,2,'appdata_oc2g02diujsz/js/files','aff6601e13325877edd96bba26d41dc2',40,'files',2,1,0,1746537305,1746537305,0,0,'681a0b5912c2c',31,''),(143,2,'appdata_oc2g02diujsz/js/files/merged-index.js','4bfac9394ff7e158f9a90a68c68366a3',142,'merged-index.js',18,3,421868,1746537305,1746537305,0,0,'40289ae7913f4cd34d5436ea7ac89c8b',27,''),(144,2,'appdata_oc2g02diujsz/js/files/merged-index.js.deps','4dd4fa14024df7db46fb4655d01e6b05',142,'merged-index.js.deps',9,3,2024,1746537305,1746537305,0,0,'9e2e361f00d11d5ba66e2ee79aa34bba',27,''),(145,2,'appdata_oc2g02diujsz/js/files/merged-index.js.gzip','54ea325bdf9aca9f45cb0ba8255deb0f',142,'merged-index.js.gzip',19,3,95539,1746537305,1746537305,0,0,'b88e017609c3a02109a033b88d95a89d',27,''),(146,2,'appdata_oc2g02diujsz/css/files','bdd7faab635688b26a80ceae5577db70',46,'files',2,1,0,1746537305,1746537305,0,0,'681a0b5925bff',31,''),(147,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css','542521f10ea5c0c16eb73c6cab8f05d6',146,'f244-235b-merged.css',20,10,30015,1746537305,1746537305,0,0,'38b48ec563078d72d2a5689013475970',27,''),(148,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css.deps','b0d47a22409e02b2bf5c31a2fdfb66b0',146,'f244-235b-merged.css.deps',9,3,480,1746537305,1746537305,0,0,'d46882fb8656cca3f78b62e8faa7d06b',27,''),(149,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css.gzip','912880bbb982991f339c23e089e20666',146,'f244-235b-merged.css.gzip',19,3,5872,1746537305,1746537305,0,0,'802628e223ed33cc4c76b72f0108cf01',27,''),(150,2,'appdata_oc2g02diujsz/css/files_sharing','c0bb5cd52df41f3bed1ad106854382dc',46,'files_sharing',2,1,0,1746537305,1746537305,0,0,'681a0b5941f63',31,''),(151,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css','0b8ad615b354421230386dc0da0510dc',150,'9b08-235b-icons.css',20,10,174,1746537305,1746537305,0,0,'8af87aa098ff4e488068dc43ff228119',27,''),(152,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css.deps','ebed97c6fbdb238663c88f3ec5d05ba7',150,'9b08-235b-icons.css.deps',9,3,183,1746537305,1746537305,0,0,'6db7e30b474fb0f55d3efe1377897ae4',27,''),(153,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css.gzip','a232788388d59c9454b85f68851667b1',150,'9b08-235b-icons.css.gzip',19,3,102,1746537305,1746537305,0,0,'df03864bc07e52a4bfb34b810f3355e8',27,''),(154,2,'appdata_oc2g02diujsz/css/contacts','598887234d72fc1d2c6ba6a11d1bf858',46,'contacts',2,1,0,1746537352,1746537352,0,0,'681a0b88754c3',31,''),(155,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css','ea08672252804ade4cea5760edcf5a35',154,'5441-235b-icons.css',20,10,3672,1746537352,1746537352,0,0,'0db44ae1eb458708698dd06d388fbf94',27,''),(156,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css.deps','1f91b92adc7915fc35bf97b8c28ecc58',154,'5441-235b-icons.css.deps',9,3,185,1746537352,1746537352,0,0,'f16b61e9d6e042baca7b6adc53e997a1',27,''),(157,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css.gzip','4fd1230909d23d1b3398aa401830b930',154,'5441-235b-icons.css.gzip',19,3,542,1746537352,1746537352,0,0,'c362629c1da9a6279df29cc28fbbed95',27,''),(158,2,'appdata_oc2g02diujsz/css/deck','667d45d49f5b5d255bcbb3ab7cedfc40',46,'deck',2,1,0,1746537352,1746537352,0,0,'681a0b888df0a',31,''),(159,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css','7270b47478801aeb9f228b6ba76e1b7d',158,'5c34-235b-deck.css',20,10,136,1746537352,1746537352,0,0,'a5669e85fdc8bdd66b3fbf9bdd2f538a',27,''),(160,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.deps','2a4300e416be9bcbb51be4bc53f51004',158,'5c34-235b-deck.css.deps',9,3,180,1746537352,1746537352,0,0,'8afdc821907627303a4e1c50e12d5e67',27,''),(161,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.gzip','b58466197ae987ee63528efb50174125',158,'5c34-235b-deck.css.gzip',19,3,84,1746537352,1746537352,0,0,'533b0fee7bb431f0e2cda6e949647173',27,''),(162,2,'appdata_oc2g02diujsz/external','b524cc2fb6fc17a7d0ecf42e267bd32e',39,'external',2,1,0,1746537379,1746537379,0,0,'681a0ba394c08',31,''),(163,2,'appdata_oc2g02diujsz/external/icons','45662671132104e65a3d9667e9d23aac',162,'icons',2,1,0,1746537379,1746537379,0,0,'681a0ba39c750',31,''),(164,2,'appdata_oc2g02diujsz/external/icons/external.svg','0fa6d8b7eb01c4401baf90e278ee7fef',163,'external.svg',21,7,1992,1746537379,1746537379,0,0,'439990e2d0395a8532d34a37983fe030',27,''),(165,2,'appdata_oc2g02diujsz/external/icons/external-dark.svg','3703a6334c03ee98c9924a03f40d7e39',163,'external-dark.svg',21,7,1992,1746537379,1746537379,0,0,'efb182b5fe5332eb5692841c43ddbac1',27,''),(166,2,'appdata_oc2g02diujsz/external/icons/settings.svg','0a3b27bbe04325b84337b120f02149e6',163,'settings.svg',21,7,1992,1746537379,1746537379,0,0,'7cc5c72f214b340ae177db2f32ffe926',27,'');
/*!40000 ALTER TABLE `oc_filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache_extended`
--

DROP TABLE IF EXISTS `oc_filecache_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) unsigned NOT NULL,
  `metadata_etag` varchar(40) DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT 0,
  `upload_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache_extended`
--

LOCK TABLES `oc_filecache_extended` WRITE;
/*!40000 ALTER TABLE `oc_filecache_extended` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filecache_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_trash`
--

DROP TABLE IF EXISTS `oc_files_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_files_trash` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) NOT NULL DEFAULT '',
  `user` varchar(64) NOT NULL DEFAULT '',
  `timestamp` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(512) NOT NULL DEFAULT '',
  `type` varchar(4) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_trash`
--

LOCK TABLES `oc_files_trash` WRITE;
/*!40000 ALTER TABLE `oc_files_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_checks`
--

DROP TABLE IF EXISTS `oc_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `operator` varchar(16) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_checks`
--

LOCK TABLES `oc_flow_checks` WRITE;
/*!40000 ALTER TABLE `oc_flow_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations`
--

DROP TABLE IF EXISTS `oc_flow_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `name` varchar(256) DEFAULT '',
  `checks` longtext DEFAULT NULL,
  `operation` longtext DEFAULT NULL,
  `entity` varchar(256) NOT NULL DEFAULT 'OCA\\WorkflowEngine\\Entity\\File',
  `events` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations`
--

LOCK TABLES `oc_flow_operations` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations_scope`
--

DROP TABLE IF EXISTS `oc_flow_operations_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `value` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations_scope`
--

LOCK TABLES `oc_flow_operations_scope` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_answers`
--

DROP TABLE IF EXISTS `oc_forms_v2_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_answers_submission` (`submission_id`),
  KEY `forms_answers_question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_answers`
--

LOCK TABLES `oc_forms_v2_answers` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_forms`
--

DROP TABLE IF EXISTS `oc_forms_v2_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text DEFAULT NULL,
  `owner_id` varchar(64) NOT NULL,
  `access_json` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` int(11) DEFAULT NULL COMMENT 'unix-timestamp',
  `expires` int(11) DEFAULT 0 COMMENT 'unix-timestamp',
  `is_anonymous` tinyint(1) DEFAULT 0,
  `submit_once` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueHash` (`hash`),
  KEY `forms_forms_owner` (`owner_id`),
  KEY `forms_forms_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_forms`
--

LOCK TABLES `oc_forms_v2_forms` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_options`
--

DROP TABLE IF EXISTS `oc_forms_v2_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_options_question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_options`
--

LOCK TABLES `oc_forms_v2_options` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_questions`
--

DROP TABLE IF EXISTS `oc_forms_v2_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `type` varchar(256) NOT NULL,
  `text` varchar(2048) NOT NULL,
  `is_required` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `forms_questions_form_order` (`form_id`,`order`),
  KEY `forms_questions_form` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_questions`
--

LOCK TABLES `oc_forms_v2_questions` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_submissions`
--

DROP TABLE IF EXISTS `oc_forms_v2_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `timestamp` int(11) DEFAULT NULL COMMENT 'unix-timestamp',
  PRIMARY KEY (`id`),
  KEY `forms_submissions_form` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_submissions`
--

LOCK TABLES `oc_forms_v2_submissions` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_admin`
--

DROP TABLE IF EXISTS `oc_group_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_admin`
--

LOCK TABLES `oc_group_admin` WRITE;
/*!40000 ALTER TABLE `oc_group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_user`
--

DROP TABLE IF EXISTS `oc_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_user`
--

LOCK TABLES `oc_group_user` WRITE;
/*!40000 ALTER TABLE `oc_group_user` DISABLE KEYS */;
INSERT INTO `oc_group_user` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_groups`
--

DROP TABLE IF EXISTS `oc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(255) NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_groups`
--

LOCK TABLES `oc_groups` WRITE;
/*!40000 ALTER TABLE `oc_groups` DISABLE KEYS */;
INSERT INTO `oc_groups` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_jobs`
--

DROP TABLE IF EXISTS `oc_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL DEFAULT '',
  `argument` varchar(4000) NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT 0,
  `last_checked` int(11) DEFAULT 0,
  `reserved_at` int(11) DEFAULT 0,
  `execution_duration` int(11) DEFAULT 0,
  `argument_hash` varchar(32) DEFAULT NULL,
  `time_sensitive` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`),
  KEY `job_lastcheck_reserved` (`last_checked`,`reserved_at`),
  KEY `job_argument_hash` (`class`,`argument_hash`),
  KEY `jobs_time_sensitive` (`time_sensitive`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_jobs`
--

LOCK TABLES `oc_jobs` WRITE;
/*!40000 ALTER TABLE `oc_jobs` DISABLE KEYS */;
INSERT INTO `oc_jobs` VALUES (1,'OCA\\Activity\\BackgroundJob\\EmailNotification','null',1746537195,1746537195,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(2,'OCA\\Activity\\BackgroundJob\\ExpireActivities','null',1746537210,1746537210,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(3,'OCA\\Activity\\BackgroundJob\\DigestMail','null',1746537227,1746537227,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(4,'OCA\\Files_Sharing\\DeleteOrphanedSharesJob','null',1746537293,1746537293,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(5,'OCA\\Files_Sharing\\ExpireSharesJob','null',1746537394,1746537394,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(6,'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob','null',1746537396,1746537396,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(7,'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob','null',0,1746537182,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(8,'OCA\\UpdateNotification\\Notification\\BackgroundJob','null',0,1746537182,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(9,'OCA\\Text\\Cron\\Cleanup','null',0,1746537183,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(10,'OCA\\NextcloudAnnouncements\\Cron\\Crawler','null',0,1746537183,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(11,'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions','null',0,1746537184,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(12,'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(13,'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(14,'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(15,'OCA\\DAV\\BackgroundJob\\EventReminderJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(16,'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(17,'OCA\\ServerInfo\\Jobs\\UpdateStorageStats','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(18,'OCA\\Federation\\SyncJob','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(19,'OCA\\Notifications\\BackgroundJob\\GenerateUserSettings','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(20,'OCA\\Notifications\\BackgroundJob\\SendNotificationMails','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(21,'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob','null',0,1746537187,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(22,'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash','null',0,1746537187,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(23,'OCA\\Circles\\Cron\\Maintenance','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(24,'OCA\\Files\\BackgroundJob\\ScanFiles','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(25,'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(26,'OCA\\Files\\BackgroundJob\\CleanupFileLocks','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(27,'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(28,'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(29,'OCA\\Support\\BackgroundJobs\\CheckSubscription','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(30,'OC\\Authentication\\Token\\TokenCleanupJob','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(31,'OC\\Log\\Rotate','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(32,'OC\\Preview\\BackgroundCleanupJob','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(33,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"admin\"}',0,1746537208,0,0,'b974bbc90ef800c3b1539ac4f2aeddb7',1),(34,'OCA\\Settings\\BackgroundJobs\\VerifyUserData','{\"verificationCode\":\"\",\"data\":\"\",\"type\":\"email\",\"uid\":\"alice\",\"try\":0,\"lastRun\":1746537244}',0,1746537244,0,0,'4b762008611200e52a663f32e4b729c6',1),(35,'OCA\\LookupServerConnector\\BackgroundJobs\\RetryJob','{\"userId\":\"alice\"}',0,1746537244,0,0,'877f54aa7d0f0e2f7ffbe419cd483926',1),(36,'OCA\\Settings\\BackgroundJobs\\VerifyUserData','{\"verificationCode\":\"\",\"data\":\"\",\"type\":\"email\",\"uid\":\"bob\",\"try\":0,\"lastRun\":1746537260}',0,1746537260,0,0,'7921eb39b694caf9cf51f8ee829e8db8',1),(37,'OCA\\LookupServerConnector\\BackgroundJobs\\RetryJob','{\"userId\":\"bob\"}',0,1746537260,0,0,'8d73e62cbe64348c3c47f92078fc643c',1),(38,'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob','null',0,1746537343,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(39,'OCA\\Contacts\\Cron\\SocialUpdateRegistration','null',0,1746537344,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(40,'OCA\\Deck\\Cron\\DeleteCron','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(41,'OCA\\Deck\\Cron\\ScheduledNotifications','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(42,'OCA\\Deck\\Cron\\CardDescriptionActivity','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(43,'OCA\\Mail\\BackgroundJob\\CleanupJob','null',0,1746537352,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(44,'OCA\\Mail\\BackgroundJob\\OutboxWorkerJob','null',0,1746537352,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(45,'OCA\\AdminAudit\\BackgroundJobs\\Rotate','null',0,1746537371,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(46,'OCA\\Files_External\\BackgroundJob\\CredentialsCleanup','null',0,1746537382,0,0,'37a6259cc0c1dae299a7866489dff0bd',1);
/*!40000 ALTER TABLE `oc_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_known_users`
--

DROP TABLE IF EXISTS `oc_known_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_known_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `known_to` varchar(255) NOT NULL,
  `known_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ku_known_to` (`known_to`),
  KEY `ku_known_user` (`known_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_known_users`
--

LOCK TABLES `oc_known_users` WRITE;
/*!40000 ALTER TABLE `oc_known_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_known_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_login_flow_v2`
--

DROP TABLE IF EXISTS `oc_login_flow_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) unsigned NOT NULL,
  `started` smallint(5) unsigned NOT NULL DEFAULT 0,
  `poll_token` varchar(255) NOT NULL,
  `login_token` varchar(255) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `app_password` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_login_flow_v2`
--

LOCK TABLES `oc_login_flow_v2` WRITE;
/*!40000 ALTER TABLE `oc_login_flow_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_login_flow_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_accounts`
--

DROP TABLE IF EXISTS `oc_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `inbound_host` varchar(64) NOT NULL DEFAULT '',
  `inbound_port` varchar(6) NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) NOT NULL DEFAULT '',
  `inbound_user` varchar(64) NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) DEFAULT NULL,
  `outbound_host` varchar(64) DEFAULT NULL,
  `outbound_port` varchar(6) DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) DEFAULT NULL,
  `outbound_user` varchar(64) DEFAULT NULL,
  `outbound_password` varchar(2048) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `last_mailbox_sync` int(11) NOT NULL DEFAULT 0,
  `editor_mode` varchar(64) NOT NULL DEFAULT 'plaintext',
  `order` int(11) NOT NULL DEFAULT 1,
  `show_subscribed_only` tinyint(1) DEFAULT 0,
  `personal_namespace` varchar(255) DEFAULT NULL,
  `drafts_mailbox_id` int(11) DEFAULT NULL,
  `sent_mailbox_id` int(11) DEFAULT NULL,
  `trash_mailbox_id` int(11) DEFAULT NULL,
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_host` varchar(64) DEFAULT NULL,
  `sieve_port` varchar(6) DEFAULT NULL,
  `sieve_ssl_mode` varchar(10) DEFAULT NULL,
  `sieve_user` varchar(64) DEFAULT NULL,
  `sieve_password` varchar(2048) DEFAULT NULL,
  `provisioning_id` int(11) DEFAULT NULL,
  `signature_above_quote` tinyint(1) DEFAULT 0,
  `auth_method` varchar(255) NOT NULL DEFAULT 'password',
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_accounts`
--

LOCK TABLES `oc_mail_accounts` WRITE;
/*!40000 ALTER TABLE `oc_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_aliases`
--

DROP TABLE IF EXISTS `oc_mail_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `signature` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_aliases`
--

LOCK TABLES `oc_mail_aliases` WRITE;
/*!40000 ALTER TABLE `oc_mail_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_attachments`
--

DROP TABLE IF EXISTS `oc_mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`),
  KEY `IDX_6C63D3AD31594979` (`local_message_id`),
  CONSTRAINT `attachment_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_attachments`
--

LOCK TABLES `oc_mail_attachments` WRITE;
/*!40000 ALTER TABLE `oc_mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_classifiers`
--

DROP TABLE IF EXISTS `oc_mail_classifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `estimator` varchar(255) NOT NULL,
  `app_version` varchar(31) NOT NULL,
  `training_set_size` int(11) NOT NULL,
  `validation_set_size` int(11) NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_classifiers`
--

LOCK TABLES `oc_mail_classifiers` WRITE;
/*!40000 ALTER TABLE `oc_mail_classifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_classifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_coll_addresses`
--

DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_coll_addresses`
--

LOCK TABLES `oc_mail_coll_addresses` WRITE;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_local_messages`
--

DROP TABLE IF EXISTS `oc_mail_local_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_local_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `account_id` int(11) NOT NULL,
  `alias_id` int(11) DEFAULT NULL,
  `send_at` int(11) DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` longtext NOT NULL,
  `html` tinyint(1) DEFAULT 0,
  `in_reply_to_message_id` text DEFAULT NULL,
  `failed` tinyint(1) DEFAULT 0,
  `editor_body` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_local_messages`
--

LOCK TABLES `oc_mail_local_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_local_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_local_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_mailboxes`
--

DROP TABLE IF EXISTS `oc_mail_mailboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `attributes` varchar(255) NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) DEFAULT NULL,
  `messages` int(11) NOT NULL,
  `unseen` int(11) NOT NULL,
  `selectable` tinyint(1) DEFAULT 0,
  `special_use` varchar(255) NOT NULL DEFAULT '[]',
  `sync_new_lock` int(11) DEFAULT NULL,
  `sync_changed_lock` int(11) DEFAULT NULL,
  `sync_vanished_lock` int(11) DEFAULT NULL,
  `sync_new_token` varchar(255) DEFAULT NULL,
  `sync_changed_token` varchar(255) DEFAULT NULL,
  `sync_vanished_token` varchar(255) DEFAULT NULL,
  `sync_in_background` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_22DEBD839B6B5FBA5E237E06` (`account_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_mailboxes`
--

LOCK TABLES `oc_mail_mailboxes` WRITE;
/*!40000 ALTER TABLE `oc_mail_mailboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_mailboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_message_tags`
--

DROP TABLE IF EXISTS `oc_mail_message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_message_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imap_message_id` varchar(1023) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_msg_imap_id_idx` (`imap_message_id`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_message_tags`
--

LOCK TABLES `oc_mail_message_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_message_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages`
--

DROP TABLE IF EXISTS `oc_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message_id` varchar(1023) DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL,
  `flag_answered` tinyint(1) DEFAULT 0,
  `flag_deleted` tinyint(1) DEFAULT 0,
  `flag_draft` tinyint(1) DEFAULT 0,
  `flag_flagged` tinyint(1) DEFAULT 0,
  `flag_seen` tinyint(1) DEFAULT 0,
  `flag_forwarded` tinyint(1) DEFAULT 0,
  `flag_junk` tinyint(1) DEFAULT 0,
  `flag_notjunk` tinyint(1) DEFAULT 0,
  `flag_attachments` tinyint(1) DEFAULT 0,
  `flag_important` tinyint(1) DEFAULT 0,
  `structure_analyzed` tinyint(1) DEFAULT 0,
  `preview_text` varchar(255) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `references` longtext DEFAULT NULL,
  `in_reply_to` varchar(1023) DEFAULT NULL,
  `thread_root_id` varchar(1023) DEFAULT NULL,
  `flag_mdnsent` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mail_messages_id_flags` (`mailbox_id`,`flag_important`,`flag_deleted`,`flag_seen`),
  KEY `mail_messages_id_flags2` (`mailbox_id`,`flag_deleted`,`flag_flagged`),
  KEY `mail_messages_mailbox_id` (`mailbox_id`),
  KEY `mail_msg_thrd_root_snt_idx` (`mailbox_id`,`thread_root_id`(64),`sent_at`),
  KEY `mail_messages_mb_id_uid` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages`
--

LOCK TABLES `oc_mail_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_provisionings`
--

DROP TABLE IF EXISTS `oc_mail_provisionings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_provisionings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provisioning_domain` varchar(63) NOT NULL DEFAULT '',
  `email_template` varchar(255) NOT NULL DEFAULT '',
  `imap_user` varchar(128) NOT NULL DEFAULT '',
  `imap_host` varchar(255) NOT NULL DEFAULT '',
  `imap_port` smallint(5) unsigned NOT NULL,
  `imap_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `smtp_user` varchar(128) NOT NULL DEFAULT '',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` smallint(5) unsigned NOT NULL,
  `smtp_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_user` varchar(128) DEFAULT NULL,
  `sieve_host` varchar(128) DEFAULT NULL,
  `sieve_port` smallint(5) unsigned DEFAULT NULL,
  `sieve_ssl_mode` varchar(64) DEFAULT NULL,
  `ldap_aliases_provisioning` tinyint(1) DEFAULT 0,
  `ldap_aliases_attribute` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_provsng_dm_idx` (`provisioning_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_provisionings`
--

LOCK TABLES `oc_mail_provisionings` WRITE;
/*!40000 ALTER TABLE `oc_mail_provisionings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_provisionings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_recipients`
--

DROP TABLE IF EXISTS `oc_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_recipients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`),
  KEY `IDX_715DB7E31594979` (`local_message_id`),
  CONSTRAINT `recipient_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_recipients`
--

LOCK TABLES `oc_mail_recipients` WRITE;
/*!40000 ALTER TABLE `oc_mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_tags`
--

DROP TABLE IF EXISTS `oc_mail_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `imap_label` varchar(64) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `color` varchar(9) DEFAULT '#fff',
  `is_default_tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_tags_usr_lbl_idx` (`user_id`,`imap_label`),
  KEY `mail_msg_tags_usr_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_tags`
--

LOCK TABLES `oc_mail_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_trusted_senders`
--

DROP TABLE IF EXISTS `oc_mail_trusted_senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_trusted_senders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'individual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_trusted_sender_uniq` (`email`,`user_id`),
  KEY `mail_trusted_senders_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_trusted_senders`
--

LOCK TABLES `oc_mail_trusted_senders` WRITE;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_migrations`
--

DROP TABLE IF EXISTS `oc_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_migrations`
--

LOCK TABLES `oc_migrations` WRITE;
/*!40000 ALTER TABLE `oc_migrations` DISABLE KEYS */;
INSERT INTO `oc_migrations` VALUES ('activity','2006Date20170808154933'),('activity','2006Date20170808155040'),('activity','2006Date20170919095939'),('activity','2007Date20181107114613'),('activity','2008Date20181011095117'),('activity','2010Date20190416112817'),('activity','2011Date20201006132544'),('activity','2011Date20201006132545'),('activity','2011Date20201006132546'),('activity','2011Date20201006132547'),('activity','2011Date20201207091915'),('calendar','2040Date20210908101001'),('calendar','3000Date20211109132439'),('calendar','3010Date20220111090252'),('circles','0022Date20220526111723'),('circles','0022Date20220526113601'),('circles','0022Date20220703115023'),('circles','0023Date20211216113101'),('circles','0024Date20220203123901'),('circles','0024Date20220203123902'),('circles','0024Date20220317190331'),('contactsinteraction','010000Date20200304152605'),('core','13000Date20170705121758'),('core','13000Date20170718121200'),('core','13000Date20170814074715'),('core','13000Date20170919121250'),('core','13000Date20170926101637'),('core','14000Date20180129121024'),('core','14000Date20180404140050'),('core','14000Date20180516101403'),('core','14000Date20180518120534'),('core','14000Date20180522074438'),('core','14000Date20180626223656'),('core','14000Date20180710092004'),('core','14000Date20180712153140'),('core','15000Date20180926101451'),('core','15000Date20181015062942'),('core','15000Date20181029084625'),('core','16000Date20190207141427'),('core','16000Date20190212081545'),('core','16000Date20190427105638'),('core','16000Date20190428150708'),('core','17000Date20190514105811'),('core','18000Date20190920085628'),('core','18000Date20191014105105'),('core','18000Date20191204114856'),('core','19000Date20200211083441'),('core','20000Date20201109081915'),('core','20000Date20201109081918'),('core','20000Date20201109081919'),('core','20000Date20201111081915'),('core','21000Date20201120141228'),('core','21000Date20201202095923'),('core','21000Date20210119195004'),('core','21000Date20210309185126'),('core','21000Date20210309185127'),('core','22000Date20210216080825'),('core','23000Date20210721100600'),('core','23000Date20210906132259'),('core','23000Date20210930122352'),('core','23000Date20211203110726'),('core','23000Date20211213203940'),('core','24000Date20211210141942'),('core','24000Date20211213081506'),('core','24000Date20211213081604'),('core','24000Date20211222112246'),('core','24000Date20211230140012'),('core','24000Date20220131153041'),('core','24000Date20220202150027'),('core','24000Date20220404230027'),('core','24000Date20220425072957'),('core','25000Date20220515204012'),('dav','1004Date20170825134824'),('dav','1004Date20170919104507'),('dav','1004Date20170924124212'),('dav','1004Date20170926103422'),('dav','1005Date20180413093149'),('dav','1005Date20180530124431'),('dav','1006Date20180619154313'),('dav','1006Date20180628111625'),('dav','1008Date20181030113700'),('dav','1008Date20181105104826'),('dav','1008Date20181105104833'),('dav','1008Date20181105110300'),('dav','1008Date20181105112049'),('dav','1008Date20181114084440'),('dav','1011Date20190725113607'),('dav','1011Date20190806104428'),('dav','1012Date20190808122342'),('dav','1016Date20201109085907'),('dav','1017Date20210216083742'),('dav','1018Date20210312100735'),('deck','1000Date20200306161713'),('deck','1000Date20200308073933'),('deck','10200Date20201111150114'),('deck','10800Date20220422061816'),('federatedfilesharing','1010Date20200630191755'),('federatedfilesharing','1011Date20201120125158'),('federation','1010Date20200630191302'),('files','11301Date20191205150729'),('files_external','1011Date20200630192246'),('files_external','1015Date20211104103506'),('files_external','1016Date20220324154536'),('files_external','22000Date20210216084416'),('files_sharing','11300Date20201120141438'),('files_sharing','21000Date20201223143245'),('files_sharing','22000Date20210216084241'),('files_sharing','24000Date20220208195521'),('files_sharing','24000Date20220404142216'),('files_trashbin','1010Date20200630192639'),('forms','0010Date20190000000007'),('forms','010102Date20200323120846'),('forms','010200Date20200323141300'),('forms','020002Date20200729205932'),('forms','020200Date20210120082018'),('forms','020202Date20210311150843'),('forms','020300Date20210403214012'),('forms','020300Date20210406114130'),('forms','020300Date20210406133704'),('forms','030000Date20220402100057'),('mail','0100Date20180825194217'),('mail','0110Date20180825195812'),('mail','0110Date20180825201241'),('mail','0130Date20190408134101'),('mail','0156Date20190828140357'),('mail','0161Date20190902103559'),('mail','0161Date20190902103701'),('mail','0161Date20190902114635'),('mail','0180Date20190927124207'),('mail','0190Date20191118160843'),('mail','0210Date20191212144925'),('mail','1020Date20191002091034'),('mail','1020Date20191002091035'),('mail','1020Date20200206134751'),('mail','1030Date20200228105714'),('mail','1040Date20200422130220'),('mail','1040Date20200422142920'),('mail','1040Date20200506111214'),('mail','1040Date20200515080614'),('mail','1040Date20200529124657'),('mail','1050Date20200624101359'),('mail','1050Date20200831124954'),('mail','1050Date20200921141700'),('mail','1050Date20200923180030'),('mail','1060Date20201015084952'),('mail','1080Date20201119084820'),('mail','1080Date20210108093802'),('mail','1090Date20210127160127'),('mail','1090Date20210216154409'),('mail','1096Date20210407150016'),('mail','1100Date20210304143008'),('mail','1100Date20210317164707'),('mail','1100Date20210326103929'),('mail','1100Date20210409091311'),('mail','1100Date20210419080523'),('mail','1100Date20210419121734'),('mail','1100Date20210421113423'),('mail','1100Date20210512142306'),('mail','1101Date20210616141806'),('mail','1105Date20210922104324'),('mail','1110Date20210908114229'),('mail','1115Date20211216144446'),('mail','1120Date20220223094709'),('mail','1124Date20220531094751'),('mail','1124Date20220601084530'),('mail','1130Date20220412111833'),('mail','1130Date20220520062301'),('mail','1140Date20220701103556'),('mail','1140Date20220808203258'),('mail','1140Date20221027171138'),('mail','1140Date20221113205737'),('mail','1140Date20221206162029'),('notifications','2004Date20190107135757'),('notifications','2010Date20210218082811'),('notifications','2010Date20210218082855'),('notifications','2011Date20210930134607'),('notifications','2011Date20220826074907'),('oauth2','010401Date20181207190718'),('oauth2','010402Date20190107124745'),('privacy','100Date20190217131943'),('text','010000Date20190617184535'),('text','030001Date20200402075029'),('text','030201Date20201116110353'),('text','030201Date20201116123153'),('text','030501Date20220202101853'),('twofactor_backupcodes','1002Date20170607104347'),('twofactor_backupcodes','1002Date20170607113030'),('twofactor_backupcodes','1002Date20170919123342'),('twofactor_backupcodes','1002Date20170926101419'),('twofactor_backupcodes','1002Date20180821043638'),('user_status','0001Date20200602134824'),('user_status','0002Date20200902144824'),('user_status','1000Date20201111130204'),('user_status','2301Date20210809144824'),('workflowengine','2000Date20190808074233'),('workflowengine','2200Date20210805101925');
/*!40000 ALTER TABLE `oc_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mimetypes`
--

DROP TABLE IF EXISTS `oc_mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mimetypes`
--

LOCK TABLES `oc_mimetypes` WRITE;
/*!40000 ALTER TABLE `oc_mimetypes` DISABLE KEYS */;
INSERT INTO `oc_mimetypes` VALUES (3,'application'),(18,'application/javascript'),(23,'application/json'),(9,'application/octet-stream'),(4,'application/pdf'),(12,'application/vnd.oasis.opendocument.graphics'),(14,'application/vnd.oasis.opendocument.presentation'),(13,'application/vnd.oasis.opendocument.spreadsheet'),(15,'application/vnd.oasis.opendocument.text'),(16,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(19,'application/x-gzip'),(1,'httpd'),(2,'httpd/unix-directory'),(7,'image'),(17,'image/jpeg'),(8,'image/png'),(21,'image/svg+xml'),(10,'text'),(20,'text/css'),(11,'text/markdown'),(5,'video'),(6,'video/mp4');
/*!40000 ALTER TABLE `oc_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mounts`
--

DROP TABLE IF EXISTS `oc_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage_id` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `mount_point` varchar(4000) NOT NULL,
  `mount_id` bigint(20) DEFAULT NULL,
  `mount_provider_class` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`),
  KEY `mount_user_storage` (`storage_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mounts`
--

LOCK TABLES `oc_mounts` WRITE;
/*!40000 ALTER TABLE `oc_mounts` DISABLE KEYS */;
INSERT INTO `oc_mounts` VALUES (1,1,1,'admin','/admin/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(2,3,132,'alice','/alice/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(3,4,138,'bob','/bob/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider');
/*!40000 ALTER TABLE `oc_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications`
--

DROP TABLE IF EXISTS `oc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) NOT NULL,
  `user` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `object_type` varchar(64) NOT NULL,
  `object_id` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `subject_parameters` longtext DEFAULT NULL,
  `message` varchar(64) DEFAULT NULL,
  `message_parameters` longtext DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `icon` varchar(4000) DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications`
--

LOCK TABLES `oc_notifications` WRITE;
/*!40000 ALTER TABLE `oc_notifications` DISABLE KEYS */;
INSERT INTO `oc_notifications` VALUES (1,'firstrunwizard','admin',1746537208,'app','groupfolders','apphint-groupfolders','[]','','[]','','','[]'),(2,'firstrunwizard','admin',1746537208,'app','notes','apphint-notes','[]','','[]','','','[]'),(4,'firstrunwizard','admin',1746537208,'app','tasks','apphint-tasks','[]','','[]','','','[]');
/*!40000 ALTER TABLE `oc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_pushhash`
--

DROP TABLE IF EXISTS `oc_notifications_pushhash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_pushhash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `token` int(11) NOT NULL DEFAULT 0,
  `deviceidentifier` varchar(128) NOT NULL,
  `devicepublickey` varchar(512) NOT NULL,
  `devicepublickeyhash` varchar(128) NOT NULL,
  `pushtokenhash` varchar(128) NOT NULL,
  `proxyserver` varchar(256) NOT NULL,
  `apptype` varchar(32) NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oc_npushhash_uid` (`uid`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_pushhash`
--

LOCK TABLES `oc_notifications_pushhash` WRITE;
/*!40000 ALTER TABLE `oc_notifications_pushhash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_pushhash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_settings`
--

DROP TABLE IF EXISTS `oc_notifications_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `batch_time` int(11) NOT NULL DEFAULT 0,
  `last_send_id` bigint(20) NOT NULL DEFAULT 0,
  `next_send_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notset_user` (`user_id`),
  KEY `notset_nextsend` (`next_send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_settings`
--

LOCK TABLES `oc_notifications_settings` WRITE;
/*!40000 ALTER TABLE `oc_notifications_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_access_tokens`
--

DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) NOT NULL,
  `encrypted_token` varchar(786) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_access_tokens`
--

LOCK TABLES `oc_oauth2_access_tokens` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_clients`
--

DROP TABLE IF EXISTS `oc_oauth2_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `client_identifier` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_clients`
--

LOCK TABLES `oc_oauth2_clients` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_preferences`
--

DROP TABLE IF EXISTS `oc_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) NOT NULL DEFAULT '',
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`userid`,`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_preferences`
--

LOCK TABLES `oc_preferences` WRITE;
/*!40000 ALTER TABLE `oc_preferences` DISABLE KEYS */;
INSERT INTO `oc_preferences` VALUES ('admin','activity','configured','yes'),('admin','core','lang','en'),('admin','core','templateDirectory','Templates/'),('admin','core','timezone','Europe/Vienna'),('admin','dashboard','firstRun','0'),('admin','firstrunwizard','apphint','18'),('admin','firstrunwizard','show','0'),('admin','login','lastLogin','1746537208'),('admin','login_token','79S+tisMZYQzF6mnvilhJVqsPkvrEkPp','1746537208'),('admin','password_policy','failedLoginAttempts','0'),('alice','avatar','generated','true'),('alice','avatar','version','1'),('alice','core','lang','en'),('alice','files','quota','default'),('bob','avatar','generated','true'),('bob','avatar','version','1'),('bob','core','lang','en'),('bob','files','quota','default');
/*!40000 ALTER TABLE `oc_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_privacy_admins`
--

DROP TABLE IF EXISTS `oc_privacy_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_privacy_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_privacy_admins`
--

LOCK TABLES `oc_privacy_admins` WRITE;
/*!40000 ALTER TABLE `oc_privacy_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_privacy_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile_config`
--

DROP TABLE IF EXISTS `oc_profile_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_profile_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `config` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_config_user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile_config`
--

LOCK TABLES `oc_profile_config` WRITE;
/*!40000 ALTER TABLE `oc_profile_config` DISABLE KEYS */;
INSERT INTO `oc_profile_config` VALUES (1,'admin','{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
/*!40000 ALTER TABLE `oc_profile_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_properties`
--

DROP TABLE IF EXISTS `oc_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) NOT NULL DEFAULT '',
  `propertypath` varchar(255) NOT NULL DEFAULT '',
  `propertyname` varchar(255) NOT NULL DEFAULT '',
  `propertyvalue` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`),
  KEY `properties_pathonly_index` (`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_properties`
--

LOCK TABLES `oc_properties` WRITE;
/*!40000 ALTER TABLE `oc_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ratelimit_entries`
--

DROP TABLE IF EXISTS `oc_ratelimit_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_ratelimit_entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hash` varchar(128) NOT NULL,
  `delete_after` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratelimit_hash` (`hash`),
  KEY `ratelimit_delete_after` (`delete_after`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ratelimit_entries`
--

LOCK TABLES `oc_ratelimit_entries` WRITE;
/*!40000 ALTER TABLE `oc_ratelimit_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ratelimit_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_reactions`
--

DROP TABLE IF EXISTS `oc_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_reactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `reaction` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_reaction_unique` (`parent_id`,`actor_type`,`actor_id`,`reaction`),
  KEY `comment_reaction` (`reaction`),
  KEY `comment_reaction_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_reactions`
--

LOCK TABLES `oc_reactions` WRITE;
/*!40000 ALTER TABLE `oc_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recent_contact`
--

DROP TABLE IF EXISTS `oc_recent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_recent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) NOT NULL,
  `uid` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `federated_cloud_id` varchar(255) DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recent_contact`
--

LOCK TABLES `oc_recent_contact` WRITE;
/*!40000 ALTER TABLE `oc_recent_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recent_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_schedulingobjects`
--

DROP TABLE IF EXISTS `oc_schedulingobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_schedulingobjects`
--

LOCK TABLES `oc_schedulingobjects` WRITE;
/*!40000 ALTER TABLE `oc_schedulingobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_schedulingobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share`
--

DROP TABLE IF EXISTS `oc_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT 0,
  `share_with` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid_owner` varchar(64) NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) NOT NULL DEFAULT '',
  `item_source` varchar(255) DEFAULT NULL,
  `item_target` varchar(255) DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT 0,
  `stime` bigint(20) NOT NULL DEFAULT 0,
  `accepted` smallint(6) NOT NULL DEFAULT 0,
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT 0,
  `share_name` varchar(64) DEFAULT NULL,
  `password_by_talk` tinyint(1) DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `hide_download` smallint(6) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `password_expiration_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share`
--

LOCK TABLES `oc_share` WRITE;
/*!40000 ALTER TABLE `oc_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share_external`
--

DROP TABLE IF EXISTS `oc_share_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share_external` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) DEFAULT -1,
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  `share_token` varchar(64) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(4000) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `user` varchar(64) NOT NULL,
  `mountpoint` varchar(4000) NOT NULL,
  `mountpoint_hash` varchar(32) NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share_external`
--

LOCK TABLES `oc_share_external` WRITE;
/*!40000 ALTER TABLE `oc_share_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages`
--

DROP TABLE IF EXISTS `oc_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(64) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages`
--

LOCK TABLES `oc_storages` WRITE;
/*!40000 ALTER TABLE `oc_storages` DISABLE KEYS */;
INSERT INTO `oc_storages` VALUES (1,'home::admin',1,NULL),(2,'local::/var/www/html/data/',1,NULL),(3,'home::alice',1,NULL),(4,'home::bob',1,NULL);
/*!40000 ALTER TABLE `oc_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages_credentials`
--

DROP TABLE IF EXISTS `oc_storages_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages_credentials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) DEFAULT NULL,
  `identifier` varchar(64) NOT NULL,
  `credentials` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocred_ui` (`user`,`identifier`),
  KEY `stocred_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages_credentials`
--

LOCK TABLES `oc_storages_credentials` WRITE;
/*!40000 ALTER TABLE `oc_storages_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_storages_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag`
--

DROP TABLE IF EXISTS `oc_systemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT 1,
  `editable` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag`
--

LOCK TABLES `oc_systemtag` WRITE;
/*!40000 ALTER TABLE `oc_systemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_group`
--

DROP TABLE IF EXISTS `oc_systemtag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `gid` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_group`
--

LOCK TABLES `oc_systemtag_group` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_object_mapping`
--

DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) NOT NULL DEFAULT '',
  `objecttype` varchar(64) NOT NULL DEFAULT '',
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`objecttype`,`objectid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_object_mapping`
--

LOCK TABLES `oc_systemtag_object_mapping` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_documents`
--

DROP TABLE IF EXISTS `oc_text_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_documents` (
  `id` bigint(20) unsigned NOT NULL,
  `current_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version_time` bigint(20) unsigned NOT NULL,
  `last_saved_version_etag` varchar(64) DEFAULT '',
  `base_version_etag` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_documents`
--

LOCK TABLES `oc_text_documents` WRITE;
/*!40000 ALTER TABLE `oc_text_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_sessions`
--

DROP TABLE IF EXISTS `oc_text_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `guest_name` varchar(64) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rd_session_token_idx` (`token`),
  KEY `ts_lastcontact` (`last_contact`),
  KEY `ts_docid_lastcontact` (`document_id`,`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_sessions`
--

LOCK TABLES `oc_text_sessions` WRITE;
/*!40000 ALTER TABLE `oc_text_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_steps`
--

DROP TABLE IF EXISTS `oc_text_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `session_id` bigint(20) unsigned NOT NULL,
  `data` longtext NOT NULL,
  `version` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rd_steps_did_idx` (`document_id`),
  KEY `rd_steps_version_idx` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_steps`
--

LOCK TABLES `oc_text_steps` WRITE;
/*!40000 ALTER TABLE `oc_text_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_trusted_servers`
--

DROP TABLE IF EXISTS `oc_trusted_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  `url_hash` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `shared_secret` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `sync_token` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_trusted_servers`
--

LOCK TABLES `oc_trusted_servers` WRITE;
/*!40000 ALTER TABLE `oc_trusted_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_trusted_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_backupcodes`
--

DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(128) NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_backupcodes`
--

LOCK TABLES `oc_twofactor_backupcodes` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_providers`
--

DROP TABLE IF EXISTS `oc_twofactor_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_providers`
--

LOCK TABLES `oc_twofactor_providers` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_providers` DISABLE KEYS */;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes','admin',0);
/*!40000 ALTER TABLE `oc_twofactor_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_status`
--

DROP TABLE IF EXISTS `oc_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_timestamp` int(10) unsigned NOT NULL,
  `is_user_defined` tinyint(1) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `custom_icon` varchar(255) DEFAULT NULL,
  `custom_message` longtext DEFAULT NULL,
  `clear_at` int(10) unsigned DEFAULT NULL,
  `is_backup` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_status`
--

LOCK TABLES `oc_user_status` WRITE;
/*!40000 ALTER TABLE `oc_user_status` DISABLE KEYS */;
INSERT INTO `oc_user_status` VALUES (1,'admin','online',1746537210,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_transfer_owner`
--

DROP TABLE IF EXISTS `oc_user_transfer_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) NOT NULL,
  `target_user` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_transfer_owner`
--

LOCK TABLES `oc_user_transfer_owner` WRITE;
/*!40000 ALTER TABLE `oc_user_transfer_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_user_transfer_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_users`
--

DROP TABLE IF EXISTS `oc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_users` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(64) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `uid_lower` varchar(64) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_users`
--

LOCK TABLES `oc_users` WRITE;
/*!40000 ALTER TABLE `oc_users` DISABLE KEYS */;
INSERT INTO `oc_users` VALUES ('admin',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$eHcxNVNIbjlTbThKSHlsNQ$RX1I0+gCcyiEJynxex0y2vKilrWzpNJO4ES2AG8Kf+c','admin'),('alice','Alice','3|$argon2id$v=19$m=65536,t=4,p=1$YWczLjVVZmR6b2JDQzlpYQ$Wmf4prXhd+oqGxyj/+41DJmrJd9Ky5JV9UTgF0zjrQE','alice'),('bob','Bob','3|$argon2id$v=19$m=65536,t=4,p=1$cWYzQ2wuR0RSRGVMOEZFLg$IYTJNQPuSy9UIjhqb+hEoSn30Lb8dZ5dgSMFPxGtR3U','bob');
/*!40000 ALTER TABLE `oc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory`
--

DROP TABLE IF EXISTS `oc_vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory`
--

LOCK TABLES `oc_vcategory` WRITE;
/*!40000 ALTER TABLE `oc_vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory_to_object`
--

DROP TABLE IF EXISTS `oc_vcategory_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `categoryid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory_to_object`
--

LOCK TABLES `oc_vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `oc_vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_webauthn`
--

DROP TABLE IF EXISTS `oc_webauthn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_webauthn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `public_key_credential_id` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_webauthn`
--

LOCK TABLES `oc_webauthn` WRITE;
/*!40000 ALTER TABLE `oc_webauthn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_webauthn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_whats_new`
--

DROP TABLE IF EXISTS `oc_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_whats_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) NOT NULL DEFAULT '11',
  `etag` varchar(64) NOT NULL DEFAULT '',
  `last_check` int(10) unsigned NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_whats_new`
--

LOCK TABLES `oc_whats_new` WRITE;
/*!40000 ALTER TABLE `oc_whats_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_whats_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 13:20:16
