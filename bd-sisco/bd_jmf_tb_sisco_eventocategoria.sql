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
-- Table structure for table `tb_sisco_eventocategoria`
--

DROP TABLE IF EXISTS `tb_sisco_eventocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_eventocategoria` (
  `eventoCategoria_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da categoria do evento',
  `eventoCategoria_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal da categoria do evento',
  `ocorreciaCategoria_qtdAlerta` int NOT NULL DEFAULT '3' COMMENT 'Quantidade de eventos para gerar uma alerta',
  `eventoCategoria_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição da categoria do evento',
  PRIMARY KEY (`eventoCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das categoria dos eventos rotineiros da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_eventocategoria`
--

LOCK TABLES `tb_sisco_eventocategoria` WRITE;
/*!40000 ALTER TABLE `tb_sisco_eventocategoria` DISABLE KEYS */;
INSERT INTO `tb_sisco_eventocategoria` VALUES (1,'Impontualidade',3,'Atraso na chegada a escola'),(2,'Fardamento incompleto',3,'Ausência de um dos itens obrigatórios do fardamento'),(3,'Acessórios inapropriados',3,'Uso de acessórios e peças de vestuários que não condizem com fardamento');
/*!40000 ALTER TABLE `tb_sisco_eventocategoria` ENABLE KEYS */;
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
