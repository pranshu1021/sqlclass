-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: delta_app
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('07fbe4da-8eda-401d-b9ca-bd133ee1c7ad','Russell.Hartmann71','Aaron.Stroman@yahoo.com','8eBtiAZTCmk_6Er'),('123','123_newuser','abc@gmail.come','abc'),('123b','123_newuserb','abc@gmail.comeb','abcb'),('123c','123_newuserc','abc@gmail.comec','abcc'),('1489696d-4164-47f7-af66-c0dc3ccc1c65','Curtis82','Abel96@gmail.com','01kadEGwWsGl_pu'),('209332f5-e618-449a-8f44-226e9b563e6d','Jaime.Kshlerin58','Aaron.Pouros@hotmail.com','6YYgpCWaZqU7Ylo'),('2397a78e-78b6-4c61-8e2c-ea9ba779f82e','Norman.Moore33','Ada_Hansen45@yahoo.com','2y599cp8xzOWJrW'),('3be5c86a-b169-43cd-90b8-0e41f05ca5a7','Jamie.Daugherty','Adolfo97@yahoo.com','MCHIjQ0diag5sjY'),('48f830e8-4af6-4434-8930-7f69dff2cb9e','Willie.Kreiger1','Abigayle84@yahoo.com','m83AnchjoNkkfxX'),('490b46b9-8448-492b-90c3-3b69f860ea75','Russ.Hauck','Ada.Christiansen10@gmail.com','an5Qh9pIkxEnpm8'),('6e784f3b-bdbe-4317-b234-153517ecd7bf','Sid38','Abbie.Swift@gmail.com','FzxBPzvLoKrup5E'),('94ce0571-91ee-42ed-ae68-9bdcc26e9042','Celia_Gleichner','Ada63@gmail.com','f8qrKP9wZnuftEO'),('a4eb408b-72a7-4686-afca-26a7bf896b77','Raven.Schmitt30','Abbey.Dooley92@yahoo.com','iKyEmcO2OokkR15'),('aba1a413-c5bc-4a86-b599-7e0c6d8b4300','Ronnie.Johns','Abelardo.Abbott12@yahoo.com','lFmPqwMiM0OtHQl'),('b1c452d2-208c-4870-a24e-f66bf2378824','Colleen.Gusikowski81','Adam25@gmail.com','sjtHWX2FnhhqU48'),('b794aaae-e69f-4e13-846f-d9a5348b29be','Courtney_Tromp85','Ada87@yahoo.com','ygG40Xy4GX6VCAY'),('b91ea06e-e6c6-4427-96e1-73dd2e2f69ba','Corbin_Kreiger','Abel.Zieme64@yahoo.com','n7q1pFydTfu3bXz'),('de07e881-ea09-4ac8-9e8f-0864c5d57a53','Percy_Wintheiser97','Abel98@gmail.com','AMEBtEIQ7yPbrny'),('e0d2dd5c-a65c-414f-ba5c-b11da8744210','Nicolas31','Abel.Maggio14@hotmail.com','ktAxnmj7iYFiXe2'),('eddad5e1-7157-480e-ac2e-582175cd37b5','Tina_VonRueden','Abbie59@yahoo.com','nelkelJzEXGw13z');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-12 13:56:17
