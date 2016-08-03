-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: meus_convidados
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `convidado`
--

DROP TABLE IF EXISTS `convidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convidado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `grupo_convidado_id` int(11) NOT NULL,
  `evento_id` int(11) NOT NULL,
  `tipo_convidado` char(1) NOT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_convidado_grupo_convidado_idx` (`grupo_convidado_id`),
  KEY `fk_convidado_evento_idx` (`evento_id`),
  CONSTRAINT `fk_convidado_evento` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_convidado_grupo_convidado` FOREIGN KEY (`grupo_convidado_id`) REFERENCES `grupoConvidado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convidado`
--

LOCK TABLES `convidado` WRITE;
/*!40000 ALTER TABLE `convidado` DISABLE KEYS */;
INSERT INTO `convidado` VALUES (1,'Joao Paulo',2,2,'A',NULL),(2,'Arthur Sousa',2,2,'C',NULL),(3,'Fernanda Silva Villela',2,2,'A',NULL),(4,'Edmundo da silva',2,2,'A',NULL),(5,'Tio Iva',2,2,'C',NULL),(6,'Renata',1,2,'A',NULL);
/*!40000 ALTER TABLE `convidado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `cliente_nome` varchar(255) DEFAULT NULL,
  `cliente_email` varchar(150) NOT NULL,
  `cliente_telefone` varchar(12) DEFAULT NULL,
  `cliente_endereco` varchar(255) DEFAULT NULL,
  `data_evento` datetime NOT NULL,
  `finalizado` char(1) NOT NULL DEFAULT 'N',
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (2,'Festa do Arthur2','JoÃ£o Paulo','joaopaulopvillela@gmail.com',NULL,NULL,'2016-03-12 16:30:00','N','2015-01-01 15:02:00'),(3,'Nova festa','Pedro','joaopaulopvillela@gmail.com','sfasdf','asdfa','2016-01-02 15:30:00','S',NULL),(7,'Casamento de JP & Fernanda 2','Fernanda Villela','fffernandasilva@gmail.com','62558555','Av Bela Vista','2014-11-10 19:15:25','S',NULL),(8,'Casamento de JP & Fernanda 3','Fernanda Villela','fffernandasilva@gmail.com','62558555','Av Bela Vista','2014-11-10 19:15:25','S',NULL),(10,'Vamos dormir??','asdfa','asdfas@gmail.com','6666','asdfa','2015-01-20 00:00:00','S',NULL);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoConvidado`
--

DROP TABLE IF EXISTS `grupoConvidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupoConvidado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) NOT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoConvidado`
--

LOCK TABLES `grupoConvidado` WRITE;
/*!40000 ALTER TABLE `grupoConvidado` DISABLE KEYS */;
INSERT INTO `grupoConvidado` VALUES (1,'Amigo do serviÃ§os',NULL),(2,'Familia',NULL);
/*!40000 ALTER TABLE `grupoConvidado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('042406cd05a7188482a13063fb9e9d8c0996c737','testclient','joaopaulo','2016-03-17 14:01:17',NULL),('053cc12197880bc75cb58e13b8795b613a98a029','testclient','joaopaulo','2016-03-11 04:01:05',NULL),('07366707cc51ac9f04f6be366ff44ff5cc8921ae','testclient','joaopaulo','2016-03-17 15:23:44',NULL),('0a35899c5523410f89f897bdeedad7abdf04fc3d','testclient','joaopaulo','2016-03-10 23:29:08',NULL),('0aaa8fa769149470121c1e11229e2a79240f3d90','testclient','joaopaulo','2016-03-11 03:24:36',NULL),('0bd7522057b461b330e3d48625cda005d9d570b1','testclient','joaopaulo','2016-03-15 14:46:13',NULL),('0e6f5ea63e107c68ef2a6ff5a2672f7b86468bfd','testclient','joaopaulo','2016-03-17 13:57:49',NULL),('0f30bed5567c775945d384a52f5f1c363761d83a','testclient','joaopaulo','2016-03-11 02:56:59',NULL),('121ddcb3f0ea3d743085e1be7a2ad63f1526dc53','testclient','joaopaulo','2016-03-10 23:19:19',NULL),('13dee1c128a4999a2fcab320ccfea3b9e909e9bb','testclient','joaopaulo','2016-03-17 13:47:53',NULL),('154adf59e1fca74d1f7021061b0f6f893ddb476c','testclient','joaopaulo','2016-03-11 03:43:38',NULL),('163a7d7f1f865cb03785dbfbf8b04d37102e78de','testclient','joaopaulo@gmail.com','2016-03-21 20:58:17',NULL),('18075983cf727cce10b82a46d09c4e27c47f595f','testclient','joaopaulo','2016-03-11 04:03:57',NULL),('195f63e2107532703f9efaba077c741d9e75e527','testclient','joaopaulo','2016-03-11 04:10:37',NULL),('1996df17b0f187bd1b5acbab774c0d8019867512','testclient','joaopaulo','2016-03-11 03:22:21',NULL),('232e6a7a352bc82f854bc56889a0ad33da92cf89','testclient','joaopaulo','2016-03-11 04:06:04',NULL),('2417a31c398b549048a6fb11f3153cfbbf584294','testclient','joaopaulo','2016-03-15 14:46:38',NULL),('28d41761d6999134ee9ac3ed0276cb03d0281b94','testclient','joaopaulo@gmail.com','2016-03-21 20:23:47',NULL),('2a1343176ac4be4ba72e82961704b3564eabbce4','testclient','joaopaulo','2016-03-11 03:38:40',NULL),('2cac223fa3eabec1489e9ad870c054ef0e78646d','testclient','joaopaulo','2016-03-17 03:48:44',NULL),('2de885875050667340f304ce6bba9dde665e15b5','testclient','joaopaulo','2016-03-11 02:55:06',NULL),('31e99e45889c9fdd20d8b0c281c6d2d857bdddc1','testclient','joaopaulo','2016-03-11 03:27:14',NULL),('33401c56849dbeb3be3057dbb5c711897b7c0a83','testclient','joaopaulo','2016-03-11 03:39:23',NULL),('3922c8a64c16d1be900198db7cfb4df1d3547de4','testclient','joaopaulo','2016-03-11 03:39:09',NULL),('3ea9bf83070bc0e4bece13db4b8daae9a20aa794','testclient','joaopaulo','2016-03-10 23:33:52',NULL),('454d0bf04a34ae7d7c0bb4b5f8b328bc00a25fd3','testclient','joaopaulo','2016-03-11 04:09:06',NULL),('4b21a086c55d5c4a8006132612574f261f9a6abc','testclient','joaopaulo','2016-03-17 05:34:25',NULL),('503c806301a64f32bfe87fb4a63a32370e0acfdc','testclient','joaopaulo','2016-03-17 15:26:21',NULL),('512eb9121b114722f8f733b538b7eb1fe23070c5','testclient','joaopaulo','2016-03-11 04:17:22',NULL),('564b0a48043b35ab790e76c15d10babe9e7412a2','testclient','joaopaulo@gmail.com','2016-03-22 15:01:51',NULL),('5838d6a156abcaf0770b2f26a6bfeaedc08b6921','testclient','joaopaulo','2016-03-17 23:46:31',NULL),('59636c6a53043776f6aaca7e0caf078eb91c91d8','testclient','joaopaulo','2016-03-18 00:08:52',NULL),('5b4ef4fe5d4be54b0128bac2c6d9a756dd4e5fbd','testclient','joaopaulo@gmail.com','2016-03-18 16:40:01',NULL),('5cc8589b94d4638aef1f0259c3a73418e67a75be','testclient','joaopaulo','2016-03-17 05:26:19',NULL),('5d3b8dfbb9492bc1b322f667880eb158e56a5b31','testclient','joaopaulo@gmail.com','2016-03-21 20:59:38',NULL),('5db3028618bf61a4b165d847fda35f67ef606593','testclient','joaopaulo','2016-03-10 23:21:41',NULL),('60c0af0bf05d2627c5b7bb211f784bb9364df525','testclient','joaopaulo','2016-03-11 03:43:07',NULL),('62ddadbeca5a92532f9f1c349f118e5985c241c2','testclient','joaopaulo@gmail.com','2016-03-21 20:40:40',NULL),('65301f28de520364d12294a6dad566b5cbd78659','testclient','joaopaulo','2016-03-11 03:10:29',NULL),('6af3ee4fc3e30a8c2dfd452cd107258dd0a2488c','testclient','joaopaulo','2016-03-17 13:56:38',NULL),('6bd4458ed6ef49f708d6bb823bec79be497b26ea','testclient','joaopaulo@gmail.com','2016-03-18 17:54:56',NULL),('6be77910e168871378d2e800b9abba44b804b92a','testclient','joaopaulo','2016-03-17 23:10:22',NULL),('6e852045b52b946d76e94da5f335fdfb4dc5a9fe','testclient','joaopaulo','2016-03-15 22:19:56',NULL),('7442b4f978192f2988900de0b3d2583f672a6416','testclient','joaopaulo','2016-03-18 13:29:38',NULL),('785bd581d8056d9f8f2fd89300baa9df7f47a4f8','testclient','joaopaulo','2016-03-10 23:20:12',NULL),('78c795c6dda95f4ba474ceee20652894839e7e12','testclient','joaopaulo','2016-03-17 05:07:37',NULL),('78f7f75290b8078fa495aba26a00caff0c2fc1f6','testclient','joaopaulo','2016-03-11 04:08:54',NULL),('7a0dfa948bac9b75ec8f05061fb4726006e47602','testclient','joaopaulo','2016-03-11 04:04:46',NULL),('7b80ce9369b79bb32a813c570a499236b8415671','testclient','joaopaulo','2016-03-11 03:47:30',NULL),('7c839b9fea5ba70dc98e6586a6c7d731e9183e1d','testclient','joaopaulo@gmail.com','2016-03-21 20:59:32',NULL),('7d17ffebe47f52efda8c969c2e0c30e0c40a51ee','testclient','joaopaulo','2016-03-15 14:45:54',NULL),('80fd4deef65072efc7dac7c3db63be53db92f525','testclient','joaopaulo','2016-03-11 04:10:28',NULL),('865eb48df529c6fa15213b9786fb449726bc0c12','testclient','joaopaulo','2016-03-11 04:02:39',NULL),('91152740c6163643441f7459f539361b70c19c92','testclient','joaopaulo','2016-03-11 02:57:39',NULL),('9269267a8d1c227fa7b776ef8ef459e3419d291e','testclient','joaopaulo','2016-03-17 23:09:38',NULL),('97ab31802e6b37211df38ea9d2d8691fc9970565','testclient','joaopaulo','2016-03-18 00:20:43',NULL),('980a6d89a4af0f4bc35e9d2805e923cbdc68c592','testclient','joaopaulo@gmail.com','2016-03-21 20:59:14',NULL),('9bc6108f81376cb97dbd10f6c9e18aaa4a614368','testclient','joaopaulo@gmail.com','2016-03-21 20:23:04',NULL),('9be612a78b85070b6c6ae729a074fdcf62b67aaf','testclient','joaopaulo@gmail.com','2016-03-21 20:22:36',NULL),('9ddf6625d9d3fe5a6a361864c832acb1976dad1d','testclient','joaopaulo@gmail.com','2016-03-21 20:23:26',NULL),('9e94a5dee1eee6c2eef80224f60336db86a20518','testclient','joaopaulo@gmail.com','2016-03-18 17:52:20',NULL),('a23bdf9425846efa5b3360d8713a3c37c4e9576a','testclient','joaopaulo','2016-03-11 04:17:09',NULL),('a2a47dac8ebf4e762d3793bcad7497297e5c9aee','testclient','joaopaulo@gmail.com','2016-03-22 15:02:32',NULL),('a56e5f9717a280a1e8aeb5f6e96bb3d2f43b200c','testclient','joaopaulo','2016-03-10 23:22:05',NULL),('a9da6517b34786bc16b1ddcfe0492d0503401715','testclient','joaopaulo','2016-03-10 23:24:03',NULL),('aa2c488a536dd9de11bc6236072ed5d2a7c950a4','testclient','joaopaulo','2016-03-17 13:47:15',NULL),('aa73bd159ca6078cdba6f42ab89e2029f2843b2f','testclient','joaopaulo','2016-03-11 03:44:06',NULL),('b017ccad099c7ccd4aa0242ecca0545dba4cd001','testclient','joaopaulo','2016-03-11 03:45:36',NULL),('b3899717d6b74074bdd35afe46ff95154c7c364f','testclient','joaopaulo','2016-03-17 14:09:04',NULL),('b75cda591c550b7f9db7c0d0cb14b4c0a5ff83cc','testclient','joaopaulo','2016-03-17 23:56:53',NULL),('b899672a615e674a7627764728bf8f98d163d7ed','testclient','joaopaulo@gmail.com','2016-03-22 15:12:01',NULL),('bba2a79c3c282fc316ada234e1e4980a0a8feee9','testclient','joaopaulo','2016-03-17 05:34:18',NULL),('bf7e4b349e564f923ea4b0bf75bd425b43b5b998','testclient','joaopaulo','2016-03-11 03:44:47',NULL),('c16f3efe4fcadffb41eed39cb86513f17aeb9d17','testclient','joaopaulo@gmail.com','2016-03-18 17:32:59',NULL),('ce1eede13269acf3468f997142e8c7a58085d698','testclient','joaopaulo@gmail.com','2016-03-21 20:58:11',NULL),('cf43ba05a4c4595425da1bbaf7a7bc8399d0ea72','testclient','joaopaulo','2016-03-11 04:13:24',NULL),('d22c9cd13323895381ea3791592cbe8451b26d63','testclient','joaopaulo@gmail.com','2016-03-22 15:21:15',NULL),('d44e81ba9fcb55c922ee80f1a837e37f5fd3dfc5','testclient','joaopaulo','2016-03-10 23:21:16',NULL),('d7909737d6302ea63bca1bcaf0ed31fb2a51d89f','testclient','joaopaulo','2016-03-11 03:39:34',NULL),('d8e5b5180314b394a2bc9056ad82280b551b6ec2','testclient','joaopaulo','2016-03-11 02:51:54',NULL),('e45def77ce8780bf841225babf04469efae290c6','testclient','joaopaulo','2016-03-11 03:45:03',NULL),('e87fa540a794773f31d6ff953b953c23b3ee95a1','testclient','joaopaulo','2016-03-17 23:55:42',NULL),('edb40aa425b9f966aa3ecdf691cd55ff72a5660e','testclient','joaopaulo','2016-03-11 03:46:57',NULL),('f0a2b9dec19b83fbff5a8e593a682fd454fe2050','testclient','joaopaulo@gmail.com','2016-03-18 17:53:54',NULL),('fb88fac633ce71521e5a7ccc15d0e5e02e03d473','testclient','joaopaulo','2016-03-11 04:03:14',NULL),('fcb94ec8d38d81d792847c368a621eaa134335d3','testclient','joaopaulo','2016-03-15 14:40:49',NULL),('fee7bd60f1876ed16a32b5bdb4b2fd761f798840','testclient','joaopaulo','2016-03-16 13:55:23',NULL);
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_authorization_codes`
--

DROP TABLE IF EXISTS `oauth_authorization_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  `id_token` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_authorization_codes`
--

LOCK TABLES `oauth_authorization_codes` WRITE;
/*!40000 ALTER TABLE `oauth_authorization_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_authorization_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('testclient','$2y$10$A8oVLsVe7y6I9LZHdy7E8exqqBVUR2I6X5I9baxZCbr1ppfpK/sRK','http://localhost:8888',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_jwt`
--

DROP TABLE IF EXISTS `oauth_jwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_jwt`
--

LOCK TABLES `oauth_jwt` WRITE;
/*!40000 ALTER TABLE `oauth_jwt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_jwt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('02ad5bcf211ebb61c08ae0f3d1d880a9b7932474','testclient','joaopaulo','2016-03-25 02:43:07',NULL),('1305554c2a7ce998a97546cea63b5979a43df5a3','testclient','joaopaulo','2016-03-25 03:10:28',NULL),('1579f1d0af7d831de9b2e441975719fee5891044','testclient','joaopaulo','2016-03-30 12:55:23',NULL),('160c939ddcc621b77033cdeed69efa6b60c8dbb5','testclient','joaopaulo','2016-03-25 02:46:58',NULL),('1aafc21ef4df15b1697f22d75a643bc199ae18be','testclient','joaopaulo','2016-03-25 01:57:39',NULL),('20a7e23a9a8923b0622c240c52e71e0bc71e24da','testclient','joaopaulo','2016-03-31 22:46:31',NULL),('2297f094c801e9773cf11fc04a2d298b62266eae','testclient','joaopaulo','2016-03-24 22:21:16',NULL),('2c2fc3887ebb3a778f8daeeaa3400c20c9e31f4c','testclient','joaopaulo@gmail.com','2016-04-05 14:21:15',NULL),('2c67dc571daf1d8e57b42e6337275d7d1206ff17','testclient','joaopaulo','2016-03-24 22:21:42',NULL),('301ad97655c9a5eaf92d377ef2508be3a2e427e4','testclient','joaopaulo','2016-03-31 14:23:44',NULL),('321f1acd387555611662a4e3278dcb6c1341f2f6','testclient','joaopaulo','2016-03-25 02:39:09',NULL),('3672890064b631a650aa8429a59b2c5185e4fe3c','testclient','joaopaulo','2016-03-25 02:10:29',NULL),('39f1825913ef9d812f769cd69dc8d135ec12a2a1','testclient','joaopaulo','2016-03-25 03:10:37',NULL),('3acbab7b6df41365bbbe0ba41b69a97dd3dcffd4','testclient','joaopaulo@gmail.com','2016-04-01 16:53:54',NULL),('3bbca2bc2a3fca89470c7c9d095141de8e968ad1','testclient','joaopaulo@gmail.com','2016-04-05 14:02:32',NULL),('3c0bf336ff32eea3c1270854181970c74dc631c2','testclient','joaopaulo','2016-03-25 01:55:06',NULL),('3c7a65730befc91e2202a97e5ff8b49be3ba63b5','testclient','joaopaulo','2016-03-24 22:33:52',NULL),('412db662d471078121758fab5a11dde02f5b0466','testclient','joaopaulo@gmail.com','2016-04-04 19:40:40',NULL),('42c1803a2ad21039dc119a5ba829692819828a62','testclient','joaopaulo','2016-03-31 22:56:53',NULL),('43560b7f355c4294ee59b7c764597260e844a729','testclient','joaopaulo','2016-03-24 22:19:19',NULL),('437272ad4630d62b364d47ad7fc294241fa558a8','testclient','joaopaulo','2016-03-25 03:17:09',NULL),('472fb17bed17046ff7c3331f4d0fff52017e2a10','testclient','joaopaulo','2016-04-01 12:29:38',NULL),('4a58dcb0d746b9474ed4e896db70928fba73ce88','testclient','joaopaulo','2016-03-29 13:46:38',NULL),('4b98453c4f85edc8b808e4d1418c07a2031d8572','testclient','joaopaulo','2016-03-31 14:26:21',NULL),('4c8580e0d52f78e6dd87173ca04c8937a7d24167','testclient','joaopaulo','2016-03-31 04:26:20',NULL),('53d896ba0effec4eeabb0b34b29b3175e1a0ad77','testclient','joaopaulo','2016-03-25 02:47:30',NULL),('566a4c427f4548c897b86b874c36a521afb7a0a0','testclient','joaopaulo@gmail.com','2016-04-04 19:59:38',NULL),('568bb8084d677f4215f0bf64fee8d0285138c280','testclient','joaopaulo','2016-03-25 02:27:14',NULL),('593f4ea448a54b4a3fc9a5db219c33a005c61b2b','testclient','joaopaulo','2016-03-31 04:07:38',NULL),('5ff68d3899da738ea5c13c8546e98f5ae4b130c1','testclient','joaopaulo@gmail.com','2016-04-04 19:23:26',NULL),('625ad553de3b253a8995cda3babc4a4a0df069c8','testclient','joaopaulo@gmail.com','2016-04-04 19:59:32',NULL),('69294c607c52bfd0d62ac9e63952451adc8eeccc','testclient','joaopaulo','2016-03-31 04:34:26',NULL),('6c646990b5c001c519a91c34beef42285c32c6da','testclient','joaopaulo','2016-03-29 21:19:56',NULL),('6c6dd42726d90b38d0569d6830c2c52eec2e3fb7','testclient','joaopaulo','2016-03-25 03:08:54',NULL),('6cad9d0ce101516340a9ed8d2692842d126971b2','testclient','joaopaulo@gmail.com','2016-04-01 16:52:20',NULL),('711b04c4cc7e258de3d04e94d650a8e862f332b1','testclient','joaopaulo','2016-03-29 13:46:13',NULL),('7277bf9c509cfab0861bec1b2bd30bdfc13bd4ad','testclient','joaopaulo','2016-03-25 03:06:04',NULL),('767fa19ecde4dfece26a53b607a64cd9d9d5e751','testclient','joaopaulo@gmail.com','2016-04-04 19:23:04',NULL),('80c8a97a718c4d7333beaf08d7407fe340f5cd5f','testclient','joaopaulo','2016-03-29 13:40:49',NULL),('81da30f45155b364b88feabe47978ed263019b08','testclient','joaopaulo@gmail.com','2016-04-04 19:58:11',NULL),('8453db6b09ef3e7fca63736f7f94ac0551a3fe14','testclient','joaopaulo','2016-03-31 22:10:22',NULL),('850921cc0556294cee56b98805779fdcf76323ff','testclient','joaopaulo','2016-03-25 02:45:03',NULL),('88a4bdfe7d1aec24c762de3fbb12c19261674393','testclient','joaopaulo@gmail.com','2016-04-04 19:23:47',NULL),('8a15e175669689db8b1d06c62d640e6cffa81768','testclient','joaopaulo','2016-03-24 22:24:03',NULL),('8ce13034f8314eec9c3fbb17ed5a1cb0d1ee6c42','testclient','joaopaulo','2016-03-24 22:22:05',NULL),('8f9540b978a33ff43caa123b404db138d224f59a','testclient','joaopaulo','2016-03-24 22:20:12',NULL),('93314cf56e01ca2645efa7bf1d69a2a03ef54aec','testclient','joaopaulo@gmail.com','2016-04-04 19:58:17',NULL),('987a8710753f4503cb5beb1b8e350a4d8109a824','testclient','joaopaulo','2016-03-25 01:51:54',NULL),('9b0ae7bfd4a51008d6a3f753ec28d9890da0b058','testclient','joaopaulo','2016-03-25 03:02:39',NULL),('9e701459f36610d3c95113df8598369a3c6e5941','testclient','joaopaulo','2016-03-25 03:03:15',NULL),('a0bbab024f6a8f6191f630814ca7586adb321d14','testclient','joaopaulo','2016-03-25 02:43:38',NULL),('a304ded251199e89823085e638f3fe907024ca8a','testclient','joaopaulo@gmail.com','2016-04-05 14:12:01',NULL),('a467dae4e2666ae79dd0a6bef58e632cc6c8cd98','testclient','joaopaulo','2016-03-25 02:22:21',NULL),('a6423f6b28d4aa0092268526678db74fcd1fa281','testclient','joaopaulo@gmail.com','2016-04-01 15:40:01',NULL),('a6ec8a4dc57df270526c556636981c978ab9e57d','testclient','joaopaulo','2016-03-31 12:57:49',NULL),('a92e9ae5c35cf917121ee14366b9f23afbaa3281','testclient','joaopaulo','2016-03-29 13:45:54',NULL),('ab5b078475dc03b761bdfbb2e6a168b67dab91b2','testclient','joaopaulo','2016-03-31 23:20:43',NULL),('aec72d270926572a9b111037a96609882767e82f','testclient','joaopaulo','2016-03-25 03:03:58',NULL),('b0548513176e10dad0c47719ae82ebd33a00892a','testclient','joaopaulo','2016-03-31 22:09:38',NULL),('b781fbbd5e4d9ca09fd4ab9b34fc9451ce433cee','testclient','joaopaulo@gmail.com','2016-04-05 14:01:52',NULL),('bf03f345856241e6add60649649ee91f770db4e6','testclient','joaopaulo','2016-03-25 03:09:06',NULL),('c961bed4daf030bd5739affa52e149505b0ee755','testclient','joaopaulo','2016-03-31 04:34:19',NULL),('cd0fda543a1be77e24b499358f7efbc88ede3fcb','testclient','joaopaulo','2016-03-25 03:04:46',NULL),('d4efc1a37a6dbda97f3fc4af82ee6a21f3f07856','testclient','joaopaulo','2016-03-25 02:45:36',NULL),('d5cc2640eddf250478e30a7fa5e035a94f31fffa','testclient','joaopaulo','2016-03-25 02:44:06',NULL),('d7c0cf5d904ebeb44516e6a1f98a72756d8134cc','testclient','joaopaulo','2016-03-25 02:39:34',NULL),('d8a3188565c8eec8fdc808906cae750a88ae7702','testclient','joaopaulo','2016-03-31 12:47:15',NULL),('dbf8d28fba15180d9f15d60ed1e08c252ae13eb3','testclient','joaopaulo','2016-03-25 02:24:36',NULL),('ded17235d218523dad54341dd989ca7e7c261f37','testclient','joaopaulo','2016-03-25 01:56:59',NULL),('e08cf2072c9a5332bf81c2ef612991b4f1ad9bd1','testclient','joaopaulo','2016-03-31 13:01:17',NULL),('e3c0738eca9ceebe2939c1ae8240e0cf4475782f','testclient','joaopaulo','2016-03-31 12:47:54',NULL),('e3eee8ae33c8bae6c62bbbeb4da819fbf175ddf2','testclient','joaopaulo','2016-03-25 03:13:24',NULL),('e524b5cd59c88407743ce1e11ea9dec40722b5db','testclient','joaopaulo@gmail.com','2016-04-04 19:59:14',NULL),('e662ab044c9581422429550c705d7246e296e2a5','testclient','joaopaulo','2016-03-25 02:44:47',NULL),('ed8279075e330fe05225e9f9428053c36037f081','testclient','joaopaulo@gmail.com','2016-04-04 19:22:37',NULL),('ee84d03047106cb0c30b627cca146b06c445968a','testclient','joaopaulo','2016-03-25 03:01:05',NULL),('eed7e300e2486dcffb9a623d740b6ea12b0fc6b0','testclient','joaopaulo','2016-03-31 13:09:04',NULL),('f0a80a11a2c02fa749f94eb568e68fa33f7ed8f2','testclient','joaopaulo@gmail.com','2016-04-01 16:54:56',NULL),('f25ff22d8660fbd2b0489fca5a5da3e92e4fa1cd','testclient','joaopaulo','2016-03-25 03:17:22',NULL),('f293470ce08b9dc44ee11f1cdbe402bded2ecde3','testclient','joaopaulo','2016-03-25 02:38:41',NULL),('f38b59a4c12da4c9ed231a2ff095b0e118174a5b','testclient','joaopaulo','2016-03-31 12:56:38',NULL),('f3f6e1bde58a4ff73034f9d1c045b7a7adc1f7db','testclient','joaopaulo','2016-03-31 23:08:52',NULL),('f47defb327845bc70452607913e6dec4deda3318','testclient','joaopaulo','2016-03-25 02:39:23',NULL),('f60f1aa11df16347294eea423ff7b96b99c90ac5','testclient','joaopaulo','2016-03-24 22:29:08',NULL),('f70239d7540deadd27d96251ee5c22d3e9267a4d','testclient','joaopaulo','2016-03-31 02:48:46',NULL),('f8540c105a819ffb5ec703bd60ab8c1ca07b9942','testclient','joaopaulo@gmail.com','2016-04-01 16:33:00',NULL),('f9bb37bfb884987927c6374882472639414f873b','testclient','joaopaulo','2016-03-31 22:55:42',NULL);
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `type` varchar(255) NOT NULL DEFAULT 'supported',
  `scope` varchar(2000) DEFAULT NULL,
  `client_id` varchar(80) DEFAULT NULL,
  `is_default` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_users`
--

DROP TABLE IF EXISTS `oauth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_users`
--

LOCK TABLES `oauth_users` WRITE;
/*!40000 ALTER TABLE `oauth_users` DISABLE KEYS */;
INSERT INTO `oauth_users` VALUES ('joaopaulo@gmail.com','$2y$10$6WbWb3EBaZusW27p7bdeTOYHPqdZPSO0YpMxasxazbvHUY.Z2nbda','Joao Paulo','Villela');
/*!40000 ALTER TABLE `oauth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presencaEvento`
--

DROP TABLE IF EXISTS `presencaEvento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presencaEvento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_convidado` varchar(150) DEFAULT NULL,
  `tipo_convidado` char(1) DEFAULT NULL COMMENT 'C - Criança; A - Adulto',
  `convidado_id` int(11) DEFAULT NULL,
  `evento_id` int(11) NOT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_presenca_evento_convidado_idx` (`convidado_id`),
  KEY `fk_presenca_evento_evento_idx` (`evento_id`),
  CONSTRAINT `fk_presenca_evento_convidado` FOREIGN KEY (`convidado_id`) REFERENCES `convidado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_presenca_evento_evento` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presencaEvento`
--

LOCK TABLES `presencaEvento` WRITE;
/*!40000 ALTER TABLE `presencaEvento` DISABLE KEYS */;
INSERT INTO `presencaEvento` VALUES (1,'Joao Paulo','A',1,2,'0000-00-00 00:00:00'),(2,'Arthur Sousa','C',2,2,'2016-03-16 12:33:19'),(3,'Fernanda Silva Villela','A',3,2,'2016-03-16 15:35:35'),(4,'Edmundo da silva','A',4,2,'2016-03-16 19:28:45'),(5,'Renata','A',6,2,'2016-03-17 11:26:59'),(6,'Tio Iva','C',5,2,'2016-03-17 11:27:12'),(7,'Joao Pedro',NULL,NULL,3,'2016-03-18 12:42:07'),(8,'Joao Pedro',NULL,NULL,3,'2016-03-18 12:42:08'),(9,'Joao Pedro',NULL,NULL,3,'2016-03-18 12:42:08'),(10,'Joao Pedro',NULL,NULL,3,'2016-03-18 12:42:08'),(11,'Joao Pedro',NULL,NULL,3,'2016-03-18 12:42:09'),(12,'Pedro Jose',NULL,NULL,3,'2016-03-18 12:55:37'),(13,'Pedro Jose',NULL,NULL,3,'2016-03-18 12:55:38'),(14,'Pedro Jose',NULL,NULL,3,'2016-03-18 12:55:38'),(15,'Pedro Jose',NULL,NULL,3,'2016-03-18 12:55:38'),(16,'Pedro Jose',NULL,NULL,3,'2016-03-18 12:55:38'),(17,'Arthur',NULL,NULL,8,'2016-03-18 12:56:39'),(18,'Arthur',NULL,NULL,8,'2016-03-18 12:56:39'),(19,'Arthur',NULL,NULL,8,'2016-03-18 12:56:39'),(20,'Arthur',NULL,NULL,8,'2016-03-18 12:56:40'),(21,'Arthur',NULL,NULL,8,'2016-03-18 12:56:40'),(22,'Fernanda',NULL,NULL,7,'2016-03-18 12:57:20'),(23,'Fernanda',NULL,NULL,7,'2016-03-18 12:57:20'),(24,'Fernanda',NULL,NULL,7,'2016-03-18 12:57:20'),(25,'Jose',NULL,NULL,8,'2016-03-18 12:58:00'),(26,'Jose',NULL,NULL,8,'2016-03-18 12:58:00'),(27,'Jose',NULL,NULL,8,'2016-03-18 12:58:01'),(28,'Jose',NULL,NULL,8,'2016-03-18 12:58:01'),(29,'Jose',NULL,NULL,8,'2016-03-18 12:58:01'),(30,'Jose',NULL,NULL,8,'2016-03-18 12:58:02'),(31,'Jose',NULL,NULL,8,'2016-03-18 12:58:02'),(32,'Jose',NULL,NULL,8,'2016-03-18 12:58:02'),(33,'Jose',NULL,NULL,8,'2016-03-18 12:58:02'),(34,'Arthur',NULL,NULL,3,'2016-03-18 13:34:31');
/*!40000 ALTER TABLE `presencaEvento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-21  8:07:37
