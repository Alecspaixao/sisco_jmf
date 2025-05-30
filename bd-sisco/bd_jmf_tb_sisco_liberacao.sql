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
-- Table structure for table `tb_sisco_liberacao`
--

DROP TABLE IF EXISTS `tb_sisco_liberacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_liberacao` (
  `liberacao_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do registro da liberação',
  `liberacao_idDiscente` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do discente liberado',
  `liberacao_idColaboradorSaida` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do colaborador que registrou a saída do discente',
  `liberacao_idResponsavel` int NOT NULL COMMENT 'Código de identificação do responsável legal que autorizou a saída do discente',
  `liberacao_dtSaida` date NOT NULL COMMENT 'Data de registro da liberação do discente',
  `liberacao_hrSaida` time NOT NULL COMMENT 'Hora de registro da liberação do discente',
  `liberacao_idColaboradorRetorno` varchar(10) DEFAULT NULL COMMENT 'Código de identificação (Matrícula) do colaborador que registrou o retorno do discente',
  `liberacao_dtRetorno` date DEFAULT NULL COMMENT 'Data de registro do retorno do discente',
  `liberacao_hrRetorno` time DEFAULT NULL COMMENT 'Hora de registro do retorno do discente',
  `liberacao_observacao` varchar(300) DEFAULT NULL COMMENT 'Anotação relevante sobre o registro do evento ',
  `liberacao_dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do sistema colhido automaticamente para futuras auditorias',
  PRIMARY KEY (`liberacao_id`),
  KEY `liberacao_idDiscente_idx` (`liberacao_idDiscente`),
  KEY `liberacao_idColaboradorSaida_idx` (`liberacao_idColaboradorSaida`),
  KEY `liberacao_idResponsavel_idx` (`liberacao_idResponsavel`),
  KEY `liberacao_idColaboradorRetorno_idx` (`liberacao_idColaboradorRetorno`),
  CONSTRAINT `liberacao_idColaboradorRetorno` FOREIGN KEY (`liberacao_idColaboradorRetorno`) REFERENCES `tb_jmf_colaborador` (`colaborador_matricula`),
  CONSTRAINT `liberacao_idColaboradorSaida` FOREIGN KEY (`liberacao_idColaboradorSaida`) REFERENCES `tb_jmf_colaborador` (`colaborador_matricula`) ON UPDATE CASCADE,
  CONSTRAINT `liberacao_idDiscente` FOREIGN KEY (`liberacao_idDiscente`) REFERENCES `tb_jmf_discente` (`discente_matricula`) ON UPDATE CASCADE,
  CONSTRAINT `liberacao_idResponsavel` FOREIGN KEY (`liberacao_idResponsavel`) REFERENCES `tb_jmf_responsavellegal` (`responsavelLegal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das entradas e saídas dos estudantes durante o período de aulas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_liberacao`
--

LOCK TABLES `tb_sisco_liberacao` WRITE;
/*!40000 ALTER TABLE `tb_sisco_liberacao` DISABLE KEYS */;
INSERT INTO `tb_sisco_liberacao` VALUES (6,'1750436','47925215',44,'2023-05-14','17:40:29','9788191X','2023-05-14','17:40:29',NULL,'2023-05-14 20:40:29'),(7,'1894328','9788191X',8,'2023-05-14','17:47:33',NULL,NULL,NULL,NULL,'2023-05-14 20:47:33'),(8,'2340707','16849219',12,'2023-05-14','17:55:04','47925215','2023-05-14','17:55:04',NULL,'2023-05-14 20:55:04'),(9,'2178844','4786271X',17,'2023-05-14','17:57:35','16849219','2023-05-14','17:57:35',NULL,'2023-05-14 20:57:35'),(12,'3537642','47925215',43,'2023-05-14','18:05:24','4786271X','2023-05-14','18:05:24',NULL,'2023-05-14 21:05:24');
/*!40000 ALTER TABLE `tb_sisco_liberacao` ENABLE KEYS */;
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
