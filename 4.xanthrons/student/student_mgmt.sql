-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: student_mgmt
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB-2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add attendance',7,'add_attendance'),(26,'Can change attendance',7,'change_attendance'),(27,'Can delete attendance',7,'delete_attendance'),(28,'Can view attendance',7,'view_attendance'),(29,'Can add courses',8,'add_courses'),(30,'Can change courses',8,'change_courses'),(31,'Can delete courses',8,'delete_courses'),(32,'Can view courses',8,'view_courses'),(33,'Can add subjects',9,'add_subjects'),(34,'Can change subjects',9,'change_subjects'),(35,'Can delete subjects',9,'delete_subjects'),(36,'Can view subjects',9,'view_subjects'),(37,'Can add students',10,'add_students'),(38,'Can change students',10,'change_students'),(39,'Can delete students',10,'delete_students'),(40,'Can view students',10,'view_students'),(41,'Can add staffs',11,'add_staffs'),(42,'Can change staffs',11,'change_staffs'),(43,'Can delete staffs',11,'delete_staffs'),(44,'Can view staffs',11,'view_staffs'),(45,'Can add notification student',12,'add_notificationstudent'),(46,'Can change notification student',12,'change_notificationstudent'),(47,'Can delete notification student',12,'delete_notificationstudent'),(48,'Can view notification student',12,'view_notificationstudent'),(49,'Can add notification staffs',13,'add_notificationstaffs'),(50,'Can change notification staffs',13,'change_notificationstaffs'),(51,'Can delete notification staffs',13,'delete_notificationstaffs'),(52,'Can view notification staffs',13,'view_notificationstaffs'),(53,'Can add leave report student',14,'add_leavereportstudent'),(54,'Can change leave report student',14,'change_leavereportstudent'),(55,'Can delete leave report student',14,'delete_leavereportstudent'),(56,'Can view leave report student',14,'view_leavereportstudent'),(57,'Can add leave report staff',15,'add_leavereportstaff'),(58,'Can change leave report staff',15,'change_leavereportstaff'),(59,'Can delete leave report staff',15,'delete_leavereportstaff'),(60,'Can view leave report staff',15,'view_leavereportstaff'),(61,'Can add feed back student',16,'add_feedbackstudent'),(62,'Can change feed back student',16,'change_feedbackstudent'),(63,'Can delete feed back student',16,'delete_feedbackstudent'),(64,'Can view feed back student',16,'view_feedbackstudent'),(65,'Can add feed back staffs',17,'add_feedbackstaffs'),(66,'Can change feed back staffs',17,'change_feedbackstaffs'),(67,'Can delete feed back staffs',17,'delete_feedbackstaffs'),(68,'Can view feed back staffs',17,'view_feedbackstaffs'),(69,'Can add attendance report',18,'add_attendancereport'),(70,'Can change attendance report',18,'change_attendancereport'),(71,'Can delete attendance report',18,'delete_attendancereport'),(72,'Can view attendance report',18,'view_attendancereport'),(73,'Can add admin hod',19,'add_adminhod'),(74,'Can change admin hod',19,'change_adminhod'),(75,'Can delete admin hod',19,'delete_adminhod'),(76,'Can view admin hod',19,'view_adminhod'),(77,'Can add session year model',20,'add_sessionyearmodel'),(78,'Can change session year model',20,'change_sessionyearmodel'),(79,'Can delete session year model',20,'delete_sessionyearmodel'),(80,'Can view session year model',20,'view_sessionyearmodel'),(81,'Can add student result',21,'add_studentresult'),(82,'Can change student result',21,'change_studentresult'),(83,'Can delete student result',21,'delete_studentresult'),(84,'Can view student result',21,'view_studentresult');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_student_m` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_student_m` FOREIGN KEY (`user_id`) REFERENCES `student_mgmt_app_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(19,'student_mgmt_app','adminhod'),(7,'student_mgmt_app','attendance'),(18,'student_mgmt_app','attendancereport'),(8,'student_mgmt_app','courses'),(6,'student_mgmt_app','customuser'),(17,'student_mgmt_app','feedbackstaffs'),(16,'student_mgmt_app','feedbackstudent'),(15,'student_mgmt_app','leavereportstaff'),(14,'student_mgmt_app','leavereportstudent'),(13,'student_mgmt_app','notificationstaffs'),(12,'student_mgmt_app','notificationstudent'),(20,'student_mgmt_app','sessionyearmodel'),(11,'student_mgmt_app','staffs'),(21,'student_mgmt_app','studentresult'),(10,'student_mgmt_app','students'),(9,'student_mgmt_app','subjects');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-10 12:02:33.635590'),(2,'contenttypes','0002_remove_content_type_name','2021-07-10 12:02:34.089824'),(3,'auth','0001_initial','2021-07-10 12:02:34.718773'),(4,'auth','0002_alter_permission_name_max_length','2021-07-10 12:02:36.991390'),(5,'auth','0003_alter_user_email_max_length','2021-07-10 12:02:37.010081'),(6,'auth','0004_alter_user_username_opts','2021-07-10 12:02:37.024301'),(7,'auth','0005_alter_user_last_login_null','2021-07-10 12:02:37.043432'),(8,'auth','0006_require_contenttypes_0002','2021-07-10 12:02:37.046929'),(9,'auth','0007_alter_validators_add_error_messages','2021-07-10 12:02:37.061914'),(10,'auth','0008_alter_user_username_max_length','2021-07-10 12:02:37.074883'),(11,'auth','0009_alter_user_last_name_max_length','2021-07-10 12:02:37.085262'),(12,'auth','0010_alter_group_name_max_length','2021-07-10 12:02:37.158269'),(13,'auth','0011_update_proxy_permissions','2021-07-10 12:02:37.175170'),(14,'student_mgmt_app','0001_initial','2021-07-10 12:02:41.527596'),(15,'admin','0001_initial','2021-07-10 12:02:53.092968'),(16,'admin','0002_logentry_remove_auto_add','2021-07-10 12:02:54.308203'),(17,'admin','0003_logentry_add_action_flag_choices','2021-07-10 12:02:54.338981'),(18,'sessions','0001_initial','2021-07-10 12:02:54.506447'),(19,'student_mgmt_app','0002_auto_20210708_0959','2021-07-10 12:02:58.061876'),(20,'student_mgmt_app','0003_auto_20210710_1202','2021-07-10 12:03:04.012652');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4kv3fn21956uxs2r6ao6jlnkcwl4lz1b','NThjNWUwNzk2Y2M3NWU5NTQ4N2RiMTU1ODA3MGM5NzE3ODY4OGJjNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3R1ZGVudF9tZ210X2FwcC5FbWFpbEJhY2tFbmQuRW1haWxCYWNrRW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzVlN2NhZDQ0YmU5ZTgxMjBmOTU5YzE2ZjE0NjBiNmE4N2U2OTExNiJ9','2021-07-26 09:01:25.341665');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_adminhod`
--

