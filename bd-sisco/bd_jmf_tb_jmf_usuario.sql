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
-- Table structure for table `tb_jmf_usuario`
--

DROP TABLE IF EXISTS `tb_jmf_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_usuario` (
  `usuario_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do usuários',
  `usuario_nome` varchar(25) NOT NULL COMMENT 'Nome de identificação do usuário',
  `usuario_login` varchar(15) NOT NULL COMMENT 'Apelido (nickname) de acesso ao sistema',
  `usuario_senha` varchar(32) NOT NULL COMMENT 'Senha (password) de acesso ao sistema',
  `usuario_perfil` varchar(25) NOT NULL COMMENT 'Perfil de restrições dos usuários do sistema',
  `usuario_perfilNivel` smallint NOT NULL DEFAULT '3' COMMENT 'Perfil de acesso do usuário de acordo com o número do nível do perfil',
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `usuario_login` (`usuario_login`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos usuários do sistema de gerenciamento do banco de dados (front-end)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_usuario`
--

LOCK TABLES `tb_jmf_usuario` WRITE;
/*!40000 ALTER TABLE `tb_jmf_usuario` DISABLE KEYS */;
INSERT INTO `tb_jmf_usuario` VALUES (1,'Raphael Sanzio','sanzio','123','Administrador do BD',1),(2,'Sanzio','eu','123','Coordenador(a) Escolar',2),(3,'Raphael','ele','123','Usuário',3),(10,'Werbson Faslcão','werbim','123','Gestor(a) Escolar',2);
/*!40000 ALTER TABLE `tb_jmf_usuario` ENABLE KEYS */;
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
