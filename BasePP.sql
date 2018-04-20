-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pp
-- ------------------------------------------------------
-- Server version	5.7.20-log
drop database PP;
create database PP;
use PP;

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
  CONSTRAINT `cat_colonias_ibfk_1` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones`(`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonias`
--

LOCK TABLES `cat_colonias` WRITE;
/*!40000 ALTER TABLE `cat_colonias` DISABLE KEYS */;
INSERT INTO `cat_colonias` VALUES (1,1,'Paraje San Juan'),(2,1,'Alborada'),
(3,1,'Benito Juarez'),(4,1,'Buenavista'),(5,1,'Anastacio Bustamante'),
(6,2,'San Angel'),(7,2,'Bella Vista'),(8,2,'Los Alpes'),(9,2,'Campestre'),
(10,3,'Santa Anita'),(11,3,'El rodeo'),(12,3,'Fraccionamiento Coyuya'),(13,4,'Altavista')
,(14,4,'Barrio 18'),(15,4,'Col. La Concha'),(16,5,'Cantil del Pedregal'),(17,5,'Bosques de Tetlamaya'),
(18,5,'Ajusco'),(19,5,'Copilco El Alto');
/*!40000 ALTER TABLE `cat_colonias` ENABLE KEYS */;
UNLOCK TABLES;
select * from cat_colonias;
describe cat_colonias;
show table status;
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
INSERT INTO `cat_delegaciones` VALUES (1,'Iztapalapa'),(2,'Alvaro Obregon'),
(3,'Iztacalco'),(4,'Xochimilco'),(5,'Coyoacan');
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
INSERT INTO `cat_razas` VALUES (1,'Schnauzer',1),(2,'Pug',1),(3,'Chihuahua',1),
(4,'Salchicha',1),(5,'Husky',1),(6,'Bóxer',1),(7,'Beagle',1),(8,'Siamés',2),(9,'Ragdoll',2)
,(10,'Bengala',2),(11,'Azul ruso',2),(12,'Burmés',2),(13,'Egipcio',2),(14,'Korat',2),(15,'Betta',3),(16,'Tetra Neon',3),
(17,'Payaso',3),(18,'Joya',3),(19,'Angel',3),(20,'Limon',3),(21,'Guppys',3),(22,'Californiano',4),(23,'Cabeza de Leon',4)
,(24,'Mini Rex',4),(25,'Mini Lop',4),(26,'Holandes',4);
/*!40000 ALTER TABLE `cat_razas` ENABLE KEYS */;
UNLOCK TABLES;
describe cat_razas;
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
select * from cat_tipos;
--
-- Dumping data for table `cat_tipos`
--

LOCK TABLES `cat_tipos` WRITE;
/*!40000 ALTER TABLE `cat_tipos` DISABLE KEYS */;
INSERT INTO `cat_tipos` VALUES (1,'Perro'),(2,'Gato'),(3,'Pez'),(4,'Conejo');
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
INSERT INTO `personas` VALUES (1,'ESME','AAA','BBB','CCC','159','merimtz45604@gmail.com','5567539315',3,2);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
select * from personas;


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
select * from mascotas;