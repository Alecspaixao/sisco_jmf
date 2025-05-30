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
-- Table structure for table `tb_jmf_discente`
--

DROP TABLE IF EXISTS `tb_jmf_discente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_discente` (
  `discente_matricula` varchar(10) NOT NULL COMMENT 'Número de matrícula do estudante na SEDUC',
  `discente_idInstituicao` varchar(10) NOT NULL COMMENT 'Código da instituição em que está matriculado',
  `discente_idTurma` int NOT NULL COMMENT 'Código da turma em que forma o estudante',
  `discente_idResponsavel` int DEFAULT NULL COMMENT 'Código do familiar que acompanha legalmente o discente na instituição',
  `discente_nome` varchar(50) NOT NULL COMMENT 'Nome do estudante',
  `discente_nomeSocial` varchar(30) DEFAULT NULL COMMENT 'Nome pelo qual o estudante deseja ser identificado',
  `discente_dataNascimento` int DEFAULT NULL COMMENT 'Data de nascimento do estudante',
  `discente_naturalidade` varchar(50) DEFAULT NULL COMMENT 'Cidade de nascimento do estudante',
  `discente_corRaca` varchar(20) DEFAULT NULL COMMENT 'Autodeclaração sobre sua característica fenotípica',
  `discente_sexo` varchar(20) DEFAULT NULL COMMENT 'Conjunto de características estruturais e funcionais ',
  `discente_telefone` varchar(11) DEFAULT NULL COMMENT 'Telefone do estudante',
  `discente_email` varchar(50) DEFAULT NULL COMMENT 'Email institucional do estudante',
  `discente_cpf` varchar(11) NOT NULL COMMENT 'Número de cadastro da pessoa física',
  `discente_cep` varchar(8) DEFAULT NULL COMMENT 'Código de endereço postal',
  `discente_tipoLogradouro` varchar(10) DEFAULT NULL COMMENT 'Característica do endereço (rua, avenida, etc)',
  `discente_nomeLogradouro` varchar(50) DEFAULT NULL COMMENT 'Nome do endereço',
  `discente_numeroLogradouro` varchar(5) DEFAULT NULL COMMENT 'Número do endereço',
  `discente_complemento` varchar(50) DEFAULT NULL COMMENT 'Complemento do endereço (apartamento, andar, etc)',
  `discente_bairro` varchar(50) DEFAULT NULL COMMENT 'Bairro do endereço',
  `discente_cidade` varchar(50) DEFAULT NULL COMMENT 'Cidade do endereço',
  `discente_estado` varchar(2) DEFAULT NULL COMMENT 'Estado (UF) do endereço',
  `discente_foto` blob COMMENT 'Identificação visual do estudante',
  `discente_status` varchar(10) DEFAULT 'Cursando' COMMENT 'Estado de sua situação na instituição',
  `discente_senha` varchar(128) NOT NULL COMMENT 'Senha de acesso ao sistema',
  PRIMARY KEY (`discente_matricula`),
  UNIQUE KEY `discente_matricula` (`discente_matricula`),
  UNIQUE KEY `discente_cpf_UNIQUE` (`discente_cpf`),
  KEY `discente_idResponsavel_idx` (`discente_idResponsavel`),
  KEY `discente_idTurma_idx` (`discente_idTurma`),
  CONSTRAINT `discente_idResponsavel` FOREIGN KEY (`discente_idResponsavel`) REFERENCES `tb_jmf_responsavellegal` (`responsavelLegal_id`),
  CONSTRAINT `discente_idTurma` FOREIGN KEY (`discente_idTurma`) REFERENCES `tb_jmf_turma` (`turma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos estudantes matriculados na instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_discente`
--

LOCK TABLES `tb_jmf_discente` WRITE;
/*!40000 ALTER TABLE `tb_jmf_discente` DISABLE KEYS */;
INSERT INTO `tb_jmf_discente` VALUES ('1587238','23323612',11,39,'SAMYA EVELYN DE LIMA SILVA',NULL,20112000,'QUIXADA','Pardo','Feminino','85991000257','samya.silva5@aluno.ce.gov.br','07948013318','62875000','Rua','Endereço de teste','123','Só para testar','CENTRO','HORIZONTE','CE',NULL,'Cursando','1587238'),('1686320','23323612',11,5,'BIANCA SOUSA DOS SANTOS',NULL,20060127,'FORTALEZA','BRANCA','FEMININO','85991556479','bianca.santos54@aluno.ce.gov.br','08555162327','62875000',NULL,NULL,NULL,NULL,'TIMBAUBA','CHOROZINHO','CE',NULL,'Cursando','1686320'),('1687262','23323612',11,35,'RAFAEL SANTOS SILVA',NULL,20060312,'FORTALEZA','PARDA','MASCULINO','','rafael.silva231@aluno.ce.gov.br','08235189305','62875000',NULL,NULL,NULL,NULL,'TIMBAUBA','CHOROZINHO','CE',NULL,'Cursando','1687262'),('1750436','23323612',11,NULL,'ANTONIO ADRIAN COSTA FERREIRA',NULL,20041114,'CASCAVEL','PARDA','MASCULINO','85996632747','antonio.ferreira204@aluno.ce.','09973083385','62870000',NULL,NULL,NULL,NULL,'PEDRA BRANCA','PACAJUS','CE',NULL,'Cursando','1750436'),('1755048','23323612',11,15,'GABRIEL FERREIRA GOMES',NULL,20051004,'FORTALEZA','PRETA','MASCULINO','85994328342','gabriel.gomes77@aluno.ce.gov.br','09125762354','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','1755048'),('1759354','23323612',11,41,'TIAGO FERREIRA DE ALMEIDA',NULL,20060106,'FORTALEZA','PARDA','MASCULINO','85992224486','tiago.almeida6@aluno.ce.gov.br','04024844369','62875000',NULL,NULL,NULL,NULL,'CENTRO','CHOROZINHO','CE',NULL,'Cursando','1759354'),('1759424','23323612',11,19,'JOHNATAN CAVALCANTE COSTA',NULL,20051216,' FORTALEZA','PARDA','MASCULINO','85992563621','johnatan.costa2@aluno.ce.gov.br','10659418380','62870000',NULL,NULL,NULL,NULL,'BURITI','PACAJUS','CE',NULL,'Cursando','1759424'),('1760135','23323612',11,34,'PEDRO WIVYLLE SALDANHA DA SILVA',NULL,20060204,' CHOROZINHO','PARDA','MASCULINO','','pedro.silva820@aluno.ce.gov.br','62262611378','62875000',NULL,NULL,NULL,NULL,'LEIRÕES','CHOROZINHO','CE',NULL,'Cursando','1760135'),('1762055','23323612',11,23,'KAUANE LIZ DA SILVA TOMAZ',NULL,20040212,'PACAJUS','PARDA','FEMININO','85992333418','kauane.tomaz@aluno.ce.gov.br','08452854323','62870000',NULL,NULL,NULL,NULL,'CRUZ DAS ALMAS','PACAJUS','CE',NULL,'Cursando','1762055'),('1763218','23323612',11,30,'NICOLY SOUZA OLIVEIRA',NULL,20050821,'PACAJUS','PARDA','FEMININO','','nicoly.oliveira4@aluno.ce.gov.br','09688845396','62870000',NULL,NULL,NULL,NULL,'FORMOSO','PACAJUS','CE',NULL,'Cursando','1763218'),('1764511','23323612',11,10,'FRANCISCO ADRISSON QUEIROZ CAVALCANTE',NULL,20050531,'PACAJUS','PARDA','MASCULINO','85999056332','francisco.cavalcante96@aluno.ce.','09043901369','62850000',NULL,NULL,NULL,NULL,'CASCAVEL','CASCAVEL','CE',NULL,'Cursando','1764511'),('1776868','23323612',11,3,'ANTONIA RAISSA LUCIANO DE OLIVEIRA',NULL,20060118,'FORTALEZA','PARDA','FEMININO','85991656738','antonia.oliveira257@aluno.ce.gov.','08931095333','62870000',NULL,NULL,NULL,NULL,'MANGABEIRA','PACAJUS','CE',NULL,'Cursando','1776868'),('1779981','23323612',11,8,'FERNANDO PEREIRA DA SILVA',NULL,20060202,'PACAJUS','PARDA','MASCULINO','85992011022','fernando.silva103@aluno.ce.gov.','09701120337','62870000',NULL,NULL,NULL,NULL,'BANGUÊ II','PACAJUS','CE',NULL,'Cursando','1779981'),('1780168','23323612',11,4,'ANTONIO JEFERSON DOS SANTOS FERREIRA',NULL,20051012,'PACAJUS','PARDA','MASCULINO','85994328382','antonio.ferreira199@aluno.ce.','10823981363','62870000',NULL,NULL,NULL,NULL,'PAULICEIA','PACAJUS','CE',NULL,'Cursando','1780168'),('1786747','23323612',11,13,'GABRIEL DE SOUSA SILVA',NULL,20051031,'PACAJUS','PARDA','MASCULINO','85992399912','gabriel.silva600@aluno.ce.gov.br','07895417347','62870000',NULL,NULL,NULL,NULL,'LAGOA SECA','PACAJUS','CE',NULL,'Cursando','1786747'),('1807069','23323612',11,37,'RYAN DE LIMA NOBRE',NULL,20051018,'PACAJUS','PARDA','MASCULINO','','ryan.nobre1@aluno.ce.gov.br','07807380390','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','1807069'),('1868792','23323612',11,6,'CARLOS HENRIQUE FERREIRA LIMA',NULL,20051219,' PACAJUS','BRANCA','MASCULINO','85994049160','carlos.lima260@aluno.ce.gov.br','10694107301','62870000',NULL,NULL,NULL,NULL,'CROATA II','PACAJUS','CE',NULL,'Cursando','1868792'),('1887826','23323612',11,36,'RAIMUNDO OLIVEIRA ROCHA NETO',NULL,20060202,'FORTALEZA','PARDA','MASCULINO','','raimundo.neto109@aluno.ce.gov.','08686284337','62875000',NULL,NULL,NULL,NULL,'TRIANGULO','CHOROZINHO','CE',NULL,'Cursando','1887826'),('1893963','23323612',11,42,'VICTOR LUCAS HOLANDA DA SILVA',NULL,20060106,'FORTALEZA','BRANCA','MASCULINO','','victor.silva245@aluno.ce.gov.br','09477923338','62875000',NULL,NULL,NULL,NULL,'TRIANGULO','CHOROZINHO','CE',NULL,'Cursando','1893963'),('1894328','23323612',11,7,'DAVI FRANCISCO VIEIRA SILVA',NULL,20051229,'CASCAVEL','PARDA','MASCULINO','85998576801','davi.silva226@aluno.ce.gov.br','09228151358','62850000',NULL,NULL,NULL,NULL,'BARRA','Barra','CE',NULL,'Cursando','1894328'),('1974835','23323612',11,40,'SAMYA MATEUS DE SOUSA',NULL,20060404,'PACAJUS','PARDA','FEMININO','','samya.sousa1@aluno.ce.gov.br','62239315300','62870000',NULL,NULL,NULL,NULL,'ITAIPABA','PACAJUS','CE',NULL,'Cursando','1974835'),('2151481','23323612',11,28,'MARJORIE FERREIRA BARROSO',NULL,20060611,'PACAJUS','PARDA','FEMININO','85992220802','marjorie.barroso@aluno.ce.gov.br','62239113359','62870000',NULL,NULL,NULL,NULL,'ITAIPABA','PACAJUS','CE',NULL,'Cursando','2151481'),('2178844','23323612',11,17,'JENNIFER LIRA NASCIMENTO',NULL,20050821,'FORTALEZA','PARDA','FEMININO','85994356463','jennifer.nascimento8@aluno.ce.','08450276381','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','2178844'),('2190548','23323612',11,2,'ANDRE LUIS RIBEIRO MARQUES',NULL,20051121,'PACATUBA','PARDA','MASCULINO','85987187457','andre.marques6@aluno.ce.gov.br','08811983312','62600000',NULL,NULL,NULL,NULL,'BAIXA GRANDE','BAIXA GRANDE','CE',NULL,'Cursando','2190548'),('2223789','23323612',11,29,'NICOLAS LOURENCO DA SILVA',NULL,20060525,' FORTALEZA','PARDA','MASCULINO','85991659695','nicolas.silva50@aluno.ce.gov.br','08948462300','62870000',NULL,NULL,NULL,NULL,'BANGUÊ I','PACAJUS','CE',NULL,'Cursando','2223789'),('2234437','23323612',11,20,'JOSE GABRIEL DOS SANTOS DE OLIVEIRA',NULL,20060326,'PACAJUS','PARDA','MASCULINO','85992198649','jose.oliveira550@aluno.ce.gov.br','11616299398','62870000',NULL,NULL,NULL,NULL,'BURITI','PACAJUS','CE',NULL,'Cursando','2234437'),('2323399','23323612',11,31,'PEDRO LUAN MACIEL DE SOUSA',NULL,20060428,'FORTALEZA','PARDA','MASCULINO','','pedro.sousa309@aluno.ce.gov.br','08422051362','62870000',NULL,NULL,NULL,NULL,'LAGOA SECA','PACAJUS','CE',NULL,'Cursando','2323399'),('2340707','23323612',11,12,'FRANCISCO EMILSON SANTOS SOUZA FILHO',NULL,20060424,'FORTALEZA','PARDA','MASCULINO','85991360667','francisco.filho834@aluno.ce.gov.','09944207306','62870000',NULL,NULL,NULL,NULL,'BURITI','PACAJUS','CE',NULL,'Cursando','2340707'),('2446432','23323612',11,9,'FRANCISCA RAIANE MONTEIRO FERREIRA',NULL,20050418,'FORTALEZA','PARDA','FEMININO','85992492019','francisca.ferreira179@aluno.ce.','09312328301','62870000',NULL,NULL,NULL,NULL,'CRUZ DAS ALMAS','PACAJUS','CE',NULL,'Cursando','2446432'),('2514638','23323612',11,18,'JHONNATA FREIRE DA SILVA',NULL,20060517,'PACAJUS','PARDA','MASCULINO','85992954470','jhonnata.silva2@aluno.ce.gov.br','04057656308','62875000',NULL,NULL,NULL,NULL,'TRIANGULO','CHOROZINHO','CE',NULL,'Cursando','2514638'),('2619562','23323612',11,16,'JENNIFER KELLY LINS MARTINS',NULL,20060222,'HORIZONTE','BRANCA','FEMININO','85994343739','jennifer.martins5@aluno.ce.gov.br','11616917318','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','2619562'),('2872964','23323612',11,33,'PEDRO RUAN DA SILVA MONTEIRO',NULL,20060520,'PACAJUS','PARDA','MASCULINO','85992481862','pedro.monteiro31@aluno.ce.gov.','09134025324','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','2872964'),('3389193','23323612',11,14,'GABRIEL DICKINSON PEREIRA DE QUEIROZ',NULL,20050925,'FORTALEZA','PARDA','MASCULINO','85987437797','gabriel.queiroz19@aluno.ce.gov.','09042524340','62870000',NULL,NULL,NULL,NULL,'TUCUM','PACAJUS','CE',NULL,'Cursando','3389193'),('3537642','23323612',11,43,'WESLEY RODRIGUES MOREIRA',NULL,20051219,' PACAJUS','PARDA','MASCULINO','','wesley.moreira7@aluno.ce.gov.br','07775621389','62870000',NULL,NULL,NULL,NULL,'BANGUE','PACAJUS','CE',NULL,'Cursando','3537642'),('3918359','23323612',11,26,'MARCOS HAELIO SABINO DA SILVA FILHO',NULL,20050621,'PACAJUS','PARDA','MASCULINO','85989835210','marcos.filho74@aluno.ce.gov.br','07923446342','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','3918359'),('4286307','23323612',11,27,'MARIA HELENA LIMA DE PAULA',NULL,20060224,'RIO DE JANEIRO','BRANCA','FEMININO','85996677626','maria.paula52@aluno.ce.gov.br','10917692306','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','4286307'),('4577551','23323612',11,38,'SABRINA BARBOSA TEIXEIRA',NULL,20050920,'PACAJUS','PARDA','FEMININO','','sabrina.teixeira12@aluno.ce.gov.','09057823306','62870000',NULL,NULL,NULL,NULL,'PEDRA BRANCA','PACAJUS','CE',NULL,'Cursando','4577551'),('4577931','23323612',11,25,'LUCAS VIEIRA DE OLIVEIRA',NULL,20050817,'PACAJUS','PARDA','MASCULINO','85994259072','lucas.oliveira192@aluno.ce.gov.br','06977249307','62870000',NULL,NULL,NULL,NULL,'CROATA II','PACAJUS','CE',NULL,'Cursando','4577931'),('4633964','23323612',11,21,'JOSE RICHARD LIMA DE OLIVEIRA',NULL,20050622,'PACAJUS','PARDA','MASCULINO','85991755433','jose.oliveira552@aluno.ce.gov.br','09055441376','62870000',NULL,NULL,NULL,NULL,'CAVALARIA','PACAJUS','CE',NULL,'Cursando','4633964'),('4652954','23323612',11,1,'ANA CAROLINA PEREIRA DO NASCIMENTO',NULL,20060217,'CASCAVEL','BRANCA','FEMININO','85991404170','anacarolinapereira.escola@gmail.','08531488303','62880000',NULL,NULL,NULL,NULL,'DIADEMA','HORIZONTE','CE',NULL,'Cursando','4652954'),('4653056','23323612',11,11,'FRANCISCO CARLOS LOUREIRO RODRIGUES',NULL,20050912,'PACAJUS','BRANCA','MASCULINO','85992243763','francisco.rodrigues532@aluno.ce.','10493229329','62870000',NULL,NULL,NULL,NULL,'CRUZ DAS ALMAS','PACAJUS','CE',NULL,'Cursando','4653056'),('4666729','23323612',11,22,'JULIA MARIA SILVA FROTA',NULL,20060102,'FORTALEZA','PARDA','FEMININO','85985025860','julia.frota2@aluno.ce.gov.br','05934403311','62870000',NULL,NULL,NULL,NULL,'BURITI','PACAJUS','CE',NULL,'Cursando','4666729'),('4666735','23323612',11,32,'PEDRO OTAVIO NOGUEIRA PINHEIRO',NULL,20051222,' PACAJUS','BRANCA','MASCULINO','85992158042','pedro.pinheiro30@aluno.ce.gov.br','62181668302','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','4666735'),('4666973','23323612',11,24,'LUANA MARA SILVA DE LIMA',NULL,20050917,'PACAJUS','PARDA','FEMININO','85991290006','luana.lima58@aluno.ce.gov.br','10468612394','62870000',NULL,NULL,NULL,NULL,'CENTRO','PACAJUS','CE',NULL,'Cursando','4666973');
/*!40000 ALTER TABLE `tb_jmf_discente` ENABLE KEYS */;
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
