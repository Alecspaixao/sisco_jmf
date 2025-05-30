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
-- Table structure for table `tb_jmf_colaborador`
--

DROP TABLE IF EXISTS `tb_jmf_colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_colaborador` (
  `colaborador_matricula` varchar(10) NOT NULL COMMENT 'Número de matrícula do colaborador na SEDUC',
  `colaborador_nome` varchar(50) NOT NULL COMMENT 'Nome de identificação do colaborador',
  `colaborador_dataNascimento` int DEFAULT NULL COMMENT 'Data de nascimento do colaborador',
  `colaborador_naturalidade` varchar(50) DEFAULT NULL COMMENT 'Cidade de nascimento do colaborador',
  `colaborador_corRaca` varchar(20) DEFAULT NULL COMMENT 'Autodeclaração sobre sua característica fenotípica',
  `colaborador_sexo` varchar(20) DEFAULT NULL COMMENT 'Conjunto de características estruturais e funcionais ',
  `colaborador_cpf` varchar(11) NOT NULL COMMENT 'Número de cadastro da pessoa física',
  `colaborador_cep` varchar(8) DEFAULT NULL COMMENT 'Código de endereço postal',
  `colaborador_tipoLogradouro` varchar(10) DEFAULT NULL COMMENT 'Característica do endereço (rua, avenida, etc)',
  `colaborador_nomeLogradouro` varchar(50) DEFAULT NULL COMMENT 'Nome do endereço',
  `colaborador_numeroLogradouro` varchar(5) DEFAULT NULL COMMENT 'Número do endereço',
  `colaborador_complementoLogradouro` varchar(50) DEFAULT NULL COMMENT 'Complemento do endereço (apartamento, andar, etc)',
  `colaborador_bairro` varchar(50) DEFAULT NULL COMMENT 'Bairro do endereço',
  `colaborador_cidade` varchar(50) DEFAULT NULL COMMENT 'Cidade do endereço',
  `colaborador_estado` varchar(2) DEFAULT NULL COMMENT 'Estado (UF) do endereço',
  `colaborador_telefone` bigint DEFAULT NULL COMMENT 'Telefone do colaborador',
  `colaborador_email` varchar(50) NOT NULL COMMENT 'Email do colaborador',
  `colaborador_idInstituicao` varchar(10) NOT NULL COMMENT 'Código da instituição em que foi contratado',
  `colaborador_idSetor` int NOT NULL COMMENT 'Código do setor em que trabalha',
  `colaborador_foto` blob COMMENT 'Identificação visual do colaborador',
  `colaborador_status` varchar(15) NOT NULL DEFAULT 'Ativo(a)' COMMENT 'Situação do vínculo do colaborador com a instituição',
  `colaborador_senha` varchar(128) NOT NULL COMMENT 'Senha de acesso aos sistemas',
  `colaborador_funcao` varchar(100) NOT NULL DEFAULT 'Função indefinida' COMMENT 'Identificação do cargo/ função do colaborador',
  PRIMARY KEY (`colaborador_matricula`),
  UNIQUE KEY `funcionario_matricula` (`colaborador_matricula`,`colaborador_nome`),
  UNIQUE KEY `funcionario_nome_UNIQUE` (`colaborador_nome`),
  KEY `colaborador_codigoSetor_idx` (`colaborador_idSetor`),
  KEY `colaborador_idInstituicao` (`colaborador_idInstituicao`),
  KEY `colaborador_idFuncao_idx` (`colaborador_funcao`),
  CONSTRAINT `colaborador_idInstituicao` FOREIGN KEY (`colaborador_idInstituicao`) REFERENCES `tb_jmf_instituicao` (`instituicao_inep`),
  CONSTRAINT `colaborador_idSetor` FOREIGN KEY (`colaborador_idSetor`) REFERENCES `tb_jmf_setor` (`setor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela registro da função dos colaboradores contratados da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_colaborador`
--

LOCK TABLES `tb_jmf_colaborador` WRITE;
/*!40000 ALTER TABLE `tb_jmf_colaborador` DISABLE KEYS */;
INSERT INTO `tb_jmf_colaborador` VALUES ('01952','Raphael Sanzio de Carvalho Silva',29061973,'Fortaleza','Branco','Masculino','47865474334','62870000','Rua','Luiz Cláudio','50','B','Centro','Pacajus','CE',85991319035,'01952','23323612',2,NULL,'Ativo(a)','123','Administrador do BD'),('16849219','ROSELENA FERNANDES SILVA',NULL,NULL,NULL,NULL,'16849219',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rosa','23323612',3,NULL,'Ativo(a)','123','Coordenador(a) Escolar'),('30000684','ELIS RIDAN RODRIGUES LIMA',NULL,NULL,NULL,NULL,'30000684',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30000684','23323612',3,NULL,'Ativo(a)','30000684','Assessor(a) Administrativo Financeiro'),('30608763','Gabriela Pinheiro Campos Ratts',NULL,NULL,NULL,NULL,'30608763',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30608763','23323612',1,NULL,'Ativo(a)','30608763','Professor Propedêutico Efetivo'),('30614534','MEIRILENE DE ALMEIDA MENDONCA',NULL,NULL,NULL,NULL,'30614534',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30614534','23323612',4,NULL,'Ativo(a)','30614534','Secretário(a) Escolar'),('47849012','Francisca Elisandra Farias Da Silva',NULL,NULL,NULL,NULL,'47849012',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'47849012','23323612',1,NULL,'Ativo(a)','47849012','Professor Propedêutico Efetivo'),('4786271X','WERBSON FALCAO DE LIMA',NULL,NULL,NULL,NULL,'4786271X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'werbim','23323612',3,NULL,'Ativo(a)','123','Gestor(a) Escolar'),('47925215','GLAUBER ROBSON OLIVEIRA LIMA',NULL,NULL,NULL,NULL,'47925215',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'47925215','23323612',3,NULL,'Ativo(a)','47925215','Coordenador(a) Escolar'),('48030017','Francisco Allan Quintela Silva',NULL,NULL,NULL,NULL,'48030017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'48030017','23323612',1,NULL,'Ativo(a)','48030017','Professor Propedêutico Efetivo'),('81054207','Romulo Pereira De Oliveira',NULL,NULL,NULL,NULL,'81054207',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'romim','23323612',1,NULL,'Ativo(a)','123','Professor Propedêutico Temporário'),('81054215','Bruno Freitas Paiva',NULL,NULL,NULL,NULL,'81054215',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054215','23323612',1,NULL,'Ativo(a)','81054215','Professor Propedêutico Temporário'),('81054223','Francisco Eurides Carmo Silva',NULL,NULL,NULL,NULL,'81054223',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054223','23323612',1,NULL,'Ativo(a)','81054223','Professor Propedêutico Temporário'),('81054231','Geraldo Pereira Da Costa Filho',NULL,NULL,NULL,NULL,'81054231',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054231','23323612',1,NULL,'Ativo(a)','81054231','Professor Propedêutico Temporário'),('8105424X','Katia Anastacio Ferreira',NULL,NULL,NULL,NULL,'8105424X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8105424X','23323612',1,NULL,'Ativo(a)','8105424X','Professor Propedêutico Temporário'),('81054258','Adriano Jose Sousa Dos Anjos',NULL,NULL,NULL,NULL,'81054258',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054258','23323612',1,NULL,'Ativo(a)','81054258','Professor Propedêutico Temporário'),('81054266','Yusmary Del Carmen Fernandez Sandoval',NULL,NULL,NULL,NULL,'81054266',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054266','23323612',1,NULL,'Ativo(a)','81054266','Professor Propedêutico Temporário'),('81054274','Jose William Girao Dias',NULL,NULL,NULL,NULL,'81054274',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054274','23323612',1,NULL,'Ativo(a)','81054274','Professor Propedêutico Temporário'),('81054282','Wellington Luis Sena Silva',NULL,NULL,NULL,NULL,'81054282',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054282','23323612',1,NULL,'Ativo(a)','81054282','Professor Propedêutico Temporário'),('81054290','Juliany Rodrigues De Sousa Dias',NULL,NULL,NULL,NULL,'81054290',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81054290','23323612',1,NULL,'Ativo(a)','81054290','Professor Propedêutico Temporário'),('81121893','Marilia Colares Pedrosa',NULL,NULL,NULL,NULL,'81121893',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81121893','23323612',1,NULL,'Ativo(a)','81121893','Professor Propedêutico Temporário'),('81182418','Gustavo Lima Barros Da Silva',NULL,NULL,NULL,NULL,'81182418',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81182418','23323612',1,NULL,'Ativo(a)','81182418','Professor Propedêutico Temporário'),('81246114','Jose Itamar Lima Nascimento',NULL,NULL,NULL,NULL,'81246114',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81246114','23323612',1,NULL,'Ativo(a)','81246114','Professor Propedêutico Temporário'),('81277001','Maria Aparecida Miranda Oliveira',NULL,NULL,NULL,NULL,'81277001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81277001','23323612',1,NULL,'Ativo(a)','81277001','Professor Propedêutico Temporário'),('9788191X','MARIO FAGNER LOUREIRO DA ROCHA',NULL,NULL,NULL,NULL,'9788191X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9788191X','23323612',3,NULL,'Ativo(a)','9788191X','Coordenador(a) Escolar'),('97939705','Andre Luis Da Silva Almeida',NULL,NULL,NULL,NULL,'97939705',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'97939705','23323612',1,NULL,'Ativo(a)','97939705','Professor Propedêutico Efetivo'),('97939802','Jessica Hellen Batista Cavalcante Lopes',NULL,NULL,NULL,NULL,'97939802',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'97939802','23323612',1,NULL,'Ativo(a)','97939802','Professor Propedêutico Efetivo');
/*!40000 ALTER TABLE `tb_jmf_colaborador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 14:08:22
