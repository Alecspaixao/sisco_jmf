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
-- Table structure for table `tb_jmf_responsavellegal`
--

DROP TABLE IF EXISTS `tb_jmf_responsavellegal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_responsavellegal` (
  `responsavelLegal_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do familiar que acompanha legalmente o discente na instituição',
  `responsavelLegal_idDiscente` varchar(10) NOT NULL COMMENT 'Número de matrícula do estudante acompanhado pelo responsável legal',
  `responsavelLegal_nome` varchar(50) NOT NULL COMMENT 'Nome de identificação do responsável',
  `responsavelLegal_nomeSocial` varchar(30) DEFAULT NULL COMMENT 'Nome pelo qual o responsável deseja ser identificado',
  `responsavelLegal_grauParentesco` varchar(30) NOT NULL COMMENT 'Medida do espaço que vincula os parentes entre si',
  `responsavelLegal_naturalidade` varchar(50) DEFAULT NULL COMMENT 'Cidade de nascimento do responsável',
  `responsavelLegal_sexo` varchar(20) DEFAULT NULL COMMENT 'Conjunto de características estruturais e funcionais ',
  `responsavelLegal_telefone` varchar(11) DEFAULT NULL COMMENT 'Telefone do responsável',
  `responsavelLegal_whatsapp` varchar(11) DEFAULT NULL COMMENT 'Whatsapp do responsável',
  `responsavelLegal_email` varchar(50) DEFAULT NULL COMMENT 'Correio eletrônico do responsável',
  `responsavelLegal_rg` varchar(11) DEFAULT NULL COMMENT 'Número de registro geral do responsável',
  `responsavelLegal_cpf` varchar(11) DEFAULT NULL COMMENT 'Número de cadastro da pessoa física',
  `responsavelLegal_cep` varchar(8) DEFAULT NULL COMMENT 'Código de endereço postal',
  `responsavelLegal_tipoLogradouro` varchar(10) DEFAULT NULL COMMENT 'Característica do endereço (rua, avenida, etc)',
  `responsavelLegal_nomeLogradouro` varchar(50) DEFAULT NULL COMMENT 'Nome do endereço',
  `responsavelLegal_numeroLogradouro` varchar(5) DEFAULT NULL COMMENT 'Número do endereço',
  `responsavelLegal_complementoLogradouro` varchar(50) DEFAULT NULL COMMENT 'Complemento do endereço (apartamento, andar, etc)',
  `responsavelLegal_cidade` varchar(50) DEFAULT NULL COMMENT 'Cidade do endereço ',
  `responsavelLegal_bairro` varchar(50) DEFAULT NULL COMMENT 'Bairro do endereço',
  `responsavelLegal_estado` varchar(2) DEFAULT NULL COMMENT 'Estado (UF) do endereço',
  `responsavelLegal_observcao` varchar(150) DEFAULT NULL COMMENT 'Registro descritivo de algumas informações consideradas importantes sobre o responsável',
  PRIMARY KEY (`responsavelLegal_id`),
  UNIQUE KEY `responsavelLegal_id_UNIQUE` (`responsavelLegal_id`),
  KEY `responsavelLegal_matriculaDiscente_idx` (`responsavelLegal_idDiscente`),
  CONSTRAINT `responsavelLegal_idDiscente` FOREIGN KEY (`responsavelLegal_idDiscente`) REFERENCES `tb_jmf_discente` (`discente_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos familiares que acompanham os discentes na instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_responsavellegal`
--

LOCK TABLES `tb_jmf_responsavellegal` WRITE;
/*!40000 ALTER TABLE `tb_jmf_responsavellegal` DISABLE KEYS */;
INSERT INTO `tb_jmf_responsavellegal` VALUES (1,'4652954','FRANCISCO ANTONIO DE FREITAS DO NASCIMENTO',NULL,'Pai','Pacajus','Masculino','85991919191','85991919191','email@email.com','980987865','87609874234','62870000','Rua','Só tesntando','123','Teste','Fortaleza','Centro','CE','Nenhuma'),(2,'2190548','JOSE WIRATAN MARQUES',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'1776868','ANTONIO MACIEL DE OLIVEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'1750436','JOAO ADRIANO RAMOS FERREIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'1780168','ANTONIO FERREIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'1686320','JOSE GLAUSON DOS SANTOS',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'1868792','FRANCISCO ELIANO FERREIRA LIMA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'1894328','FRANCISCO FABIANO INACIO DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'1779981','FRANCISCO DE ASSIS BARBOSA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'2446432','FRANCISCO FERREIRA DO NASCIMENTO',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'4653056','JOAO PAULO DA SILVA RODRIGUES',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'2340707','FRANCISCO EMILSON SANTOS SOUZA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'1786747','FLAVIANO PEREIRA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'3389193','LUIZ WAGNER PEREIRA DE QUEIROZ',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'1755048','RAIMUNDO NONATO GOMES DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2619562','ALYSON RONNAN MARTINS',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2178844','JOSE JEROVANE DA COSTA NASCIMENTO',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2514638','FRANCISCO CORREIA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'1759424','REGINALDO DOS SANTOS COSTA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'2234437','FRANCISCO JOSE DE OLIVEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'4633964','JOSE RIVELINO DE SOUSA OLIVEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'4666729','FRANCISCO FROTA DE SOUSA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'1762055','LUIZ TOMAZ DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'4666973','ANTONIO DAVID FELIPE DE LIMA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'4577931','VERIDIANO CHAGAS DE OLIVEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'3918359','MARCOS HAELIO SABINO DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'4286307','LUIS FERNANDO BATISTA DE PAULA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'2151481','REGINALDO BARROSO DO NASCIMENTO',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'2223789','FRANCISCO SILVIANE PEREIRA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'1763218','VALDECI ANTONIO DE OLIVEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'2323399','SALUSTIO MENDES DE SOUSA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'4666735','JOSIELITON DA SILVA NOGUEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'2872964','ROMULO MONTEIRO DE SOUZA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'1760135','EXPEDITO SALDANHA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'1687262','ANTONIO CARLOS PEREIRA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'1887826','HERLON MAIA ROCHA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'1807069','FRANCISCO REGINALDO NOBRE',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'4577551','ANGELO VIANA TEIXEIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'1587238','ANTONIO MARCIO PEREIRA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'1974835','ANTONIO MARINHO DE VASCONCELOS',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'1759354','JEDAIAS FERREIRA DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'1893963','FRANCISCO ANGELO DA SILVA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'3537642','FRANCISCO ALISON CUNHA MOREIRA',NULL,'Pai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'1750436','MAIOR DE IDADE',NULL,'NÃO SE APLICA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_jmf_responsavellegal` ENABLE KEYS */;
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
