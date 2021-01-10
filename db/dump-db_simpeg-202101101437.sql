-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: db_simpeg
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_roles` varchar(10) NOT NULL,
  `nama_roles` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_golongan`
--

DROP TABLE IF EXISTS `t_golongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_golongan` (
  `id_golongan` varchar(50) NOT NULL,
  `kode_golongan` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_golongan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_golongan`
--

LOCK TABLES `t_golongan` WRITE;
/*!40000 ALTER TABLE `t_golongan` DISABLE KEYS */;
INSERT INTO `t_golongan` VALUES ('7895553f-52fa-11eb-bfc1-28c2dda92681','I/b','Juru Muda Tingkat I','2021-01-10 02:58:27',NULL,'1'),('7895553f-52fa-11eb-bfc1-28c2dda92682','I/c','Juru','2021-01-10 02:58:27',NULL,'1'),('7895553f-52fa-11eb-bfc1-28c2dda92683','I/d','Juru Tingkat I','2021-01-10 02:58:27',NULL,'1'),('7895553f-52fa-11eb-bfc1-28c2dda92684','II/a','Pengatur Muda','2021-01-10 02:58:27',NULL,'1'),('7895553f-52fa-11eb-bfc1-28c2dda92685','II/b','Pengatur Muda Tingkat I','2021-01-10 02:58:27',NULL,'1'),('7895553f-52fa-11eb-bfc1-28c2dda9268d','I/a','Juru Muda','2021-01-10 02:58:27','2021-01-10 04:28:46','1'),('92a8d024-52fa-11eb-bfc1-28c2dda92611','II/c','Pengatur','2021-01-10 02:58:27',NULL,'1'),('92a8d024-52fa-11eb-bfc1-28c2dda92622','II/d','Pengatur Tingkat I','2021-01-10 02:58:27',NULL,'1'),('92a8d024-52fa-11eb-bfc1-28c2dda92633','III/a','Penata Muda','2021-01-10 02:58:27',NULL,'1'),('92a8d024-52fa-11eb-bfc1-28c2dda92644','III/b','Penata Muda Tingkat I','2021-01-10 02:58:27',NULL,'1'),('92a8d024-52fa-11eb-bfc1-28c2dda92655','III/c','Penata','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92681','III/d','Penata Tingkat I','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92682','IV/a','Pembina','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92683','IV/b','Pembina Tingkat I','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92684','IV/c','Pembina Utama Muda','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92685','IV/d','Pembina Utama Madya','2021-01-10 02:58:27',NULL,'1'),('b788c7fb-52fa-11eb-bfc1-28c2dda92686','IV/e','Pembina Utama','2021-01-10 02:58:27',NULL,'1');
/*!40000 ALTER TABLE `t_golongan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pegawai`
--

DROP TABLE IF EXISTS `t_pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_pegawai` (
  `id_pegawai` varchar(50) NOT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `alamat` text,
  `id_golongan` varchar(50) DEFAULT NULL,
  `jenkel` varchar(20) DEFAULT NULL,
  `tahun_masuk` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(2) DEFAULT NULL,
  `gaji` int DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pegawai`
--

LOCK TABLES `t_pegawai` WRITE;
/*!40000 ALTER TABLE `t_pegawai` DISABLE KEYS */;
INSERT INTO `t_pegawai` VALUES ('78b208e3-52fd-11eb-bfc1-28c2dda9268d','198805242010012011','Siti Annisa','085334545986','Semolowaru, Surabaya','III/b','Perempuan','2001','2021-01-10 04:36:57','2021-01-10 06:03:17','1',2500000),('89dbf7c2-3e1a-11eb-98c5-f832e401f0e4','198705242010012013','Niken Kartikasari','085334545057','Bojonegoro','IV/a','Perempuan','2009','2020-12-15 06:01:31','2021-01-10 06:00:59','1',2500000),('89dbf7c2-3e1a-11eb-98c5-f832e401f12f','197104171991032008','Dyah Aristanti','085334545051','Surabaya','III/d','Perempuan','2019','2020-12-15 06:01:31','2021-01-10 05:59:43','1',2000000),('89dbf7c2-3e1a-11eb-98c5-f832e401foky','197103021991032005','Fitha Eka Kresna','085334545058','Bojonegoro','III/b','Perempuan','2010','2020-12-15 06:01:31','2021-01-10 06:00:06','1',2500000),('b28ae728-4843-11eb-9071-28c2dda9268d','19805242010012012','Ahmad Syamsudin','085334545081','Nginden, Surabaya','III/d','Laki-laki','2008','2020-12-27 13:01:56','2021-01-10 06:04:29','1',2000000),('f247da6d-3e1c-11eb-98c5-f832e401f0e4','197601232000032003','Yayuk Dwi Rinawati','0853345450571','Surabaya','III/c','Perempuan','2000','2020-12-15 06:01:31','2021-01-10 06:00:24','1',3000000),('f247da6d-3e1c-11eb-98c5-f832e401f0uia','197601232000032003','Muhammad Alkautsar','085334545057','Bojonegoro','III/d','Laki-laki','2001','2020-12-15 06:01:31','2021-01-10 06:00:41','1',2900000);
/*!40000 ALTER TABLE `t_pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_roles` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ec6dd1bb-3d3f-11eb-b30c-f832e401f0e4','Superadmin','superadmin','superadmin@gmail.com','123456','1','2020-12-13 12:38:09','2020-12-13 12:38:09',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_simpeg'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 14:37:01
