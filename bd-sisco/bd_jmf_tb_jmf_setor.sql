-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_jmf
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tb_jmf_setor`
--

DROP TABLE IF EXISTS `tb_jmf_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_setor` (
  `setor_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do setor',
  `setor_nome` varchar(30) NOT NULL COMMENT 'Nome de identificação do setor',
  `setor_descricao` varchar(150) DEFAULT NULL COMMENT 'Resumo descritivo do setor',
  PRIMARY KEY (`setor_id`),
  UNIQUE KEY `setor_nome_UNIQUE` (`setor_nome`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela para registro dos setores organizacionais da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_setor`
--

LOCK TABLES `tb_jmf_setor` WRITE;
/*!40000 ALTER TABLE `tb_jmf_setor` DISABLE KEYS */;
INSERT INTO `tb_jmf_setor` VALUES (1,'Ensino Propedêutico',''),(2,'Ensino Técnico','Administrado por empresa tercerizada'),(3,'Administrativo/ Gestão',NULL),(4,'Secretaria Escolar',NULL),(5,'Cozinha','Administrado por empresa tercerizada'),(6,'Serviços Gerais','Administrado por empresa tercerizada'),(7,'Segurança Patrimonial','Administrado por empresa tercerizada');
/*!40000 ALTER TABLE `tb_jmf_setor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 14:08:26
