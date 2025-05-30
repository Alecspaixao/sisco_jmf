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
-- Table structure for table `tb_sisco_eventomotivo`
--

DROP TABLE IF EXISTS `tb_sisco_eventomotivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_eventomotivo` (
  `eventoMotivo_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do tipo de motivo do registro do evento',
  `eventoMotivo_idCategoria` mediumint NOT NULL COMMENT 'Código de identificação da categoria do evento',
  `eventoMotivo_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal do tipo do motivo de registro do evento',
  `eventoMotivo_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição do motivo do evento',
  PRIMARY KEY (`eventoMotivo_id`),
  UNIQUE KEY `eventoMotivo_nome_UNIQUE` (`eventoMotivo_nome`),
  KEY `eventoMotivo_idCategoria_idx` (`eventoMotivo_idCategoria`),
  CONSTRAINT `eventoMotivo_idCategoria` FOREIGN KEY (`eventoMotivo_idCategoria`) REFERENCES `tb_sisco_eventocategoria` (`eventoCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos tipos de motivos das categorias de eventos rotineiros da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_eventomotivo`
--

LOCK TABLES `tb_sisco_eventomotivo` WRITE;
/*!40000 ALTER TABLE `tb_sisco_eventomotivo` DISABLE KEYS */;
INSERT INTO `tb_sisco_eventomotivo` VALUES (1,1,'Transporte atrasou','Impontualidade na chegada a escola devido ao atraso do tranporte'),(2,1,'Execesso de sono','Impontualidade na chegada a escola devido a ter acordado tarde'),(3,2,'Ausência da calça da farda','Fardamento incompleto devido a falta da calça da farda'),(4,2,'Ausência da blusa da farda','Fardamento incompleto devido a falta da camisa da farda'),(5,2,'Ausência da meia branca','Fardamento incompleto devido a cor da meia usada pelo estudante'),(6,2,'Ausência do tência preto','Fardamento incompleto devido a cor do tência usado pelo estudante'),(7,3,'Blusão descaracterizado','Uso acessório sem ser do fardamento da escola'),(8,3,'Boné, toca ou chapeú','Uso acessório na cabeça ser do fardamento da escola'),(9,1,'Problema de saúde','Impontualidade na chegada a escola devido a problema de saúde');
/*!40000 ALTER TABLE `tb_sisco_eventomotivo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 14:08:25
