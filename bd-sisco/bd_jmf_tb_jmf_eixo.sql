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
-- Table structure for table `tb_jmf_eixo`
--

DROP TABLE IF EXISTS `tb_jmf_eixo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_eixo` (
  `eixo_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do eixo',
  `eixo_nome` varchar(40) NOT NULL COMMENT 'Nome de identificação do eixo',
  `eixo_descricao` varchar(400) DEFAULT NULL COMMENT 'Resumo descritivo do atributo',
  PRIMARY KEY (`eixo_id`),
  UNIQUE KEY `eixo_id` (`eixo_id`),
  UNIQUE KEY `eixo_nome_UNIQUE` (`eixo_nome`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela para registro dos eixos que ofertam os cursos da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_eixo`
--

LOCK TABLES `tb_jmf_eixo` WRITE;
/*!40000 ALTER TABLE `tb_jmf_eixo` DISABLE KEYS */;
INSERT INTO `tb_jmf_eixo` VALUES (1,'Ambiente, Saúde e Segurança','Contempla tecnologias consagradas à melhoria da qualidade de vida e ao bem-estar físico, mental e social, à proteção e preservação dos seres vivos e recursos naturais, e ao desenvolvimento e inovação de aparatos tecnológicos de atenção e mitigação de riscos à saúde e ao ambiente.'),(2,'Controle e Processos Industriais','Contempla tecnologias de apoio à infraestrutura e aos processos mecânicos, elétricos e eletroeletrônicos envolvidos na manutenção de máquinas navais, industriais ou de locomoção; na transformação metalmecânica de partes de máquinas, equipamentos, veículos, materiais de transporte, e na automatização de mecanismos, medições e correções em processos produtivos.'),(3,'Desenvolvimento educacional e social','Compreende tecnologias de apoio às atividades educativas e sociais voltadas à inclusão social e educacional, ao respeito às diferenças culturais, à respeitosa convivência comunitária, à preservação de patrimônios e à melhoria da qualidade de vida.'),(4,'Gestão e Negócios','Compreende tecnologias de suporte e de melhoria da organização da produção e de trabalho de empreendimentos nas suas rotinas administrativas de comercialização, controle contábil, gestão da qualidade, gestão de pessoas, gestão financeira, logística e marketing.'),(5,'Informação e Comunicação','Compreende tecnologias empregadas em infraestruturas; protocolos destinados ao processamento e administração de dados e informações; projetos gráficos para aplicações computacionais; e na comutação, transmissão e recepção de dados.'),(6,'Infraestrutura','Compreende empregadas em projetos de construção de obras civis, topografia, geotécnica, hidráulica, recursos hídricos, saneamento, transporte de pessoas e bens e controle de trânsito e tráfego.'),(7,'Produção Alimentícia','Compreende tecnologias de melhoria de máquinas e implementos; de controle de insumos, produtos, padrões sanitários e de qualidade; e de gerenciamento de resíduos empregadas no beneficiamento de produtos de origem vegetal e animal e na sua transformação em alimentos e bebidas.'),(8,'Produção Cultural e Design','Compreende tecnologias de produção, conservação, difusão, performance e gerenciamento de bens culturais materiais e imateriais, voltadas ao desenvolvimento da economia criativa e da produção cultural em seus vários segmentos, espaços e meios de criação e de fruição artística.'),(9,'Produção Industrial','Compreende tecnologias envolvidas nos equipamentos, sistemas e processos físico-químicos de transformação de matérias-primas e substâncias, integrantes de linhas de produção.'),(10,'Recursos Naturais','Compreende tecnologias de prospecção, avaliação técnica e econômica, planejamento, extração e cultivo de recursos naturais considerando os sistemas e elos das cadeias de produção animal, vegetal e mineral.'),(11,'Segurança','Compreende tecnologias de controle e eliminação de acidentes e riscos à saúde humana e de defesa, resguardo e vigilância de patrimônios, empregadas na segurança pública e privada, na defesa social e civil, na segurança do trabalho e em ações de contra incêndio.'),(12,'Turismo, Hospitalidade e Lazer','Compreende tecnologias de planejamento, organização, supervisão, operação e avaliação do atendimento e do acolhimento em atividades de agenciamento e guiamento, hospedagem, gastronomia, eventos e lazer.'),(13,'Militar','Compreende tecnologias de condução das atividades militares, destinadas ao cumprimento da missão constitucional das Forças Armadas – Marinha do Brasil, Aeronáutica e Exército – de defesa da Pátria e de garantia dos poderes constitucionais, da lei e da ordem.'),(23,'Eixo de teste para CRUD','Eixo de teste para CRUD');
/*!40000 ALTER TABLE `tb_jmf_eixo` ENABLE KEYS */;
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
