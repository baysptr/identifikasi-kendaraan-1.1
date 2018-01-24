-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: web_identifikasi
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `M_HISTORY`
--

DROP TABLE IF EXISTS `M_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `M_HISTORY` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_pengguna` varchar(75) NOT NULL,
  `last_seen` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_HISTORY`
--

LOCK TABLES `M_HISTORY` WRITE;
/*!40000 ALTER TABLE `M_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `M_PENGGUNA`
--

DROP TABLE IF EXISTS `M_PENGGUNA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `M_PENGGUNA` (
  `id` varchar(75) NOT NULL,
  `nopol` varchar(75) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `email` varchar(75) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_PENGGUNA`
--

LOCK TABLES `M_PENGGUNA` WRITE;
/*!40000 ALTER TABLE `M_PENGGUNA` DISABLE KEYS */;
INSERT INTO `M_PENGGUNA` VALUES ('PENGGUNA_58b91904dfd74','L 6125 QZ','Bayu saputra','bayu.bayusaputra11@gmail.com','PSX_20170213_155224.jpg');
/*!40000 ALTER TABLE `M_PENGGUNA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_kendaraan` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nopol` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_update` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (1,'1','L 6125 QZ','2018-01-24 13:41:20','2018-01-24 06:41:20','2018-01-24 06:41:20'),(2,'1','L 6125 QZ','2018-01-24 13:43:05','2018-01-24 06:43:05','2018-01-24 06:43:05');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kendaraans`
--

DROP TABLE IF EXISTS `kendaraans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kendaraans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pengguna` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kendaraan` enum('motor','mobil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nopol` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_kendaraan` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked_kendaraan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kendaraans`
--

LOCK TABLES `kendaraans` WRITE;
/*!40000 ALTER TABLE `kendaraans` DISABLE KEYS */;
INSERT INTO `kendaraans` VALUES (1,'1','motor','L 6125 QZ','Yamaha Z 10','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(2,'2','mobil','63717','Gateway','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(3,'3','mobil','51869','Trafficway','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(4,'4','mobil','18600-5435','Cliff','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(5,'5','mobil','49117-4397','Square','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(6,'6','mobil','60997-1651','Ridges','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(7,'7','mobil','74078','Circle','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(8,'8','mobil','48327','Forges','N','2018-01-24 06:41:20','2018-01-24 06:41:20'),(9,'9','mobil','34785','Rest','N','2018-01-24 06:41:20','2018-01-24 06:41:20'),(10,'10','mobil','93252-7938','Station','N','2018-01-24 06:41:20','2018-01-24 06:41:20'),(11,'11','mobil','92489-2646','Port','N','2018-01-24 06:41:20','2018-01-24 06:41:20'),(12,'12','mobil','38762','Highway','N','2018-01-24 06:41:20','2018-01-24 06:41:20');
/*!40000 ALTER TABLE `kendaraans` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (16,'2018_01_24_094508_create_penggunas_table',1),(17,'2018_01_24_094519_create_kendaraans_table',1),(18,'2018_01_24_094527_create_histories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penggunas`
--

DROP TABLE IF EXISTS `penggunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penggunas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked_pengguna` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penggunas`
--

LOCK TABLES `penggunas` WRITE;
/*!40000 ALTER TABLE `penggunas` DISABLE KEYS */;
INSERT INTO `penggunas` VALUES (1,'089677271257','Bayu Saputra','Jl. Kupang Panjaan III - A, No. 43','bayu.bayusaputra11@gmail.com',NULL,'087853461504','L','N','2018-01-24 06:41:18','2018-01-24 06:41:18'),(2,'6','Prof. Lowell Effertz V','24719 Bailey Lodge Apt. 617\nWest Raoulmouth, NC 48859','brannon.halvorson@schulist.com',NULL,'XIII','L','N','2018-01-24 06:41:18','2018-01-24 06:41:18'),(3,'1','Herminia Collins','44050 Miller Stravenue Apt. 551\nWest Earlene, UT 24141-2956','windler.joel@reinger.org',NULL,'XIX','L','N','2018-01-24 06:41:18','2018-01-24 06:41:18'),(4,'9','Cristobal Schowalter','507 Winona Meadows\nPort Evaborough, AZ 03613','upton.clement@gmail.com',NULL,'IV','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(5,'9','Jordi Kunze','9975 Moen Land\nLarrymouth, NH 55200','jayda99@gmail.com',NULL,'IV','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(6,'1','Nicholaus Walsh','930 Karlie Shoals\nNienowton, IN 77351-2054','crutherford@yahoo.com',NULL,'X','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(7,'6','Colleen Boyer','104 Demetrius Mill Suite 032\nPort Deondre, AL 84133-9676','brooke.leuschke@yahoo.com',NULL,'XII','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(8,'3','Zack Torp','78883 Granville Parkways Apt. 802\nSouth Vivianne, SC 16592','meagan82@price.com',NULL,'XXI','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(9,'3','Mellie Weber','432 Maximus Mountains Apt. 906\nEast Salvadorborough, ME 54889','littel.blair@mckenzie.com',NULL,'XX','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(10,'8','Mrs. Loyce Steuber II','8604 Josiah Keys\nWest Isabellashire, AK 40004','morgan.ledner@gmail.com',NULL,'XVI','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19'),(11,'8','Marianna Erdman','489 Stracke Turnpike Suite 627\nJalynchester, OK 62242','eyundt@hotmail.com',NULL,'VI','L','N','2018-01-24 06:41:19','2018-01-24 06:41:19');
/*!40000 ALTER TABLE `penggunas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-24 20:58:49
