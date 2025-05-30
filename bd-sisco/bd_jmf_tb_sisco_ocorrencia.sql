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
-- Table structure for table `tb_sisco_ocorrencia`
--

DROP TABLE IF EXISTS `tb_sisco_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_ocorrencia` (
  `ocorrencia_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da ocorrência',
  `ocorrencia_idDiscente` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do discente envolvido na ocorrência',
  `ocorrencia_idColaborador` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do colaborador que registrou a ocorrência do discente',
  `ocorrencia_idResponsavelLegal` int NOT NULL COMMENT 'Código de identificação do responsável legal que foi notificado sobre a ocorrência do discente',
  `ocorrencia_idCategoria` mediumint NOT NULL COMMENT 'Código de identificação da categoria da ocorrência do discente',
  `ocorrencia_idMotivo` mediumint NOT NULL COMMENT 'Código de identificação do motivo da categoria da ocorrência do discente',
  `ocorrencia_data` date NOT NULL COMMENT 'Data de registro da ocorrência',
  `ocorrencia_hora` time NOT NULL COMMENT 'Hora de registro da ocorrência',
  `ocorrencia_descricao` varchar(300) DEFAULT NULL COMMENT 'Texto explicativo sobre o ocorrido',
  `ocorrencia_dataTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do sistema colhido automaticamente para futuras auditorias',
  PRIMARY KEY (`ocorrencia_id`),
  KEY `ocorrencia_idCategoria_idx` (`ocorrencia_idCategoria`),
  KEY `ocorrencia_idDiscente_idx` (`ocorrencia_idDiscente`),
  KEY `ocorrencia_idColaborador_idx` (`ocorrencia_idColaborador`),
  KEY `ocorrencia_idResponsavel_idx` (`ocorrencia_idResponsavelLegal`),
  KEY `ocorrecia_idMotivo_idx` (`ocorrencia_idMotivo`),
  CONSTRAINT `ocorrecia_idMotivo` FOREIGN KEY (`ocorrencia_idMotivo`) REFERENCES `tb_sisco_ocorrenciamotivo` (`ocorrenciaMotivo_id`),
  CONSTRAINT `ocorrencia_idCategoria` FOREIGN KEY (`ocorrencia_idCategoria`) REFERENCES `tb_sisco_ocorrenciacategoria` (`ocorrenciaCategoria_id`),
  CONSTRAINT `ocorrencia_idColaborador` FOREIGN KEY (`ocorrencia_idColaborador`) REFERENCES `tb_jmf_colaborador` (`colaborador_matricula`),
  CONSTRAINT `ocorrencia_idDiscente` FOREIGN KEY (`ocorrencia_idDiscente`) REFERENCES `tb_jmf_discente` (`discente_matricula`),
  CONSTRAINT `ocorrencia_idResponsavel` FOREIGN KEY (`ocorrencia_idResponsavelLegal`) REFERENCES `tb_jmf_responsavellegal` (`responsavelLegal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das ocorrências cabíveis de punição segundo o regimento escolar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_ocorrencia`
--

LOCK TABLES `tb_sisco_ocorrencia` WRITE;
/*!40000 ALTER TABLE `tb_sisco_ocorrencia` DISABLE KEYS */;
INSERT INTO `tb_sisco_ocorrencia` VALUES (1,'1750436','47925215',44,1,1,'2023-05-14','20:08:43','O estudante pulou o muro da escola','2023-05-14 23:08:43'),(4,'1894328','9788191X',8,1,3,'2023-05-14','20:13:27','O estudante usou o celular na aula','2023-05-14 23:13:27'),(5,'2340707','9788191X',12,1,5,'2023-05-14','20:15:16','O estudante estava namorando em sala','2023-05-14 23:15:16'),(7,'2178844','16849219',17,2,7,'2023-05-14','20:17:27','O estudante estva fumando na quadra','2023-05-14 23:17:27'),(8,'3537642','4786271X',43,2,9,'2023-05-14','20:20:10','O estudante fez um post difamando a escola','2023-05-14 23:20:10');
/*!40000 ALTER TABLE `tb_sisco_ocorrencia` ENABLE KEYS */;
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
