CREATE DATABASE  IF NOT EXISTS `lspu_website_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lspu_website_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lspu_website_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add student',7,'add_student'),(26,'Can change student',7,'change_student'),(27,'Can delete student',7,'delete_student'),(28,'Can view student',7,'view_student'),(29,'Can add table_status',8,'add_table_status'),(30,'Can change table_status',8,'change_table_status'),(31,'Can delete table_status',8,'delete_table_status'),(32,'Can view table_status',8,'view_table_status'),(33,'Can add history',9,'add_history'),(34,'Can change history',9,'change_history'),(35,'Can delete history',9,'delete_history'),(36,'Can view history',9,'view_history');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$AFn7nTSAPsXSjKWlHfwUSL$Sa4vPYEREtL+odf6WDBcqtuCdZlgi/gmj4N+PIFso8k=','2023-12-04 01:38:09.793960',1,'Admin','','','',1,1,'2023-11-28 16:27:24.331171'),(2,'pbkdf2_sha256$600000$68wuvs32E6chMcVQSYCRzv$GCJtUR2jHidwr/e8Db79HR/JTOE2KqS4CvbgvWfruFo=','2023-12-03 16:07:53.342256',1,'test','','','justinjohnmico.09@gmail.com',1,1,'2023-12-03 16:07:32.055591');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'LSPU_Library_Website','history'),(7,'LSPU_Library_Website','student'),(8,'LSPU_Library_Website','table_status'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-28 16:20:33.757403'),(2,'auth','0001_initial','2023-11-28 16:20:34.110185'),(3,'admin','0001_initial','2023-11-28 16:20:34.201472'),(4,'admin','0002_logentry_remove_auto_add','2023-11-28 16:20:34.210925'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-28 16:20:34.218903'),(6,'contenttypes','0002_remove_content_type_name','2023-11-28 16:20:34.291232'),(7,'auth','0002_alter_permission_name_max_length','2023-11-28 16:20:34.334726'),(8,'auth','0003_alter_user_email_max_length','2023-11-28 16:20:34.353653'),(9,'auth','0004_alter_user_username_opts','2023-11-28 16:20:34.360467'),(10,'auth','0005_alter_user_last_login_null','2023-11-28 16:20:34.398772'),(11,'auth','0006_require_contenttypes_0002','2023-11-28 16:20:34.401765'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-28 16:20:34.408746'),(13,'auth','0008_alter_user_username_max_length','2023-11-28 16:20:34.453114'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-28 16:20:34.498570'),(15,'auth','0010_alter_group_name_max_length','2023-11-28 16:20:34.515748'),(16,'auth','0011_update_proxy_permissions','2023-11-28 16:20:34.523364'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-28 16:20:34.567712'),(18,'sessions','0001_initial','2023-11-28 16:20:34.594911'),(19,'LSPU_Library_Website','0001_initial','2023-11-29 01:32:29.616063'),(20,'LSPU_Library_Website','0002_table_status','2023-11-29 12:01:35.202041'),(21,'LSPU_Library_Website','0003_table_status_table_id','2023-11-29 12:23:54.569571'),(22,'LSPU_Library_Website','0004_history','2023-11-29 14:52:16.378074'),(23,'LSPU_Library_Website','0005_rename_student_college_history_student_department','2023-11-29 14:56:53.238500'),(24,'LSPU_Library_Website','0006_alter_table_status_status','2023-12-02 05:02:40.489742');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('i9wfe6o0eme7ogvl7k9mskdx3v363xyi','.eJxVjDsOwyAQBe9CHSGDvXxSpvcZ0C4swUmEJWNXUe4eIblI2jcz7y0CHnsJR-MtLElchRKX340wPrl2kB5Y76uMa923hWRX5EmbnNfEr9vp_h0UbKXXBjna7A07ZVmx1YQ-giGXNdlJJc_g42DzOBLwhDlBNN4rsuBADyw-XwOOOFM:1r8HAJ:Ry8SZBgaqrv8LpeQT9owe32vYYvSm-12F1xnhYpX4ZA','2023-12-13 09:47:31.971347'),('pl8ca8v9app2ubi3yogbjq82y6les7xu','.eJxVjDsOwyAQBe9CHSGDvXxSpvcZ0C4swUmEJWNXUe4eIblI2jcz7y0CHnsJR-MtLElchRKX340wPrl2kB5Y76uMa923hWRX5EmbnNfEr9vp_h0UbKXXBjna7A07ZVmx1YQ-giGXNdlJJc_g42DzOBLwhDlBNN4rsuBADyw-XwOOOFM:1r8Js1:rsDR1N29u3OuzgByCD1ZC0jCxoUEXCyev7sD1kPfFog','2023-12-13 12:40:49.652378');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspu_library_website_history`
--

DROP TABLE IF EXISTS `lspu_library_website_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspu_library_website_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_of_entry` date NOT NULL,
  `student_full_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `student_department` varchar(50) NOT NULL,
  `student_course` varchar(50) NOT NULL,
  `purpose_of_entry` varchar(200) NOT NULL,
  `time_of_entry` time(6) NOT NULL,
  `time_of_out` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspu_library_website_history`
--

