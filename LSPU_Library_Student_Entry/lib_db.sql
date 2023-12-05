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
INSERT INTO `lspu_library_website_student` VALUES (1,'Paul','1101-0111','CCS','Bachelor of Science in Computer Science',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0|IDATx�\�An�0E߯��$R���+�p#���]`B\�M�!�,�XO�\�x�\�#d��\�\��P�*T��N)G��$MIR���cS\�t�-@�b�\0���3Q)׸t����j{]\'��ռv\�BM�Qn_�\�i�\�Vj	\�	�\��еW�\�M\�\�w\�G5�\�_��mu���r�Ը\��\Zl�\��\�<\�Ü�\����\�\�U�(��Mw�\�N�$�\�\\ױ�\\�� \�a�s�������\�sjOi\'z\�\�=P<gE\�Q\�v��\�^6�\���T\��#�\�\�.�ܯK-}L���z\0��z��cS�\�\�sf�\�>T\�~uj\�c\�]@ҧ���\�פ�_ςQ&]dR5x���pT�\ZB>\�\�H\�\�\�}L�{\�\�\�r\\z:{U��$]��`5K3s\�\�ߔR�7�P�*T�NA}��\�\'H��s\0\0\0\0IEND�B`�'),(2,'Edrian','1101-0112','CAS','Bachelor of Science in Biology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E\�\�H]���(pt8Jo`/+9�]ئI�h%�a���$��\��M����_@\��SN9\�ԣSVW\�p6�R;�v\�uj�$E�ԡ� I\�5u]��R�q��Ly2\��\�u$Js\�\�u�S\�\Z\�_e\�=o<,\�\�J/ ���\\�t=����33��\��˘�����J\�_\����a�3\�S\���{��k��-2�S\�M\�(TWFs�[)a�\�GU���\�\�+I1�Qclo=��Pk�1*�_\�\�u�=\�*��\Z\� Ư\�s���]8���\��&\�:\�\0\�`�:�>���%U*���k��Li�^�\�Si�\�ͩ�:�\�\�\��O���E:e\�xj\�N��HU���0�!4Gs]\�H}�1�!\"\�I�ٽ�;P��\��\�a`Sz�9gK\�\�\�\�\�m]N9\�SN�-�	\�7H��K\0\0\0\0IEND�B`�'),(3,'Neil','1101-0113','COE','Bachelor of Science in Electrical Engineering',4,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� D\���\�R G�W\�\r\�Q�f�V\�\�t�\�\�b\�tڰ@6~�K\���(�\� Ԡ5�A=:euL\�ْ\�\�\�U\�!� I\�\0҄V�$I_��\�:�j�\�\�3\�\�l\�\�H�\�6\�덃��p~�-�|\�a�\�V��\�sY�=t=�������\�`K�\0.\�\��\��\�T���\Z�oV?����@��7p�y�P4�!�r7]G����2�\���\�\�j�\�GU�����ulNZ�D�D\�\�ӱ��P�\��\r��8iF�-O\�>��@՞6J�\0^\"l�M�\�w���I\�\�\��y��=��\��e��\�F��\'\�zN�\�\�s�\��3\�~�嘄�\�TC����\�\'5}�W�]&l�z\�K\�)[\0[��g\�\�������c��\"�\\F��\'u�)P����>\��Su\�ש��A\rjP�\Z\����\0\�\�qQԖ\0\0\0\0IEND�B`�'),(4,'Trish','1101-0114','CHMT','Bachelor of Science in Tourism Management',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Aj\�0E\�T�,\�r�ʽ�}�\��Z~�M\�.\�E��h!,�@�\�{4\Z?�\�\�8\�SN9�\�\�\��t��\ri\��\�\�%I3@\�\�H�$\�z��]P�z܆>S�̺���Di\\�G�\�\�:\�\�A6<�\�\�RKZ\�$�>��\�G׳�	j23�#ؐ:�k)sZ\�zi���\�\�\��b�7h�kT��A\�\�\�C��锛\�\�E�\�G@c�!ΡT�u)I㳪�\�T�=Q\�\Z{�(�,\�ߌZ��z\\\�\�}�5�>]��,\��\�{\�?�V��@��}.�/�\�\�\� dH���Ҷ�ֻV�\�Po]�LI�\��\��\�d\ZSmꔽ�W�?�\�\�Z�S&Χe\�H\�)�sƆ�bLǰt4\�\�zE\�{�b~W\�=�Z��@\��6�b�������1U��Nmt9\�SN9��\�\'\Z�\�]թ*\0\0\0\0IEND�B`�'),(5,'Joyce','1101-0115','CCS','Bachelor of Science in Computer Science',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0~IDATx�\�Mj\�0���\rYڐ�(�\�r5�(���(�.$��]���\'�h1X\�=��4~&~\�\� p\�)��rj\�\�Q\�\�\�\��PV�Mu�\�$I@�\�@%I\�3���CP!׸�M$}�\�\�\�:����vtj\��$\�\�\��T�V\Z��i\��k�\�߂\Z\�̬\�C\rpOm\�ֺޚJu�P\�\�\�\��1\�R\���{�*\�\"5\Z��\�q3]G�Hm|���B\��5417�\�^տ65\�^��@����\�~1�\�~hbʽ\���T�P�/\�d�\�\�=�%�r���n���\�c\�u�0�\�c��4Py\�/I=������\���֮B�٫4�l\�䵽�M��6\�\�V�n:\�\�V��H\�e뛛1�Uq4�\���\�O\�,\�\�^\�\n\�\�c���\�\�/J}�1�C�\�6��r\�)���_\���\�_]�+\�\0\0\0\0IEND�B`�'),(6,'Mico','1111-1111','COL','Juris Doctor',4,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�A�\� E_�Ybi��\��\�L��}��,[r\�gt<��,Ҷۆ�ғ�\�\�R�M|?\��\0A�:թNu\�\�\�\�a\�fcn�qW]���$)d�&�$I��\�u]�\�5\�mee\��\�u%JS��:�S�?\�d\�\'^�je%\�\0a)���\�\�OA\�ff6��\�\�K����SS%\�W9>��Y�\r�\�u�ܽ�[j�g�fs\��e7]W�(}� HRr�\�/�(I\�Qտ6\�W\��\�\0\'a�÷btT��MQ���&}\�&�\����T�9\�\�\'br��~�O�\�\�?������2GUj\�c�=�\�\�<�\�m@��1c\�ͤt\�o�-�\�c2�)WS�\���5)�e_�LL\�\�\�a՟���N��\������3SA*�}L�\�h�\��-���	\�c#`�R\�s�J}�1\�\�i]�\�T�:թ�K�]�\�FA��\�\0\0\0\0IEND�B`�'),(7,'Favielle','1101-2121','CHMT','Bachelor of Science in Tourism Management',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\��m\�0E\�,�H. �P���\�@,\��G~��\�\�as�M\�\��z�>�\�\���\�__�`P�\ZԠut\�jM\�7�%m;KS]]PA�tHZq�$�M=^WT�=n�ϔ\'�����(�\��/j�p9ɖG~�[j+^@�\�|�tU�SP\�\�\�f�%M\0o\�\�\��\�T\��=_nV���z�\�\��\\�<M(�ːι��(��W (C��\����\\��zT�?��3\'\�.\�,\�찰\n�iFGU���:s�\0�̈́�\"Ҍ\�K�,�mt�@m3\�\�\�\r~�l\�r��\�\�U\���\"(\�Q�\��\��w�v��یM:\���,\�\�\�sJ�\�T\�>S\�\�\���Si\�\�ӄ\�t*-_����9(��b�maO4\�\�ꁲWel�7#\�nK4\�\�zF\�\�\�,H�\�\�@\�9&PǍ-\�\�ܗ��c�.y_\�\�\ZԠ5�A}/�䄹\��?�2\0\0\0\0IEND�B`�'),(8,'Rolley Anne ','6969-6969','CTE','Doctor of Education',4,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E\��,m)�Q\�\�z5s�\��,#M����v�\�X ��\�a<��E�{��@ЩNu�S�\�;%yX�\�Uą�\�\�j��UUu]0����\�\�u5A��\�\�Hz��u�D\�R�W��Sۘ�N*\�ol�*eeP \01\�\�_������\�pM6���CS)\�\�r\�OɟAM]-P)�&\�$�b\"�s����d\�\�`P�9}]�\�W�\�M�ا\�\�\�vi��\�?�ʱW�wa�\�}>���?,\�\��8�\�\�\n\�*\�:2�\�\��\�E4��p�ZKW\�\�s\00\�؄���\�j�\�ߛz��\�\��\�\���\�\�\�O]B�Eio�\�ߓ�?\�J8)�z.\�J�Z�\�\�\�X(\����H�\�c�Ѡ�\�TIWC\�\�\�d^�*�\���I�\�c*D4\��\��Nu�S�:\n�\r��\���\0\0\0\0IEND�B`�'),(10,'Ailla Mae','1101-0119','CCJE','Bachelor of Science in Criminology',1,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0{IDATx�\��m�0E\�\�ܡ��b:HIi\rJ\�\�\�\�\���eC�\�ŀ}cx_�\�{L���� (T�\nU�B\�NYZU,Z;N�vW]���$i\0+\0\'I\�3�~]��\�\�\�\�\r�\�k���sP\�\�\�m\���.A��\�\�O�,5\�J-`�_�J��t�\�M�<Rq\�N�a�xI\�rUl*��\�qA@Ϯ\�W�(�\�͌E�\�\�\�\�T\�u\0ԁ7�b�����?6�\�������Z%\�7��\0��\0~�}\��N?s��\�Y\�7@oN�\�1���\\\��Jy?/b\�\���Ժ�W@]PWK%﷧sL��\nk3\�uj*�\�0�\�\�{\rs���cSժ26TX��\�\�T�c\��V�[mJ��c��U�h�o\\��t]�Z�9\��\nH�\�ܖ�c�	J�0�E\�U}�\nU�B\�U\�\�\�\��t\0\0\0\0IEND�B`�'),(11,'Aaron Kim','1101-2014','COE','Bachelor of Science in Electrical Engineering',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�\�m\� �\��=\Z)�\�,5�S\�v`��X��\�nrH��\�\��$�\��0�����PJ)��Rj\�\�f�\�n\"!��0T\�)(O�\\\0 Yp�!I�\�^\�)�T=.a\�(#;^י(έ\�jG�z�\�%l�\�i�V&H\00\�r�\�ګ�CPQDD !Y\0��4g��CS\��w�o�R���\�@���\�j�d�(&\�5\�u\n%��\�eT\�p�rM�罪n��x���_\�W=�U�v\��y\"K��߂�wmt���-\��a��\�2J\���(\�#�<�Nc\�zT\�s\0\0�%6\�B\0FkikRw�+��\�{`\�(A_}�>�z�>Yp.�\�\�\�\�?\'e�\��\������W�Ǣ\�&RęV\��\�ԏ:f��\�@$���\r�^Ǆg�J\�<g]\�{�E�ܻ1��RJ)���_\�Ǉ\�\'�\��m\0\0\0\0IEND�B`�'),(12,'Joseph','1141-1241','CBAA','Bachelor of Science in Accountancy',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E�Ԗ�4RУ\��fp�\�\0/#�.l�.\�E�\�,,0O\�kF\�/\�\�1~��RJ)��::%9,0v��e\�W\�\�Փ$\'\0`H�|��\�\�r��w\�J\�\�\�\�š,{�Q�%�ۅ\��|c�Ti+�\0\0��vև���?5��H�\0\�4\�\�\�uj*\���\�\�ϻ\�ߠ����{L\�E,8��@�\�j�Z��\�xG��e��\0.\��8����R\�ӱ������\�S\��&T\�.\�R��S�Ժ߇����\0�B<\�è��%>����\�S��\r����\"\\R���	j\�c\�\�\�\�\��\�Ep\�\�\�{GW���}�\�\�MD?]�m-]-R\�Qz\�Wg��Y_\��>f?\0D\� ���~j�1\0\�a�~\��~S\�\�\�d^\�\�ѥ�RJ)�\��Rߝ�\�q۠\�@\0\0\0\0IEND�B`�'),(13,'Ariane Joy','1101-0144','CAS','Bachelor of Science in Biology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E\�\�HY\Z)\�Q\�f�\Z%7�\�H�~6I�.\�EI/,l=\�_�a<|L�>Ə?@\��SN9\�ԳSVGc{6\�Ӽӯ�kT\'I�\0R��$Iߩ\�um�J5ǭ���d֬�kK��yZ\�D�.�;\�d��\'n��\�J�\0b.;�]Ϫ�-�\�\�\�Z�>5\0\�\�欭뭩��79>NV_�5um�*�7�&yj\�h!C\�\�\�tm����C� \�\�\Zb����\�_�*���@���)�\�\�UcOT�8\��~Qj�\�4�\�	�\�\�\�=�GR\��Q Φ�p�\�Z��C\����2�v�\��#���-\�MP�}̥�]�\05���-hH�ԗ��W��Ts�i\'��-�\�\���T�\�\�؆\�\�\\_\�;R?}̴\�\"\�3�\�\�-@]|L���\����\�}̹\�\�˴�.��r\�)����9�\����8C\0\0\0\0IEND�B`�'),(14,'Liam','1123-2312','COE','Bachelor of Science in Electrical Engineering',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0}IDATx�홱n\�0D����\��S\�O�?��4�qD�N34�bբ\r\�rg�\�ﳾ=Fe�QF�N��	2�9\�\�|��!�@��\0�4�#I�z��!��{\�	\0@D��u�E��Ƕ�]P\���e�8,Uc\�@\��	8��W���\��\nG�\�k%�\�ҫ��M\�=\�3x_\�W�(�\�&2�	\\��4�d>U׵��9>C/\0�gI�r,s�P\�\�@FGf 0Ck��ͨ�\�x\�Ӭ��\�޾1\��\�%\�7)W��\�Q�\�umJSe?�\�\�}N��%U��\�o��\� ,5�y����}�YRu�y��!��\�,��\�6\�N�d]W������e	?�m�\�E�q����oՔ\��^�\�Jw\�\�V-��=f�֖��͵M�\�{L��ܫz��2\�(�����+\�8\�J\\�\0\0\0\0IEND�B`�'),(15,'Noah','1103-4242','CHMT','Bachelor of Science in Tourism Management',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E�\�,�4\�Q\�\�\�(�AX�D��\0�\�t\�.��I\�ȓ�2�\�X�\�m��(��RJ)utJ�Y`f��\�N\�\��\'IN\0�,aH�|��\�u	*\��\�2ʓ�\�\�Jcs{��\�b�\�F	{�xY��G\0	\0\\.;럮��?5��\�\0HH\0\�\�\��\�uj�\��*\�\�χ\�Ϡ��+P%��\\�<Yp��t\�\�t]�Bi\�=I�����\0F�k\������{��!�kW\��Vc�	\�b_�y�\�2\�e���4�\�4��QKͩόz\�Zs��\�sL�\0��\�`t��%�\�s\�Rd2���y�-\�\�ł1աN\�;����\�˺T?\�\�\�ê?%!YHpatl\���\�H��c�����s{{T����9&<3$�H7\�s��^瘬./��.��RJ)����N��?r\�\�O\0\0\0\0IEND�B`�'),(16,'Olivia','1112-1244','CCJE','Bachelor of Science in Criminology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Kn\� D�\�,mi\�\�\�Qr�	��\0��,�E\�8�Y�~�V7%\�\�#|��RJ)��::%eX ��\�\�\�\�TW�#I.\0-\�aH�|��\�\�K�\�<$\�\'\�^WO}\r{\�\�6\�\�2\�c�T=V�\00��r\�:��SPADDF@\�h`\�mNk]��r\�\�\�x�nR>���z�r\�0�y�`��xM\�t�@!��\\�!�\\L\��\�T\ZT�����\'	�5,��\��-J\�ɗ�\'�\������}Z L	2\�PD.\�)��z\�sq\�j��q�\�\�u\�c\"Z\0�B�I���Rw\��w�SO~�\�\�B\�ͫ����:e\�\�\�\�A\�\�\���N��댔}��# \�߄a4I�o��\�\�ǌ\�D\��\�\�@m>&0��>_s\�:5�\�c����6��RJ)���[\�\�\��M=�\0\0\0\0IEND�B`�'),(17,'Emma','1241-4444','CCJE','Bachelor of Science in Criminology',4,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0}IDATx�\�An�0E\�\�HY\�\rz\�9Sn��\�e%G�BK�fC 0^Xbx_\���\�&�\�\�8\�SN9�v\�\�*E;��r\\T\�.�(I\�\0R$I�I�^\�.�4�87\��\Z�_�6(;��sy]��\�\��\�\'\�\�m��@\�\�V�\�\�_����R	\"vAĮ�DI��U�{S�\�=.\�\�gׯW�(�h͌Q\�i׵m\�\�9Q���:���\�3#�st��J�f:7`\�Eum�*~o`��\�5Fۄ�lK\�\�5�]\�\�q�Ξs\�\�>b?����,\�$\�Sg\�\\_���\�>f�T�5\�\�4\��}\�.��Y&u�1g��I%UD{\Zz�\�F�\�\07?������i�Z\�\� \��3RӜC\�3f<c\�I���9\\\�\�)\�Z\�;\�SN9�,�\rf�\���n�4\0\0\0\0IEND�B`�'),(18,'Oliver','1123-3443','CCJE','Bachelor of Science in Criminology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E�K�.�\�\�Q\�\�(s����pB�ݴC�E�2\�8_��G|�e�QFuvJ\�p@W�)՝���.�@�\\\0 9p\�@�\�O\�x]]P�\�L>CW\"����(\�u:\�Fm#<\�)ӑO얪e\�@\0�u\��\�uV��������L\���mNk]��4\�r<\�>�|-u�@i\�rI�\��(C\�Gn��\n\�\���\�zI.\0g�K\�?�U�kS5\�[Ĺ\�U��޵\�\�Bռ_r�u�yX\�\�ImG\�U\08-�\�C�\�JW\�\�\�|76�P��$u��\�@=��:�\�\�Kەz\�s�7�\�Z�Q~�V\�w�����p\�����{�W����u\�x#�Q���GR2����gu4\�\�2\�\�\�\�ך�8�\�\�I��5\�\0�!ᾊ:��t�@��1Y&@�zo�QFu\�N\�\�s�^\0\0\0\0IEND�B`�'),(19,'Charlotte','1233-1124','CCS','Bachelor of Science in Information Technology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0xIDATx�\��m�@D\�H9\�\\ʺ�ԔΠw�\�A�ò6N,%�`�{\�~#<\�\�\�\�{�N9\�SN�Nٴ\�i�>\�\\V\�u*H�\"@_T�$=R�\�u��y�\�\0�\�\�\�e���s}]�����\�3�ʱ\�\�A\�\�X�\�\�/U��)\�T*b%B\�;A�\�R\�o�J��{\\0�Gח�~�\�	\�̌Y\�9��k\�T\�)V\"H�f\0\Z�\�I?z\�,B\�o1�Q�j��~Ij��A�\�Ӫf��_�%)}�@m_���\�쒓�t�[�r\�\�5uLIj�P\�}���\�\��M\��\�yu�c�\�\�a���\�(�����\�0�\�;\�\�T�lӠ�\�|ˢR\�\�j$\�տ[-J}�cZ\�XCoi�ck\�:��\�L�ZR�(�d�	��\�\�t9\�SN9��\�c\�\�K�Ӧ\0\0\0\0IEND�B`�'),(20,'James','1123-2344','CAS','Bachelor of Science in Biology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E\�\�HY\Z�\�Q\�f�\Z�7�\�H������]40{a�y_\�g��?\� hT�\ZըF흒4:���\��\�XU\�)�AUU�СNUU��\�^\�)��<.��ؑHW_י(��\�U\��}Q��\�i��V��G[y\�t\�U�!�YDDz�1t\0w+sj\�:4e���|�Iz\rj\�:e�p1�<t\�,.B��\�t��\�\��	�:��T\�\�頪:\�U�{S�b�aqvʰ�\'�W�\�M�\�\�Ӕ��K.�\�ף�\�Y^uqj\�Ǘb�\�ߛJY�\�4��i�\�r\�\�\�S \\r��\�\�\�\�6�\0��\�|�>���\�׈N\�b���ݫ?ea7�S:��u����d�7\�]\�h\�\�uD\�Os\�J\�QB\�ziP��	\�ՈkuΚ\�\�>��Ib��W��jT�\ZըW�\�p\�j=�\�\0\0\0\0IEND�B`�'),(21,'Angel','1231-1233','CCS','Bachelor of Science in Computer Science',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E�K�Y2RУ�\�z38Jo@��2�]$�δ�v\�!\�E��e�\�|?\����r\�)��\�:e%\�\�\�\�\�\�T\�!�A��\0Ā&:I�\��u���\�m\��\�,�\�u$JS]\�:ѩko\'ٸ扇�j[\�D�>\�\�K\�V\�\�\�\�6\�\0p\�cNk]��r\�\�\����n\�7h�\�TνA�J�ǀf\�\�\�\�L\�(�?,\0�$-]��5�R�����\�TͽR�,k\�?\�z\�K\�@q����h��޲���R���D\�4�u:\�9����/����>}��x\�\�\�\�w��xr/m\�\�Ǥj\�r�\�\ZT�1�-���|\�ۼ�}P�\�_�(sg{]G�\�,�{\�빫�f{]{������g�߯A]}L�l���Mu\��\�c\n\��\�F�SN9\�SK}\0\�\�\�;όv\0\0\0\0IEND�B`�'),(22,'Sophia','1131-3123','CBAA','Bachelor of Office Administration',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Mn\� F\�KY)\�Q\��H��9JP\�,+M\�ߢ]4\�1�@6<�O0\�3�(����:թNu�S[�\�\�\0\�x�b��\�j�\ZUUu�:\�TUU�R\�\�j��\�2�D~\�\�j�ҹtk�ة[/�i\���ʵ\��\0>\�\�E\�V\�\�\n\"\"r�\�\0p\�iNm]��r\���p~�j\�j�\�{/\��y\� .A<�j�Z�\�y�.N�k\�T\�\�\'K�筪l\��~\�)\�\�\�RV\�\�V\�?6���%Ʊ\�q��+�g�\\\�:�)��pO�\���\�\�\'��~\�ܓ�\�9\0��\�\�\�q�\n�\�c��j�˵\�VkP\�\�$�:��\�c�W�\�r\�Ŷ\�\���Z�\�\��\�X(�f}]{�~���OJ8��٭�l\�v7俪\�o2�����J-]-P\�}L�.ݺ:�:թNu�S�K���\�\ZK\0}L\0\0\0\0IEND�B`�'),(24,'Shin','1241-4124','CCS','Bachelor of Science in Computer Science',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�A��0k\�H9�\�)\��\��)y�Jp�\�=8$�����0>�J�\�v36��J_O@\��SN9\�T\�]V��v\�\�\�qU]���$�\�*� IҜz��MPݵ\��\�6(_�gPv$\�\�\��um�J��\�O\�,5\�J-��\�L��T�\�M1=R	\"�A\�v�DIjJU�\�T\��[�z4\��r\�e���1\�9�\�um�\Z\�\�1�_{<���냩\����*�Ajje�W\��KR\�\�Z�giz ����-P���� �\\,\�\�=gIj��q��\�螳u�\�\�\�=PK\��\�S�9&A\�\�N�\�\�\�5\�1\�\�g#\�F<�\�S�������\�T�\�\�/U��Q]E�z�\�jI\�\��*;C鸓\���9\'���\r�1��\�1A�+\�\�[�R\�;\�SN9�,�\�\�	qk:�\0\0\0\0IEND�B`�'),(25,'Shin','1123-1241','CCJE','Bachelor of Science in Criminology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E\�KY\�RУ\�\�G\�\r\�2\�\�\�8\�]\���a�<��\�>c\�\�6���JU�R��\�\�)˭�����a�\�\�:\�%I@hЀ�$\�z��SP!\��m$}�5\�u��\�0w�ڱRK�Y�\�OK\�\�J+ \0�1ͬ]{Uj43��\r�-ٜҺM��_\���q���\�u*\�\��Ŝ\�A��\�=\�u�l\�ۥ\�%����\��{U��)\�O(\r8᥹��j��6T����OK\�C\��-�U\�\�\'\0��\�GP��vԣ\�7S2;�慽�?��c��U�,WoI]Ǧ�\�NxE���C�޵\�Ss��\r!u\�\�\�\��\�Fs���\�T�46h��\�j\Z;\�et���^\�D\�\�)�\�D\�R\�\�O`�\�\�\�uh깎)��]]��T�*U����\0�Ͼ�U�\0\0\0\0IEND�B`�'),(26,'Shin','2131-3123','CCS','Master in Information Technology',4,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E\��,�\�Q��\�Qz�JfO������j6N�\'�k������\��r\�)��\�:e\�h��\�\�\��\����ނ���f\�F@#IҚz�����\�q)]��<Yמ��jla5gt\�/Jݣg|_j�}0�\�ti\�\0\�M\�V\�\�\�\�\�\�0dg.9\�<[׮�\��_��?�h\��\�m�E��	�\ZQ��$�۪�צ�\�I]W7%�{\�+R\�3\�\�ARj���>ﲞ�k\�T�}\����\�{\�9���a$[\Z���׾*U�}LV�\�b��\�[U�\�\�2\�,,$uy辯E\��^y�\�e\��xϩGM�O@L%\�\�����\��{L߭�A֟\�^�U���J�\�{��\���\�u�\�\�\'�J�\�V�nrμ�\�K���z\�\�{\�rjVq�\�r\�)�����e\�|X�Y\0\0\0\0IEND�B`�'),(28,'Arthur','2131-3125','CCS','Master in Information Technology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0~IDATx�\�An�0D߯��$7\�Q\�\rzes�\�\0/+��!��vQ��ʲ�\�\�\�\�G��\nU�B�P�S6�*-Z��fS]���$����$\�z��CPq�8�p��W�\�\Z\�cٹ��CP\��KM�R���s�D���sU�\�\�#\'|\�\�/I!W�\�M%\�_=.\�ѭ\��U�\�\��fƢ\�9o�k\�Ԙ9^=P��qS+O��K\�B-�\�w�0o{��\���\�\�Y{�=.]s�\�W�$�(ē\�����ɚMu훚\�Nx�3�\�r\'W�\�M=\��\�QH\�/y�*5\�9�\�9A����5�1�\�\�\��_f\n\�\�3U\�/x\r�A\�e΢\\\�)n\�b\']��\�����@4D<ɶ\�u\�IS=R7�8,g\�:Գ>��oY\�\�*T�\nU�B�/�\�\�\�I�>	\0\0\0\0IEND�B`�'),(29,'Edrian','2134-4124','COE','Bachelor of Science in Electrical Engineering',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Mn�0�\�KY\Z)\�Q�\��Qr��d���Oi�H%&xfa!�I<���\"\����\0��RJ)��NI.�qq�\�qMuuAM$\�\0�g$I~�^��*d���\�JĴ\�\�Ź,�z�R����\�^�\�n�2V,\0�1\�\�~tU�)(/\"\"# .\0X\�1���SS\����\�C�6h��*�^�!f�z\"����(�`c9\�/\0gK���|T�\�MU\�D0\�J���D�\�\�U|�lw��\�S�\�w�j\�\�\�2M�eȎי�Uc�\�l�\��\�C�Fg\�\�\�&\�L.�\�\���\�\�)9fm��ؼt\�\�J��\�\�.y�ƺz��6Xr\�s�\�^WTul\nJ�\�^\��\�9f0�WX˯GU\n�\�@�\�ʕ�x�oJ�\�1��X�6��RJ)���_\�<d\�2d\�[\0\0\0\0IEND�B`�'),(30,'Arthur','1231-3123','COE','Bachelor of Science in Electrical Engineering',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Aj\�0E_E�^\�\�\�Q\�+\��Q\�\0\r\�2\�\�g!\�8!0���\�miQX\�}DYT}\�\�?@ШF5�Q�::eyx���\�\�\�PU\�)� I��G#N��\�\���NAŜ\�6t\�\�\�\�\�u&Jc	{�بu�?ٰ牧�ʳ\�	�\0ݒV�M\�Qտ5��Y6DpOeNm]/M��\�\����i�7��\�T�{�\�$�M\��ץ��3P�2\�Ic\'f�*�<���ꟛJw����\�	ʍow�������A%h\��2mw��Ԙ�G\�>=�>\�bp�\�\�uj�st\�\�n�\\\�\�L�t��\���a���\�\�@m|L��&\��\�[\�A\�ի��%\��\�\�\�?\'\�\�5�\�|\�\�\�\��U�kQ6D�\r]2��Y_\�+R���3\"^\�\�\�\�\�Q\�?7�z\n\0�\�ٕ҆\�z��Q?}L尬���F5�Q�j\����\0�-\�\�\�bj�\0\0\0\0IEND�B`�'),(34,'Shin','1124-3432','CCS','Bachelor of Science in Computer Science',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E_\r��tK9@��o��\�\r\�Qr��`�\�\�\�t2�\�b�q7��0~_�\\�U&�=¯@0�A\rjP�::euLNg�%m+KS]]P^�҄V�$I_�\�\�\�J5\�m�3ef6�\�\��u�\�j\�A\�ÿ=ɖ[\�\�-���Y@�sY�,����!�`ff\'�%M\0\�bsZ\�zh�\��E���w��AK]=P\�\�\r\\�A�&\�eHϹ��(��_g	f\�\�\�k�s5�\�Q\�\�7\�g	%E\')���q3GU\�T={�-\��mq#\�I\�m0i*	\��o��9b�t�@լ���i\�9S�\�\�Q�\��e\�	 M\��4\�\�u\�Ǥ6Ԥx�\�-���\��\�x��vt��A�\�c=�\�\�l�\��\�۽�\�׌@�_\�\�\����\�e��3\��\����\��k\'|t%\�\�\��W���15\�Pgmt\rjP�\ZԠ�/�\�\�5\�\�\0\0\0\0IEND�B`�'),(35,'Adie','1212-2331','CBAA','Bachelor of Science in Entrepreneurship',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Qj�0Eϫ�~F\�����.�k\�\�Rf�,(�\�8\�h��|y�\"ϛ�\�\�\�#?���r\�)��N\�8\�P���*ժ�A%IR\��B��k\��A�\��7\0\�\�`�\��AYEq;\�\�u*�v~\�a�\�V���\�� Z�\�����\��K*�HM!R3U�$\�[U����\�\�t\�뷫~�Y	d3\�\"甫\�:՛U��la�\�\�d���S�\�K\rHʹ�J\���GPQ�*~�\�\\\Zk\�\�35���>JD�\"K�\0\��)\�s��&ϙƘ1%A��\�9�P7�@u\�P%��\��s\��ӳ�ڀ�]S\���\�R\�\��C��_�\n7��䷳mU�.�(\��\�\��~�c��\r�򫰵t���sƌ9os\�\�c���|��U�N9\�SN����g\�;�E�,\0\0\0\0IEND�B`�'),(36,'Doja','1113-5453','CCJE','Bachelor of Science in Criminology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E�\�,�\�Q\�\�z�\�(sXV\"�]���\�f\Z\��$���c[��\���e�QF\�;%ux`��\"1��x��!��$�\0 {p�#I�\'u��!�\\=.1蓈?_\�H\�6u�Qۘ7J<�\�a�Vd\0Ew�EW�\�/A-\"\"r$f\0��9g\�4��\�y|���z\r\�\�5�\�^\0W�ɳq\�\�\�4]#P\�<�	�\�29]r�&�s�\�@I�#�\�Wb \��\�[�ٷ��J5߳\��\�����*\�XY�kE\�\�ɺ�Lm�箁���\���+�]Sk�\�\����T��\�8bJ@�|�����1�\�\�\��׽�kP�\�)�Җ}\�\Z���\�\�[G�|]W���R�9��\���>f\�\�W�\�d��K�\�}L։\0Pڋ^\�e�QF�,�\r��ͥ9%��\0\0\0\0IEND�B`�'),(38,'Doja','1113-5555','CCJE','Bachelor of Science in Criminology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0vIDATx�\�An�0E\�ԑ��\�(\�\�\�(��ك~\�	I[5�:2��d�$�>�xL��\�8\�SN9�u\�\�8\0��uC�ҭ�\�-�(IJ`\�A��[\���ނ\Zf�Ki2\0\�\�`e]{�ws�VsG�~�t~��\�K\�7����`�\�ڪ�]P����\0\�Q\�1\�2gm]���\�W\Zѭ뷫��)�dL@Ԉ\�M$I筪m�d�$��,��\\�{\�P�\�c\n�H	<��\��s�˅3\���T9s�dn\'\�C�\Z���T��>�[7xO�*��sf\�Sn]?s\�R\�\�}\�P�\\h�����1�c2������J\��108\�r�\�\�wt\�W�?I\�4Y�\�7�k\�Ts-4\'�o���[Yמ�\�ps��][��\�\�\\L�\�3w�\�r\�)��z�����4�\'�P\0\0\0\0IEND�B`�'),(40,'Doja','5234-3423','CCJE','Bachelor of Science in Criminology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0vIDATx�\�An�0E\��.��(\��2%7�=\�waLHS�\�/�=�/3�&�_\�\�8\�SN9U:e�SК!G�]u�����`�*I�\�\�\�:5,9\�d\0\�>��\����\�\�\�_\�)�\�k|�OKe[	P�=\�b�u�����)\�%�Jľ�ϑ(Im�\�ߛJy\�q��\\�G�\�.@gf���\�\�NCY$k�z\��x5+A\�a�\��R_Im�\�~�6�\�﷡\�o\�|\�e�J\�\�k\�T\�s\�ȼ\�!�����ߔʞ��l��m�?�{X[�\��\�\�j�$\�ƚt���>�,?�6�H�R�KU�\�T�.\�X��\�\�T�c��L�\�jK\��\�b?�~^\�\�l/]g���\�\�,g]��\�?\�\�\�r\�*V�SN9\�S\�R?�:�Z6�<�\0\0\0\0IEND�B`�'),(41,'Mathew','1212-1245','CBAA','Bachelor of Science in Entrepreneurship',1,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E_\�H�tKs�\�\\yn`��\�e$��,�I\'��,��4U�\'��(�ra\�\�6�|��r\�)��N\�bLכ\�X�ʸ��SPI�4�e�$I��\�\�:U��1Vڕٰ��3Q\�}xԎN��\�.��;��\�i%\n(\0����C\�Q\�?5��\�l,���9{\�zj�\��]�O�ﶼ{\�:\�|o\�\�e@��\n\�W\�M\�(to �J_9J��\�GU���\����U�D��]��&\�\�� �j\03�\��\�~;�\��X\�d@X��A�\�\�\�\�|/A�(Ǌ眭��\� �¦\\\����GU��)>>�-\�sm���\�q�5U\�^=�\\��βvt�\�A)�K+/�\�At=#5|�q\�R~7M\�P-\�}t�����	�r\�\�潴Pk�4���\�\������1�u�\�\�SN9\�\����\0��\�%%s�\0\0\0\0IEND�B`�'),(42,'Ivanna','1233-3331','CCJE','Bachelor of Science in Criminology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Mn�0����X���(p\�\�\0�\�T\�\�H�^�I�.\�\r\�\�^ >\�O\�1���\��P�*T��NYZ�\�ͬ�9ү�\�T\'I�\0|��$I?�\�\�:\�ǭo�άZ_י(\r��5���\��TN+�\0Єyl����\�hff-X\�+�[,s\�\�uh*���\�\��\�\�o���3P�\���L\�+4�\�/a5]g�He|#i�/�@C#\�\�ت�}S�\�\�\�RS\�V��[U�o*��͏�}(�_�z8k�7\�\�}�`P\�\�\�u*e�y\�X�|(9gy\�a�\�M\0��\�e��$\��p�&�\�\�6����<��\Z|\Z\�\�\�\���5�.\�M��ޭ�?�\��\�լo�\'�\�\�:\"�{�\� |�\��+�ݪ�}S\�+K��nr�\�N�+g\�b\��SP���\�U�B\�(\�7N띭�eT\0\0\0\0IEND�B`�'),(44,'Mona','1231-6565','CCS','Bachelor of Science in Computer Science',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0IDATx�\��j�0D\�6���\�\�\�O\�O\�̲�\�tq�\�\��\�37�x�!�\�u��{\�/��\0��2\�(�\�NIY���Ș\�\�\�TWT$I.\0�<8��$����*�\�2�Nķ\�\�ũ^�F�\�\�o��o얪� @Ⱥ��\�:��KP�����\��]ǜֺ.M�\�7�\�>�|-u�@\�\�\�r1y�\�,.\�57\�\��\�H\0N\'}N�\��:��\�v���\Z]\�D ��Y\�?7U}H5:W\�g�\����h���8M;����CH\\av>\�2\�pj\�c@��S�Y�v$U2���n�x24�i�s8�֮>d|[�\�]�5(=���c/�f{]=P��@`m4\�\�\"��\�L>S\�4�\�\����5n\��ٜs$��\�$�����S0\�(���\n�\�4��\�1�\0\0\0\0IEND�B`�'),(45,'Len','9999-9999','CBAA','Bachelor of Science in Entrepreneurship',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0fIDATx�\�A�� D�{�s��\\Yo�{:5��\�$\�Z[?c\�K��\��N�?�� 0\�(��2\�\�ˣO�nX\�̰��KPA�4,=@\'I\�3�~]���G�sw\0����՟�r\�v۹��KP\�w|�/K�X�\��s\�\�u�U�gS\�K*�s\'\�\\f�$�GU�\�T���\�=W�q՟�r\�L\�9�}\�mw]禞2\�G$E�+�O\Z�9M(��U\�\�;�>Z޷�����\�yt\�kuߐ��=\�@PyAѼoI\�u���AR���\�\�C�z�\�-��m�\�}�ܮt4�\���T�~�d{*y���5\�of�=.�xv\�uI*���4\�\�\�;(/i\�\0�?�v\�ufj\�\�,K��ZS�1\�\�\�{T�Fe�QF�J��\��	���\0\0\0\0IEND�B`�'),(46,'Mia','1244-4353','CBAA','Bachelor of Office Administration',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�\�\�m�@�\�w�+�R\nH)K.)�A). {��r\0;�GJ.Í\�#�\�\Z�ǃ���\�\�\\�r\�\�\�ڕ�W�\�\�j\�\\�PI�\�\�$I�V\�ϵ�/5No\0�~\r֟~\�*\��ع|�]�\�{�w�\�m��Aͱ�\"ô�ך��ӟT�Hm�=�$I�ך��\�P��5.\�\�uկ7��Y	4f\�d\�)ϵ�$Y�\�����\�*rmU\r�^5�� (4�{\�\��~N5\�9I}4�Ai\�\����r\�G��Ac�v\n�٧��\�̩&s�@�\�R\rF~�}Μ\��|�ih�\�\�gW�=f!�N��\�F=?צ\�X��R$�Cu\�!��)h�\�_[\�ۃ\����A6\�xʵK�N\�M\�ﭞ����U\0\�\�|�9gNu7\�p�nԎ/�\�ϣ\�1/�>\�r\�\�\�v\�E�\�D��B\0\0\0\0IEND�B`�'),(47,'Book','5545-3345','CCS','Master in Information Technology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�A�\�0E�&�.��(�ѓ��\0�zYp����f��\�&�ː`\��8�,I��\���e�QFU;%y8`\�\"!K\�UW\�@��@t\���$\�\�\�����b�q	>Ag\"n]-Q\�k���\�p9Q;6K��\�	 �OjY]��?5��HH�\0�\�\�\�Д��\�ǧ�]�o���(={���<:p�.�;\�\n\�#��\'1\�:\��9����V��MaQB\r7\0�$��\�\�~5\�-\�\�99 �D\�e�V�Ǡ|��ӲJ:��s�U��Ϥ�y�>j����v�ES�~<�#:륭I\�6�1\�\��	�\�\�\�\�թ8�\�}\�xү�m��?��F\�ݔ�\0@���\�\�\�\�_\��\�>\�\�O�\���5�e]\r7%\�\�\�\�\�ը�}L	̖TjUo�QFeԻ\��7�N�\�\n\0\0\0\0IEND�B`�'),(48,'Ferl','1456-5488','CBAA','Bachelor of Office Administration',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E\�KY\�RУ��H�\Z>Jo`���~�(m\�&�\�z_x<���ۖ�@ЩNu�S�\�;e�\r�L3ˎ���	j�$�\0q@\'I\�w\�񺚠\�\�\�\�\�D��\r�u�D)�\�Q\'v\�j�\�I\�yb�T	+��0��s[t\�U�SP���M`>\0��\�\�\��\�T��_^?m{\rj\�j�\�wo\�\�\�\�q@���\�j�\"\��a�r�\�-\�\�f����\�\�v����\\V1\�ʕ\�W�Ǧ�1���ؼ�qB\�s=]\�P\n8\����`�-\�߷��R%\��1�0&r\�\���~\�M\�\\�8\0�$�I4���\�T�\�\�\�tbV�\�N���S��\�2�B0yؿ�cRÏ��\'1��m\�J�Z�\�^\��W%٩�\��\�}\�8$\�b�u5D]��\0�\�b����\��\�\�>��A\0�\��Nu�S�z\��\�\�G�+g!\0\0\0\0IEND�B`�'),(49,'Tony Stark','1111-1101','CBAA','Bachelor of Office Administration',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E�R�D\�\�(\�f=So\0G��e%F� \�t\�.��I\�JГ�,c!~���PJ)��R\�\�԰@\"Sj;SW]��<Ir�d�\0C�\�3���KP�z\\&�Q�Dl]W�ڲ\��Z\�\�ʴ\�/K��\� �\�eg}\�:��SPQDDF@�d\�Qڜ޺NM߯<o_R����@���\�j�d�(&\�=w\�u\n��\0\���\�j�\�\�rm�\�Qտ6UϞ3\0?�#\�I\�\�Kf������\�\\^����~S\nut\�r�=�#\�gC\0�z�R\�\�-ZZ*�\�lM�\�%\�@\�\�\�,mK�֜:\�4���e����ߚjsL��C\Z�\�\�\�\�տ&e�3\��y�\�\�\�{T�\�dJ2�\�Ѵ�f]g�\��\�6\rd�Cgi;P\�@���1k��)�s�ɺ\�e\�K)��RJ����P]\�V>�\�\0\0\0\0IEND�B`�'),(50,'Peter Parker','3000-0000','CBAA','Bachelor of Office Administration',1,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�M�\�0�����a\�G�n�#\�j\�Q\�\0k\�\�f\�:3�d��=mi!l�\n�Y\�+����\� �T�*U�J�\�<\"\��.����]u��\�l\�@��\'ض�\'���SPe�q�fdz�\���\�D�_��v�\�:�����\��\�r�4\n@3N+�M\�Qտ�%I-(�p�l\�޺^��\���\�����7\�S\��\�\�a���D�F(o\�n�\�@1\��n\0\�#tC����ƞ�T�ߛbi�\��z\�t\�tԳ\"���\�2�\�\�|��\�u**X�\�P\"X�\�/5Sx&�\�s�nh\�|�\�\�^�\�@�>���r��\��\�C�ٌ(57\�ý�V[PK�IV\�}�C�i\��\�\'?�;��Z��6�GU�Z�R�(5�Ԇ%\�\�_\�+R_r̮_�=\��~j\�1Ɋ(�T�\�y*�9\�\\���N�\�T�*U�J�_\����\��\�8\0\0\0\0IEND�B`�'),(51,'Kate','1431-3143','CCS','Master in Information Technology',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0|IDATx�\�Kn�0D_\�HY\Zi0G��\�j\�(s���,�\�,�\rc>\�\�֓\\�\�PnW��\nU�B�P{�l�\n�z4k\�<\�f\�un�J�&\0\��\�\0�\�\�u%*.\�\�Z �ܺ�D)0�\�W,\�\\�\�O�׊ץ\�ϊ\�\��ҵW�Ǧ��\�\�O\��&�\��\��\��Ʀc�S\�u(�z4�f\n8)DK!?��sSK�t2�PY3;^\�}1�^՟�j\�\�S\n�\�\�.�3�\�\��B�D\��$\Z\rH\�1Wث�cS��\�!M\�8є�ߌZ\�[�}|���\�d��&�+��d�\��\�\�>�ҵ*53GS.]W��L\�դ\�c-Kgg\�\�IUOc\��oS�\�f\�uEJ!N�O�s/�\�H=�1\r@����}>]W�^s��-\�J\�ܒz\�cj��}�\nU�B�����\�\��\�\0\0\0\0IEND�B`�'),(52,'Rendon Villarica','1457-6756','CBAA','Bachelor of Science in Accountancy',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0xIDATx�\�M��@���&q�7�(p�G��\��fѠ�13���e\�Kx\��~L�\�\�? p\�)��rj픍Q��\�q\�ԋ\�\�UI�:�X\0I��\�\�\�o5\�`\0\����\�e5\�u\�\\^\�.��\�����&[)DP{\na^�kU�\��JUD\�M�J�����n*\���\�=z����\�evZ3c6\�׵JM4��b1>{u�\�*+5�}%%�WS*���i�r�\�C1�.L˭z� 5e\�6\'�z�Qv\�ڽ\�Fu�6+5\��-F�I\����\�\�|�L?������\���\�n\������]P\�S\�\�hOW�.f�	�^�wR\�K&18��|󢵪\��\�\�լf�\�*\'�|Ǵ��x�A�-�kԛ;�zҚ\�3f>\�\�3�9\�)��rj3\�/+ݖT�5�\0\0\0\0IEND�B`�'),(53,'Dyllan','5415-6213','CBAA','Bachelor of Office Administration',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An\� E\�Ԗ�t� G�7\�z�\��>Jn`���~@���v\�\��z��\�{\�\�\�m~��jT�\Zը�S�Z��l6��2\�U\�$I�\�\�D\'I\�-�x]UP>y\�\�!Gf}y]5Q�r��/6\�\�\�q\'�\�j�V`q\��ѵV���f33ۃ��8\�4���MS\��W�\'K�AI]5Pq\�\r��L\�{4[���b�j��y�%�\�4�L?�$iZ��\�HO�! -�pK\'�$\�Bzt����\���\�p�qG�=������n\�*\�D\�×�-\�ܑJ\�vA\07�M1\�)��*\��غ��<m��#��>\�1�|\n�\�ŜGP�R�4�]<���v�۠��5]��\Z({_�\�!rE���-R?\��!\��\�\�Ǿ����Kw챑�\�ֵi\�{Sn�2�\ZըF5�Q�K}JӢ��|\0\0\0\0IEND�B`�'),(54,'Charlie Puth','1102-0031','CAS','Bachelor of Science in Biology',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E_��z	R0G�7\�\�\�(�^�d���!�d1��`��ZX��$��\�*��\�?@\��SN9\�\�\�)�\��<�f1m�\�T\�%�Q��\0�MI����\�u	*\��\�gʓY\�^ו(M\�r\��\�c|�\�\�o�,�+��\�\��|\�:����f33�b\�\0\�2\�\��\�T\��O=>��[�\rZ\�Ujorm�ԡ\�B����\�E�\�>è\�ʤ�\�$MgU�\�T�}��\�Z\�Xr��9��Ǧju?�\\i\��èyX\rR�8-d�o7�~��\�}\�`5\�a\�nj�\�\n\�>\�\0��&\�d�\���sT\�b7iY�nu�v�>uhJ������L���\�\�e߶\�uE��:}\�l��\�^\�3R\�}L@����GP��	�\�\"A�\��?J}�1U��/mt9\�SN9��wR�\�����\0\0\0\0IEND�B`�'),(55,'Kate','1431-1241','CBAA','Bachelor of Science in Accountancy',2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�An�0E\�\�ޓ\�(\�\rz\�\�\0�\�\r`�\�w�	i�\�.JL`X 4z_\��\�ۘ��j\��\0�SN9\�S[�,_q,ڥ�*���A%IR\�G� I\�W\���A��\�f\0̟��\�a;\�\�:՜�\'��\�d+��Լߢ\�\������)G*A�.�\�M�$I�Vտ65��\�\�}\��\�\�ev\Z3\�!眊\�\�75z�j�H�H\Z�J\�x\�s֣�ګ\�m�{\�\�\�\�~*\�ڤ\�\�/C\�\�z߯G\�Y\�X��6\"��\�Hu�\��>�\�F��R\��TL\��E��\�\�3\�_��u��\�\�K���v|\�W��sL\�\�\�h\�W�Z3Յu홊�J1�\�x\�SH\�1�*ﭤ\��[�J}?Ǵ\�F����ZX)]G��9gL7y�\�v5\�sL\�=m\�\�SN9\�\��R�\�\�\�Is�\0\0\0\0IEND�B`�'),(56,'Paul Gonzaldoo','2131-1231','CBAA','Bachelor of Science in Entrepreneurship',3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\"\0\0\"\0\0\0\0u\�\�\0\0�IDATx�\�Kj\�0D�\"C�6\�\0s�f��u�  -l*I��	!Y\�#\�n/�?T4�vuS��\nO��\0��2\�(��N�\\�DrL�\�\�T\�!(/I�\098p�$\�R�\�u*��\�B\0@9�u\�\�^\��;\Z��\�\�;��y\�@\�\�\�		�n���~T I\0��\�K�9�u\�\�y��\�\n��\��\��\�����\0�fh\�\�\"I����S�\�;}1�\�CD1��5)�35%�c/\�r�\�T׮���>:�\�\��C�՜5�\�Ri�4��}X\�W�n�=\0���y77\�u*Ǿ�x7��\n\�;����#P�\�\�\�\�꒍f�GVs֥\��<��0\0|}��vU\�~�	�: �.\�\�V\�\��\�U˙l~���\��x!°^386ֵg\�z�s,d_����]��2\�,Kis�\�2\�(��2\�o�v\�\�:Z�*\�\0\0\0\0IEND�B`�');
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
