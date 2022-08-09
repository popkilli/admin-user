-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: admin_user
-- ------------------------------------------------------
-- Server version	5.7.37-log

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_fk_1586974` (`country_id`),
  CONSTRAINT `country_fk_1586974` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','af',NULL,NULL,NULL),(2,'Albania','al',NULL,NULL,NULL),(3,'Algeria','dz',NULL,NULL,NULL),(4,'American Samoa','as',NULL,NULL,NULL),(5,'Andorra','ad',NULL,NULL,NULL),(6,'Angola','ao',NULL,NULL,NULL),(7,'Anguilla','ai',NULL,NULL,NULL),(8,'Antarctica','aq',NULL,NULL,NULL),(9,'Antigua and Barbuda','ag',NULL,NULL,NULL),(10,'Argentina','ar',NULL,NULL,NULL),(11,'Armenia','am',NULL,NULL,NULL),(12,'Aruba','aw',NULL,NULL,NULL),(13,'Australia','au',NULL,NULL,NULL),(14,'Austria','at',NULL,NULL,NULL),(15,'Azerbaijan','az',NULL,NULL,NULL),(16,'Bahamas','bs',NULL,NULL,NULL),(17,'Bahrain','bh',NULL,NULL,NULL),(18,'Bangladesh','bd',NULL,NULL,NULL),(19,'Barbados','bb',NULL,NULL,NULL),(20,'Belarus','by',NULL,NULL,NULL),(21,'Belgium','be',NULL,NULL,NULL),(22,'Belize','bz',NULL,NULL,NULL),(23,'Benin','bj',NULL,NULL,NULL),(24,'Bermuda','bm',NULL,NULL,NULL),(25,'Bhutan','bt',NULL,NULL,NULL),(26,'Bolivia','bo',NULL,NULL,NULL),(27,'Bosnia and Herzegovina','ba',NULL,NULL,NULL),(28,'Botswana','bw',NULL,NULL,NULL),(29,'Brazil','br',NULL,NULL,NULL),(30,'British Indian Ocean Territory','io',NULL,NULL,NULL),(31,'British Virgin Islands','vg',NULL,NULL,NULL),(32,'Brunei','bn',NULL,NULL,NULL),(33,'Bulgaria','bg',NULL,NULL,NULL),(34,'Burkina Faso','bf',NULL,NULL,NULL),(35,'Burundi','bi',NULL,NULL,NULL),(36,'Cambodia','kh',NULL,NULL,NULL),(37,'Cameroon','cm',NULL,NULL,NULL),(38,'Canada','ca',NULL,NULL,NULL),(39,'Cape Verde','cv',NULL,NULL,NULL),(40,'Cayman Islands','ky',NULL,NULL,NULL),(41,'Central African Republic','cf',NULL,NULL,NULL),(42,'Chad','td',NULL,NULL,NULL),(43,'Chile','cl',NULL,NULL,NULL),(44,'China','cn',NULL,NULL,NULL),(45,'Christmas Island','cx',NULL,NULL,NULL),(46,'Cocos Islands','cc',NULL,NULL,NULL),(47,'Colombia','co',NULL,NULL,NULL),(48,'Comoros','km',NULL,NULL,NULL),(49,'Cook Islands','ck',NULL,NULL,NULL),(50,'Costa Rica','cr',NULL,NULL,NULL),(51,'Croatia','hr',NULL,NULL,NULL),(52,'Cuba','cu',NULL,NULL,NULL),(53,'Curacao','cw',NULL,NULL,NULL),(54,'Cyprus','cy',NULL,NULL,NULL),(55,'Czech Republic','cz',NULL,NULL,NULL),(56,'Democratic Republic of the Congo','cd',NULL,NULL,NULL),(57,'Denmark','dk',NULL,NULL,NULL),(58,'Djibouti','dj',NULL,NULL,NULL),(59,'Dominica','dm',NULL,NULL,NULL),(60,'Dominican Republic','do',NULL,NULL,NULL),(61,'East Timor','tl',NULL,NULL,NULL),(62,'Ecuador','ec',NULL,NULL,NULL),(63,'Egypt','eg',NULL,NULL,NULL),(64,'El Salvador','sv',NULL,NULL,NULL),(65,'Equatorial Guinea','gq',NULL,NULL,NULL),(66,'Eritrea','er',NULL,NULL,NULL),(67,'Estonia','ee',NULL,NULL,NULL),(68,'Ethiopia','et',NULL,NULL,NULL),(69,'Falkland Islands','fk',NULL,NULL,NULL),(70,'Faroe Islands','fo',NULL,NULL,NULL),(71,'Fiji','fj',NULL,NULL,NULL),(72,'Finland','fi',NULL,NULL,NULL),(73,'France','fr',NULL,NULL,NULL),(74,'French Polynesia','pf',NULL,NULL,NULL),(75,'Gabon','ga',NULL,NULL,NULL),(76,'Gambia','gm',NULL,NULL,NULL),(77,'Georgia','ge',NULL,NULL,NULL),(78,'Germany','de',NULL,NULL,NULL),(79,'Ghana','gh',NULL,NULL,NULL),(80,'Gibraltar','gi',NULL,NULL,NULL),(81,'Greece','gr',NULL,NULL,NULL),(82,'Greenland','gl',NULL,NULL,NULL),(83,'Grenada','gd',NULL,NULL,NULL),(84,'Guam','gu',NULL,NULL,NULL),(85,'Guatemala','gt',NULL,NULL,NULL),(86,'Guernsey','gg',NULL,NULL,NULL),(87,'Guinea','gn',NULL,NULL,NULL),(88,'Guinea-Bissau','gw',NULL,NULL,NULL),(89,'Guyana','gy',NULL,NULL,NULL),(90,'Haiti','ht',NULL,NULL,NULL),(91,'Honduras','hn',NULL,NULL,NULL),(92,'Hong Kong','hk',NULL,NULL,NULL),(93,'Hungary','hu',NULL,NULL,NULL),(94,'Iceland','is',NULL,NULL,NULL),(95,'India','in',NULL,NULL,NULL),(96,'Indonesia','id',NULL,NULL,NULL),(97,'Iran','ir',NULL,NULL,NULL),(98,'Iraq','iq',NULL,NULL,NULL),(99,'Ireland','ie',NULL,NULL,NULL),(100,'Isle of Man','im',NULL,NULL,NULL),(101,'Israel','il',NULL,NULL,NULL),(102,'Italy','it',NULL,NULL,NULL),(103,'Ivory Coast','ci',NULL,NULL,NULL),(104,'Jamaica','jm',NULL,NULL,NULL),(105,'Japan','jp',NULL,NULL,NULL),(106,'Jersey','je',NULL,NULL,NULL),(107,'Jordan','jo',NULL,NULL,NULL),(108,'Kazakhstan','kz',NULL,NULL,NULL),(109,'Kenya','ke',NULL,NULL,NULL),(110,'Kiribati','ki',NULL,NULL,NULL),(111,'Kosovo','xk',NULL,NULL,NULL),(112,'Kuwait','kw',NULL,NULL,NULL),(113,'Kyrgyzstan','kg',NULL,NULL,NULL),(114,'Laos','la',NULL,NULL,NULL),(115,'Latvia','lv',NULL,NULL,NULL),(116,'Lebanon','lb',NULL,NULL,NULL),(117,'Lesotho','ls',NULL,NULL,NULL),(118,'Liberia','lr',NULL,NULL,NULL),(119,'Libya','ly',NULL,NULL,NULL),(120,'Liechtenstein','li',NULL,NULL,NULL),(121,'Lithuania','lt',NULL,NULL,NULL),(122,'Luxembourg','lu',NULL,NULL,NULL),(123,'Macau','mo',NULL,NULL,NULL),(124,'Macedonia','mk',NULL,NULL,NULL),(125,'Madagascar','mg',NULL,NULL,NULL),(126,'Malawi','mw',NULL,NULL,NULL),(127,'Malaysia','my',NULL,NULL,NULL),(128,'Maldives','mv',NULL,NULL,NULL),(129,'Mali','ml',NULL,NULL,NULL),(130,'Malta','mt',NULL,NULL,NULL),(131,'Marshall Islands','mh',NULL,NULL,NULL),(132,'Mauritania','mr',NULL,NULL,NULL),(133,'Mauritius','mu',NULL,NULL,NULL),(134,'Mayotte','yt',NULL,NULL,NULL),(135,'Mexico','mx',NULL,NULL,NULL),(136,'Micronesia','fm',NULL,NULL,NULL),(137,'Moldova','md',NULL,NULL,NULL),(138,'Monaco','mc',NULL,NULL,NULL),(139,'Mongolia','mn',NULL,NULL,NULL),(140,'Montenegro','me',NULL,NULL,NULL),(141,'Montserrat','ms',NULL,NULL,NULL),(142,'Morocco','ma',NULL,NULL,NULL),(143,'Mozambique','mz',NULL,NULL,NULL),(144,'Myanmar','mm',NULL,NULL,NULL),(145,'Namibia','na',NULL,NULL,NULL),(146,'Nauru','nr',NULL,NULL,NULL),(147,'Nepal','np',NULL,NULL,NULL),(148,'Netherlands','nl',NULL,NULL,NULL),(149,'Netherlands Antilles','an',NULL,NULL,NULL),(150,'New Caledonia','nc',NULL,NULL,NULL),(151,'New Zealand','nz',NULL,NULL,NULL),(152,'Nicaragua','ni',NULL,NULL,NULL),(153,'Niger','ne',NULL,NULL,NULL),(154,'Nigeria','ng',NULL,NULL,NULL),(155,'Niue','nu',NULL,NULL,NULL),(156,'North Korea','kp',NULL,NULL,NULL),(157,'Northern Mariana Islands','mp',NULL,NULL,NULL),(158,'Norway','no',NULL,NULL,NULL),(159,'Oman','om',NULL,NULL,NULL),(160,'Pakistan','pk',NULL,NULL,NULL),(161,'Palau','pw',NULL,NULL,NULL),(162,'Palestine','ps',NULL,NULL,NULL),(163,'Panama','pa',NULL,NULL,NULL),(164,'Papua New Guinea','pg',NULL,NULL,NULL),(165,'Paraguay','py',NULL,NULL,NULL),(166,'Peru','pe',NULL,NULL,NULL),(167,'Philippines','ph',NULL,NULL,NULL),(168,'Pitcairn','pn',NULL,NULL,NULL),(169,'Poland','pl',NULL,NULL,NULL),(170,'Portugal','pt',NULL,NULL,NULL),(171,'Puerto Rico','pr',NULL,NULL,NULL),(172,'Qatar','qa',NULL,NULL,NULL),(173,'Republic of the Congo','cg',NULL,NULL,NULL),(174,'Reunion','re',NULL,NULL,NULL),(175,'Romania','ro',NULL,NULL,NULL),(176,'Russia','ru',NULL,NULL,NULL),(177,'Rwanda','rw',NULL,NULL,NULL),(178,'Saint Barthelemy','bl',NULL,NULL,NULL),(179,'Saint Helena','sh',NULL,NULL,NULL),(180,'Saint Kitts and Nevis','kn',NULL,NULL,NULL),(181,'Saint Lucia','lc',NULL,NULL,NULL),(182,'Saint Martin','mf',NULL,NULL,NULL),(183,'Saint Pierre and Miquelon','pm',NULL,NULL,NULL),(184,'Saint Vincent and the Grenadines','vc',NULL,NULL,NULL),(185,'Samoa','ws',NULL,NULL,NULL),(186,'San Marino','sm',NULL,NULL,NULL),(187,'Sao Tome and Principe','st',NULL,NULL,NULL),(188,'Saudi Arabia','sa',NULL,NULL,NULL),(189,'Senegal','sn',NULL,NULL,NULL),(190,'Serbia','rs',NULL,NULL,NULL),(191,'Seychelles','sc',NULL,NULL,NULL),(192,'Sierra Leone','sl',NULL,NULL,NULL),(193,'Singapore','sg',NULL,NULL,NULL),(194,'Sint Maarten','sx',NULL,NULL,NULL),(195,'Slovakia','sk',NULL,NULL,NULL),(196,'Slovenia','si',NULL,NULL,NULL),(197,'Solomon Islands','sb',NULL,NULL,NULL),(198,'Somalia','so',NULL,NULL,NULL),(199,'South Africa','za',NULL,NULL,NULL),(200,'South Korea','kr',NULL,NULL,NULL),(201,'South Sudan','ss',NULL,NULL,NULL),(202,'Spain','es',NULL,NULL,NULL),(203,'Sri Lanka','lk',NULL,NULL,NULL),(204,'Sudan','sd',NULL,NULL,NULL),(205,'Suriname','sr',NULL,NULL,NULL),(206,'Svalbard and Jan Mayen','sj',NULL,NULL,NULL),(207,'Swaziland','sz',NULL,NULL,NULL),(208,'Sweden','se',NULL,NULL,NULL),(209,'Switzerland','ch',NULL,NULL,NULL),(210,'Syria','sy',NULL,NULL,NULL),(211,'Taiwan','tw',NULL,NULL,NULL),(212,'Tajikistan','tj',NULL,NULL,NULL),(213,'Tanzania','tz',NULL,NULL,NULL),(214,'Thailand','th',NULL,NULL,NULL),(215,'Togo','tg',NULL,NULL,NULL),(216,'Tokelau','tk',NULL,NULL,NULL),(217,'Tonga','to',NULL,NULL,NULL),(218,'Trinidad and Tobago','tt',NULL,NULL,NULL),(219,'Tunisia','tn',NULL,NULL,NULL),(220,'Turkey','tr',NULL,NULL,NULL),(221,'Turkmenistan','tm',NULL,NULL,NULL),(222,'Turks and Caicos Islands','tc',NULL,NULL,NULL),(223,'Tuvalu','tv',NULL,NULL,NULL),(224,'U.S. Virgin Islands','vi',NULL,NULL,NULL),(225,'Uganda','ug',NULL,NULL,NULL),(226,'Ukraine','ua',NULL,NULL,NULL),(227,'United Arab Emirates','ae',NULL,NULL,NULL),(228,'United Kingdom','gb',NULL,NULL,NULL),(229,'United States','us',NULL,NULL,NULL),(230,'Uruguay','uy',NULL,NULL,NULL),(231,'Uzbekistan','uz',NULL,NULL,NULL),(232,'Vanuatu','vu',NULL,NULL,NULL),(233,'Vatican','va',NULL,NULL,NULL),(234,'Venezuela','ve',NULL,NULL,NULL),(235,'Vietnam','vn',NULL,NULL,NULL),(236,'Wallis and Futuna','wf',NULL,NULL,NULL),(237,'Western Sahara','eh',NULL,NULL,NULL),(238,'Yemen','ye',NULL,NULL,NULL),(239,'Zambia','zm',NULL,NULL,NULL),(240,'Zimbabwe','zw',NULL,NULL,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2020_06_04_000001_create_permissions_table',1),(8,'2020_06_04_000002_create_roles_table',1),(9,'2020_06_04_000003_create_users_table',1),(10,'2020_06_04_000004_create_countries_table',1),(11,'2020_06_04_000005_create_cities_table',1),(12,'2020_06_04_000006_create_trips_table',1),(13,'2020_06_04_000007_create_permission_role_pivot_table',1),(14,'2020_06_04_000008_create_role_user_pivot_table',1),(15,'2020_06_04_000009_add_relationship_fields_to_cities_table',1),(16,'2020_06_04_000010_add_relationship_fields_to_trips_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  KEY `role_id_fk_1586949` (`role_id`),
  KEY `permission_id_fk_1586949` (`permission_id`),
  CONSTRAINT `permission_id_fk_1586949` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_id_fk_1586949` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'user_management_access',NULL,NULL,NULL),(2,'permission_create',NULL,NULL,NULL),(3,'permission_edit',NULL,NULL,NULL),(4,'permission_show',NULL,NULL,NULL),(5,'permission_delete',NULL,NULL,NULL),(6,'permission_access',NULL,NULL,NULL),(7,'role_create',NULL,NULL,NULL),(8,'role_edit',NULL,NULL,NULL),(9,'role_show',NULL,NULL,NULL),(10,'role_delete',NULL,NULL,NULL),(11,'role_access',NULL,NULL,NULL),(12,'user_create',NULL,NULL,NULL),(13,'user_edit',NULL,NULL,NULL),(14,'user_show',NULL,NULL,NULL),(15,'user_delete',NULL,NULL,NULL),(16,'user_access',NULL,NULL,NULL),(17,'country_create',NULL,NULL,NULL),(18,'country_edit',NULL,NULL,NULL),(19,'country_show',NULL,NULL,NULL),(20,'country_delete',NULL,NULL,NULL),(21,'country_access',NULL,NULL,NULL),(22,'city_create',NULL,NULL,NULL),(23,'city_edit',NULL,NULL,NULL),(24,'city_show',NULL,NULL,NULL),(25,'city_delete',NULL,NULL,NULL),(26,'city_access',NULL,NULL,NULL),(27,'trip_create',NULL,NULL,NULL),(28,'trip_edit',NULL,NULL,NULL),(29,'trip_show',NULL,NULL,NULL),(30,'trip_delete',NULL,NULL,NULL),(31,'trip_access',NULL,NULL,NULL),(32,'profile_password_edit',NULL,NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  KEY `user_id_fk_1586958` (`user_id`),
  KEY `role_id_fk_1586958` (`role_id`),
  CONSTRAINT `role_id_fk_1586958` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_1586958` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,2),(2,1),(24,2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin',NULL,NULL,NULL),(2,'User',NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city_from_id` int(10) unsigned NOT NULL,
  `city_to_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_from_fk_1587040` (`city_from_id`),
  KEY `city_to_fk_1587042` (`city_to_id`),
  CONSTRAINT `city_from_fk_1587040` FOREIGN KEY (`city_from_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `city_to_fk_1587042` FOREIGN KEY (`city_to_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'User','user@admin.com',NULL,'$2y$10$RmpANVeJx9Wzail8r/6J1eJhVgtOab0ewrgxYa3XPF853k4sloiRm',NULL,NULL,NULL,NULL),(2,'Admin','admin@admin.com',NULL,'$2y$10$RmpANVeJx9Wzail8r/6J1eJhVgtOab0ewrgxYa3XPF853k4sloiRm',NULL,NULL,NULL,NULL),(24,'ABC','a@abc.com',NULL,'$2y$10$VSff0Cz3JWEedEmttAiEIuTGeRjNvXz83dqscz9eFzqqNIzkENDQ6',NULL,'2022-08-09 03:58:12','2022-08-09 03:58:12',NULL);
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

-- Dump completed on 2022-08-09 20:09:52
