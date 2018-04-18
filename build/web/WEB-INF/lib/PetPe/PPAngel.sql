-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pp
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `cat_colonias`
--

DROP TABLE IF EXISTS `cat_colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_colonias` (
  `Id_Colonia` int(4) NOT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  `Nom_Colonia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Colonia`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  CONSTRAINT `cat_colonias_ibfk_1` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones` (`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonias`
--

LOCK TABLES `cat_colonias` WRITE;
/*!40000 ALTER TABLE `cat_colonias` DISABLE KEYS */;
INSERT INTO `cat_colonias` VALUES (1,1,'Paraje San Juan'),(2,1,'Progresista'),(3,2,'Acueducto'),(4,2,'Altavista');
/*!40000 ALTER TABLE `cat_colonias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_delegaciones`
--

DROP TABLE IF EXISTS `cat_delegaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_delegaciones` (
  `Id_Delegacion` int(4) NOT NULL,
  `Nom_Delegacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_delegaciones`
--

LOCK TABLES `cat_delegaciones` WRITE;
/*!40000 ALTER TABLE `cat_delegaciones` DISABLE KEYS */;
INSERT INTO `cat_delegaciones` VALUES (1,'Iztapalapa'),(2,'Alvaro Obregon'),(3,'Iztacalco'),(4,'Xochimilco'),(5,'Coyoacancat_colonias');
/*!40000 ALTER TABLE `cat_delegaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_razas`
--

DROP TABLE IF EXISTS `cat_razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_razas` (
  `Id_Raza` int(4) NOT NULL,
  `Nom_Raza` varchar(30) DEFAULT NULL,
  `Id_Tipo` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Raza`),
  KEY `Id_Tipo` (`Id_Tipo`),
  CONSTRAINT `cat_razas_ibfk_1` FOREIGN KEY (`Id_Tipo`) REFERENCES `cat_tipos` (`Id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_razas`
--

LOCK TABLES `cat_razas` WRITE;
/*!40000 ALTER TABLE `cat_razas` DISABLE KEYS */;
INSERT INTO `cat_razas` VALUES (1,'Schnauzer',1),(2,'Pug',1),(3,'Chihuahua',1),(4,'Salchicha',1),(5,'Husky',1),(6,'Bóxer',1),(7,'Beagle',1),(8,'Siamés',2),(9,'Ragdoll',2),(10,'Bengala',2),(11,'Azul ruso',2),(12,'Burmés',2),(13,'Egipcio',2),(14,'Korat',2);
/*!40000 ALTER TABLE `cat_razas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipos`
--

DROP TABLE IF EXISTS `cat_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_tipos` (
  `Id_Tipo` int(4) NOT NULL,
  `Nom_Tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipos`
--

LOCK TABLES `cat_tipos` WRITE;
/*!40000 ALTER TABLE `cat_tipos` DISABLE KEYS */;
INSERT INTO `cat_tipos` VALUES (1,'Perro'),(2,'Gato'),(3,'Pez'),(4,'Conejo'),(5,'Conejo');
/*!40000 ALTER TABLE `cat_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `Id_Mascota` int(4) NOT NULL,
  `Nom_Mascota` varchar(30) DEFAULT NULL,
  `Id_Raza` int(4) DEFAULT NULL,
  `Edad` int(3) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Id_Colonia` int(4) DEFAULT NULL,
  `Sexo_Mascota` varchar(20) DEFAULT NULL,
  `Imagen` text,
  PRIMARY KEY (`Id_Mascota`),
  KEY `Id_Raza` (`Id_Raza`),
  KEY `Id_Colonia` (`Id_Colonia`),
  CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`Id_Raza`) REFERENCES `cat_razas` (`Id_Raza`),
  CONSTRAINT `mascotas_ibfk_2` FOREIGN KEY (`Id_Colonia`) REFERENCES `cat_colonias` (`Id_Colonia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'Perro',1,14,'descripcion',2,'N','https://www.google.com.mx/search?q=imagen&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiKndqskb_aAhVFuVMKHcZTDL8Q_AUICigB&biw=1366&bih=637#'),(2,'Perico',2,15,'Descripcion2',1,'N','data:image/png;base64,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'),(3,'NoC',2,15,'Descripcion2',1,'N','data:image/png;base64,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'),(12,'Gato',2,15,'Descripcion2',1,'M','https://www.google.com.mx/imgres?imgurl=http%3A%2F%2Fcdn.imagentv.com%2Fresources%2Fdefaults%2Fv2%2Fimagen_default300.png&imgrefurl=http%3A%2F%2Fwww.imagentv.com%2F&docid=6E5hLRimAjeS8M&tbnid=W9gOk1ej_Hf_nM%3A&vet=10ahUKEwjltvWukb_aAhVL3VMKHfp_D5EQMwikASgBMAE..i&w=335&h=182&bih=637&biw=1366&q=imagen&ved=0ahUKEwjltvWukb_aAhVL3VMKHfp_D5EQMwikASgBMAE&iact=mrc&uact=8');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `Id_Persona` int(4) NOT NULL,
  `NickName` varchar(25) DEFAULT NULL,
  `Nom_Persona` varchar(25) DEFAULT NULL,
  `Ap_Pat` varchar(20) DEFAULT NULL,
  `Ap_Mat` varchar(20) DEFAULT NULL,
  `Clave` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Num_Telefonico` varchar(15) DEFAULT NULL,
  `Id_Colonia` int(4) DEFAULT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Persona`),
  KEY `Id_Colonia` (`Id_Colonia`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Id_Colonia`) REFERENCES `cat_colonias` (`Id_Colonia`),
  CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones` (`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'ANGELITO','AAA','BBB','CCC','angelito','angel45604@gmail.com','1231234234',3,2);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_delegaciones_colonias`
--

DROP TABLE IF EXISTS `rel_delegaciones_colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_delegaciones_colonias` (
  `Id_Rel_Delegaciones_Colonias` int(4) NOT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  `Id_Colonia` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Rel_Delegaciones_Colonias`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  KEY `Id_Colonia` (`Id_Colonia`),
  CONSTRAINT `rel_delegaciones_colonias_ibfk_1` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones` (`Id_Delegacion`),
  CONSTRAINT `rel_delegaciones_colonias_ibfk_2` FOREIGN KEY (`Id_Colonia`) REFERENCES `cat_colonias` (`Id_Colonia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_delegaciones_colonias`
--

LOCK TABLES `rel_delegaciones_colonias` WRITE;
/*!40000 ALTER TABLE `rel_delegaciones_colonias` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_delegaciones_colonias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_persona_mascota`
--

DROP TABLE IF EXISTS `rel_persona_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_persona_mascota` (
  `Id_Rel_Persona_Mascota` int(4) NOT NULL,
  `Id_Persona` int(4) DEFAULT NULL,
  `Id_Mascota` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Rel_Persona_Mascota`),
  KEY `Id_Persona` (`Id_Persona`),
  KEY `Id_Mascota` (`Id_Mascota`),
  CONSTRAINT `rel_persona_mascota_ibfk_1` FOREIGN KEY (`Id_Persona`) REFERENCES `personas` (`Id_Persona`),
  CONSTRAINT `rel_persona_mascota_ibfk_2` FOREIGN KEY (`Id_Mascota`) REFERENCES `mascotas` (`Id_Mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_persona_mascota`
--

LOCK TABLES `rel_persona_mascota` WRITE;
/*!40000 ALTER TABLE `rel_persona_mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_persona_mascota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-16 19:08:12