DROP TABLE IF EXISTS `student_mgmt_app_adminhod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_adminhod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `student_mgmt_app_adm_admin_id_32a43145_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_mgmt_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_adminhod`
--

LOCK TABLES `student_mgmt_app_adminhod` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_adminhod` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_adminhod` VALUES (1,'2021-07-10 12:04:45.879829','2021-07-10 12:04:45.901986',1);
/*!40000 ALTER TABLE `student_mgmt_app_adminhod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_attendance`
--

DROP TABLE IF EXISTS `student_mgmt_app_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `subject_id_id` int(11) NOT NULL,
  `session_year_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_att_subject_id_id_270a8c5f_fk_student_m` (`subject_id_id`),
  KEY `student_mgmt_app_att_session_year_id_id_47eb2697_fk_student_m` (`session_year_id_id`),
  CONSTRAINT `student_mgmt_app_att_session_year_id_id_47eb2697_fk_student_m` FOREIGN KEY (`session_year_id_id`) REFERENCES `student_mgmt_app_sessionyearmodel` (`id`),
  CONSTRAINT `student_mgmt_app_att_subject_id_id_270a8c5f_fk_student_m` FOREIGN KEY (`subject_id_id`) REFERENCES `student_mgmt_app_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_attendance`
--

LOCK TABLES `student_mgmt_app_attendance` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_attendance` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_attendance` VALUES (1,'2021-07-10','2021-07-10 12:40:10.368875','2021-07-10 12:40:10.368916',1,1);
/*!40000 ALTER TABLE `student_mgmt_app_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_attendancereport`
--

DROP TABLE IF EXISTS `student_mgmt_app_attendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_attendancereport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id_id` int(11) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_att_attendance_id_id_a20127a7_fk_student_m` (`attendance_id_id`),
  KEY `student_mgmt_app_att_student_id_id_50a5c9a3_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_mgmt_app_att_attendance_id_id_a20127a7_fk_student_m` FOREIGN KEY (`attendance_id_id`) REFERENCES `student_mgmt_app_attendance` (`id`),
  CONSTRAINT `student_mgmt_app_att_student_id_id_50a5c9a3_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_mgmt_app_students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_attendancereport`
--

LOCK TABLES `student_mgmt_app_attendancereport` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_attendancereport` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_attendancereport` VALUES (1,1,'2021-07-10 12:40:10.406109','2021-07-10 12:40:10.406149',1,1);
/*!40000 ALTER TABLE `student_mgmt_app_attendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_courses`
--

DROP TABLE IF EXISTS `student_mgmt_app_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_courses`
--

LOCK TABLES `student_mgmt_app_courses` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_courses` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_courses` VALUES (1,'BCA','2021-07-10 12:06:10.155390','2021-07-10 12:06:10.155451'),(2,'BBA','2021-07-10 12:06:13.630414','2021-07-10 12:06:13.630509'),(3,'MBA','2021-07-10 12:06:16.982610','2021-07-10 12:06:16.982718'),(4,'MCA','2021-07-10 12:06:19.955221','2021-07-10 12:06:19.955377');
/*!40000 ALTER TABLE `student_mgmt_app_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_customuser`
--

DROP TABLE IF EXISTS `student_mgmt_app_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_customuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_customuser`
--

LOCK TABLES `student_mgmt_app_customuser` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_customuser` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_customuser` VALUES (1,'pbkdf2_sha256$180000$RIAU0nAzvHMF$s/Ul5NLP/ZmIG7ArVqL1SKI9FM1jrsf4PuPEPPdzAXQ=','2021-07-12 08:59:53.303504',1,'admin','','','admin@gmail.com',1,1,'2021-07-10 12:04:45.724367','1'),(2,'pbkdf2_sha256$180000$rVuR3lGAV3lf$+vHMWXXhRoSHHAnBbwA7sOJKfSy0sWZqCPehJN9srnQ=','2021-07-12 09:00:55.749375',0,'Staff','Staff','Stafflast','staff@gmail.com',0,1,'2021-07-10 12:05:52.594722','2'),(3,'pbkdf2_sha256$180000$m1Q7JKzuY0LP$Rvsl+rAorkbQQAQhc6yeN+hFUIWAHUgE+vIEI6SBXnk=','2021-07-12 09:01:25.329187',0,'student','Student','Studentlast','student@gmail.com',0,1,'2021-07-10 12:12:55.851276','3');
/*!40000 ALTER TABLE `student_mgmt_app_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_customuser_groups`
--

DROP TABLE IF EXISTS `student_mgmt_app_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_customuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_mgmt_app_customu_customuser_id_group_id_36fc1922_uniq` (`customuser_id`,`group_id`),
  KEY `student_mgmt_app_cus_group_id_5e65bae0_fk_auth_grou` (`group_id`),
  CONSTRAINT `student_mgmt_app_cus_customuser_id_06aa62ad_fk_student_m` FOREIGN KEY (`customuser_id`) REFERENCES `student_mgmt_app_customuser` (`id`),
  CONSTRAINT `student_mgmt_app_cus_group_id_5e65bae0_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_customuser_groups`
--

LOCK TABLES `student_mgmt_app_customuser_groups` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_customuser_user_permissions`
--

DROP TABLE IF EXISTS `student_mgmt_app_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_customuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_mgmt_app_customu_customuser_id_permission_6cddcb80_uniq` (`customuser_id`,`permission_id`),
  KEY `student_mgmt_app_cus_permission_id_8f14c408_fk_auth_perm` (`permission_id`),
  CONSTRAINT `student_mgmt_app_cus_customuser_id_9259a666_fk_student_m` FOREIGN KEY (`customuser_id`) REFERENCES `student_mgmt_app_customuser` (`id`),
  CONSTRAINT `student_mgmt_app_cus_permission_id_8f14c408_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_customuser_user_permissions`
--

LOCK TABLES `student_mgmt_app_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_feedbackstaffs`
--

DROP TABLE IF EXISTS `student_mgmt_app_feedbackstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_feedbackstaffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_fee_staff_id_id_ffdfc2d7_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_mgmt_app_fee_staff_id_id_ffdfc2d7_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_mgmt_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_feedbackstaffs`
--

LOCK TABLES `student_mgmt_app_feedbackstaffs` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_feedbackstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_feedbackstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_feedbackstudent`
--

DROP TABLE IF EXISTS `student_mgmt_app_feedbackstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_feedbackstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_fee_student_id_id_21a0f43b_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_mgmt_app_fee_student_id_id_21a0f43b_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_mgmt_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_feedbackstudent`
--

LOCK TABLES `student_mgmt_app_feedbackstudent` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_feedbackstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_feedbackstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_leavereportstaff`
--

DROP TABLE IF EXISTS `student_mgmt_app_leavereportstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_leavereportstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_lea_staff_id_id_f02dbc7f_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_mgmt_app_lea_staff_id_id_f02dbc7f_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_mgmt_app_staffs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_leavereportstaff`
--

LOCK TABLES `student_mgmt_app_leavereportstaff` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_leavereportstaff` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_leavereportstaff` VALUES (1,'2021-07-11','not feeling well',1,'2021-07-10 12:57:55.273537','2021-07-10 13:02:25.536096',1);
/*!40000 ALTER TABLE `student_mgmt_app_leavereportstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_leavereportstudent`
--

DROP TABLE IF EXISTS `student_mgmt_app_leavereportstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_leavereportstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_lea_student_id_id_e62f0376_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_mgmt_app_lea_student_id_id_e62f0376_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_mgmt_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_leavereportstudent`
--

LOCK TABLES `student_mgmt_app_leavereportstudent` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_leavereportstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_leavereportstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_notificationstaffs`
--

DROP TABLE IF EXISTS `student_mgmt_app_notificationstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_notificationstaffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_not_staff_id_id_a249d80d_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_mgmt_app_not_staff_id_id_a249d80d_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_mgmt_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_notificationstaffs`
--

LOCK TABLES `student_mgmt_app_notificationstaffs` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_notificationstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_notificationstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_notificationstudent`
--

DROP TABLE IF EXISTS `student_mgmt_app_notificationstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_notificationstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_not_student_id_id_92caca51_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_mgmt_app_not_student_id_id_92caca51_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_mgmt_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_notificationstudent`
--

LOCK TABLES `student_mgmt_app_notificationstudent` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_notificationstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_notificationstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_sessionyearmodel`
--

DROP TABLE IF EXISTS `student_mgmt_app_sessionyearmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_sessionyearmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_start_year` date NOT NULL,
  `session_end_year` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_sessionyearmodel`
--

LOCK TABLES `student_mgmt_app_sessionyearmodel` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_sessionyearmodel` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_sessionyearmodel` VALUES (1,'2021-06-15','2022-05-28');
/*!40000 ALTER TABLE `student_mgmt_app_sessionyearmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_staffs`
--

DROP TABLE IF EXISTS `student_mgmt_app_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `student_mgmt_app_sta_admin_id_fdc0744e_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_mgmt_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_staffs`
--

LOCK TABLES `student_mgmt_app_staffs` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_staffs` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_staffs` VALUES (1,'staff address','2021-07-10 12:05:52.792733','2021-07-10 12:05:52.882143',2);
/*!40000 ALTER TABLE `student_mgmt_app_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_studentresult`
--

DROP TABLE IF EXISTS `student_mgmt_app_studentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_studentresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_exam_marks` double NOT NULL,
  `subject_assignment_marks` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  `subject_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_stu_student_id_id_cef5717b_fk_student_m` (`student_id_id`),
  KEY `student_mgmt_app_stu_subject_id_id_dbf909d0_fk_student_m` (`subject_id_id`),
  CONSTRAINT `student_mgmt_app_stu_student_id_id_cef5717b_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_mgmt_app_students` (`id`),
  CONSTRAINT `student_mgmt_app_stu_subject_id_id_dbf909d0_fk_student_m` FOREIGN KEY (`subject_id_id`) REFERENCES `student_mgmt_app_subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_studentresult`
--

LOCK TABLES `student_mgmt_app_studentresult` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_studentresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mgmt_app_studentresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_students`
--

DROP TABLE IF EXISTS `student_mgmt_app_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `session_year_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  KEY `student_mgmt_app_stu_course_id_id_6571c5bc_fk_student_m` (`course_id_id`),
  KEY `student_mgmt_app_stu_session_year_id_id_d73e15bf_fk_student_m` (`session_year_id_id`),
  CONSTRAINT `student_mgmt_app_stu_admin_id_69bf9614_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_mgmt_app_customuser` (`id`),
  CONSTRAINT `student_mgmt_app_stu_course_id_id_6571c5bc_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_mgmt_app_courses` (`id`),
  CONSTRAINT `student_mgmt_app_stu_session_year_id_id_d73e15bf_fk_student_m` FOREIGN KEY (`session_year_id_id`) REFERENCES `student_mgmt_app_sessionyearmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_students`
--

LOCK TABLES `student_mgmt_app_students` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_students` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_students` VALUES (1,'Male','/media/New%20Doc%202017-10-04_1_W6xKu1w.jpg','student address','2021-07-10 12:12:56.016092','2021-07-10 12:22:40.303420',3,1,1);
/*!40000 ALTER TABLE `student_mgmt_app_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mgmt_app_subjects`
--

DROP TABLE IF EXISTS `student_mgmt_app_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_mgmt_app_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_mgmt_app_sub_course_id_id_accbe3bd_fk_student_m` (`course_id_id`),
  KEY `student_mgmt_app_sub_staff_id_id_16bee6d1_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_mgmt_app_sub_course_id_id_accbe3bd_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_mgmt_app_courses` (`id`),
  CONSTRAINT `student_mgmt_app_sub_staff_id_id_16bee6d1_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_mgmt_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mgmt_app_subjects`
--

LOCK TABLES `student_mgmt_app_subjects` WRITE;
/*!40000 ALTER TABLE `student_mgmt_app_subjects` DISABLE KEYS */;
INSERT INTO `student_mgmt_app_subjects` VALUES (1,'Python','2021-07-10 12:06:49.983918','2021-07-10 12:06:49.983951',1,2),(2,'C','2021-07-10 12:06:57.082446','2021-07-10 12:06:57.082493',4,2);
/*!40000 ALTER TABLE `student_mgmt_app_subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 14:36:05
