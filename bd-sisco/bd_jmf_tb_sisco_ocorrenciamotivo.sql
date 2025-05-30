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
-- Table structure for table `tb_sisco_ocorrenciamotivo`
--

DROP TABLE IF EXISTS `tb_sisco_ocorrenciamotivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_ocorrenciamotivo` (
  `ocorrenciaMotivo_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do tipo de motivo do registro da ocorrência',
  `ocorrenciaMotivo_idCategoria` mediumint NOT NULL COMMENT 'Código de identificação da categoria da ocorrência',
  `ocorrenciaMotivo_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal do tipo do motivo de registro da ocorrência',
  `ocorrenciaMotivo_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição do motivo da ocorrência',
  PRIMARY KEY (`ocorrenciaMotivo_id`),
  KEY `ocorrenciaMotivo_idCategoria_idx` (`ocorrenciaMotivo_idCategoria`),
  CONSTRAINT `ocorrenciaMotivo_idCategoria` FOREIGN KEY (`ocorrenciaMotivo_idCategoria`) REFERENCES `tb_sisco_ocorrenciacategoria` (`ocorrenciaCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_ocorrenciamotivo`
--

LOCK TABLES `tb_sisco_ocorrenciamotivo` WRITE;
/*!40000 ALTER TABLE `tb_sisco_ocorrenciamotivo` DISABLE KEYS */;
INSERT INTO `tb_sisco_ocorrenciamotivo` VALUES (1,1,'Saída não autorizada','Sair da escola durante o período de aula, sem autorização dos responsáveis ou do núcleo gestor'),(2,1,'Fraude nas avaliações','Utiliza-se de meios inadequados e fraudulentos de maneira ativa ou passiva na realização de avaliações de aprendizagem (“colar”)'),(3,1,'Uso de equipamento eletrônico','Uso de celular ou de outros equipamentos eletrônicos, nas dependências da escola, durante o horário de aula conforme a Lei Estadual Nº 14.146/2008.'),(4,1,'Divulgação de documento confidencial','Divulgar provas e/ou documentos sigilosos de interesse da escola'),(5,1,'Comportamento inadequado','Troca de carícias, beijos na boca e atitudes que não condizem com um ambiente escolar'),(6,2,'Agressão física','Agressões físicas dentro e nas proximidades da escola'),(7,2,'Consumo de produto proibido','Tomar bebidas alcoólicas, fumar, ou fazer uso de substâncias ilícitas nas dependências da escola'),(8,2,'Ato de vandalismo','Causar danos ao patrimônio da escola'),(9,2,'Denegrir a imagem da escola','Vincular nome da escola a ações depreciativas da imagem da instituição'),(10,2,'Apropriação indevida','Usurpar bens, equipamentos e pertences dentro do ambiente escolar');
/*!40000 ALTER TABLE `tb_sisco_ocorrenciamotivo` ENABLE KEYS */;
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
