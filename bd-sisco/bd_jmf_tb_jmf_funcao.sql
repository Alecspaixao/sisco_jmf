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
-- Table structure for table `tb_jmf_funcao`
--

DROP TABLE IF EXISTS `tb_jmf_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_funcao` (
  `funcao_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da função',
  `funcao_idSetor` int NOT NULL COMMENT 'Código de identificação do setor da função',
  `funcao_nome` varchar(40) NOT NULL COMMENT 'Nome de identificação da função',
  `funcao_descricao` varchar(150) DEFAULT NULL COMMENT 'Resumo descritivo do atributo função',
  PRIMARY KEY (`funcao_id`),
  UNIQUE KEY `funcao_nome_UNIQUE` (`funcao_nome`),
  KEY `funcao_codigoSetor_idx` (`funcao_idSetor`),
  CONSTRAINT `funcao_idSetor` FOREIGN KEY (`funcao_idSetor`) REFERENCES `tb_jmf_setor` (`setor_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela para registro das funções dos setores da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_funcao`
--

LOCK TABLES `tb_jmf_funcao` WRITE;
/*!40000 ALTER TABLE `tb_jmf_funcao` DISABLE KEYS */;
INSERT INTO `tb_jmf_funcao` VALUES (1,3,'Assessor(a) Administrativo Financeiro',NULL),(2,3,'Coordenador(a) Escolar',NULL),(3,4,'Secretário(a) Escolar',NULL),(4,3,'Diretor(a) Escolar',NULL),(5,2,'Professor Coordenador de Curso',NULL),(6,2,'Professor Orientador de Estágio',NULL),(7,2,'Professor Técnico Polivalente',NULL),(8,1,'Professor Temporário',NULL),(9,1,'Professor Efetivo',NULL);
/*!40000 ALTER TABLE `tb_jmf_funcao` ENABLE KEYS */;
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
