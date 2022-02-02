-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bolivia
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
-- Table structure for table `t_departamento`
--

DROP TABLE IF EXISTS `t_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_departamento` (
  `iddepartamento` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_departamento`
--

LOCK TABLES `t_departamento` WRITE;
/*!40000 ALTER TABLE `t_departamento` DISABLE KEYS */;
INSERT INTO `t_departamento` VALUES (1,'La Paz'),(2,'Oruro'),(3,'Potosi'),(4,'Cochabamba'),(5,'Santa Cruz'),(6,'Chuquisaca'),(7,'Tarija'),(8,'Beni'),(9,'Pando');
/*!40000 ALTER TABLE `t_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_municipio`
--

DROP TABLE IF EXISTS `t_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_municipio` (
  `idmunicipio` int NOT NULL AUTO_INCREMENT,
  `idprovincia` int NOT NULL,
  `municipio` varchar(45) NOT NULL,
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_municipio`
--

LOCK TABLES `t_municipio` WRITE;
/*!40000 ALTER TABLE `t_municipio` DISABLE KEYS */;
INSERT INTO `t_municipio` VALUES (1,1,'La Paz'),(2,1,'Palca'),(3,1,'Mecapaca'),(4,1,'Achocalla'),(5,1,'El Alto'),(6,2,'Achacachi'),(7,2,'Ancoraimes'),(8,2,'Chua Cocani'),(9,2,'Huarina'),(10,2,'Santiago de Huata'),(11,2,'Huatajata'),(12,3,'Coro Coro'),(13,3,'Caquiaviri'),(14,3,'Calacoto'),(15,3,'Comanche'),(16,3,'Charaña'),(17,3,'Waldo Ballivian'),(18,3,'Nazacara de Pacajes'),(19,3,'Callapa'),(20,4,'Puerto Acosta'),(21,4,'Mocomoco'),(22,4,'Pto. Carabuco'),(23,4,'Humanata'),(24,4,'Escoma'),(25,5,'Chuma'),(26,5,'Ayata'),(27,5,'Aucapata'),(28,6,'Sorata'),(29,6,'Guanay'),(30,6,'Tacacoma'),(31,6,'Quiabaya'),(32,6,'Combaya'),(33,6,'Tipuani'),(34,6,'Mapiri'),(35,6,'Teoponte'),(36,7,'Apolo'),(37,7,'Pelechuco'),(38,8,'Viacha'),(39,8,'Guaqui'),(40,8,'Tihuanacu'),(41,8,'Desaguadero'),(42,8,'San Andres de Machaca'),(43,8,'Jesus de Machaca'),(44,8,'Taraco'),(45,9,'Luribay'),(46,9,'Sapahaqui'),(47,9,'Yaco'),(48,9,'Malla'),(49,9,'Cairoma'),(50,10,'Inquisive'),(51,10,'Quime'),(52,10,'Cajuata'),(53,10,'Colquiri'),(54,10,'Ichoca'),(55,10,'Villa Libertad Licoma'),(56,11,'Chulumani'),(57,11,'Irupana'),(58,11,'Yanacachi'),(59,11,'Palos Blancos'),(60,11,'La Asunta'),(61,12,'Pucarani'),(62,12,'Laja'),(63,12,'Batallas'),(64,12,'Puerto Perez'),(65,13,'Sica Sica'),(66,13,'Umala'),(67,13,'Ayo Ayo'),(68,13,'Calamarca'),(69,13,'Patacamaya'),(70,13,'Colquecha'),(71,13,'Collana'),(72,14,'Coroico'),(73,14,'Coripata'),(74,15,'Ixiamas'),(75,15,'San Buena Aventura'),(76,16,'Charazani'),(77,16,'Curva'),(78,17,'Copacabana'),(79,17,'San Pedro de Tiquina'),(80,17,'Tito Yupanqui'),(81,18,'San Pedro de Curahuara'),(82,18,'Papel Pampa'),(83,18,'Chacarilla'),(84,19,'Santiago de Machaca'),(85,19,'Catacora'),(86,20,'Caranavi'),(87,20,'Alto Beni'),(88,21,'Santa Cruz de la Sierra'),(89,21,'Cotoca'),(90,21,'Porongo'),(91,21,'La Guardia'),(92,21,'El Torno'),(93,22,'Warnes'),(94,22,'Okinawa uno'),(95,23,'San Ignacio de Velasco'),(96,23,'San Miguel de Velasco'),(97,23,'San Rafael'),(98,24,'Buena Vista'),(99,24,'San Carlos'),(100,24,'Yapacani'),(101,24,'San Juan de Yapacani'),(102,25,'San José de Chiquitos'),(103,25,'Pailón'),(104,25,'Roboré'),(105,26,'Portachuelo'),(106,26,'Santa Rosa del Sara'),(107,26,'Colpa Belgica'),(108,27,'Lagunillas'),(109,27,'Charagua'),(110,27,'Cabezas'),(111,27,'Cuevo'),(112,27,'Gutierrez'),(113,27,'Camiri'),(114,27,'Boyuibe'),(115,28,'Valle Grande'),(116,28,'Trigal'),(117,28,'Moro Moro'),(118,28,'Postrer Valle'),(119,28,'Pucara'),(120,29,'Samaipata'),(121,29,'Pampa Grande'),(122,29,'Mairana'),(123,29,'Quirusillas'),(124,30,'Montero'),(125,30,'Gral. Saavedra'),(126,30,'Mineros'),(127,30,'Fernández Alonso'),(128,30,'San Pedro'),(129,31,'Concepción'),(130,31,'San Javier'),(131,31,'San Ramon'),(132,31,'San Julian'),(133,31,'San Antonio de Lomerio'),(134,31,'Cuatro Cañadas'),(135,32,'San Matias'),(136,33,'Comarapa'),(137,33,'Saipina'),(138,34,'Puerto Suarez'),(139,34,'Puerto Quijarro'),(140,34,'Carmen Rivero Torrez'),(141,35,'Ascensión de de Guarayos'),(142,35,'Urubichá'),(143,35,'El Puente'),(144,36,'Oruro'),(145,36,'Caracollo'),(146,36,'El Choro'),(147,36,'Soracachi'),(148,37,'Challapata'),(149,37,'Quillacas'),(150,38,'Corque'),(151,38,'Corque Cota'),(152,39,'Curahuara de Carangas'),(153,39,'Turco'),(154,40,'Huachacalla'),(155,40,'Escara'),(156,40,'Cruz de Machacamarca'),(157,40,'Yunguyo de Litoral'),(158,40,'Esmeralda'),(159,41,'Poopó'),(160,41,'Pazña'),(161,41,'Antequera'),(162,42,'Huanuni'),(163,42,'Machacamarca'),(164,43,'Salinas de García Mendoza'),(165,43,'Pampa Aullagas'),(166,44,'Sabaya'),(167,44,'Coipasa'),(168,44,'Chipaya'),(169,45,'Toledo'),(170,46,'Eucaliptus'),(171,47,'Santiago de Andamarca'),(172,47,'Belén de Andamarca'),(173,48,'San Pedro de Totora'),(174,49,'Huari'),(175,50,'La Rivera'),(176,50,'Todos Santos'),(177,50,'Carangas'),(178,51,'Huayllamarca'),(179,52,'Potosí'),(180,52,'Tinguipaya'),(181,52,'Urmiri'),(182,53,'Uncía'),(183,53,'Chayanta'),(184,53,'Llallagua'),(185,53,'Chuquihuta'),(186,54,'Betanzos'),(187,54,'Chaqui'),(188,54,'Tacobamba'),(189,55,'Colquechaca'),(190,55,'Ravelo'),(191,55,'Pocoata'),(192,55,'Ocurí'),(193,56,'San Pedro de Buena Vista'),(194,56,'Toro Toro'),(195,57,'Cotagaita'),(196,57,'Vitichi'),(197,58,'Villa de Sacaca'),(198,58,'Caripuyo'),(199,59,'Tupiza'),(200,59,'Atocha'),(201,60,'Cochak'),(202,60,'San Pedro de Quemes'),(203,61,'San Pedro de Lipez'),(204,61,'Mojinete'),(205,61,'San Antonio de Esmoruco'),(206,62,'Puna'),(207,62,'Caiza D'),(208,62,'Ckochas'),(209,63,'Uyuni'),(210,63,'Tomave'),(211,63,'Porco'),(212,64,'Arampampa'),(213,64,'Acasio'),(214,65,'Lilca'),(215,65,'Tahua'),(216,66,'Villazón'),(217,112,'San Agustin'),(218,67,'Cochabamba'),(219,68,'Aiquile'),(220,68,'Pasorapa'),(221,68,'Omereque'),(222,69,'Independencia'),(223,69,'Morochata'),(224,69,'Cocapata'),(225,70,'Tarata'),(226,70,'Anzaldo'),(227,70,'Arbieto'),(228,70,'Sacabamba'),(229,71,'Arani'),(230,71,'Vacas'),(231,72,'Arque'),(232,72,'Tacopaya'),(233,73,'Capinota'),(234,73,'Santivañez'),(235,73,'Sicaya'),(236,74,'Cliza'),(237,74,'Toko'),(238,74,'Tolata'),(239,75,'Quillacollo'),(240,75,'Sipe Sipe'),(241,75,'Tiquipaya'),(242,75,'Vinto'),(243,75,'Colcapirhua'),(244,76,'Sacaba'),(245,76,'Colomi'),(246,76,'Villa Tunari'),(247,77,'Tapacarí'),(248,78,'Totora'),(249,78,'Pojo'),(250,78,'Pocona'),(251,78,'Chimoré'),(252,78,'Puerto Villaroel'),(253,78,'Entre Rios'),(254,79,'Mizque'),(255,79,'Vila Vila'),(256,79,'Alalay'),(257,80,'Punata'),(258,80,'Villa Rivero'),(259,80,'San Benito'),(260,80,'Tacachi'),(261,80,'Cuchumuela'),(262,81,'Bolivar'),(263,82,'Tiraque'),(264,82,'Shinahota'),(265,93,'Tarija'),(266,94,'Padcaya'),(267,94,'Bermejo'),(268,95,'Yacuiba'),(269,95,'Caraparí'),(270,95,'Villamontes'),(271,96,'Uriondo'),(272,96,'Yunchará'),(273,97,'Villa San Lorenzo'),(274,97,'El Puente'),(275,98,'Entre Rios'),(276,83,'Sucre'),(277,83,'Yotala'),(278,83,'Poroma'),(279,84,'Azurduy'),(280,84,'Tarvita'),(281,85,'Zudañez'),(282,85,'Presto'),(283,85,'Mocoya'),(284,85,'Icla'),(285,86,'Padilla'),(286,86,'Tomina'),(287,86,'Sopachuy'),(288,86,'Villa Alcalá'),(289,86,'El Villar'),(290,87,'Monteagudo'),(291,87,'Huacareta'),(292,88,'Tarabuco'),(293,88,'Yamparaez'),(294,89,'Camargo'),(295,89,'San Lucas'),(296,89,'Incahuasi'),(297,89,'Villa Charcas'),(298,90,'Villa Serrano'),(299,91,'Villa Abecia'),(300,91,'Culpina'),(301,91,'Las Carreras'),(302,92,'Muyupampa'),(303,92,'Huacaya'),(304,92,'Macharetí'),(305,99,'Trinidad'),(306,99,'San Javier'),(307,100,'Riberalta'),(308,100,'Guayaramerín'),(309,101,'Reyes'),(310,101,'San Borja'),(311,101,'Santa Rosa'),(312,101,'Rurrenabaque'),(313,102,'Santa Ana de Yacuma'),(314,102,'Exaltación'),(315,103,'San Ignacio'),(316,104,'Loreto'),(317,104,'San Andres'),(318,105,'San Joaquin'),(319,105,'San Ramón'),(320,105,'Puerto Siles'),(321,106,'Magdalena'),(322,106,'Baures'),(323,106,'Huacaraje'),(324,107,'Cobija'),(325,107,'Porvenir'),(326,107,'Bolbebra'),(327,107,'Bella Flor'),(328,108,'Puerto Rico'),(329,108,'San Pedro'),(330,108,'Filadelfia'),(331,109,'Puerto Gonzales Moreno'),(332,109,'San Lorenzo'),(333,109,'Sena'),(334,110,'Santa Rosa'),(335,110,'Ingavi'),(336,111,'Nueva Esperanza'),(337,111,'Villa Nueva - Loma Alta'),(338,111,'Santos Mercado');
/*!40000 ALTER TABLE `t_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_provincia`
--

DROP TABLE IF EXISTS `t_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_provincia` (
  `idprovincia` int NOT NULL AUTO_INCREMENT,
  `iddepartamento` int NOT NULL,
  `provincia` varchar(45) NOT NULL,
  PRIMARY KEY (`idprovincia`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_provincia`
--

LOCK TABLES `t_provincia` WRITE;
/*!40000 ALTER TABLE `t_provincia` DISABLE KEYS */;
INSERT INTO `t_provincia` VALUES (1,1,'MURILLO'),(2,1,'OMASUYOS'),(3,1,'PACAJES'),(4,1,'CAMACHO'),(5,1,'MUÑECAS'),(6,1,'LARECAJA'),(7,1,'FRANZ TAMAYO'),(8,1,'INGAVI'),(9,1,'LOAYZA'),(10,1,'INQUISIVI'),(11,1,'SUD YUNGAS'),(12,1,'LOS ANDES'),(13,1,'AROMA'),(14,1,'NOR YUNGAS'),(15,1,'ABEL ITURRALDE'),(16,1,'BAUTISTA SAAVEDRA'),(17,1,'MANCO KAPAC'),(18,1,'GUALBERTO VILLAROEL'),(19,1,'JOSE MANUEL PANDO'),(20,1,'CARANAVI'),(21,5,'ANDRES IBAÑEZ'),(22,5,'WARNES'),(23,5,'VELASCO'),(24,5,'ICHILO'),(25,5,'CHIQUITOS'),(26,5,'SARA'),(27,5,'CORDILLERA'),(28,5,'VALLEGRANDE'),(29,5,'FLORIDA'),(30,5,'OBISPO SANTIESTEVAN'),(31,5,'ÑUFLO CHAVEZ'),(32,5,'ANGEL SANDOVAL'),(33,5,'MANUEL MARIA CABALLERO'),(34,5,'GERMAN BUSCH'),(35,5,'GUARAYOS'),(36,2,'CERCADO'),(37,2,'ABAROA'),(38,2,'CARANGAS'),(39,2,'SAJAMA'),(40,2,'LITORAL'),(41,2,'POOPO'),(42,2,'PANTALEON DALENCE'),(43,2,'LADISLAO CABRERA'),(44,2,'SABAYA'),(45,2,'SAUCARI'),(46,2,'TOMAS BARRON'),(47,2,'SUR CARANGAS'),(48,2,'SAN PEDRO DE TOTORA'),(49,2,'SEBASTIAN PAGADOR'),(50,2,'MEJILLONES'),(51,2,'NOR CARANGAS'),(52,3,'TOMAS FRIAS'),(53,3,'RAFAEL BUSTILLO'),(54,3,'CORNELIO SAAVEDRA'),(55,3,'CHAYANTA'),(56,3,'CHARCAS'),(57,3,'NOR CHICHAS'),(58,3,'ALONSO DE IBAÑEZ'),(59,3,'SUR CHICHAS'),(60,3,'NOR LIPEZ'),(61,3,'SUR LIPEZ'),(62,3,'JOSE MARIA LINAREZ'),(63,3,'ANTONIO QUIJARRO'),(64,3,'BERNARDINO BILBAO RIOJA'),(65,3,'DANIEL CAMPOS'),(66,3,'MODESTO OMISTE'),(67,4,'CERCADO'),(68,4,'CAMPERO'),(69,4,'AYOPAYA'),(70,4,'ESTEBAN ARCE'),(71,4,'ARANI'),(72,4,'ARQUE'),(73,4,'CAPINOTA'),(74,4,'GERMAN JORDAN'),(75,4,'QUILLACOLLO'),(76,4,'CHAPARE'),(77,4,'TAPACARI'),(78,4,'CARRASCO'),(79,4,'MIZQUE'),(80,4,'PUNATA'),(81,4,'BOLIVAR'),(82,4,'TIRAQUE'),(83,6,'OROPEZA'),(84,6,'AZURDUY'),(85,6,'ZUDAÑEZ'),(86,6,'TOMINA'),(87,6,'HERNANDO SILES'),(88,6,'YAMPARAEZ'),(89,6,'NOR CINTI'),(90,6,'BELISARIO BOETO'),(91,6,'SUD CINTI'),(92,6,'LUIS CALVO'),(93,7,'CERCADO'),(94,7,'ANICETO ARCE'),(95,7,'GRAN CHACO'),(96,7,'AVILES'),(97,7,'MENDEZ'),(98,7,'BURNET OCONNOR'),(99,8,'CERCADO'),(100,8,'VACA DIEZ'),(101,8,'JOSE BALLIVIAN'),(102,8,'YACUMA'),(103,8,'MOXOS'),(104,8,'MARBAN'),(105,8,'MAMORE'),(106,8,'ITENEZ'),(107,9,'NICOLAS SUAREZ'),(108,9,'MANURIPI'),(109,9,'MADRE DE DIOS'),(110,9,'ABUNA'),(111,9,'FEDERICO ROMAN'),(112,3,'ENRIQUE BALDIVIESO');
/*!40000 ALTER TABLE `t_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bolivia'
--

--
-- Dumping routines for database 'bolivia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-01 22:53:49
