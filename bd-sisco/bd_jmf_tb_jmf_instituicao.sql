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
-- Table structure for table `tb_jmf_instituicao`
--

DROP TABLE IF EXISTS `tb_jmf_instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_instituicao` (
  `instituicao_inep` varchar(10) NOT NULL COMMENT 'Código de identificação nacional das escolas públicas (INEP)',
  `instituicao_idResponsavel` varchar(10) NOT NULL COMMENT 'Código do colaborador na função de diretor escolar',
  `instituicao_nome` varchar(100) NOT NULL COMMENT 'Nome de identificação da instituição',
  `instituicao_tipoLogradouro` varchar(10) NOT NULL COMMENT 'Tipo de endereço da instituição (rua, avenida etc)',
  `instituicao_nomeLogradouro` varchar(100) NOT NULL COMMENT 'Nome de identificação do endereço da instituição',
  `instituicao_numeroLogradouro` varchar(5) DEFAULT NULL COMMENT 'Número de identificação do endereço da instituição',
  `instituicao_complementoLogradouro` varchar(50) DEFAULT NULL COMMENT 'Dados adicionais que compões o endereço da (apto, andar etc)',
  `instituicao_cep` varchar(8) NOT NULL COMMENT 'Código endereçamento postal de identificação do endereço da instituição',
  `instituicao_bairro` varchar(50) NOT NULL COMMENT 'Identificação do bairro onde se localiza o endereço da instituição',
  `instituicao_cidade` varchar(50) NOT NULL COMMENT 'Identificação da cidade onde se localiza o bairro do endereço da instituição',
  `instituicao_estado` varchar(2) NOT NULL COMMENT 'Identificação do estado (UF) onde se localiza a cidade do endereço da instituição',
  `instituicao_cnpj` varchar(14) DEFAULT NULL COMMENT 'Identificação do cadastro nacional da pesso jurídica da instituição',
  `instituicao_telefone` varchar(11) NOT NULL COMMENT 'Número telefônico de contato da instituição',
  `instituicao_email` varchar(50) DEFAULT NULL COMMENT 'Correio eletrônico de contato da instituição',
  `instituicao_crede` varchar(50) NOT NULL COMMENT 'Identificação da coordenadoria regional de desenvolvimento da educação da instituição',
  PRIMARY KEY (`instituicao_inep`),
  UNIQUE KEY `instituicao_inep` (`instituicao_inep`) /*!80000 INVISIBLE */,
  UNIQUE KEY `instituicao_nome_UNIQUE` (`instituicao_nome`),
  KEY `instituicao_codigoResponsavel_idx` (`instituicao_idResponsavel`),
  CONSTRAINT `instituicao_codigoResponsavel` FOREIGN KEY (`instituicao_idResponsavel`) REFERENCES `tb_jmf_colaborador` (`colaborador_matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos dados da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_instituicao`
--

LOCK TABLES `tb_jmf_instituicao` WRITE;
/*!40000 ALTER TABLE `tb_jmf_instituicao` DISABLE KEYS */;
INSERT INTO `tb_jmf_instituicao` VALUES ('23323612','4786271X','Escola Estadual de Educação Profissional José Maria Falcão','Rua','Raimundo Correia Lima','s/n',NULL,'62870000','Cruz das Almas','Pacajus','CE','07954514040267','8533481599','23323612@prof.ce.gov.br','CREDE 9 - Horizonte');
/*!40000 ALTER TABLE `tb_jmf_instituicao` ENABLE KEYS */;
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
