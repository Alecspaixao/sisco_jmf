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
-- Table structure for table `tb_jmf_turma`
--

DROP TABLE IF EXISTS `tb_jmf_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_turma` (
  `turma_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da turma',
  `turma_idCurso` int NOT NULL COMMENT 'Código de identificação do curso da turma',
  `turma_nome` varchar(8) NOT NULL COMMENT 'Nome de identificação da turma (Letra do alfabeto: A - Z)',
  `turma_ano` year NOT NULL COMMENT 'Ano de início da turma',
  `turma_status` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Estado de situação da turma (1. Ativo | 0. Inativo)',
  `turma_serie` varchar(10) DEFAULT '1ª Ano' COMMENT 'Nome de identificação da serialização do ciclo da turma',
  `turma_turno` varchar(10) DEFAULT 'Integral' COMMENT 'Período do funcionamento da turma',
  PRIMARY KEY (`turma_id`),
  UNIQUE KEY `turma_id` (`turma_id`),
  UNIQUE KEY `turma_nome_UNIQUE` (`turma_nome`),
  KEY `turma_codigoCurso_idx` (`turma_idCurso`),
  CONSTRAINT `turma_idCurso` FOREIGN KEY (`turma_idCurso`) REFERENCES `tb_jmf_curso` (`curso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das turmas geradas pelos cursos da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_turma`
--

LOCK TABLES `tb_jmf_turma` WRITE;
/*!40000 ALTER TABLE `tb_jmf_turma` DISABLE KEYS */;
INSERT INTO `tb_jmf_turma` VALUES (1,5,'A',2023,_binary '','1ª Série','Integral'),(2,3,'B',2023,_binary '','1ª Série','Integral'),(3,8,'C',2023,_binary '','1ª Série','Integral'),(4,4,'D',2023,_binary '','1ª Série','Integral'),(5,5,'E',2022,_binary '','2ª Série','Integral'),(6,7,'F',2022,_binary '','2ª Série','Integral'),(7,3,'G',2022,_binary '','2ª Série','Integral'),(8,8,'H',2022,_binary '','2ª Série','Integral'),(9,5,'I',2021,_binary '','3ª Série','Integral'),(10,3,'J',2021,_binary '','3ª Série','Integral'),(11,8,'K',2021,_binary '','3ª Série','Integral');
/*!40000 ALTER TABLE `tb_jmf_turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 14:08:23
