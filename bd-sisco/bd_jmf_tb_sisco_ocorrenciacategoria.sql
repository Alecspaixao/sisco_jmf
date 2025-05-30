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
-- Table structure for table `tb_sisco_ocorrenciacategoria`
--

DROP TABLE IF EXISTS `tb_sisco_ocorrenciacategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_ocorrenciacategoria` (
  `ocorrenciaCategoria_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da categoria da ocorrência',
  `ocorrenciaCategoria_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal da categoria da ocorrência',
  `ocorreciaCategoria_qtdAlerta` int NOT NULL DEFAULT '3' COMMENT 'Quantidade de ocorrencias para gerar uma alerta',
  `ocorrenciaCategoria_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição da categoria da ocorrência',
  PRIMARY KEY (`ocorrenciaCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das categorias de ocorrências previstas no regimento escolar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_ocorrenciacategoria`
--

LOCK TABLES `tb_sisco_ocorrenciacategoria` WRITE;
/*!40000 ALTER TABLE `tb_sisco_ocorrenciacategoria` DISABLE KEYS */;
INSERT INTO `tb_sisco_ocorrenciacategoria` VALUES (1,'Grave',1,'Passiveis de um dia de suspensão e retorno a escola com os responsáveis.'),(2,'Gravíssima',1,'Passiveis de três dias de suspensão e retorno a escola com os responsáveis.');
/*!40000 ALTER TABLE `tb_sisco_ocorrenciacategoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 14:08:24
