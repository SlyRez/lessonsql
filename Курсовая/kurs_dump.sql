-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: visit_registration
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.10.1

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Бокситогорский муниципальный район'),(2,'Волосовский муниципальный район'),(3,'Волховский муниципальный район'),(4,'Всеволожский муниципальный район'),(5,'Выборгский муниципальный район'),(6,'Гатчинский муниципальный район'),(7,'Кингисеппский муниципальный район'),(8,'Киришский муниципальный район'),(9,'Кировский муниципальный район'),(10,'Лодейнопольский муниципальный район'),(11,'Ломоносовский муниципальный район'),(12,'Лужский муниципальный район'),(13,'Подпорожский муниципальный район'),(14,'Приозерский муниципальный район'),(15,'Сланцевский муниципальный район'),(16,'Сосновоборский городской округ'),(17,'Тихвинский муниципальный район'),(18,'Тосненский муниципальный район');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territory`
--

DROP TABLE IF EXISTS `territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `area_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `territory_fk_area_id` (`area_id`),
  CONSTRAINT `territory_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territory`
--

LOCK TABLES `territory` WRITE;
/*!40000 ALTER TABLE `territory` DISABLE KEYS */;
INSERT INTO `territory` VALUES (1,'aabfaedeeeeeaadd',1),(2,'cbaebbdbbfc',2),(3,'caedeccbefbeadcafa',3),(4,'cedcebbefd',4),(5,'debefcfeafee',5),(6,'bbfaffabedfaa',6),(7,'dcfadfdd',7),(8,'ffecdeaabfc',8),(9,'afcbaeaefa',9),(10,'bebccc',10),(11,'afbafedefccf',11),(12,'acadfbced',12),(13,'adeeeaaaaf',13),(14,'ebffcceacbcddcfcdb',14),(15,'dccecfabd',15),(16,'edbeaacbdbb',16),(17,'accfabccbeccece',17),(18,'cadbebdcbfdddfebcecb',18),(19,'ccfeaabccb',13),(20,'deceabcbbaf',10),(21,'dbecbeebbfcfbec',18),(22,'dbbceecfaedae',13),(23,'adaadefaafdccdeed',13);
/*!40000 ALTER TABLE `territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'bbbfdabdafabacaaf','ddfececdcdde'),(2,'fbbaeefddebdfc','ceedadceaa'),(3,'bfdbdbdabdfa','ccdcbebbe'),(4,'decccadcebdba','aeddcabddbfc'),(5,'acecbfa','eaffbaebae'),(6,'ffdfbcfed','ceedeaaececdf'),(7,'dcfdcbbae','ffbcccdffdceebd'),(8,'caeebddacaddebb','ebbbbecadebbee'),(9,'abcffdcefece','ccfcaad'),(10,'ddeedfddbfc','dedfbddbaccfe');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `patronymic_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'qwe','qwe','qwe','qwe@qwe','123456','2021-04-11 14:58:29','2021-04-11 14:58:29'),(2,'dcfadfbfaabffc','cfebdbfbdddbc','cefdcebecead','7280715@mail.com','+96 250 347 9842','1993-06-06 03:06:32','2021-04-11 15:28:17'),(3,'affdaaaaadfabfcf','becfdab','bcbabcbebafbf','ebbb9d874378f8@mail.com','+10 704 207 9264','2020-12-30 21:15:08','2021-04-11 15:28:19'),(4,'ecdcdeabeaeaccbe','cefabcaaed','cefeddcedfcaceb','1ab44f84246@mail.com','+76 130 350 3600','1997-07-11 23:50:23','2021-04-11 15:28:20'),(5,'ccfdeceeaec','eebdfbdefab','ffbecdfabadcb','0aa4642f2ede5d@mail.com','+29 723 724 4517','2018-07-28 21:00:50','2021-04-11 15:28:20'),(6,'dcadfdccfdafe','ecfceccfdfbfd','ddaaacbcbaea','e964c4c@mail.com','+89 17 399 9447','2004-08-16 17:08:50','2021-04-11 15:28:21'),(7,'ddbcbdfebdcbcbd','deaccfabacfc','deefafcbadde','97ea4f42e6ba@mail.com','+63 169 944 2129','2013-12-01 05:14:43','2021-04-11 15:28:27'),(8,'affdcefffddfbf','bcdadbfacabb','ddcaefffcabf','d6da7b25@mail.com','+53 731 54 753','2014-06-27 13:07:30','2021-04-11 15:28:27'),(9,'fabaeddafacb','fcddcadbf','cfcdcbcddf','4f5c90f@mail.com','+62 679 513 5290','2017-12-24 08:22:07','2021-04-11 15:28:27'),(10,'dfebbafbdedeacdea','bbecbabbfddfa','aabababacfaccf','191ea8ce42247@mail.com','+0 693 440 1210','2012-03-27 01:25:53','2021-04-11 15:28:28'),(11,'ebbefbcefffefad','cdccbcafeebdfecc','cebfdcdafdbab','26b7dc1@mail.com','+62 548 862 6672','1997-07-20 11:36:05','2021-04-11 15:28:28'),(12,'cdcfdbfaadfe','aadbccefeabed','eefadeabe','fa1689@mail.com','+10 293 150 8718','1992-06-24 09:07:57','2021-04-11 15:28:28'),(13,'dbcecbaeecfcdfb','ddcafcbdecc','cadeaeecbab','7b92bea@mail.com','+65 675 402 9842','1998-08-19 06:09:11','2021-04-11 15:28:28'),(14,'caeefeadadae','ebadbbdadacff','acadbdbfcbacde','3f8cf41a415da@mail.com','+9 131 379 5019','2009-06-21 18:39:20','2021-04-11 15:28:28'),(15,'acbfbdebbcceb','cfccfdaaaeafeaf','afeccbbfab','c846d721@mail.com','+78 960 460 4209','1998-05-03 23:16:28','2021-04-11 15:28:29'),(16,'ebbecbabeaf','adafbafbfa','accebefaeaeaafcd','3dc2d1@mail.com','+55 445 576 5437','1989-11-25 03:21:31','2021-04-11 15:28:29'),(17,'abdbecfccbb','baeffcbdedc','eeefcacebdfbbfce','43088@mail.com','+60 921 800 2387','1996-03-13 07:33:20','2021-04-11 15:28:29'),(18,'cccabdaff','addebbdc','ffbfdebffcccdd','e3e1bd5410f2@mail.com','+99 997 8 502','2014-02-24 07:11:29','2021-04-11 15:28:29'),(19,'fcdcfaa','ecbbcddb','caafeedfbe','c653e1d69e18@mail.com','+25 230 383 2245','1990-06-07 17:30:38','2021-04-11 15:28:29'),(20,'abdabfefaaf','ecdebfdecccff','fccbabeaecee','b901fd@mail.com','+63 823 211 5876','2011-09-01 05:30:54','2021-04-11 15:28:30'),(21,'ebcccfbcefba','fcfadfcee','eadcdabd','19d371e766a@mail.com','+72 936 512 7506','2014-05-27 21:02:11','2021-04-11 15:28:30'),(22,'babdcbbbe','faabcdcaeaddabe','edcebada','a684bca26f8d1@mail.com','+72 269 174 667','1995-08-20 13:56:06','2021-04-11 15:28:30'),(23,'fdfdbabddafdfea','aefbdfcbfabcaccaf','eafacaaacf','f73ac9e9aafb96@mail.com','+29 646 353 8293','2018-07-31 20:58:23','2021-04-11 15:28:30'),(24,'dabfbfebbdda','dbcbaaed','afbfabebaecb','64fe6b68e@mail.com','+10 263 986 1417','1997-07-08 01:10:58','2021-04-11 15:28:30'),(25,'bacdbaabaeeb','dbdcfbbdafbcfbd','efdbacbf','e12a1e46@mail.com','+83 281 905 6818','1999-04-14 17:46:19','2021-04-11 15:28:41'),(26,'eeafadbb','ffdbdfbdddafd','eeabafcfeefdedeb','c413695fd9@mail.com','+86 722 23 9517','1999-07-07 11:53:14','2021-04-11 15:28:41'),(27,'ffaaadeffedcaced','edfbdcafdcffee','ccfbaefcacfebf','90c877098e24@mail.com','+98 940 759 9764','2002-02-25 11:48:18','2021-04-11 15:28:41'),(28,'cdabaffabeaeb','fffecfbccaacbec','beeddbaeacdabdecfa','16f9ce5264@mail.com','+6 682 221 584','2001-05-06 18:59:48','2021-04-11 15:28:41'),(29,'bcbbdefcb','eafcdfacffd','edefdaabffabfaf','3d38578f489@mail.com','+30 722 702 3452','2001-09-10 20:05:11','2021-04-11 15:28:41'),(30,'dbbcedacf','ababbfabcdff','cdaabeedbcdec','cedbb505a@mail.com','+11 431 816 7888','2005-08-09 15:24:59','2021-04-11 15:28:42'),(31,'dbfdebcebcec','aadcbcfacbaa','dbcdcbbddebfcfef','ca896ddce@mail.com','+47 43 789 8174','1998-07-06 22:42:36','2021-04-11 15:28:42'),(32,'debffeaebffaa','ecfe','ceefedadeadbef','88ffd83984e2a@mail.com','+31 76 425 8967','2014-09-10 21:50:54','2021-04-11 15:28:42'),(33,'fbabacfdccfbad','bacafefda','efaedfbdfcc','afcbaf3dc@mail.com','+36 603 928 8297','2009-09-22 05:30:18','2021-04-11 15:28:42'),(34,'cbdfebefde','ceaaeafaaccafa','cebababade','13eb62edb98@mail.com','+48 587 473 6054','2002-01-29 21:05:50','2021-04-11 15:28:42'),(35,'bfabadcaddfeeee','bcadebadfdacdb','dbccedbbebceac','a873e20@mail.com','+29 821 234 7051','1995-03-10 09:12:02','2021-04-11 15:28:42'),(36,'bdbcaadfaadfcbdce','efceae','afdebdcafcb','af78732623da0@mail.com','+85 923 65 5594','2002-04-15 11:59:38','2021-04-11 15:28:43'),(37,'acaeeeeeaccfabf','bbafabbcfdfdea','bbdaabeadaa','b993ea714d3b@mail.com','+31 577 937 9547','1990-10-30 15:30:22','2021-04-11 15:28:43'),(38,'dfdacecff','beebbca','fcdbefeac','e5e186403797fa@mail.com','+67 671 339 6826','2008-09-28 22:31:21','2021-04-11 15:28:43'),(39,'bfbbeecccafb','bdfedfabceeeb','ebbaceeecffda','26132c4@mail.com','+52 971 284 5059','1999-10-26 05:59:06','2021-04-11 15:28:43'),(40,'edcbeeacccfb','ddaacbeccde','efbecaf','f25bb7eb8d97b@mail.com','+11 207 694 8476','2016-05-09 09:39:24','2021-04-11 15:28:43'),(41,'eccacbaddcfbbfbc','bddcddafddefef','acfcbcdadafff','e6e65172b7fa476@mail.com','+38 33 7 9371','2000-04-05 10:48:47','2021-04-11 15:28:43'),(42,'febdfbbdfcb','fbfbdfcdffa','ebaacebecbbbbadcc','8625354@mail.com','+38 420 945 4661','2005-08-19 05:09:20','2021-04-11 15:28:44'),(43,'dceeafcbbccc','eafaabfbecebeedaded','abecfedfdef','037765@mail.com','+2 854 198 4281','2003-12-15 12:52:17','2021-04-11 15:28:44'),(44,'dafcaaab','fcfaebffa','ebeaebbdd','afbc28f6a3d@mail.com','+77 198 665 7311','2000-05-10 21:13:09','2021-04-11 15:28:48'),(45,'ffadedbaffbdfb','fafbdefbcdb','effaabeffffb','f8b3e056239@mail.com','+70 691 336 6070','2020-06-16 22:07:49','2021-04-11 15:28:49'),(46,'bebeaccdbee','fdeaadede','bbefbdfedcedf','293588e184@mail.com','+52 34 584 8208','2010-03-03 08:12:01','2021-04-11 15:28:49'),(47,'feebaafbcafe','aefdeebfedcfbbeb','cadabceecbd','debd8e8fc@mail.com','+76 561 498 8091','2003-11-15 12:44:21','2021-04-11 15:28:49'),(48,'fbdbebeaaba','cdabdbfccfc','bbcedbfcbeed','bf88d@mail.com','+86 203 426 5240','2010-07-10 01:55:16','2021-04-11 15:28:49'),(49,'eafeeefaaedbbbee','babcdabeeefaae','fbefcbcffdefefebed','a3ff8b96e5@mail.com','+43 731 348 5458','1999-08-01 02:32:03','2021-04-11 15:28:49'),(50,'bafeedbddbccebfb','fdffbbfbeff','bbaadfdffbdcbd','95e05cc9ed@mail.com','+27 963 1 1194','2002-07-17 01:42:35','2021-04-11 15:28:49'),(51,'acfabdfdc','cdfdaefeafdb','fececdfbb','d74a76efe623b@mail.com','+9 81 134 4273','1998-01-09 18:53:38','2021-04-11 15:28:50'),(52,'defcbdbcbacabfb','abbcceabafabc','efebfbfe','e6f739b3@mail.com','+11 579 562 765','1999-04-08 17:06:43','2021-04-11 15:28:50'),(53,'dddbecdbaefddfd','aeabcbdaab','badedcdafebdd','229fe101@mail.com','+47 636 744 8107','1995-04-01 12:49:55','2021-04-11 15:28:50'),(54,'aeddaefbebfdb','fbebeabdcd','edfffefdf','efb7ebb93297e6@mail.com','+90 818 389 4920','2012-01-10 15:16:36','2021-04-11 15:28:50'),(55,'cfdececddfecfd','abceaffedfbdeb','fbccefafeff','5b4a4d2@mail.com','+10 998 672 3692','1995-01-22 10:47:21','2021-04-11 15:28:50'),(56,'efcdbcacdcc','bdeccceabd','faccbdeccb','4a46ccc@mail.com','+16 296 994 840','2007-06-19 01:09:06','2021-04-11 15:28:51'),(57,'aacdbbeabea','fdcedcbeddcbbcf','baebbdacadf','0e2b7616@mail.com','+13 652 845 2691','1995-08-25 18:26:33','2021-04-11 15:28:52'),(58,'ececfddaffdecbfcd','dfbebdece','cfabfeefe','0377c4@mail.com','+23 896 781 2188','1997-07-05 16:14:35','2021-04-11 15:28:52'),(59,'deebbaedfcdce','dadac','cafafdcbabaf','8155cee51@mail.com','+53 483 821 6588','1995-01-06 00:30:18','2021-04-11 15:28:52'),(60,'daecaebfffd','beacdfdfcafedcccfc','edbefabcaacd','0ddcbe2@mail.com','+25 689 670 2848','2008-03-27 15:33:37','2021-04-11 15:28:53'),(61,'cfdbbffaddaab','cacabeaebafebabbd','eeecfbcfece','74f2bf@mail.com','+81 659 847 2599','1997-04-27 02:38:43','2021-04-11 15:28:53'),(62,'bccbfbedcec','abbbbafbbfbedfee','abddadecedba','fc8d61b@mail.com','+74 257 61 5349','2005-10-01 07:25:20','2021-04-11 15:28:53'),(63,'aaeffddaccbebaa','daeffdeebdaccf','cdcbafecfabed','d6ae78d2fa1d10c@mail.com','+7 486 208 5816','2012-04-20 23:06:27','2021-04-11 15:28:53'),(64,'fabddbddfeeeeb','ccfffdbdbcfb','fbfacadceedbdcb','940174@mail.com','+72 465 152 3653','2009-07-28 16:28:58','2021-04-11 15:28:53'),(65,'baecffeda','caabebaeedc','afeefaeeaddd','7ce046d50def299@mail.com','+83 305 26 2149','1989-09-11 12:52:03','2021-04-11 15:28:53'),(66,'daddbbfbfedbfdc','bfaaabdeabde','cecafffdbecd','c1d7e496@mail.com','+27 329 819 1108','2018-04-06 14:49:07','2021-04-11 15:28:54'),(67,'fbecfdedffdcce','ecaddfbddfc','fbaccfaa','2c39b276@mail.com','+41 128 395 5942','1996-06-09 16:15:39','2021-04-11 15:28:54'),(68,'aaddafcbedccbda','cceffabefa','dfaaccdfcb','4fbd960@mail.com','+40 348 522 5670','2012-10-09 05:47:36','2021-04-11 15:28:54'),(69,'decabfdfdefce','adceeecfbcbffabdac','daccaacb','0a1be3d@mail.com','+58 427 395 6966','2011-12-01 16:38:14','2021-04-11 15:28:54'),(70,'daccbaceeaec','dfefbbdedcfffb','aeeeecaebfa','b93cbaa6@mail.com','+14 885 992 3041','2004-01-15 00:55:18','2021-04-11 15:28:54'),(71,'cefefbffdefddafe','dbdeddcbadbbfee','fcfeafed','5440fb835902d@mail.com','+26 869 553 1609','2016-09-23 10:19:57','2021-04-11 15:28:55'),(72,'ffdfbffadcfae','abdeffdadbaeb','baeeeecbbd','1a44102f503d9@mail.com','+17 351 225 718','1999-08-08 09:23:55','2021-04-11 15:28:55'),(73,'acccdecaafcde','ffaaaddeaddec','acfcdabcbddcdab','fa372d5f@mail.com','+73 809 835 7504','2013-07-08 12:22:19','2021-04-11 15:28:55'),(74,'afcefdacfbfff','eddbddcadeecbc','dfefebdfbccf','ce83571c@mail.com','+22 259 628 3606','1992-02-26 18:08:50','2021-04-11 15:28:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_info`
--

DROP TABLE IF EXISTS `visit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `area_id` int unsigned NOT NULL,
  `visit_time` datetime DEFAULT NULL,
  `theme_id` int unsigned NOT NULL,
  `description` text,
  `acc_number` int DEFAULT NULL,
  `status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_info_fk_user_id` (`user_id`),
  KEY `visit_info_fk_area_id` (`area_id`),
  KEY `visit_info_fk_theme_id` (`theme_id`),
  KEY `visit_info_fk_status_id` (`status_id`),
  CONSTRAINT `visit_info_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  CONSTRAINT `visit_info_fk_status_id` FOREIGN KEY (`status_id`) REFERENCES `visit_status` (`id`),
  CONSTRAINT `visit_info_fk_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  CONSTRAINT `visit_info_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_info`
--

LOCK TABLES `visit_info` WRITE;
/*!40000 ALTER TABLE `visit_info` DISABLE KEYS */;
INSERT INTO `visit_info` VALUES (1,14,2,'2021-04-11 04:20:46',4,'bcdeeafdbdbdccfe fafafdedebc bcbbebacbde',1000000000,4),(2,22,3,'2021-04-11 21:46:59',5,'abacaddddffddffd aefcfdbae dabecaaaaabe',11818605,4),(3,8,15,'2021-04-11 04:24:40',1,'eadbdedfbb fceaabdedbb edecabcfdaf',75431669,1),(4,68,4,'2021-04-11 09:31:13',7,'dfaeaacdcacbcff dacbadbcdadd ffbbdbfebffd',56309570,4),(5,44,3,'2021-04-11 04:46:37',8,'acefbacbefe afcefdcbcfcebb eebecfefeecae',43900555,4),(6,39,17,'2021-04-11 18:56:14',9,'beccdbcdcddbc eacacacceecdcc cababbcadcfbedb',37717502,5),(7,23,9,'2021-04-11 14:30:33',3,'acecadfae fbeeaebcadaaf feefcbedfacd',11217074,2),(8,69,7,'2021-04-11 13:12:05',9,'fadfbecdedfdb aabdbfdea cbacedbdacacd',69239885,2),(9,64,13,'2021-04-11 04:16:50',4,'eafabdadfdbb fbfecbecdbdfef ccbebdadfcfec',725040,2),(10,28,9,'2021-04-11 16:56:15',3,'bcaaebfcccfd ddbbbacaceccdf dfeceea',59357919,2),(11,68,5,'2021-04-11 11:00:35',7,'aaaddfddcdcf ccafcdbacda fadfedfdbacdeee',26325243,5),(12,34,6,'2021-04-11 10:28:40',9,'ffbaacbbebeebf afdcfccaefffa fbcbddfafbfdbfe',18276719,1),(13,44,9,'2021-04-11 08:25:43',10,'cebeecdace bbfbffecfdcf cdfbfadaebc',73377745,5),(14,45,16,'2021-04-11 18:34:30',4,'aadabf cdccdffcad cafdacefafbd',53071284,3),(15,44,1,'2021-04-11 14:59:52',1,'eeecadbefaaa accacabcdbeeda eabdcfafdccac',18591495,4),(16,1,18,'2021-04-11 14:29:17',3,'afaaedeeeeddbcfd ceaddbdadecded afdcdbbfffeedbcd',63058639,1),(17,70,14,'2021-04-11 03:05:01',1,'dbdaafdcaca bfefcfcefbfd accafcafa',43698526,3),(18,72,13,'2021-04-11 00:13:03',6,'fffdbbcffefa fbccbcab dbfcebcefdacadefa',16255376,4),(19,47,8,'2021-04-11 05:04:51',4,'edbddbcfebbdebdbad bbfdfaeebefd edfceddbdcb',6141216,4),(20,68,2,'2021-04-11 17:08:58',10,'aeedbafd feeecbdb babcbeacfaecfa',11709613,2),(21,42,15,'2021-04-11 23:15:03',3,'ceaeceffecdcfeb dbcfdbfc dfebedde',3502565,2),(22,27,17,'2021-04-11 20:53:15',8,'efcfdeaaedd edaaefcbadae edafcffaabfd',97927960,3),(23,59,4,'2021-04-11 15:09:04',1,'cadfbdfeafbcf cefedebdc eacadddbedaff',53561024,2),(24,72,9,'2021-04-11 03:16:48',8,'bfaedffdda affeecefdca dfddddbbdebb',57853652,2),(25,7,15,'2021-04-11 18:36:53',2,'aacbceaea effabfeeb aebbfadaada',14265429,2),(26,69,13,'2021-04-11 11:54:27',2,'bddfffbdbffcec dabeefdd eeaedeffaca',9728291,1),(27,56,11,'2021-04-11 16:37:28',3,'ffcaeacecdacc fbdabfebbfa ccccceecbeabc',3838200,5),(28,21,18,'2021-04-11 01:41:31',8,'abdfbabbad adaeaaaeaecddc befddfccedadb',96197449,5),(29,13,17,'2021-04-11 05:15:14',2,'bfafeecbbebdccfdb edbafeeffe adaadaebcaecb',15827583,1),(30,29,17,'2021-04-11 10:46:22',7,'bbadedccdcfe bfbadcfd bfcfdefaccfed',88961784,3),(31,9,8,'2021-04-11 11:29:47',9,'becafabcbbc addabbae ebeebfbaafc',18753481,5),(32,28,14,'2021-04-11 04:01:07',3,'afbbedeebcfeefacd edccbfeed fdbcbadfadacea',30323766,3),(33,45,14,'2021-04-11 16:21:02',9,'febfdbcbead bbaeefcaae ddbdbfceed',97376718,2),(34,5,15,'2021-04-11 18:58:59',6,'cabccadfaadcbfec dfefea beeaabdb',93087739,3),(35,22,7,'2021-04-11 13:16:44',9,'cbddbbceeffce deceacbbcccf defcaaaefdecfb',7750883,4),(36,1,2,'2021-04-11 11:08:15',2,'bbfddbdebaeaea bedffecbeecbbbd decabfeeebebcefcde',96863268,5),(37,26,17,'2021-04-11 20:00:02',1,'ffddecbdeec bfaefbadffddfebcf ffeecacbdf',8497137,1),(38,46,2,'2021-04-11 22:33:41',7,'fdfeffffbbf fdabaeaeffeed bfacbabaa',30911256,5),(39,74,9,'2021-04-11 01:05:19',6,'fabebcebdcdff ccdbbbdd eacadbaadadeedfcb',65358246,5),(40,29,2,'2021-04-11 00:11:01',2,'cadbbeafdfabcadaf facbfbed fbbafbbfdcded',53316527,2),(41,17,13,'2021-04-11 04:23:05',7,'feacbafcbbec cdaedbfeeabab dddaaffebe',48932802,1),(42,64,9,'2021-04-11 07:22:23',1,'becdecfadf dfefecadbeed ccdfcbbdb',1425670,5),(43,38,6,'2021-04-11 23:22:16',3,'dffffacfddcf bdccbddbfcfcf aefebbcfaa',84566448,2),(44,36,1,'2021-04-11 21:50:49',4,'aafecbacab caacedfa deccdefceedcbbc',14303584,4),(45,27,7,'2021-04-11 18:01:55',5,'eddcfadbbecbaeb afffabdedcfc dfcdafcbcdbceb',53842568,1),(46,22,16,'2021-04-11 06:19:11',6,'abafdbabae bdebecccccb aaaccdfea',90962791,5),(47,47,10,'2021-04-11 14:42:03',10,'fbdcfacb eacffbefac abadffaffaacdaf',25600164,2),(48,48,17,'2021-04-11 11:05:26',10,'aecbbaefadeefeeafb cecbabfdf dfcdbdbfc',24290752,2),(49,49,3,'2021-04-11 22:33:57',2,'bacffcbffbede aaadecea fceceafbbdbdec',37826030,3),(50,55,7,'2021-04-11 02:22:35',2,'caeccdcfdf dcaaaaafbaec deadffefccdacacb',11310946,2),(51,17,3,'2023-06-14 15:06:29',1,'dbcbabfeeebdbbabb deffdfeeecfd ddcfffcfbde',22280862,3),(52,35,18,'2029-09-06 19:16:49',3,'ecfcebceebadb ceaacdded bfdbcbbdbedcbc',19099231,1),(53,20,16,'2028-04-03 04:22:54',6,'dafbbcafccbabdce ceabecbacf cdfaebbcedfab',91769285,2),(54,53,11,'2032-02-22 09:49:01',4,'beccdbccfecccaf bdedbabccefa efbeadacbcffa',94156286,5),(55,17,11,'2028-01-26 14:18:32',6,'feddfcacbfbf daadcdbddebbae bbeaaefa',58867991,1),(56,29,13,'2049-12-05 23:32:15',8,'bcecabcbbcca bbdbdeaccdacde bebaacab',31440800,5),(57,7,16,'2040-10-23 09:37:39',2,'debfede edeffccaadfaac dbadbbbcdacf',67519818,5),(58,47,14,'2047-11-08 22:50:56',10,'fefdfeaacf acbffabddcbff edfdecdecdded',66644606,1),(59,59,12,'2052-05-18 17:56:33',5,'aeecaec dbedcdcbced cddedfbeafcfd',82771150,1),(60,67,17,'2029-03-29 17:15:52',1,'cadfeecaeadedd aeeccdbb debcecfaeaafcaedf',35658110,5),(61,74,11,'2028-12-14 21:09:25',1,'fbedaecfcfee eddfaddaede dfabefecfbbc',78720462,5),(62,10,6,'2044-08-20 13:49:27',10,'ecabbacebeaddee aadcaccdeabad feebbbaebddbdfc',51629733,4),(63,74,10,'2048-08-08 01:32:22',5,'fdcedcadddfa adbcdafeaecc dbecfffefcbfb',9276530,5),(64,9,1,'2045-10-15 00:14:02',4,'bcedaacb ebcfbddfbddcf daecdcfdbccc',97609264,1),(65,19,3,'2042-03-30 18:56:09',9,'bffeeeebeb cacedfbdcf efdfebebca',94075622,1),(66,36,7,'2026-12-20 00:58:57',4,'ccacabdbb abbbcffafeab fbdcbdefcb',81200025,1),(67,14,5,'2051-06-29 02:32:59',10,'bcedfcafecbcc eccdebcdfde adecddfdbdadfa',56966459,1),(68,50,1,'2045-10-03 17:35:14',1,'abefafceddada bcddecfcabebd dddfdfecaecafcabec',28064239,4),(69,11,7,'2028-08-12 20:26:52',4,'dbecdafecaceaac fcfdadadadfedc ebcfedc',64053105,3),(70,60,5,'2041-06-20 00:04:18',4,'aeacccafddea caacefdafdc bafecebbbaf',71706612,1),(71,6,3,'2026-05-31 21:53:20',4,'efafedaafbd bfddcbbeab fecadfbc',12073828,4),(72,38,15,'2038-08-30 21:30:26',7,'dbdbeabcfcbfa abaafabacd eeeebdbfeacc',49658644,1),(73,11,13,'2024-11-10 00:56:24',9,'abeebafdcc cbdefaddacaba debfeafbffa',7688783,1),(74,48,3,'2043-04-17 20:33:25',4,'afafddcdba cceadacec aaeeffbccdfeabce',92828391,3),(75,41,17,'2024-04-15 12:27:51',6,'fadcefecadea ebefcaecdebbeee dfdeeaffeef',87479673,5),(76,73,16,'2043-10-15 17:46:47',8,'adcbafbddafeacede fbabfaaedccca fbfefdceddeeccdd',19237987,5),(77,51,13,'2048-07-29 06:42:59',6,'abbfcdfcffaddfebae bcefcbbaafcff dbebaebdcbebd',61587323,2),(78,22,12,'2050-02-09 03:09:07',2,'dfeaedafdf fabaabcbaeffbd ebdaafdfeeefad',925550,1),(79,23,18,'2037-09-03 05:04:59',2,'dafcfcffbefbfd bfededcfca ffecbaa',25784680,1),(80,38,8,'2046-12-21 17:41:24',5,'bffafbedffde bdcaabeedfc ffeebaabfdfdc',93966871,2),(81,28,14,'2029-03-06 03:36:21',2,'ffeefcefaafe ebbadddfadaedbcc cbfcbdeefb',8968642,3),(82,38,6,'2022-11-28 22:11:02',7,'cdcbafcdcdb efbbcabedcce ffdfaaebcf',45712118,5),(83,13,3,'2039-04-12 05:27:12',2,'beccbabcddcddefede daacdfbdb bedfdabb',7001331,3);
/*!40000 ALTER TABLE `visit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_status`
--

DROP TABLE IF EXISTS `visit_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_status`
--

LOCK TABLES `visit_status` WRITE;
/*!40000 ALTER TABLE `visit_status` DISABLE KEYS */;
INSERT INTO `visit_status` VALUES (1,'confirmed'),(2,'deflected'),(3,'closed'),(4,'transfer'),(5,'not come');
/*!40000 ALTER TABLE `visit_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_time`
--

DROP TABLE IF EXISTS `work_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_time` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ter_id` int unsigned NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `work_time_fk_ter_id` (`ter_id`),
  CONSTRAINT `work_time_fk_ter_id` FOREIGN KEY (`ter_id`) REFERENCES `territory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_time`
--

LOCK TABLES `work_time` WRITE;
/*!40000 ALTER TABLE `work_time` DISABLE KEYS */;
INSERT INTO `work_time` VALUES (1,13,'09:55:54','18:22:55','2021-04-11 14:36:46',0),(2,19,'21:55:54','04:53:42','2021-04-11 14:36:48',0),(3,17,'17:10:42','17:18:54','2021-04-11 14:36:49',0),(4,22,'04:47:50','21:57:10','2021-04-11 14:36:49',0),(5,9,'14:50:29','10:24:12','2021-04-11 14:36:50',0),(6,2,'06:43:38','04:36:42','2021-04-11 14:36:51',0),(7,4,'00:48:30','23:50:40','2021-04-11 14:36:52',0),(8,5,'23:19:25','16:21:05','2021-04-11 14:36:52',0),(9,21,'00:21:29','16:22:33','2021-04-11 14:36:53',0),(10,9,'16:06:19','22:16:19','2021-04-11 14:36:53',0),(11,3,'15:24:10','00:06:40','2021-04-11 14:36:57',1),(12,2,'10:46:24','14:11:07','2021-04-11 14:36:57',1),(13,1,'14:28:33','07:00:25','2021-04-11 14:36:58',1),(14,21,'09:43:29','08:12:51','2021-04-11 14:36:58',1),(15,14,'22:03:11','16:56:55','2021-04-11 14:36:59',1),(16,6,'05:51:03','22:56:39','2021-04-11 14:36:59',1),(17,21,'19:15:51','15:01:24','2021-04-11 14:37:01',0),(18,18,'13:59:45','20:44:55','2021-04-11 14:37:02',0),(19,13,'08:39:46','02:00:12','2021-04-11 14:37:02',0),(20,10,'05:46:17','02:49:02','2021-04-11 14:37:03',0),(21,10,'17:45:47','15:37:49','2021-04-11 14:37:03',0),(22,8,'05:57:48','01:42:55','2021-04-11 14:37:04',1),(23,8,'07:09:01','01:55:11','2021-04-11 14:37:05',1),(24,14,'05:18:48','02:02:50','2021-04-11 14:37:05',1),(25,6,'19:57:44','07:20:08','2021-04-11 14:37:06',1),(26,22,'19:11:57','16:18:29','2021-04-11 14:37:06',1),(27,23,'21:59:00','19:22:02','2021-04-11 14:37:07',1);
/*!40000 ALTER TABLE `work_time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11 16:14:35