LOCK TABLES `lspu_library_website_history` WRITE;
/*!40000 ALTER TABLE `lspu_library_website_history` DISABLE KEYS */;
INSERT INTO `lspu_library_website_history` VALUES (1,'2023-12-01','Rendon Villarica','1457-6756','CBAA','Bachelor of Science in Accountancy','Reading Area','22:18:34.903501',NULL),(2,'2023-12-01','Peter Parker','3000-0000','CBAA','Bachelor of Office Administration','Reading Area','22:19:26.128893',NULL),(3,'2023-12-02','Doja','5234-3423','CCJE','Bachelor of Science in Criminology','Internet Computer Area','02:09:33.854324',NULL),(4,'2023-12-03','Shin','1101-0113','CCS','Bachelor of Science in Computer Science','book','18:57:52.020146',NULL),(5,'2023-12-03','Kate Gillian','1142-2142','CCJE','Bachelor of Science in Criminology','periodicals','19:18:02.539640',NULL),(6,'2023-12-03','Arthur','1124-2412','CAS','Bachelor of Science in Chemistry','book','19:23:51.640168',NULL),(7,'2023-12-03','Arthur','1124-2412','CAS','Bachelor of Science in Chemistry','book','19:24:13.558439',NULL),(8,'2023-12-03','Doja','4423-3523','CBAA','Bachelor of Science in Accountancy','book','20:17:08.863326',NULL),(9,'2023-12-03','Doja','4423-3523','CBAA','Bachelor of Science in Accountancy','book','20:18:02.955846',NULL),(10,'2023-12-03','Doja','4423-3523','CBAA','Bachelor of Science in Accountancy','book','20:19:21.118473',NULL),(11,'2023-12-03','','','','','book','20:53:42.908307',NULL),(12,'2023-12-03','','','','','book','20:59:31.306359',NULL),(13,'2023-12-03','Manuel','1101-0112','CCS','Bachelor of Science in Computer Science','periodicals','21:01:51.834109',NULL),(14,'2023-12-03','Charlie Puth','1102-0031','CAS','Bachelor of Science in Biology','book','21:03:13.870557',NULL),(15,'2023-12-04','Kate','1431-1241','CBAA','Bachelor of Science in Accountancy','periodicals','00:20:50.973095',NULL),(16,'2023-12-04','Paul Gonzaldoo','2131-1231','CBAA','Bachelor of Science in Entrepreneurship','periodicals','08:10:27.357636',NULL),(17,'2023-12-04','','','','','thesis','09:39:15.382683',NULL);
/*!40000 ALTER TABLE `lspu_library_website_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspu_library_website_student`
--

DROP TABLE IF EXISTS `lspu_library_website_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspu_library_website_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_full_name` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_department` varchar(50) NOT NULL,
  `student_course` varchar(50) NOT NULL,
  `student_year` int NOT NULL,
  `student_qrcode_image` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspu_library_website_student`
--

LOCK TABLES `lspu_library_website_student` WRITE;
/*!40000 ALTER TABLE `lspu_library_website_student` DISABLE KEYS */;
INSERT INTO `lspu_library_website_student` VALUES (1,'Paul','1101-0111','CCS','Bachelor of Science in Computer Science',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0|IDATxœ\íšAnƒ0Eß¯‘º$R£˜+÷p#¼Œú]`B\ÚM»!ğ,ÀXOò\×xø\È#dş\î\ãªP…*T¡öN)G…š$MIR³©®cS\Õt‹-@ºb˜\0´•®3Q)×¸t›²¤j{]\'£‚Õ¼v\ÅBMûQn_¹\âi©\ÙVj	\Ü	¿\àùĞµWõ\ïM\å\Üw\ÓG5 \Ø_Á¨mušr¿Ô¸\á®ü\Zl©\ë¶\í<\êÃœò\Ú‚‰¶\İ\îUı(·µMw»\ÏN“$»\ß\\×±©\\÷± \êašs»Œöªş½©\ÙsjOi\'z\È\î=P<gE\êQ\ãvöû\Ú^6 \ÔıŠT\Îı#ò\Ü\Ó.”Ü¯K-}L·€šz\0’ôƒz½®cSó·\Ö\Ùsf§\È>T\ê~uj\îc\Ò]@Ò§±ô\ï×¤ª_Ï‚Q&]dR5x÷ªşpT°\ZB>\×\îH\×\á¨\ß}L¨{\Ü\İ\îr\\z:{Uª“$]–ù`5K3s\ç\êß”Rù7ªP…*T¡NA}¾±\Ü\'Hö˜s\0\0\0\0IEND®B`‚'),(2,'Edrian','1101-0112','CAS','Bachelor of Science in Biology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ƒIDATxœ\í˜Anƒ0E\ß\ÔH]‚”ô(pt8Jo`/+9ú]Ø¦Iºh%¤a¼°ó$†\ÑğMü¼–—_@\à”SN9\åÔ£SVW\Ëp6›R;™v\Õuj”$E€Ô¡™ I\Ò5u]‡ R­q›úLy2\ëö\×u$Js\Û\îu£S\ë\Z\ß_e\Ó=o<,\Õ\ÚJ/ ô¹œ\\şt=ªú§ 33À¦\ÔœË˜³·®§¦J\İ_\Ôøòöaõ3\ØS\×¨’{ƒk‘§-2¤S\ŞM\×(TWFsŸ[)aü\çGUÿ¿©\Ë\Ü+I1ˆQclo=÷›Pk¡1*·_\Ú\èu¿=\Õ*› \Z\Æ Æ¯\Ís¿µö]8¥óµ\Ïı&\Ô:\ç\0\Ú`“:Œ>¸—¶%U*»ù˜k²ûLiú^÷\ÛSiõ\êÍ©š:õ\ì\Ñ\ÕÿOª»‰E:e\Æxj\áNºHUÿ¾ÿ0–!4Gs]\ÏH}ó1—!\"\ÒIÀÙ½´;P«\Éø\Şa`Szõ9gK\ê\Ö\Ç\ä\ëm]N9\å”SNı-õ	\î7HúóK\0\0\0\0IEND®B`‚'),(3,'Neil','1101-0113','COE','Bachelor of Science in Electrical Engineering',4,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0’IDATxœ\í˜An\ä D\ß–²\ÄR GÁW\Î\r\ÌQúf‰V\Í\èt’\Å\Ìb\ÜtÚ°@6~’K\èû»(ñ\å Ô 5¨A=:euL\ç‹Ù’\Ú\Ê\ÒU\×!¨ I\Ú\0Ò„Vœ$I_©û\ë:•j\Û\â3\å\Êl\ê¯\ëH”\Ö6\İëƒºp~•-÷|\ãa©\ÖV¼€\àsY¹=t=ªú§ ¢™™\Í`Kš\0.\Å\æô\Öõ\ÔT©û›\ZoV?ƒº@•½7p¹yšP4—!r7]G ø´ñ’2„\Í§¯\Õ\çjü\×GUÿ»©²÷ulNZ½DD\Ø\ÚÓ±÷»P­\çø\r»±8iFñ-O\Ö>º@Õ6J’\0^\"l®M£\îw£¾ôI\å\Ú\êñyôœ=©«\ÏÀe¢“\ïF–¶\'\ÕzNû\×\Ös­\Ï³3\ê~ªå˜„ó„\ÖTC²öğ\ê\'5}»Wœ]&l§z\ÛK\×)[\0[ü‡g\×\Íşº‘ú‘c†÷\"\\F–¶\'u“)Pşş>\Ô÷Su\Ê×©®A\rjPƒ\Z\Ôÿ¥ş\0\É\äqQÔ–\0\0\0\0IEND®B`‚'),(4,'Trish','1101-0114','CHMT','Bachelor of Science in Tourism Management',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜Aj\Ã0E\ßT†,\ÈrùÊ½}”\ŞÀZ~’M\Ò.\ÚE¥ñh!,ñ@Ÿ\á{4\Z?\é\í8\å”SN9õ\ì”\Õ\ÑÁt¼š\ri\Ùš\ê\Ú%I3@\ê\ĞH$\éz¼®]P©zÜ†>S¾ÌºöºöDi\\¦G\è\Ô:\â\ÇA6<ò\Ä\İRKZ\é$€>—\ÛG×³ª	j23³#Ø:€k)sZ\ëziªøş\Æ\ã\Óùbõ7h©kT‰½A\È\Õ\ä©C“…é”›\é\ÚE©\ãG@cŸ!Î¡Túu)Iã³ªÿ\ßT‰=Q\â\Z{‰(©,\å±ßŒZ¢»z\\\Ë\×}¿5µ>]ƒ˜,\ä’ù\ã{\È?²Vºö@¡û}.–/“\çœ\í¨µ\Î dH‚÷Ò¶¤Ö»V’\æPo]úLIú\îû\í©¥\Éd\ZSmê”½§Wÿ?©\î\ËZ¤S&Î§e\ÙH\×)³sÆ†şbLÇ°t4\Û\ëzE\ê{“b~W\ï¥=€Zû˜@\Íò6”b§©®—¦¾ö1U§¼Nmt9\å”SN9õ·\Ô\'\Z‘\Û]Õ©*\0\0\0\0IEND®B`‚'),(5,'Joyce','1101-0115','CCS','Bachelor of Science in Computer Science',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0~IDATxœ\í˜Mj\Ã0…¿©\rYÚô(ö\Ír5û(¹µ(¼.$™¤]´‹ú\'ñh1X\â=†‘4~&~\ã\Ç p\Ê)§œrj\ï”\åQ\Ã\Ø\Ş\ÍúPVúMu‚\ê$I@¨\Ñ@%I\Ò3µ¾®CP!×¸õM$}™\Õ\Û\ë:¥¡„µvtj\İõ$\ë\×\Üñ°T¹V\Z ‰i\åñ§k¯\êß‚\Z\ÍÌ¬\ëC\rpOm\ÎÖºŞšJuÿP\ã\ã\ç\Íò1\ØR\×¨”{ƒ*\æ\"5\Z­Š\Îq3]G Hm|§ˆ”B\îô5417ş\Ã^Õ¿65\ç^¢›@šª§©\ç~1ª\ä~hbÊ½\×ıªTP§/\ë©d—\ë\É=…%©rÁ—‘nš¡‰\äc\àu¿0õ\äc„“4Py\İ/I=¼µù™ \ÜüşÖ®B…Ù«4„l\êäµ½«Mªş6\×\ØV‘n:\ç\éVºH\Ùeë››1¶Uq4·\×õ\ÔO\á,\à\î^\Ú\n\Ô\ìc–ş¬\Ş\ß/J}÷1•Cœ\Ã6ºœr\Ê)§œú_\ê¦ş\Ù_]Œ+\Ë\0\0\0\0IEND®B`‚'),(6,'Mico','1111-1111','COL','Juris Doctor',4,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜A\Ü E_¤Ybi£\à›\åL¹}”¹,[r\ëgt<³™,Ò¶Û†‚Ò“ø\Â\åRñM|?\æÿ\0A§:Õ©Nu\ê\è”\Õ\áa\îfcn‘qW]— ¢$)d&œ$IŸ©\íu]‚\Ê5\Çmee\æ÷\×u%JS›¶:±S?\Şd\ã–\'^–je%\È\0a)‘õ£\ë¨\êOA\Íff6€\Ù\ÜK›³·®SS%\ïW9>ÿ¼Yı\rö\ÔuªÜ½[j’gfs\ä÷e7]W (}ü HRr¥\Ó/±(I\ÓQÕ¿6\åW\ëø\Û\0\'añÃ·btTõ¯MQŸ¯¡&}\Ò&\Ôóş©T«9\í\Æ\'brª«~÷O£\ê\İ?„¥•úôø2GUj\åc’=\ß\Ä<¸\î¥m@ıõ1c\ÃÍ¤t\ïo«-¨\æc2 )WS§\Ä¯ş5)ÿe_ªLL\ï\ë\íaÕŸ‹ª¦N¸ó\àš£¹¿®3SA*®}Lµ\æh¢\×û-¨‡	\Ùc#`¿R\ïsJ}õ1\Ë\çi]\êT§:Õ©ÿKı]ˆ\ËFA¹¿\Ï\0\0\0\0IEND®B`‚'),(7,'Favielle','1101-2121','CHMT','Bachelor of Science in Tourism Management',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0¡IDATxœ\í˜Ám\ã0E\ß,øH. ¥P¥¦\í@,\Å˜G~¤´\Ù\ìasˆM\Å\äz€>ˆ\Ñ\àó›ø\Å__€`Pƒ\ZÔ ut\ÊjM\ç7³%m;KS]]PA’tHZq’$ıM=^WTª=n‹Ï”\'³©½®(­\Ûò¨/j¯p9É–G~±[j+^@ğ¹\ì|¼tUıSP\Ñ\Ì\Ìf°%M\0o\Å\æ´\Öõ\ÔT\éû=_nVƒ–ºz \Ê\Ù¸\\›<M(šËÎ¹™®(ŠW (C¸º\âôµú\\ÿzTõ?›ª3\'\Î.\é,\âì°°\n—iFGUÿ³©:s‚\0üÍ„¿\"ÒŒ\âK,¬mtõ@m3\Í\å\Ä\r~»l\ár’µ\Ò\ÕU\æıŸ\"(\×Q\Ïõ\í˜÷w¡vŸ€ÛŒM:\ÉÀ,\í\Ô\æsJ\éT\ïµ>S\Ì\Î\èûûSi\Ï\êÓ„\Öt*-_÷®ş9(­¸b÷maO4\Û\ëê²Welñ7#\ÎnK4\Û\ëzF\ê\ß\é,Hó\È\Ò@\í9&PÇ-\Ã\çÜ—úœcª.y_\Ú\è\ZÔ 5¨A}/õä„¹\Ôş?’2\0\0\0\0IEND®B`‚'),(8,'Rolley Anne ','6969-6969','CTE','Doctor of Education',4,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ˆIDATxœ\í™An\Ã E\ß¤,m)ğQ\Ì\Íz5s”\ŞÀ,#M€“´‹v“\àX ƒ\ä¯a<úŒEù{ø@Ğ©NuªS\Ú;%yXğ\ãUÄ…²\ãª\êj‚šUUu]0ªªª\Ô\ëu5A…œ\ã\â†Hz±õuµD\éR¦W½±SÛ˜¿N*\î•ol–*eeP \01\í\Ü_ºöªş”‘\ÄpM6§¶®CS)\ï\ïr\ÜOÉŸAM]-P)ö&\æ$õb\"„s¬¦«Šd\ã\ç`P½9}]¶\å²Wõ\ïM¥Ø§\Ë\Ô\ÂviŠô\Ø?‘Ê±Wwa¿\å}>™½ª?,\Ù\Ø‹8Œ\Ê\ç\n\â*\ë:2õ\à\ïñ\ÓE4™pZKW\Ô\æs\00\ÅØ„“ŠŸ\Êj·\êß›z¬ò\æ\Îñ¤¢\ß\ëıó©\Ò\Ç\ÄO]B®Eio÷\êß“²?\ÖJ8)óz.\ËJºZ¤\Ä\â†\ÔX(\ÍúºHı\êcúÑ „\ÒTIWC\Ô\Ö\Çd^·*\éÿŸIı\ìc*D4\í±\×ûNuªS:\nõ\r·ô\Ê®ñ»¶\0\0\0\0IEND®B`‚'),(10,'Ailla Mae','1101-0119','CCJE','Bachelor of Science in Criminology',1,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0{IDATxœ\í™Ám„0E\ß\ÄÜ¡ƒ”b:HIi\rJ\Ù\à\î\Õ\ÏÁ†eC¤\ì…Å€}cx_ò\ç{Lü¿ú (T¡\nU¨B\åNYZU,Z;N•vW]— ¼$i\0+\0\'I\Ò3õ~]— \Æ\Ù\ã\Ü\r€\Çk¿úsP\Ö\â\Öm\çşº.AõŸ\á\ÍO¼,5\ÅJ-`õ_÷JŒ°t®\êM±<Rq\ÂNøaªxI\êrUl*úş\áqA@Ï®\ÏWı(³\èÍŒEŸ\Ó\ì®\ë\ÜT\Ìu\0Ô7µbú¤»¹ª?6µ\Èû´¤¼ŸZ%\ï7§ü\0ö­\0~¸}\ãN?sõ¥\ÒY\Û7@oN–\ê1ô§«\\\Õ›Jy?/b\æ¨\äıöÔº¿W@]PWK%ï·§sLœğ·\nk3\Ğuj*ù\Ş0…\Ì\ä{\rsš«úcSÕª26TXœñ\ì¤\ë’Tœc\ÖşVş[mJıcš¿UÀh¨o\\°½t]Zõ9\Ñò\nH¥\ÇÜ–úc	J»0ÿE\ÉU}¡\nU¨B\êU\ê\å¡\à¨\à„t\0\0\0\0IEND®B`‚'),(11,'Aaron Kim','1101-2014','COE','Bachelor of Science in Electrical Engineering',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜\Ím\Ä …\ß¤=\Z)¤\è,5¥S\Êv`‘X½ø\ÑnrH±ñ\Ú\Ãş$\Ğó0Œ¿·øòPJ)¥”Rj\ï”\Ôf\èn\"!µ•0T\×)(O’\\\0 Yp†!Iò‘\Ú^\×)¨T=.a\Ê(#;^×™(Î­\ÛjG¥zó\×%l¹\ãi©V&H\00\å²rÿ\èÚ«úCPQDD !Y\0¸•4g´®CS\Å÷woŸRƒ‘º\Î@•³À\äjòdÁ(&\é5\Óu\n%÷\ÌeT\ÛprMüç½ªnªŸx¾›Â“„_\ÚW=ûU¨v\ØÀy\"K§¾ß‚ªwmt€ø«-\îÿa²ø\ë…2J\×¨‡(\ß#ÿ<µNc\ÎzT\Ïs\0\0¦%6\éB\0FkikRw—+¹˜\â{`\Ê(A_}¿>•z­>Yp.¾\ê\Ú\Ş\Õ?\'e¿\Í\Éğ‹ıÁ»WõÇ¢\ä&RÄ™V\Ñ¯\ëˆÔ:f“‰\ä@$§µ´\r¨^Ç„g†J\Ğ<g]\ê{³EùÜ»1º”RJ)¥”ú_\êÇ‡\ç\'•\ÄÀm\0\0\0\0IEND®B`‚'),(12,'Joseph','1141-1241','CBAA','Bachelor of Science in Accountancy',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0€IDATxœ\í˜Anƒ0EÿÔ–²4RĞ£\à«õfp”\Ü\0/#ı.l’.\ÚEÁ\Ï,,0O\âkF\ã/\Ä\ï1~ü”RJ)¥”::%9,0v³ˆe\ÇW\Õ\ÕÕ“$\'\0`H’|¦ö\×\Õr‹w\éJ\Ä\Ö\×\ÕÅ¡,{½Q©%úÛ…\â÷|c³Ti+\0\0¸˜vÖ‡®£ª?5ŠˆHˆ\0\æ4\æ\Ô\Öuj*\Õıª\Æ\ÇÏ»\äß ¦®¨”{L\ÌE,8Š‰@¸\ÆjºZ \ÇxG’Œe´Ÿ\0.\æÁ8ªú÷¦R\îÓ±ªŸ’–\ÇS\Íı&T\É.\ÌRüùSÔºß‡š…¼‰\0ÁB<\ÅÃ¨§°%>ú©´ú\ÇS­û\r©•™\"\\Rª¬«	j\åc\ï\î¥\Õ\Õ\Õ¯\ŞEp\Ù\Ô\É{GWÿ”}¹\ç\ØMD?]óm-]-R\âQz\ÎWgŠ£Y_\×©>f?\0D\è À¬ı~jñ1\0\âaˆ~\Òù~S\ê\Õ\Çd^\â²\ÔÑ¥”RJ)¥\ÔÿRß²\ËqÛ \í@\0\0\0\0IEND®B`‚'),(13,'Ariane Joy','1101-0144','CAS','Bachelor of Science in Biology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ˆIDATxœ\í™Anƒ0E\ß\ÔHY\Z)\ÈQ\àf½\Z%7À\ËH~6Iš.\ÚEI/,l=\É_£a<|Lü>Æ?@\à”SN9\åÔ³SVGc{6\ëÓ¼Ó¯ªkT\'Iš\0Rƒ‚$Iß©\åum‚J5Ç­™òdÖ¬¯kK”†yZ\êD§.£;\îdı’\'n–š\ËJ\0b.;·]Ïªş-¨\Ñ\Ì\ÌZ°>5\0\ç\Òæ¬­ë­©’÷79>NV_ƒ5um*±7¹&yj\Ğh!C\Ú\ç\Õtm¢ôñC” \æº\Ô\Zb®ÿğ¬\ê_›*Á¦›@š‚¤)ˆ\îº\ç±UcOT8\Ñó~Qj¶\Ì4¤\ë	²\Ï\ã\Î=…GR\ÍõQ Î¦ñpª\ÓZº¶C\İø˜2v‚\çı#©ù®-\İMP}Ì¥ù]»\05û˜Œ-hHµÔ—½§WÿšTs·i\'º©-¥\Ş\ëı‚Tõ\ï£\ÄØ†\Ù\Ñ\\_\×;R?}Ì´\Ï\"\í3\Î\î¥-@]|L¸ü·\ê“÷÷¥\î}Ì¹\Ê\çË´.§œr\Ê)§ş—ú9ø\Òô¸˜8C\0\0\0\0IEND®B`‚'),(14,'Liam','1123-2312','COE','Bachelor of Science in Electrical Engineering',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0}IDATxœí™±n\Ã0D•\ÊôS\äO·?¨€4qD¹N34‹bÕ¢\r\Ärg’\âï³¾=Fe”QFõN‰	29\Õ\Ê|ª®!¨@’Œ\0—4€#Iòz½®!¨´{\Ü	\0@D¦óuE¥÷Ç¶³]P\ë‡úşe¿8,Uc\Å@\Ô÷	8º¿Wõÿ›\Âñ“\nG„\èˆk%\äÒ«úÿM\ß=\î3x_\éWı(‘\Û&2§	\\’4‹d>U×µ©š9>C/\0€gIŸr,sšP\Ğ\×@FGf 0CkööÍ¨ƒ\ï¹x\îÓ¬£š\ßŞ¾1\Å€\Ì%\å7)Wˆ›\ÜQ¯\×umJSe?¥\Ç\Ô}N¶³%Uú™\êo—¹\Ş ,5ÿy®¨}YRu™y¶®!¨º\Ç,¡¿\Ş6\ÑNÿd]W¦¦‡ŠÀe	?³m¯\ê¯E‘q²’ıoÕ”\Òş^ó¾®\ÑJw\ã³\ÍV-©‡=fùÖ–‚ÍµM©\ß{L¯½Ü«z£Œ2\Ê(£¥¾¡+\ì8\İJ\\†\0\0\0\0IEND®B`‚'),(15,'Noah','1103-4242','CHMT','Bachelor of Science in Tourism Management',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0†IDATxœ\í˜An\Ä E¿\Ò,‰4\èQ\à\è\ä(½AXDô»\0¢\Ìt\Ñ.šI\ì…È“ø2\åXˆ\ßmüø(¥”RJ)utJªY`f‘\ÚN\èª\ë”\'IN\0,aH’|¦ö\×u	*\Õ—\à2Ê“ˆ\í¯\ëJcs{¨\Ôbş\ëF	{xYª•G\0	\0\\.;ëŸ®£ª?5Šˆ\È\0HH\0\æ\Ò\æô\Öujª\äı*\Ç\ÇÏ‡\ÔÏ §®+P%ö˜\\“<Yp“t\Ï\İt]Bi\ã=IÀ‘µµŸ\0F—k\ãªş½©{’ğ“!£kW\á§öVc¿	\Õb_Â¡y¿\Õ2\Ûe”ˆ—4™\æ4ö›QKÍ©ÏŒz\ÌZs¶§\ÖsL±\0’…\È`t–¶%µ\ês\ÈRd2€§¤y¿-\Õ\æ˜Å‚1Õ¡N\Ù;¼ú÷¤\ìËºT?\İ\×\ËÃª?%!YHpatl\Íşº\ÎHı˜cƒ‘ˆs{{Tõ§ –9&<3$ÀH7\ís¶¤^ç˜¬./®.¥”RJ)¥ş—úN÷ó?r\Ì\çO\0\0\0\0IEND®B`‚'),(16,'Olivia','1112-1244','CCJE','Bachelor of Science in Criminology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0†IDATxœ\í˜Kn\Ä D«\Ò,mi\à£\à£\ÃQr³	«²\0œù,’E\Æ8¦Y´~¥V7%\Ä\Ï#|ü”RJ)¥”::%eX Œ«\È\ë\Ê\ÜTW”#I.\0-\èaH’|¤ö\×\ÕK\Ë<$\ä\'\Û^WO}\r{\í¨\Ô6\Ü\ç…2\ï¹c·T=Vˆ\00¤¼r\é:ªúSPADDF@\æh`\ÍmNk]§¦r\İ\ß\Õx˜nR>ƒ–ºz r\î0©y´`“€xM\Ítõ@!÷ñ\\!\\L\îô\é‡T\ZTõÿ›ª¹\'	·Â‘5,õ­\æş-J\ÚÉ—º\'µ\î÷ ‚ˆÀ}Z L	2\ÃPD.\ê)¼“z\ìsq\Ëj¦›q¶\Ò\Õu\çc\"Z\0ñB„I½´·Rw\çıw³SO~ı\×\îB\ÅÍ«ô±˜:e\í\è\ê\ÏA\Ñ\Ã\äö²N¡ëŒ”}š‹# \Îß„a4Iœo£«\ê\ÕÇŒ\×D\Ä¬\ê¥\í@m>&0”ş>_s\ë:5õ\ìc²„´…6º”RJ)¥”ú[\ê\ã«\Ñ±M=\0\0\0\0IEND®B`‚'),(17,'Emma','1241-4444','CCJE','Bachelor of Science in Criminology',4,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0}IDATxœ\í™Anƒ0E\ß\ÔHY\Â\rz\ç9Sn’\àe%G¿BK¥fC 0^Xbx_\Öğù\Ø&ş\í\Ç8\å”SN9µv\Ê\î£*E;¦¾r\\T\×.¨(I\ê\0R$IúI½^\×.¨4ô87\àñ\Z¬_ı6(;¦±sy]» \Ú\Ïü\â\'\î–\êm¥@\í\éV‰\ã\î_«ú÷¦R	\"vAÄ®¯DIº¬Uı{S¥\ï=.\È\èg×¯Wı(³hÍŒQ\Îi×µm\ê\î9Q¹÷—:µŠñ””\ï3#¥stÿ­J¯f:7`\ÇEum›*~o`¾Œ\Ø5FÛ„„lK\é\Ú5ò]\Ò\åq«Îs\æ¤\î>b?†¯ı,\Ô$\ßSg\Æ\\_û¹©\Ç>f¼T¦5\è\Ú4\Õû}\Ä.”ŒY&u1g¥ªI%UD{\Zz­\ê·F«\Ï\07?·š“ú½iñZ\É\é \Ï÷3RÓœC\è3f<c\ÎIı±9\\\Ö\Ã)\ÊZ\Õ;\å”SN9õ,õ\rf›\ç÷şn¹4\0\0\0\0IEND®B`‚'),(18,'Oliver','1123-3443','CCJE','Bachelor of Science in Criminology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜An„0E¿K¤.ƒ\Ô\ÌQÂ•\ç\ä(s²¬ô»pB§İ´CœEÂ“ø2\Æ8_ˆ¿G|ûe”QFuvJ\Êp@W‘)Õ©©®.¨@’\\\0 9p\Æ@’\äO\êx]]P©\ä¸L>CW\"®½®(\Îu:\ê‰Fm#<\Ş)Ó‘Oì–ªe\Å@\0Ÿu\çù\ĞuVõ— ¢ˆˆŒ€L\ÉÀªmNk]—¦4\ïŸr<\Ş>¥|-uõ@i\ìrIò\äÀ(C\ÒGn¦«\n\Ú\Æ’€\ÏzI.\0gŸK\ã?ŸUıkS5\Ø[Ä¹\åU„¥Şµ\Ø\ïBÕ¼_röu¥yX\Ş\ïImG\×U\08-ğ\îCø\ÒJW\Ô\Ö\ç|76«P›$u÷¬\ê¯@=ù˜:’\à\ÍKÛ•z\êsô7«\çZŸQ~½V\ïw§ª‰ğp\àœŠ©£{§Wÿš”ûu\Íx#–Qˆ«÷GR2¡˜ø€gu4\Û\ëº2\å\É\Ò\Ğ×šƒ8®\æ¥\íI•š5\Ê\0Ÿ!á¾Š:ù­tõ@ıö1Y&@¶zo”QFu\êN\Ë\Êsö^\0\0\0\0IEND®B`‚'),(19,'Charlotte','1233-1124','CCS','Bachelor of Science in Information Technology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0xIDATxœ\í™Ámƒ@D\ßH9\â\\ÊºƒÔ”Î w°\ÜA“Ã²6N,%‡`ø{\à°~#<\Ã\Ç\Ä\ï«{ûN9\å”SN•NÙ´\ê´i—>\ï\\V\Õu*H’\"@_T’$=R¯\×uª¿yœ\Ñ\0¸\ß\å«\ßeªŸµs}]‡ ºóğ\â3–Ê±\Ò\èA\İ\ÇX‹\æ\î/Uı¶)\æT*b%B\Ì;A’\ÚR\Õo›J¾¿{\\0 G×—«~”\Ù	\èÌŒY\Ï9­®k\ßT\Ê)V\"H‚f\0\Z¥\àI?z\æ,B\å¼o1¿Q…jÁó~IjºöA“\åÓªf÷‚_û%)}@m_“ÿ€\Ñì’“¿tõ[¥r\Ş\ç5uLIjóP\Ç}¿õ£\ß\Ó¨M\æ÷\ÌyuŸc†\ë»\Òaÿ…«\ß(•Ÿµ‘©\ç´0ù\Ş;\æ\ÂTılÓ †\î|Ë¢R\Õ\ï’j$\ÂÕ¿[-J}ŸcZ\ĞXCoi¨ck\é:õ¤\çL¯ZRô¹(õd	ºµ\Í\Õt9\å”SN9õ¿\Ôc\à\ïšKšÓ¦\0\0\0\0IEND®B`‚'),(20,'James','1123-2344','CAS','Bachelor of Science in Biology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0‹IDATxœ\í™Anƒ0E\ß\ÔHY\Z©\ÈQ\àf½\Z¥7À\ËH¦‹±­¤]40{ay_\Ãg¢ü?\æ hT£\ZÕ¨Fí’4:˜û»\Èò\ÊXU\×)¨AUU€Ğ¡NUUõ™\Ú^\×)¨<.£Ø‘HW_×™(ò´\ÕU\Æğ}Q·¼\ãi©œV¼ÀG[y\Üt\íUı!¨YDDz1t\0w+sj\ë:4e¾ğø|½Iz\rj\ê:e±p1™<t\è,.BøŒ\Õt\Â\êø	§:ùøT\é\Ûé ª:\íUı{Sûb€aqvÊ°”\'³Wõ\ïM¥\Ø\ãÓ”¶´K.ò›\ï×£Š\ï£Y^uqj\æÇ—b¯\êß›JY¥\Ë4“i‡\Ûr\Î\Ú\ÔS \\rªª\ë\Ø\Ô\ã·6¥\0±¤\ß|¿>•û˜\Ì×ˆN\áb–·µİ«?ea7óS:šõu’¯dô7\é]\îh\Ö\×uD\êOs\îJ\èQB\ßziP¥	\å¿ÕˆkuÎš\Ô\ï>¦¦Ib¾°WõjT£\ZÕ¨W©\Èp\åj=¬\ã\0\0\0\0IEND®B`‚'),(21,'Angel','1231-1233','CCS','Bachelor of Science in Computer Science',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0„IDATxœ\í˜An„0EŸK¤Y2RĞ£À\Õz38Jo@–•2ú]$™Î´‹v\Ñ!\ìE„Â“òeŒ\å|?\Çüôœr\Ê)§œ\Ú:e%\Ì\ç‹\Ù\ë\Î\ØT\×!¨A’´\0Ä€&:I’\î©õu‚Š¥\Æm\ìù\É,´\×u$JS]\Ö:Ñ©ko\'Ù¸æ‰‡¥j[\éD€>\å\ÛK\×V\Õï‚š\Í\Ì\ì6\Æ\0p\ÉcNk]»¦r\İ\ß\Ôøüòn\å7h©\ëTÎ½A—J‘Ç€f\ë\Ä\ç\ÔL\×(ò?,\0½$-]ô5õRü§­ªÿ\ßTÍ½R,k\Æ?\ßz\îK\Å@q†·€¦h¦©Ş²¶¯şR¥²¥D\î4¥u:\ï9¤®¹/Á°€¦>}òóx\ê\Æ\Ç\Ìw«€xr/m\ê\ÆÇ¤j\Òrñ»\Õ\ZTõ1™- ©–|\ŞÛ¼ú}Pµ\é_ò§(sg{]G \Ì,{\Îë¹«f{]{¤¾û˜€ˆg¼ß¯A]}L†l¤»ùMu\íšú\êc\n\Òı\ÒF—SN9\å”SK}\0\Ö\ì\Ï;ÏŒv\0\0\0\0IEND®B`‚'),(22,'Sophia','1131-3123','CBAA','Bachelor of Office Administration',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ŒIDATxœ\í˜Mn\Ã F\ßKY)\ÈQ\ì«õH½9JP\É,+M\éß¢]4\Æ1°@6<‰O0\Æ3Ÿ(¿·ğô:Õ©NuªS[§\Ä\Ú\0\áx™b™ª\êj‚\ZUUuˆ:\ãTUU¿R\ë\ëj‚Š\ã2ùD~\ê\ëj‰Ò¹tk­Ø©[/•i\Í›¥Êµ\âˆ\0>\å‘\ÏE\×V\Õ\ï‚\n\"\"r™\â\0p\ÍiNm]»¦r\ÜŠñp~ûj\êj\Ê{/\à’y\Ğ .A<¥jºZ \Èy¼.NÁk\îT\Ğ\Ù\'Küç­ªl\Êö~\Æ)\à\ì\ÆRV\Ù\ìV\Õ?6…•¯%Æ±\èq¿•+ªg€\\\×:•)º§pOª\Ü÷¥\å±\Ù\'À§~\çÜ“º\å9\0¸’\Ø\Ä\èq¿\nõ\ác‹jªËµ\×VkP\Å\Ç$œ:—\Ïc›W¿\Êr\ÌÅ¶\İ\ÍúºZ \Ì\Ôñ\ÙX(f}]{¤~ú˜€OJ8¾–Ù­ªl\Êv7ä¿ª\Ëo2¾€Œ—ƒJ-]-P\ß}Lµ.İº:º:Õ©NuªSÿK½úı\É\ZK\0}L\0\0\0\0IEND®B`‚'),(24,'Shin','1241-4124','CCS','Bachelor of Science in Computer Science',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0‚IDATxœ\í™Aƒ0k\ÖH9’\ä)\Îö\Ëø)yÀJpŒ\ê=8$°‰´¹œ0>J¢\ãv36ñÿJ_O@\à”SN9\åT\é”]V•‹v\ì\Æ\ÊqU]› ¢$©\è*€ IÒœz½®MPİµ\Ç€\Û6(_ıgPv$\Ü\Ç\Îõum‚J‡ş\ÅO\Ü,5\ÚJ- ¥\ï¡L»¿Tõ\ïM1=R	\"¶A\Äv¬DIjJUÿ\ŞT\îû[z4\ïúr\Õe¶’™1\É9û\Õum„\Z\ê\Ë1›_{<™­¯ëƒ©\ì÷ù·*¶Ajje¿W\î÷KR\Ù\ïZgiz ô¶–®-P³³¶« ¶\\,\è\Ç=gIjôœq‘ƒ\æ¼è³u—\ï\Ô\Ô=PK\î÷\ËS“9&A\Ä\ÓN¨\×\ë\Ú5\Î1\Õ\Ôg#\ÎF<™\å°S¼ú÷¤ª¿…\ØT\×\Ş/Uı§Q]E¶zü\ŞjI\ê\ïó’*;Cé¸“\çû©9\'ˆ¨©\r1—¤\Ì1Aù+\Ô\×[”R\Õ;\å”SN9õ,õ\Ş\Ä	qk:ª\0\0\0\0IEND®B`‚'),(25,'Shin','1123-1241','CCJE','Bachelor of Science in Criminology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0†IDATxœ\í˜An\Ã E\ßKY\ÚRĞ£\à£\ÛG\é\r\Ì2\Ñ\ï\ì8\é¢]\ÔÁµa<‰¯\Ñ>c\â\ç6¾ı‚JUªR•ª\Ô\Ş)Ë­±»™õa\é‹\ê:\å%I@hĞ€“$\é‘z½®SP!\ç¸õm$}™5\åu‰\Ò0w¯Ú±RKóŸYÿ\ÊOK\Í\ÇJ+ \0´1Í¬]{Uj43³¬\rÀ-ÙœÒºM¥¼_\åøøqµü”\Ôu*\Å\ŞÀÅœ\ä¡A£¹\á=\ÓuŠl\ãÛ¥\Ã%§¯¡\Ùø{Uÿ¿)\îO(\r8á¥¹›òjı6T®‘ÁOK\ŞC\Íû-©U\Ş\ã\'\0œğ“\ËGPıvÔ£\Ï7S2;Áæ…½ª?µªc¦·U¸,WoI]Ç¦ò™“\ë˜NxE ¤C¿Şµ\ÛSs“±\r!u\Ò\Ü\î\Õƒ\ÊFsº÷¡\ëˆTó46h¢ù\áj\Z;\Íetú^\ÇD\è’\ã)¦\ëD\ÔR\Ç\ÄO`ı\İ\ä—\Õuhê¹)ˆ]]•ªT¥*U©¿¥¾\0±Ï¾™U¾\0\0\0\0IEND®B`‚'),(26,'Shin','2131-3123','CCS','Master in Information Technology',4,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0‚IDATxœ\í™Anƒ0E\ß¤,©\ÈQœ£\ÃQz€JfOô»°¡¨j6N‡\'ùkòƒ‰ÿş\ãœr\Ê)§œ\Ú:e\åhÁ\Ì\Î\Ãô\Ëù©ºŞ‚Š’¤f\ÇF@#IÒšz¼®· †\âq)]€ò<Y×©öjla5gt\ê/Jİ£g|_jò}0€\Åti\Å\0\ËM\×V\Õ\ï‚\ê\Í\Ì\ì0dg.9\æ<[×®©\ìû_«?h\íú\íªmŠE”Œ	ˆ\ZQ¦“$©Ûªú×¦¦\ÚI]W7%ø{\í+R\ê3\â\×ARj”Ÿ€>ï²©k\ßTñ}\Ô„ùŠ\â{\ï9©©ºa$[\Z•¦×¾*Uò}LVı\Şbúœ\Æ[Uÿ\Ú\Ô2\ç,,$uyè¾¯E\Íı^y™\Íe\×üxÏ©GMµO@L%\Ø\ä´“÷ûª\Ôõ{Lß­ÁAÖŸ\æ^´Uõ»£J¾\Ï{«‡\Ìø¦\Ôu¿\Ï\İ\'·J¾\ÖV¥nrÎ¼Á\ÊK¯÷ûz\Ô\Í{\ÌrjVq«\êr\Ê)§œº—úe\é|X‹Y\0\0\0\0IEND®B`‚'),(28,'Arthur','2131-3125','CCS','Master in Information Technology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0~IDATxœ\í™Anƒ0Dß¯‘²$7\ÈQ\Ì\rzes”\Ş\0/+¦!‰¢vQ‚öÊ²\Ä\È\ãï‰\ßGûñ\nU¨BªP¹S6*-Z§•fS]‡ ¼$©ˆ€“$\é–z½®CPqö8ƒpıòW¿\Ê\Z\ÜcÙ¹½®CP\í¥ñKM±Rˆ ös¨D„¥ûsUÿ\Ş\Ë#\'|\ç„\ï¦/I!Wõ\ïM%\ß_=.\èÑ­\ëóU¿\Ê\ì´fÆ¢\Î9o®k\ßÔ˜9^=P÷ŒqS+OªòK\æ¬B-ó\Şw 0o{À©\äıŠ\Ô\ÍY{õ=.]s‹\ïW§$õ(Ä“\Ò€Á¬ÁÉšMuí›š\ÛNx3ó\ær\'Wõ\ïM=\Ö÷\êQH\æ/y¿*5\×9’\Ô9A½œ•½5õ1¢\í\å\Ûğ_f\n\ë\Ú3U\İ/x\r•A\íeÎ¢\\\ÕïŠ)n\Æb\']û£\îû˜©Ÿ@4D<É¶\Òu\êIS=R7ş8,g\í:Ô³>¦›oY\Û\è*T¡\nU¨Bı/õ\ß\î\ÚIı>	\0\0\0\0IEND®B`‚'),(29,'Edrian','2134-4124','COE','Bachelor of Science in Electrical Engineering',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ƒIDATxœ\í™Mnƒ0…\ßKY\Z)\ÈQğ\ÑñQr¼ŒdôºğOi»H%&xfa!òI<ó\"\Äóò€\0¥”RJ)¥NI.øqq¡\ÜqMuuAM$\É\0‚g$I~§^¯«*d‹³\éJÄ´\×\ÕÅ¹,¯z¢Rµ¦û…\â^ù\Än©2V,\0°1\İ\Ù~tUı)(/\"\"# .\0X\Ó1§µ®SS\É÷û\ÛCò6h©«*õ^€!f“z\"®±™®(°`c9\Ú/\0gK¦ƒÿ|Tõ\ïMU\ßD0\éJ¦™ÀD¶\Ò\ÕU|¿lwÀ—\ïS©\ïw¡j\Ç\Ë\É2MšeÈ×™³Ucƒ\Ül™\îú\ÛC¬Fg\Î\î\Ô&\ÇL.„\Í\Òö¤\Ò\Ì)9fm¶Ø¼t\æ\ìJ…š\Õ\à.y¹Æºz¢ò6Xr\Ûs¢\Ù^WTul\nJ¢\Ù^\×©\ß9f0‘WXË¯GU\nª\æ˜@ı\ßÊ•¡xõoJı\Ì1™—X—6º”RJ)¥”ú_\ê<d\Ê2d\æ[\0\0\0\0IEND®B`‚'),(30,'Arthur','1231-3123','COE','Bachelor of Science in Electrical Engineering',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0•IDATxœ\í˜Aj\ä0E_E‚^\Ú\Ğ\ÈQ\ä+\çöQ\æ\0\r\Ö2\à\æg!\É8!0³˜¶\ÜmiQX\Ò}DYT}\Ó\Û?@Ğ¨F5ªQ::eyx˜ú»\Ù\Ë\ÊPU\×)¨ Iš¢G#N’¤\ï\ÔşºNAÅœ\ã6t\é\Ë\Ì\×\×u&Jc	{Ø¨u„?Ù°ç‰§¥Ê³\Ò	ˆ\0İ’V¶M\×QÕ¿5™™Y6DpOeNm]/M¥¼\ß\äøôşiù7¨©\ëTº{·\ä$M\æˆ×¥š®3P”2\ŞIc\'f—*ı<•¤ñ¨êŸ›Jw¯±“¤\Ù	Êowªş¹©œ÷A%h\Íû2mwÿªÔ˜±G\Ä>=õ>\Übp‘\Õ\Òuj­st\Â\èn¦\\\ì\ÜLµt‡\Úø˜aˆˆ—\æ¥\í@m|L²¡&\Í÷\Ö[\íA\ÅÕ«%\åó\Ú\Ñ\Õ?\'\å\Ì5½\Â|\Å\Â\Ç\ÚğUıkQ6D\r]2Š£Y_\×+R¿ø˜3\"^\Å\Ô\ß\Ê\îQ\Õ?7µz\n\0¸\ÜÒ†Ù•\Ğz«‡Q?}Lå°¬¡®F5ªQj\Ôÿ¥¾\0·-\Ë\Ï\Èbjú\0\0\0\0IEND®B`‚'),(34,'Shin','1124-3432','CCS','Bachelor of Science in Computer Science',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0›IDATxœ\í˜An\ä E_\r–²tK9@‚o³\Î\r\ÌQr€‘`‰\Ö\Ï\ìt2‹\Ébºq7°°0~_¸\\şU&ş=Â¯@0¨A\rjPƒ::euLNg³%m+KS]]P^’Ò„Vœ$I_©\Û\ë\ê‚J5\Æm™3ef6µ\×\Õ¥u»\Üj\ÇA\íÃ¿=É–[\î\Ø-µ¥•Y@˜sY¹,ºªş!¨`ff\'°%M\0\çbsZ\ëzhª\ÄıEŒ‡—w«ŸAK]=P\å\ì\r\\®A&\ÌeHÏ¹™®(Š_g	f\é\Ó\éks5ş\ëQ\Õ\ß7\Åg	%E\')ºòğq3GU\ßT={¯-\îÁmq#\î¯I\Õm0i*	\Şüo—9b­tõ@Õ¬²’i\Ö9S‚\äœ\ëQ»\ÏÀe\Â	 M\Åû4\Ó\Õu\ÑÇ¤6Ô¤xµ\Õ-¨´÷\ê­\é©xŸºvtõA§\ïc=ö\Ú\Ñl¯\ë©\éÛ½ù\æ×Œ@˜_\Û\è\êú«\Ìe‘3\áõ\Ïöô¨\êï›º¨k\'|t%\ç\Ô\Ùğ˜W£¾÷15\İPgmt\rjPƒ\ZÔ ş/õ\î\Ü5\Ş\ß\0\0\0\0IEND®B`‚'),(35,'Adie','1212-2331','CBAA','Bachelor of Science in Entrepreneurship',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0…IDATxœ\í™Qj„0EÏ«~F\èº”¸ƒ.©k\ê\ÌRfı,(·\ê8\Óh­¾|yğ\"Ï››\Ä\Ä\ï#?ı§œr\Ê)§¶N\Ù8\ÂP´ª*ÕªºA%IR\Ğ€B’¤k\êñºAµ\ç§7\0\æ\ß`û\ê÷AYEq;\×\×u*¿v~\ãa©\ÉV¢€”\ßú Z¸\ìş­ªÿ\ß—K*…HM!R3U’$\Õ[Uÿ¿©¡\ï\çt\èºë·«~”Y	d3\ã\"ç”«\ë:Õ›U±ƒlaü\ì\éd¶¾®Sƒ\ßK\rHÍ´£J\Ã÷ûGPQ²*~¹\ì\\\Zk\ë\Ú35¬µ–>JDû\"K§\0\Ğ©)\İs–¤&Ï™Æ˜1%AœŠ\î9‹P7ù@u\ìP%÷û\å©ùs\èûÓ³¬Ú€®]S\ÌÁ†\ÔR\Í\Ô÷Cöñ¾_Œ\n7•øä·³mUı.©(\Ùû\É\ï­¥~c³\rò«°µtº“sÆŒ9os\İï—¡\îœc§ñ|‹²UõN9\å”SNı•ú”g\Û;¼E¯,\0\0\0\0IEND®B`‚'),(36,'Doja','1113-5453','CCJE','Bachelor of Science in Criminology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0„IDATxœ\í˜An\Ä E¿\Ò,©\èQ\Â\Ízµ\ä(sXV\"ú]¢´›\Îf\Z\Ìò$¾¢c[ˆ¿\Çòöe”QF\Õ;%ux`¹¯\"1·xª®!¨‰$™\0 {p†#Iò\'u¼®!¨\\=.1è“ˆ?_\×H\ç6u¢QÛ˜7J<ò\Äa©Vd\0EwöEW¯\ê/A-\"\"r$f\0«¦9g\ëº4¥¾\ßy|ùø’z\r\Î\Ô5¥\ß^\0WªÉ³q\È\ï\å4]#P\Ğ<	À\Ä29]r¥&şs¯\ê¯@I„#\ëŸWb \åó\á[¶Ù·úÿJ5ß³\è¦\Í÷¤ùş*\ßXY­kE\ï\ÂÉº®Lm¾ç®£¡¡\Şóı+©]Sk«\ì\ä›ùş•T‹òš\ì8bJ@µ|‚ùşªõ1±\Ü\Î\Íòº×½úkPœ\áˆ)­Ò–}\è\Z’ˆ\Ú\Ä[Gó|]W¦©ŸR‹9‹õ\Ò¡¶>f\Ë\ïW‘\ÏdùıK©\ß}LÖ‰\0PÚ‹^\Õe”QFõ,õ\r°ıÍ¥9%­¤\0\0\0\0IEND®B`‚'),(38,'Doja','1113-5555','CCJE','Bachelor of Science in Criminology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0vIDATxœ\í˜Anƒ0E\ßÔ‘²„\ä(\æ\è\á(½Ùƒ~\Æ	I[5‹:2³°dü$>öxLüı\Ç8\å”SN9µu\Ê\æ8\0ƒ™uCùÒ­ª\ë-¨(IJ`\ÖA’¤[\êùºŞ‚\ZfKi2\0\æ\ß`e]{¦ws£VsG§~£t~ö\ïK\ß7°˜¦ƒ`ù\èÚªú]P½™™µ\0\ÃQ\Ö1\å2gm]»¦²\ï¯W\ZÑ­ë·«şµ)¥dL@Ôˆ\ÎM$Iç­ªmªd·$š±,¤ \\ø{\î«P³\ïc\nóH	<÷©\Ù÷sŒË…3\îûªT9sòdn\'\äCÿ\ZûšT¼ø>ó[7xO¡*µ¬sf\ßSn]?s\êR\å®\Í}\ÌP†\\hú™óªô1­c2úˆŸş®­J\İ÷108\Êr\ç\ßwt\êWª?I\Ä4Y®\ï7£k\ÇTs-4\'£oƒ¬¬[Y×©\êœpsõú][ú\Ö\Ç\\L›\Ë3w«\êr\Ê)§œz”ú¬’û4©\'…P\0\0\0\0IEND®B`‚'),(40,'Doja','5234-3423','CCJE','Bachelor of Science in Criminology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0vIDATxœ\í™Anƒ0E\ß¤.ô(\æ½2%7€=\èwaLHS©\Ù/=‰/3ü&ş_\İ\Ç8\å”SN9U:eóªSĞš!Gš]u‚Š’¤`¨*I’\î©\×\ë:5,9\Îd\0\Ü>ƒò\Õƒ²†\ê±\í\Ü_\×)¨\îk|ñOKe[	P÷=\Õb€uö—ªş½)\Ö%•JÄ¾±Ï‘(Im©\êß›Jy\ËqÁˆî³¾\\õG \Ì.@gf¬úœ\Ë\îºNCY$k†z\Şöx5+A\×a©\ä÷R_ImŠ\Ì~¯6°\Üï·¡\æ½o\Ã|\Ée¶J\ï\Ãk\í†T\îs\ÂÈ¼\í!÷÷±÷¼ß”Ê“¥l÷œm©?ú{X[\ïı\Ö\Ôj$\âµÆštššó>ö,?¢6ŒHıR‰KUÿ\ŞTı.\ÔXšñ\ì¤\ë”Tšc†µLş\ßjK\ê÷\Ób?‘~^\Å\ë§l/]g úœ\Ô\ì,g]÷û\í¨?\æ˜\Ë\ír\Ê*V½SN9\å”S\ÏR?œ:óZ6¾<ò\0\0\0\0IEND®B`‚'),(41,'Mathew','1212-1245','CBAA','Bachelor of Science in Entrepreneurship',1,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í™An¤0E_\ÅH½tKs€\Å\\yn`’\àe$·ş,ŒI\'³˜,††4U›\'ù«(Šra\â\ß6½|§œr\Ê)§N\ÙbL×›\ÙXúÊ¸«®SPI’4”e‚$IŸ©\Ç\ë:U–·1VÚ•Ù°¿®3Q\Ê}xÔN­–\Ş.²ñ‘;–\êi%\n(\0±¶•ûC\×Q\Õ?5™™\Ùl,À­•9{\ëzjª\Åı]ŒO¯ï¶¼{\ê:\Õ|o\ê\äe@“…\n\åW\İM\×(to ´J_9J­ğ\ÏGUÿ³©\îû™ûU’Dšû]÷ı&\Ô\êû ’j\03´\×À\ã~;ª\çûX\Ñd@XúªA\í¥\ë\Ô\ç|/A¬(ÇŠçœ­©µ\Î ôÂ¦\\\ÄôºšGUÿ³)>>®-\é·sm¬ô¤\ïq¿5U\Ö^= \\–¦Î²vtõ\ÏA)—K+/—\éAt=#5|™q\ÆR~7M\×P-\å}tú»	ˆr\Å\àæ½´Pk“4ƒ‘\æ\àÿ·¤¾ö1µuö\Ñ\å”SN9\å\Ôÿ¥ş\0±§\â€%%s‘\0\0\0\0IEND®B`‚'),(42,'Ivanna','1233-3331','CCJE','Bachelor of Science in Criminology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0’IDATxœ\í˜Mnƒ0…¿©‘X‚”ô(p\å\Ş\0\ÒT\Â\ËH^¶Iš.\Ú\r\á\Ï^ >\ÉO\è1¯ñ\íªP…*T¡¶NYZŒ\íÍ¬÷9Ò¯ª\ëT\'Iš\0|…œ$I?©\×\ë:\å“Ç­oñÎ¬Z_×™(\rùòª5¯î³–õ¯\Üñ´TN+\0Ğ„ylº¶ªş\Ôhff-X\ï+€[,s\Ö\Öuh*úşÁ\ã\ãû\Õ\Òo°¦®3Pñ\Û¸L\î+4š\à/a5]g He|#i˜/š@C#\Å\ÂØªú}Sñ\Û\Ç\ÊRSî¨º\ÜV¥·[U¿o*û—Í›}(¾_z8k…7\è\Ö}¸`P\Ë\Ö\Òu*e•y\ÅX²|(9gy\êa\ÙM\0¾£\Õe–¶$\Åıp•&§\Ô\×6˜ô‹ï—§ü<«÷\Z|\Z\ê¤\Ø\Ö\Õï“ª5ö.\ĞM„ŸŞ­ª?•\æ÷\ÍÕ¬o”\'š\ë\ë:\"õ{\é« |‹\Æö+¿İªú}S\Ü+KÀ‰nrŠ\ÅN¼+g\íb\ÔóSPŠ„’\ïU¨B\ê(\Ô7Në­“eT\0\0\0\0IEND®B`‚'),(44,'Mona','1231-6565','CCS','Bachelor of Science in Computer Science',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜Áj…0D\ç6·Œ\Ğ\è§\ÄO\×O\éÌ²\Çtq«\í¢\İø\â37‘xÀ!Œ\Ãu„ø{\Í/ÿ€\0£Œ2\Ê(£\ÎNIY˜‡»È˜\ê\Î\ØTWT$I.\0<8Á‘$¹§¯«*\Ë2ôNÄ·\×\ÕÅ©^õF£\Ö\ßo”ñ‘oì–ª± @Èº³ı\é:«úKP³ˆˆ€Œ\ÉÀ]ÇœÖº.M©\ï7Ÿ\ß>¥|-uõ@\é\Ù\àr1yò\à,.\é57\Ó\Õ…\íH\0N\'}N\ÔÁ:«ú\ç¦v™“¼\Z]\âD õÁY\Õ?7U}H5:W\ßg˜\ï¤¶™h€¸8M;û©ıœCH\\av>\Ä2\çpj\×c@º‘SºY—v$U2§ô˜nx24ôi™s8•Ö®>d|[¾\ì]ı5(=ö¸”c/f{]=P¥¿@`m4\Û\ëº\"õ»\ÇL>S\ë„4´\Ó\Õµö˜5n\îÀÙœs$õ³\Ç$Á²“­S0\Ê(£Œº\nõ\ï4½š\×1\0\0\0\0IEND®B`‚'),(45,'Len','9999-9999','CBAA','Bachelor of Science in Entrepreneurship',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0fIDATxœ\í™A„ D£{ús¼Á\\Yo¤{:5 ¥\ã$\ÓZ[?c\ÈK¬”\ß¾Nü?¦¯ 0\Ê(£Œ2\ê\è”Ë£O“nX\ÊÌ°«®KPA’4,=@\'I\Ò3õ~]— –Gsw\0¬ŸÁñÕŸƒr\İvÛ¹¿®KP\Ów|ó/K•Xñ\Ğôs\ï\ÅuõUıgS\ÔK*s\'\Â\\f‚$GUÿ\ÙTªûµ\Æ=WıqÕŸr\îL\Î9ª}\Îmw]ç¦2\ÇG$EÀ+¥O\Z–9M(²½U\Ê\ç;>ZŞ·¤Š÷’’\Ùyt\é˜kuß¢²=\Ì@PyAÑ¼oI\ÕuŸ“¿AR‰ó¾µ\Ù\ßCz\å-˜÷m¨\ì}¨Ü®t4½\Ìû–Tñ~†d{*y±µ¶5\Õof–=.õxv\ÒuI*”³•4\ß\í¿\Õ;(/i\Ü\0¬?¯v\×ufj\Û\Ç,K¯õZSô1\×\Ë\ã˜{TõFe”QF½Jı\Õı	—ôø\0\0\0\0IEND®B`‚'),(46,'Mia','1244-4353','CBAA','Bachelor of Office Administration',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0‡IDATxœ\í\Ù\Ímƒ@†\áw²+ùR\nH)K.)­A). {Œúr\0;øGJ.Ã\Õ#ñ\É\ZÇƒ‰¿¯\æ\í\\¹r\å\Ê\ÕÚ•W­\Ê\ç“j\Ñ\\»PI’\Ô\ä$IºV\ÏÏµ•/5No\0ü~\rÖŸ~\Ê*\ÂıØ¹|®]¨\æ£{òw«\Îm¥AÍ±\"Ã´ú×šşµÓŸT‚Hm©=Ÿ$Iª×šşµ\ÕP÷¿5.\è\ĞuÕ¯7ı”Y	4f\Æd\Î)Ïµ•$Y•\ãø±§“\Ù*rmU\rı^5 š (4ô{\Õ\àı~N5\Î9I}4ŠAi\Ê\Ğ¡³¥r\íG™•Ac“v\n½Ù§¾½\çÌ©&s@„\ÎR\rF~÷}Îœ\êÁ|ªihÿ\Ş\ïgW“=f!‘N«Š\îF=?×¦\ÕX÷©R$©Cu\Ñ!µ—)h­\é_[\ÅÛƒ\æø…ÁA6\ìxÊµK•N\ÚM\ïï­¡Šñ–U\0\äˆ\ê|ğ9gNu7\çp™nÔ/½\ßÏ£\ì1/·>\ç¸r\å\Ê\Õv\ÔE±\ÃD‚ˆB\0\0\0\0IEND®B`‚'),(47,'Book','5545-3345','CCS','Master in Information Technology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0‹IDATxœ\í˜AŠ\Ã0E¿&†.˜ô(ñÑ“£ô\0…zYpù³f¦‹\é&‰Ë`\äş8Š,Iˆÿ\Çôõe”QFU;%y8`\ê\"!K\ØUW\Ô@’¼@t\àˆ$\É\ß\Ôöºš böq	>Ag\"n]-Q\Ëk«š\Çp9QÂ–;6K•°\â	 €OjY]µª?5‰ˆHHˆ\0š\æ\ì­\ëĞ”úı\ÂÇ§ó]òo°§®(={º”<:p’.ñ;\í¦«\n\Ì#£\'1\Ü:\Íô9ú”ÿ±VõŸMaQB\r7\0ğ$†§\Í\Î~5\Ê-\æ\Ó99 ºD\ÄeµVõÇ |†‹Ó²J:Šôs•U»úÏ¤y>j²³§®v¨ESƒ~<‘#:ë¥­I\å»6÷1\ç\Ãö	š\ì\Ğ\î\ÚÕ©8÷\ê}\ÇxÒ¯mµ«?¥‘F\ì®İ”’\0@‚¿‹\Ï\Ò\Ñ\Ü_\×©\×>\æœ\ßOı\Õòû5©e]\r7%\æ\è\Ì\î\ÚÕ¨¿}L	Ì–TjUo”QFeÔ»\Ô¾7½N¸\í\n\0\0\0\0IEND®B`‚'),(48,'Ferl','1456-5488','CBAA','Bachelor of Office Administration',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0–IDATxœ\í™An\Ã E\ßKY\ÚRĞ£˜ôH½\Z>Jo`–•ˆ~˜(m\í&Á\Ìz_x<›øÛ–—@Ğ©NuªS\Ú;e›\r°L3Ë¯ª«	j–$­\0q@\'I\Òw\êñºš \â\æ\ã\æ\ÇD™\rõuµD)”\áQ\'v\êjó\ÇI\æyb³T	+£€0¦¼s[t\íUıSP‹™™M`>\0—œ\æ\Ô\Öõ\ÔTöû_^?m{\rj\êj\Êwo\à\Ò\æ\äq@‹¹ñœª\éj\"\çña”r’\Æ-\Ó\ßf’öªş\Ø\Ôv÷¹¬‚\\V1\ç²Ê•\ç±WõÇ¦®1´¼­Ø¼qB\Äs=]\íP\n8\Ùû‡™`÷-\Éß·ú£R%\æƒ1¡0&r\Ğ\ïñş~\ÔM\Ì\\‚8\0ñ$»I4÷ªş\ØTö\ì\Ò\ÇtbV®\ÉN÷ûûS¥\É2B0yØ¿úcRÃµˆ\'1¯“m\ËJºZ¤\Ì^\æóW%Ù©¯\ë©\ß}\Ì8$\Ïbñu5D]û˜\0˜\çbö¾ºş\Ïğ\Ô\Ï>¦¶A\0©\ÇûNuªSz\êù\à\ĞGÀ+g!\0\0\0\0IEND®B`‚'),(49,'Tony Stark','1111-1101','CBAA','Bachelor of Office Administration',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜An\Ä E¿R–D\ê\æ(\äf=So\0G™„e%F¿ \Êt\Ó.šI\ìJĞ“ò…,c!~øöPJ)¥”R\ê\è”Ô°@\"Sj;SW]— <Ir€dÁ\0C’\ä3µ¿®KP©z\\&—QDl]W¢Ú²\×•Z\Â\ßÊ´\ç/Kµ²\â €\Ëeg}\é:ªúSPQDDF@¦d\àQÚœŞºNMß¯<o_Rƒº®@•³À\äjòdÁ(&\é=w\Óu\n¥\0\à™Á\àj§\Ï\àrmü\ÃQÕ¿6UÏ3\0?€#\áI\Â\ÏKfªşµ©•\ï\\^¥‚¤ú~S\nut\àrñ=ƒ#\ágC\0†zöR\Í\è-ZZ*´\ælM­\æ˜%\Ò@\Ä\Ñ\è,mKªÖœ:\Ç4µúÀe´¢¯¾ßšjsLø»C\ZŠ\å\Ë\Ş\áÕ¿&e¼3\Şøyø\Ï\å\Â{Tõ\ç¢dJ2¹\ÄÑ´‰f]g¦\Üó\å6\rdÀCgi;P\Ë@­òò1kŸ³)õsÉº\äe\é£K)¥”RJ©ÿ¥¾P]\êV>ô\Ö\0\0\0\0IEND®B`‚'),(50,'Peter Parker','3000-0000','CBAA','Bachelor of Office Administration',1,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0–IDATxœ\í˜MŠ\Ü0„¿Š½´a\ĞG±n#\åj\ÖQ\æ\0k\Ù\à¦f\á:3‹d‘¶=mi!lñ\nùY\Ô+™¿ü\ã ¨T¥*U©J\Ò<\"\äö.¥²¬¤]u‚\êl\Û@‰¸\'Ø¶ı\'µ½®SPe®q¥fdz’\âşº\ÎD¹_¦­v¬\Ô:º÷‹•¶\Üñ´\Ôr­4\n@3N+M\×QÕ¿•%I-(•pŸl\ÎŞº^šš\êş¡\Æóõ¦ù7\ØS\×¨\é\ìaœ‹¼DœF(o\ãnº\Î@1\Ùøn\0\Û#tC˜œ¾ûÆŒTõß›bi¡\Âüz\Ât\âtÔ³\"µúœ\ß2˜\Ò\â|£÷\Òu**X’\äP\"X¿\Ş/5Sx&õ\às nh\å|½\Í\Ó^º\Î@­>€°›r± \Öı\ÔCÙŒ(57\ÙÃ½öV[PKIV\Ä}™Ci\íğ\ê¿\'?½;ÿ Z™²6¼GUÿZ”R‰(5¶Ô†%\Ñ\Ü_\×+R_rÌ®_ü=\Ôû~j\Í1ÉŠ(¬Tª\Ïy*õ9\Ç\\œş¸Nû\èªT¥*U©Jı_\êµıª\áòŒ\Ü8\0\0\0\0IEND®B`‚'),(51,'Kate','1431-3143','CCS','Master in Information Technology',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0|IDATxœ\í˜Kn„0D_\ÇHY\Zi0G›\åj\æ(s¼Œª,ˆ\Ì,’\rc>\î\ÈÖ“\\²\ÊPnW÷ñ\nU¨BªP{§lª\nºz4k\ã<\Óf\ÕunªJ¯&\0\Ä†\İ\0€\å\Òu%*.\Ç\ÉZ ƒÜº®D)0š\ÂW,\Ô\\ö\ÕO¾×Š×¥\æÏŠ\Ó\ÜúÒµWõÇ¦¦½\ï\ÒO\Õñ&ƒ\Ñò\êºõ\âñ®Æ¦cS\×u(³z4ˆf\n8)DK!?³®sSKŒt2üPY3;^\İ}1ÿ^ÕŸ‚j\Ò\ãS\n±\Â\ì.­3ÿ\Î\Õ”B’D\Ó$\Z\rH\é1WØ«úcSó÷\ë!M\ï8Ñ”½ßŒZ\Û[¿}|ñı¦\Ôdô©&·+ødş\âû\í¨\ç>¦Òµ*53GS.]W¢–L\ÓÕ¤\Äc-Kgg\ï\êIUOc\ÃøoSº\áf\ÒuEJ!N–O‘s/º\ÎH=÷1\r@¹Áğ}>]W ^s˜-\ïJ\ÆÜ’z\îcj•ş}¡\nU¨B‰úµš\Ñ\ãş\ê´\0\0\0\0IEND®B`‚'),(52,'Rendon Villarica','1457-6756','CBAA','Bachelor of Science in Accountancy',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0xIDATxœ\í˜M‚@…¿š&q‰7ğ(p¯Gñô\ÒòfÑ ¨13›„ªe\åKx\é¯~Lü\í\Ï? p\Ê)§œrjí”Q¤¤\Õq\ÊÔ‹\ê\ÚUI’:€X\0I’©\Ï\ë\Úo5\Î`\0\Üƒõ«\ße5\áu\ì\\^\×.¨ö\Ôø‹»¥&[)DP{\na^ıkUÿ\İó–JUD\ÕM™J’šµªÿn*\Õı½\Æ=z¬úõª\ßevZ3c6\ç×µJM4ƒ²b1>{uñ\İ*+5ú}%%«WS*ù½šiÁr¿\ÏC1¾.LË­z€ 5e\ï½6\'•z­Qv\ĞÚ½\ÇFuñ½6+5\Öı-F÷I\ç÷œ¬\Ô\Ë|L?ûşö¹©\Ù“ \Ñn\Êş‰ú¼®]P\ÓS\Ò\ÕhOW“.f©	¯^ıwR\ÅK&18ˆö|ó¢µª\ß•\î˜\åÕ¬fğ\İ*\'õ|Ç´ª€xA-¥kÔ›;¦zÒš\ë3f>\ê\İ3ğ9\Ç)§œrj3\Ô/+İ–T®5ª\0\0\0\0IEND®B`‚'),(53,'Dyllan','5415-6213','CBAA','Bachelor of Office Administration',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0IDATxœ\í˜An\Ã E\ßÔ–²t¤ GÁ7\è‘z¦\ŞÀ>Jn`–‘ˆ~@š´‹v\Ñ\ÇÀz’¿\à{\Æ\Ä\ïm~ùjT£\ZÕ¨µS–Zóşl6ú¼2\ÕU\å$I€\ï\ÑD\'I\Ò-õx]UP>y\Ü\Æ!Gf}y]5Qšr÷¨/6\ê\Ò\Üq\'ù\Åj©V`q\åúÑµVõ› f33Ûƒ¾8\Ç4§´®MS\Ñ÷WŸ\'K¿AI]5Pq\ï\rºL\î{4[À¿†bºj ˆyü%¡\×4¤L?$iZ«ú\ç¦HO¨! -pK\'œ$\ÜBztµ½¿•\âıü\ÆpŠqGø=‚³ µªn\ê*\æD\ËÃ—ù-\æÜ‘J\ÎvA\07M1\Ù)©«*\ÇûØºù§<m¾¿#•ö>\Õ1»|\nñ\ê¥ÅœGPşR«4ù]<…´¶võÛ ò­û5]‡®\Z({_À\Æ!rE³¼®-R?\ê˜ó!\Äü\Ş\ÜÇ¾œ®Š¨Kwì±‘œ\éÖµi\ê{Sn»2º\ZÕ¨F5ªQÿK}JÓ¢“|\0\0\0\0IEND®B`‚'),(54,'Charlie Puth','1102-0031','CAS','Bachelor of Science in Biology',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ŠIDATxœ\í˜An¤0E_‘z	R0GÁ7\Ë\Õ\à(¹^¶dô³°!™d1³˜`º©ZX¸ô$¾Š\Â*ù\×?@\à”SN9\å\Ô\Ù)«\ÑÁ<¬f1m™\ØT\×%¨Q’´\0¤MI’ş¤\×u	*\Õ·\ØgÊ“Y\×^×•(M\Ûr\Ô\Úc|»\É\â‘o¼,µ+½€\Ğ\ç’ù|\é:«ú§ f33Àb\ê\0\Ö2\æ´\Öõ\ÔT\éûO=>ÿ¾[ı\rZ\êºUjormòÔ¡\ÙB†ô’›\éºE™\ã§>Ã¨\ãÊ¤¿\å$MgUÿ\ØT©}©ø\åZ\ÅXrû—9«úÇ¦ju?¢\\i\ïûÃ¨yX\rR8-d¯o7÷~’ª\Õ}\Æ`5\Õa\çnj¥\ë\n\Ô>\ç\0¶Á&\İd³\ïû¨sT\Æb7iYınu•v¯>uhJõ¨¯¹³«Lªû²\Æ\åeß¶\ÑuEªš:}\Æl›£\Ù^\×3R\ß}L@¤Ÿ÷GP»	©\Ã\"A“\Ï÷?J}õ1U—¼/mt9\å”SN9õ©wR»\İş»•·\0\0\0\0IEND®B`‚'),(55,'Kate','1431-1241','CBAA','Bachelor of Science in Accountancy',2,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0ƒIDATxœ\í™Anƒ0E\ß\ÔŞ“\ä(\Î\rz\Ö\Ş\0\Â\r`‰\èw	i©\Ô.JL`X 4z_\Öğ\çÛ˜øıj\Şş\0SN9\å”S[§,_q,Ú¥Ÿ*—¢ºA%IR\ĞG€ I\ÒW\êùºAõ÷\çf\0ÌŸÁö\Õïƒ²a;\Ë\ë:Õœ‡\'¿ñ°\Ôd+•€Ô¼ß¢\è\á±û·ªşµ)G*A¤.ˆ\ÔM•$IõVÕ¿65öı\Ü\ã‚}\íú\íª\ßev\Z3\ã!çœŠ\ë\Ú75zj‚H’H\Z€J\Ùx\ÜsÖ£òÚ«\ãmö{\Õ\Ó\Ë\×~*\ÏÚ¤\Õ\Õ/C\Ş\æzß¯G\åY\ÛX¥6\"úÀ\ÍHu\Êù>\ÑF„ÁR\ÍøTL\×¨E¾§\Ê\î3\Ï_÷œu¨»\ß\çK¶ú v|\íW§¦sL\Õ\Õ\Õh\ÎW“Z3Õ…uí™Š‹J1ˆ\Øx\ÆSH\×1©*ï­¤\Öÿ[­J}?Ç´\ÔF ƒ¥ZX)]G –9gL7y¯\ë³v5\ê‡sL\Ğ=m\Ó\å”SN9\å\ÔÿRŸ\İ\Ê\á·Is\0\0\0\0IEND®B`‚'),(56,'Paul Gonzaldoo','2131-1231','CBAA','Bachelor of Science in Entrepreneurship',3,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\Å\â\0\0’IDATxœ\í˜Kj\Ä0D«\"C–6\ä\0sùf¹šu”  -l*I“™	!Y\Ä#\Çn/„?T4­vuSøù\nO¿€\0£Œ2\Ê(£¶N±\\€DrLõ\Í\ØT\×!(/IŠ\098p’$\İR\×u*•—\âB\0@9u\í™\êî‰^\àš;\Zõ¥\é\Ñ;—ªy\ß@\è\ã\Ò		¸nº¶ª~T I\0\ÅK¶9­u\íš\Êyÿ™\ã\n§º\Íú\íªÿ\ß®¬¤\0¼fh\ê\ë\"Iš¶ªşS—\Ø;}1ù\åCD1şû5)¯35%’c/\år—\ÕT×®©’÷>:¹\È\ÌõC„Õœ5©\İRiœ4Á©}X\ìW¥nü=\0úøòy77\Óu*Ç¾úx7ı™\n\Ã;ú©®#Pµ\Ş\ç\Â\ãê’f©GVsÖ¥\ê“<‰0\0|}³¾vU\ê~	¤: œ.\Í\íV\Õ\ïŒò\ÑUË™l~ÿª—\êøx!Â°^386Öµg\êzs,d_şºö¯]‹ú2\Ç,Kis›\é2\Ê(£Œ2\êo©v\é\å:Z•*\Ó\0\0\0\0IEND®B`‚');
/*!40000 ALTER TABLE `lspu_library_website_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lspu_library_website_table_status`
--

DROP TABLE IF EXISTS `lspu_library_website_table_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lspu_library_website_table_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lspu_library_website_table_status`
--

LOCK TABLES `lspu_library_website_table_status` WRITE;
/*!40000 ALTER TABLE `lspu_library_website_table_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `lspu_library_website_table_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lspu_website_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 10:59:51
