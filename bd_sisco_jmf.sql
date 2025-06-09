-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: study_crud
-- ------------------------------------------------------
-- Server version	8.0.42

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
USE sisco_jmf;
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

--
-- Table structure for table `tb_jmf_curso`
--

DROP TABLE IF EXISTS `tb_jmf_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_curso` (
  `curso_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do curso',
  `curso_nome` varchar(120) NOT NULL COMMENT 'Nome de identificação do curso',
  `curso_cargaHoraria` int DEFAULT NULL COMMENT 'Carga horária mínima para o curso',
  `curso_descricao` varchar(400) DEFAULT NULL COMMENT 'Resumo descritivo do curso',
  `curso_idEixo` int NOT NULL COMMENT 'Código de identificação do eixo do curso',
  `curso_status` varchar(20) NOT NULL DEFAULT 'Inativo' COMMENT 'Estado de situação do curso (Ativo | Inativo)',
  PRIMARY KEY (`curso_id`),
  UNIQUE KEY `curso_nome_UNIQUE` (`curso_nome`),
  KEY `curso_idEixo_idx` (`curso_idEixo`),
  CONSTRAINT `curso_idEixo` FOREIGN KEY (`curso_idEixo`) REFERENCES `tb_jmf_eixo` (`eixo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos cursos ofertados pelos eixos tecnológicos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_curso`
--

LOCK TABLES `tb_jmf_curso` WRITE;
/*!40000 ALTER TABLE `tb_jmf_curso` DISABLE KEYS */;
INSERT INTO `tb_jmf_curso` VALUES (1,'Técnico em Agente Comunitário de Saúde',1200,'O curso dura, em média, 1 ano e meio; na modalidade presencial, poderá prever até 20% da sua carga horária total em atividades não presenciais; não poderá ser realizado na modalidade EaD, conforme disposto na Lei nº 11.350, de 5/10/2006, e suas alterações; poderá ter estágio curricular supervisionado obrigatório, a critério do projeto pedagógico da instituição ofertante do curso.',1,'Inativo'),(2,'Técnico em Análises Clínicas',1200,'O curso, na modalidade presencial, poderá prever até 20% da sua carga horária total em atividades não presenciais; poderá ser realizado na modalidade EaD com, no mínimo, 50% da carga horária em atividades presenciais; poderá ter estágio curricular supervisionado obrigatório, a critério da instituição ofertante. ',1,'Inativo'),(3,'Técnico em Enfermagem',1200,'O curso dura, em média, 2 anos e meio; na modalidade presencial, poderá prever até 20% da sua carga horária total em atividades não presenciais; poderá ser realizado na modalidade EaD com, no mínimo, 50% da carga horária em atividades presenciais, nos termos das normas específicas definidas em cada sistema de ensino; caso seja ofertado na modalidade EaD, o estágio deverá ser de forma presencial.',1,'Ativo'),(4,'Técnico em Secretaria Escolar',1200,'Colabora com a gestão, atuando na organização de registros escolares. Operacionaliza processos de matrícula e transferência de estudantes, de organização de turmas e de registros do histórico escolar dos estudantes. Controla e organiza os arquivos da vida acadêmica, processos de registro de conclusão de cursos e colação de grau. Registra em atas as sessões e atividades acadêmicas específicas.',3,'Ativo'),(5,'Técnico em Administração',800,'Executa as funções de apoio administrativo: protocolo e arquivo, confecção e expedição de documentos administrativos e controle de estoques. Opera sistemas de informações gerenciais de pessoal e material. Utiliza ferramentas da informática básica, como suporte às operações organizacionais.',4,'Ativo'),(6,'Técnico em Comércio',800,'Aplica métodos de comercialização de bens e serviços, visando à competitividade no mercado e atendendo às diretrizes organizacionais. Comunica previsões e demandas aos fornecedores. Efetua controle quantitativo e qualitativo de produtos e procede a sua armazenagem no estabelecimento comercial. Operacionaliza planos de marketing e comunicação, logística, recursos humanos e comercialização.',4,'Ativo'),(7,'Técnico em Contabilidade',800,'O curso dura, em média, 1 ano; ofertado, na modalidade presencial, poderá prever até 20% da sua carga horária total em atividades não presenciais; poderá ser realizado na modalidade EaD com, no mínimo, 20% da carga horária em atividades presenciais; caso seja ofertado na modalidade EaD, a carga horária de estágio deverá ser cumprida de forma presencial.',4,'Ativo'),(8,'Técnico em Informática',1000,'Desenvolve programas de computador, seguindo paradigmas da lógica de programação e das linguagens de programação. Utiliza ambientes de desenvolvimento de sistemas, sistemas operacionais e banco de dados. Realiza testes de programas de computador, mantendo registros que possibilitem análises e refinamento dos resultados. Executa manutenção de programas de computadores implantados.',5,'Ativo'),(10,'Técnico em Citopatologia',NULL,'',1,'Inativo'),(11,'Técnico em Controle Ambiental',NULL,'',1,'Inativo'),(12,'Técnico em Cuidados de Idosos',NULL,'',1,'Inativo'),(13,'Técnico em Dependência Química',NULL,'',1,'Inativo'),(14,'Técnico em Equipamentos Biomédicos',NULL,'',1,'Inativo'),(15,'Técnico em Estética',NULL,'',1,'Inativo'),(16,'Técnico em Farmácia',NULL,'',1,'Inativo'),(17,'Técnico em Gerência em Saúde',NULL,'',1,'Inativo'),(18,'Técnico em Hemoterapia',NULL,'',1,'Inativo'),(19,'Técnico em Imagem Pessoal',NULL,'',1,'Inativo'),(20,'Técnico em Imobilizações Ortopédicas',NULL,'',1,'Inativo'),(21,'Técnico em Massoterapia',NULL,'',1,'Inativo'),(22,'Técnico em Meio Ambiente',NULL,'',1,'Inativo'),(23,'Técnico em Meteorologia',NULL,'',1,'Inativo'),(24,'Técnico em Necropsia',NULL,'',1,'Inativo'),(25,'Técnico em Nutrição e Dietética',NULL,'',1,'Inativo'),(26,'Técnico em Óptica',NULL,'',1,'Inativo'),(27,'Técnico em Optometria',NULL,'',1,'Inativo'),(28,'Técnico em Órteses e Próteses',NULL,'',1,'Inativo'),(29,'Técnico em Podologia',NULL,'',1,'Inativo'),(30,'Técnico em Prótese Dentária',NULL,'',1,'Inativo'),(31,'Técnico em Radiologia',NULL,'',1,'Inativo'),(32,'Técnico em Reciclagem',NULL,'',1,'Inativo'),(33,'Técnico em Registros e Informações em Saúde',NULL,'',1,'Inativo'),(34,'Técnico em Saúde Bucal',NULL,'',1,'Inativo'),(35,'Técnico em Terapias Holísticas',NULL,'',1,'Inativo'),(36,'Técnico em Veterinária',NULL,'',1,'Inativo'),(37,'Técnico em Vigilância em Saúde',NULL,'',1,'Inativo'),(38,'Técnico em Automação Industrial',NULL,'',2,'Inativo'),(39,'Técnico em Eletroeletrônica',NULL,'',2,'Inativo'),(40,'Técnico em Eletromecânica',NULL,'',2,'Inativo'),(41,'Técnico em Eletrônica',NULL,'',2,'Inativo'),(42,'Técnico em Eletrotécnica',NULL,'',2,'Inativo'),(43,'Técnico em Fabricação Mecânica',NULL,'',2,'Inativo'),(44,'Técnico em Ferramentaria',NULL,'',2,'Inativo'),(45,'Técnico em Fundição',NULL,'',2,'Inativo'),(46,'Técnico em Instrumentação Industrial',NULL,'',2,'Inativo'),(47,'Técnico em Manutenção Aeronáutica em Aviônicos',NULL,'',2,'Inativo'),(48,'Técnico em Manutenção Aeronáutica em Célula',NULL,'',2,'Inativo'),(49,'Técnico em Manutenção Aeronáutica em Grupo Motopropulsor',NULL,'',2,'Inativo'),(50,'Técnico em Manutenção Automotiva',NULL,'',2,'Inativo'),(51,'Técnico em Manutenção de Máquinas Industriais',NULL,'',2,'Inativo'),(52,'Técnico em Manutenção de Máquinas Navais',NULL,'',2,'Inativo'),(53,'Técnico em Manutenção de Máquinas Pesadas',NULL,'',2,'Inativo'),(54,'Técnico em Manutenção de Sistemas Metroferroviários',NULL,'',2,'Inativo'),(55,'Técnico em Mecânica',NULL,'',2,'Inativo'),(56,'Técnico em Mecânica de Precisão',NULL,'',2,'Inativo'),(57,'Técnico em Mecatrônica',NULL,'',2,'Inativo'),(58,'Técnico em Metalurgia',NULL,'',2,'Inativo'),(59,'Técnico em Metrologia',NULL,'',2,'Inativo'),(60,'Técnico em Refrigeração e Climatização',NULL,'',2,'Inativo'),(61,'Técnico em Sistemas a Gás',NULL,'',2,'Inativo'),(62,'Técnico em Sistemas de Energia Renovável',NULL,'',2,'Inativo'),(63,'Técnico em Soldagem',NULL,'',2,'Inativo'),(64,'Técnico em Alimentação Escolar',NULL,'',3,'Inativo'),(65,'Técnico em Arquivo',NULL,'',3,'Inativo'),(66,'Técnico em Biblioteconomia',NULL,'',3,'Inativo'),(67,'Técnico em Brinquedoteca',NULL,'',3,'Inativo'),(68,'Técnico em Desenvolvimento Comunitário',NULL,'',3,'Inativo'),(69,'Técnico em Infraestrutura Escolar',NULL,'',3,'Inativo'),(70,'Técnico em Laboratório de Ciências da Natureza',NULL,'',3,'Inativo'),(71,'Técnico em Multimeios Didáticos',NULL,'',3,'Inativo'),(72,'Técnico em Produção de Materiais Didáticos Bilíngues em Libras/Língua Portuguesa',NULL,'',3,'Inativo'),(73,'Técnico em Tradução e Interpretação de Libras',NULL,'',3,'Inativo'),(74,'Técnico em Treinamento e Instrução de Cães-Guias',NULL,'',3,'Inativo'),(75,'Técnico em Comércio Exterior',NULL,'',4,'Inativo'),(76,'Técnico em Condomínio',NULL,'',4,'Inativo'),(77,'Técnico em Cooperativismo',NULL,'',4,'Inativo'),(78,'Técnico em Finanças',NULL,'',4,'Inativo'),(79,'Técnico em Logística',NULL,'',4,'Inativo'),(80,'Técnico em Marketing',NULL,'',4,'Inativo'),(81,'Técnico em Qualidade',NULL,'',4,'Inativo'),(82,'Técnico em Recursos Humanos',NULL,'',4,'Inativo'),(83,'Técnico em Secretariado',NULL,'',4,'Inativo'),(84,'Técnico em Seguros',NULL,'',4,'Inativo'),(85,'Técnico em Serviços Jurídicos',NULL,'',4,'Inativo'),(86,'Técnico em Serviços Públicos',NULL,'',4,'Inativo'),(87,'Técnico em Transações Imobiliárias',NULL,'',4,'Inativo'),(88,'Técnico em Vendas',NULL,'',4,'Inativo'),(89,'Técnico em Desenvolvimento de Sistemas',NULL,'',5,'Inativo'),(91,'Técnico em Informática para Internet',NULL,'',5,'Inativo'),(92,'Técnico em Manutenção e Suporte em Informática',NULL,'',5,'Inativo'),(93,'Técnico em Programação de Jogos Digitais',NULL,'',5,'Inativo'),(94,'Técnico em Redes de Computadores',NULL,'',5,'Inativo'),(95,'Técnico em Telecomunicações',NULL,'',5,'Inativo'),(96,'Técnico Aeroportuário',NULL,'',6,'Inativo'),(97,'Técnico em Agrimensura',NULL,'',6,'Inativo'),(98,'Técnico em Carpintaria',NULL,'',6,'Inativo'),(99,'Técnico em Desenho de Construção Civil',NULL,'',6,'Inativo'),(100,'Técnico em Edificações',NULL,'',6,'Inativo'),(101,'Técnico em Estradas',NULL,'',6,'Inativo'),(102,'Técnico em Geodésia e Cartografia',NULL,'',6,'Inativo'),(103,'Técnico em Geoprocessamento',NULL,'',6,'Inativo'),(104,'Técnico em Hidrologia',NULL,'',6,'Inativo'),(105,'Técnico em Portos',NULL,'',6,'Inativo'),(106,'Técnico em Saneamento',NULL,'',6,'Inativo'),(107,'Técnico em Trânsito',NULL,'',6,'Inativo'),(108,'Técnico em Transporte Aquaviário',NULL,'',6,'Inativo'),(109,'Técnico em Transporte de Cargas',NULL,'',6,'Inativo'),(110,'Técnico em Transporte Metroferroviário',NULL,'',6,'Inativo'),(111,'Técnico em Transporte Rodoviário',NULL,'',6,'Inativo'),(112,'Técnico em Agroindústria',NULL,'',7,'Inativo'),(113,'Técnico em Alimentos',NULL,'',7,'Inativo'),(114,'Técnico em Cervejaria',NULL,'',7,'Inativo'),(115,'Técnico em Confeitaria',NULL,'',7,'Inativo'),(116,'Técnico em Panificação',NULL,'',7,'Inativo'),(117,'Técnico em Viticultura e Enologia',NULL,'',7,'Inativo'),(118,'Técnico em Artesanato',NULL,'',8,'Inativo'),(119,'Técnico em Artes Circenses',NULL,'',8,'Inativo'),(120,'Técnico em Artes Visuais',NULL,'',8,'Inativo'),(121,'Técnico em Canto',NULL,'',8,'Inativo'),(122,'Técnico em Cenografia',NULL,'',8,'Inativo'),(123,'Técnico em Composição e Arranjo',NULL,'',8,'Inativo'),(124,'Técnico em Conservação e Restauro',NULL,'',8,'Inativo'),(125,'Técnico em Dança',NULL,'',8,'Inativo'),(126,'Técnico em Design de Calçados',NULL,'',8,'Inativo'),(127,'Técnico em Design de Embalagens',NULL,'',8,'Inativo'),(128,'Técnico em Design de Interiores',NULL,'',8,'Inativo'),(129,'Técnico em Design de Joias',NULL,'',8,'Inativo'),(130,'Técnico em Design de Moda',NULL,'',8,'Inativo'),(131,'Técnico em Design de Móveis',NULL,'',8,'Inativo'),(132,'Técnico em Design Gráfico',NULL,'',8,'Inativo'),(133,'Técnico em Estilismo e Coordenação de Moda',NULL,'',8,'Inativo'),(134,'Técnico em Fabricação de Instrumentos Musicais',NULL,'',8,'Inativo'),(135,'Técnico em Figurino Cênico',NULL,'',8,'Inativo'),(136,'Técnico em Instrumento Musical',NULL,'',8,'Inativo'),(137,'Técnico em Modelagem do Vestuário',NULL,'',8,'Inativo'),(138,'Técnico em Multimídia',NULL,'',8,'Inativo'),(139,'Técnico em Museologia',NULL,'',8,'Inativo'),(140,'Técnico em Paisagismo',NULL,'',8,'Inativo'),(141,'Técnico em Processos Fotográficos',NULL,'',8,'Inativo'),(142,'Técnico em Produção Cultural',NULL,'',8,'Inativo'),(143,'Técnico em Produção de Áudio e Vídeo',NULL,'',8,'Inativo'),(144,'Técnico em Produção de Moda',NULL,'',8,'Inativo'),(145,'Técnico em Publicidade',NULL,'',8,'Inativo'),(146,'Técnico em Rádio e Televisão',NULL,'',8,'Inativo'),(147,'Técnico em Regência',NULL,'',8,'Inativo'),(148,'Técnico em Teatro',NULL,'',8,'Inativo'),(149,'Técnico em Açúcar e Álcool',NULL,'',9,'Inativo'),(150,'Técnico em Biocombustíveis',NULL,'',9,'Inativo'),(151,'Técnico em Biotecnologia',NULL,'',9,'Inativo'),(152,'Técnico em Calçados',NULL,'',9,'Inativo'),(153,'Técnico em Celulose e Papel',NULL,'',9,'Inativo'),(154,'Técnico em Cerâmica',NULL,'',9,'Inativo'),(155,'Técnico em Construção Naval',NULL,'',9,'Inativo'),(156,'Técnico em Curtimento',NULL,'',9,'Inativo'),(157,'Técnico em Joalheria',NULL,'',9,'Inativo'),(158,'Técnico em Móveis',NULL,'',9,'Inativo'),(159,'Técnico em Petróleo e Gás',NULL,'',9,'Inativo'),(160,'Técnico em Petroquímica',NULL,'',9,'Inativo'),(161,'Técnico em Planejamento e Controle da Produção',NULL,'',9,'Inativo'),(162,'Técnico em Plásticos',NULL,'',9,'Inativo'),(163,'Técnico em Processamento da Madeira',NULL,'',9,'Inativo'),(164,'Técnico em Processos Gráficos',NULL,'',9,'Inativo'),(165,'Técnico em Química',NULL,'',9,'Inativo'),(166,'Técnico em Têxtil',NULL,'',9,'Inativo'),(167,'Técnico em Vestuário',NULL,'',9,'Inativo'),(168,'Técnico em Vidros',NULL,'',9,'Inativo'),(169,'Técnico em Agricultura',NULL,'',10,'Inativo'),(170,'Técnico em Agroecologia',NULL,'',10,'Inativo'),(171,'Técnico em Agronegócio',NULL,'',10,'Inativo'),(172,'Técnico em Agropecuária',NULL,'',10,'Inativo'),(173,'Técnico em Apicultura',NULL,'',10,'Inativo'),(174,'Técnico em Aquicultura',NULL,'',10,'Inativo'),(175,'Técnico em Cafeicultura',NULL,'',10,'Inativo'),(176,'Técnico em Florestas',NULL,'',10,'Inativo'),(177,'Técnico em Fruticultura',NULL,'',10,'Inativo'),(178,'Técnico em Geologia',NULL,'',10,'Inativo'),(179,'Técnico em Mineração',NULL,'',10,'Inativo'),(180,'Técnico em Pesca',NULL,'',10,'Inativo'),(181,'Técnico em Recursos Pesqueiros',NULL,'',10,'Inativo'),(182,'Técnico em Zootecnia',NULL,'',10,'Inativo'),(183,'Técnico em Defesa',NULL,'',11,'Inativo'),(184,'Técnico em Prevenção e Combate a Incêndio',NULL,'',11,'Inativo'),(185,'Técnico em Segurança do Trabalho',NULL,'',11,'Inativo'),(186,'Técnico em Agenciamento de Viagem',NULL,'',12,'Inativo'),(187,'Técnico em Eventos',NULL,'',12,'Inativo'),(188,'Técnico em Gastronomia',NULL,'',12,'Inativo'),(189,'Técnico em Guia de Turismo',NULL,'',12,'Inativo'),(190,'Técnico em Hospedagem',NULL,'',12,'Inativo'),(191,'Técnico em Lazer',NULL,'',12,'Inativo'),(192,'Técnico em Serviços de Restaurante e Bar',NULL,'',12,'Inativo'),(193,'Técnico em Bombeiro Aeronáutico',NULL,'',13,'Inativo'),(194,'Técnico em Comunicações Aeronáuticas',NULL,'',13,'Inativo'),(195,'Técnico em Comunicações Navais',NULL,'',13,'Inativo'),(196,'Técnico em Controle de Tráfego Aéreo',NULL,'',13,'Inativo'),(197,'Técnico em Desenho Militar',NULL,'',13,'Inativo'),(198,'Técnico em Eletricidade e Instrumentos Aeronáuticos',NULL,'',13,'Inativo'),(199,'Técnico em Equipamentos de Voo',NULL,'',13,'Inativo'),(200,'Técnico em Estrutura e Pintura de Aeronaves',NULL,'',13,'Inativo'),(201,'Técnico em Fotointeligência',NULL,'',13,'Inativo'),(202,'Técnico em Guarda e Segurança',NULL,'',13,'Inativo'),(203,'Técnico em Hidrografia',NULL,'',13,'Inativo'),(204,'Técnico em Informações Aeronáuticas',NULL,'',13,'Inativo'),(205,'Técnico em Manobras e Equipamentos de Convés',NULL,'',13,'Inativo'),(206,'Técnico em Material Bélico',NULL,'',13,'Inativo'),(207,'Técnico em Mecânica de Aeronaves',NULL,'',13,'Inativo'),(208,'Técnico em Mergulho',NULL,'',13,'Inativo'),(209,'Técnico em Operação de Radar',NULL,'',13,'Inativo'),(210,'Técnico em Operação de Sonar',NULL,'',13,'Inativo'),(211,'Técnico em Operações de Engenharia Militar',NULL,'',13,'Inativo'),(212,'Técnico em Preparação Física e Desportiva Militar',NULL,'',13,'Inativo'),(213,'Técnico em Sensores de Aviação',NULL,'',13,'Inativo'),(214,'Técnico em Sinais Navais',NULL,'',13,'Inativo'),(215,'Técnico em Sinalização Náutica',NULL,'',13,'Inativo'),(216,'Técnico em Suprimento',NULL,'',13,'Inativo'),(217,'Curso de teste para CRUD',1200,'Curso de teste para CRUD',13,'Inativo'),(218,'Curso de teste para CRUD 2',1800,'Curso de teste para CRUD 2',5,'Ativo');
/*!40000 ALTER TABLE `tb_jmf_curso` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tb_jmf_setor`
--

DROP TABLE IF EXISTS `tb_jmf_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_setor` (
  `setor_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do setor',
  `setor_nome` varchar(30) NOT NULL COMMENT 'Nome de identificação do setor',
  `setor_descricao` varchar(150) DEFAULT NULL COMMENT 'Resumo descritivo do setor',
  PRIMARY KEY (`setor_id`),
  UNIQUE KEY `setor_nome_UNIQUE` (`setor_nome`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela para registro dos setores organizacionais da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_setor`
--

LOCK TABLES `tb_jmf_setor` WRITE;
/*!40000 ALTER TABLE `tb_jmf_setor` DISABLE KEYS */;
INSERT INTO `tb_jmf_setor` VALUES (1,'Ensino Propedêutico',''),(2,'Ensino Técnico','Administrado por empresa tercerizada'),(3,'Administrativo/ Gestão',NULL),(4,'Secretaria Escolar',NULL),(5,'Cozinha','Administrado por empresa tercerizada'),(6,'Serviços Gerais','Administrado por empresa tercerizada'),(7,'Segurança Patrimonial','Administrado por empresa tercerizada');
/*!40000 ALTER TABLE `tb_jmf_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jmf_turma`
--

DROP TABLE IF EXISTS `tb_jmf_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jmf_turma` (
  `turma_id` int NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da turma',
  `turma_idCurso` int NOT NULL COMMENT 'Código de identificação do curso da turma',
  `turma_nome` varchar(8) NOT NULL COMMENT 'Nome de identificação da turma (Letra do alfabeto: A - Z)',
  `turma_ano` year NOT NULL COMMENT 'Ano de início da turma',
  `turma_status` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Estado de situação da turma (1. Ativo | 0. Inativo)',
  `turma_serie` varchar(10) DEFAULT '1ª Ano' COMMENT 'Nome de identificação da serialização do ciclo da turma',
  `turma_turno` varchar(10) DEFAULT 'Integral' COMMENT 'Período do funcionamento da turma',
    PRIMARY KEY (`turma_id`),
  UNIQUE KEY `turma_id` (`turma_id`),
  UNIQUE KEY `turma_nome_UNIQUE` (`turma_nome`),
  KEY `turma_codigoCurso_idx` (`turma_idCurso`),
  CONSTRAINT `turma_idCurso` FOREIGN KEY (`turma_idCurso`) REFERENCES `tb_jmf_curso` (`curso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das turmas geradas pelos cursos da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jmf_turma`
--

LOCK TABLES `tb_jmf_turma` WRITE;
/*!40000 ALTER TABLE `tb_jmf_turma` DISABLE KEYS */;
INSERT INTO `tb_jmf_turma` VALUES (1,5,'A',2023,_binary '','1ª Série','Integral'),(2,3,'B',2023,_binary '','1ª Série','Integral'),(3,8,'C',2023,_binary '','1ª Série','Integral'),(4,4,'D',2023,_binary '','1ª Série','Integral'),(5,5,'E',2022,_binary '','2ª Série','Integral'),(6,7,'F',2022,_binary '','2ª Série','Integral'),(7,3,'G',2022,_binary '','2ª Série','Integral'),(8,8,'H',2022,_binary '','2ª Série','Integral'),(9,5,'I',2021,_binary '','3ª Série','Integral'),(10,3,'J',2021,_binary '','3ª Série','Integral'),(11,8,'K',2021,_binary '','3ª Série','Integral');
/*!40000 ALTER TABLE `tb_jmf_turma` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tb_sisco_evento`
--

DROP TABLE IF EXISTS `tb_sisco_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_evento` (
  `evento_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do evento',
  `evento_idDiscente` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do discente envolvido no evento',
  `evento_idColaborador` varchar(10) NOT NULL COMMENT 'Código de identificação (Matrícula) do colaborador que registrou o evento do discente',
  `evento_idResponsavel` int DEFAULT NULL COMMENT 'Código de identificação do responsável legal que foi notificado sobre o evento do discente',
  `evento_idCategoria` mediumint NOT NULL COMMENT 'Código de identificação da categoria dos eventos rotineiros da instituição',
  `evento_idMotivo` mediumint NOT NULL COMMENT 'Código de identificação do tipo de motivo das categorias de eventos rotineiros da instituição',
  `evento_data` date NOT NULL COMMENT 'Data de registro do evento',
  `evento_hora` time NOT NULL COMMENT 'Hora de registro do evento',
  `evento_observacao` varchar(300) DEFAULT NULL COMMENT 'Anotação relevante sobre o registro do evento ',
  `evento_dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data e hora do sistema colhido automaticamente para futuras auditorias',
  PRIMARY KEY (`evento_id`),
  KEY `evento_idCategoria_idx` (`evento_idCategoria`),
  KEY `evento_idMotivo_idx` (`evento_idMotivo`),
  KEY `evento_idDiscente_idx` (`evento_idDiscente`),
  KEY `evento_idColaborador_idx` (`evento_idColaborador`),
  KEY `evento_idResponsavelLegal_idx` (`evento_idResponsavel`),
  CONSTRAINT `evento_idCategoria` FOREIGN KEY (`evento_idCategoria`) REFERENCES `tb_sisco_eventocategoria` (`eventoCategoria_id`),
  CONSTRAINT `evento_idColaborador` FOREIGN KEY (`evento_idColaborador`) REFERENCES `tb_jmf_colaborador` (`colaborador_matricula`),
  CONSTRAINT `evento_idDiscente` FOREIGN KEY (`evento_idDiscente`) REFERENCES `tb_jmf_discente` (`discente_matricula`),
  CONSTRAINT `evento_idMotivo` FOREIGN KEY (`evento_idMotivo`) REFERENCES `tb_sisco_eventomotivo` (`eventoMotivo_id`),
  CONSTRAINT `evento_idResponsavelLegal` FOREIGN KEY (`evento_idResponsavel`) REFERENCES `tb_jmf_responsavellegal` (`responsavelLegal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos eventos rotineiros da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_evento`
--

LOCK TABLES `tb_sisco_evento` WRITE;
/*!40000 ALTER TABLE `tb_sisco_evento` DISABLE KEYS */;
INSERT INTO `tb_sisco_evento` VALUES (1,'1750436','47925215',44,1,1,'2023-05-14','22:27:26',NULL,'2023-05-15 01:27:26'),(2,'1894328','4786271X',8,1,9,'2023-05-14','22:28:40',NULL,'2023-05-15 01:28:40'),(3,'2340707','16849219',12,2,3,'2023-05-14','22:30:11',NULL,'2023-05-15 01:30:11'),(5,'2178844','9788191X',17,2,5,'2023-05-14','22:32:16',NULL,'2023-05-15 01:32:16'),(6,'3537642','47925215',43,3,7,'2023-05-14','22:35:26',NULL,'2023-05-15 01:35:26');
/*!40000 ALTER TABLE `tb_sisco_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sisco_eventocategoria`
--

DROP TABLE IF EXISTS `tb_sisco_eventocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_eventocategoria` (
  `eventoCategoria_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da categoria do evento',
  `eventoCategoria_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal da categoria do evento',
  `ocorreciaCategoria_qtdAlerta` int NOT NULL DEFAULT '3' COMMENT 'Quantidade de eventos para gerar uma alerta',
  `eventoCategoria_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição da categoria do evento',
  PRIMARY KEY (`eventoCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das categoria dos eventos rotineiros da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_eventocategoria`
--

LOCK TABLES `tb_sisco_eventocategoria` WRITE;
/*!40000 ALTER TABLE `tb_sisco_eventocategoria` DISABLE KEYS */;
INSERT INTO `tb_sisco_eventocategoria` VALUES (1,'Impontualidade',3,'Atraso na chegada a escola'),(2,'Fardamento incompleto',3,'Ausência de um dos itens obrigatórios do fardamento'),(3,'Acessórios inapropriados',3,'Uso de acessórios e peças de vestuários que não condizem com fardamento');
/*!40000 ALTER TABLE `tb_sisco_eventocategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sisco_eventomotivo`
--

DROP TABLE IF EXISTS `tb_sisco_eventomotivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_eventomotivo` (
  `eventoMotivo_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do tipo de motivo do registro do evento',
  `eventoMotivo_idCategoria` mediumint NOT NULL COMMENT 'Código de identificação da categoria do evento',
  `eventoMotivo_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal do tipo do motivo de registro do evento',
  `eventoMotivo_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição do motivo do evento',
  PRIMARY KEY (`eventoMotivo_id`),
  UNIQUE KEY `eventoMotivo_nome_UNIQUE` (`eventoMotivo_nome`),
  KEY `eventoMotivo_idCategoria_idx` (`eventoMotivo_idCategoria`),
  CONSTRAINT `eventoMotivo_idCategoria` FOREIGN KEY (`eventoMotivo_idCategoria`) REFERENCES `tb_sisco_eventocategoria` (`eventoCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro dos tipos de motivos das categorias de eventos rotineiros da instituição';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_eventomotivo`
--

LOCK TABLES `tb_sisco_eventomotivo` WRITE;
/*!40000 ALTER TABLE `tb_sisco_eventomotivo` DISABLE KEYS */;
INSERT INTO `tb_sisco_eventomotivo` VALUES (1,1,'Transporte atrasou','Impontualidade na chegada a escola devido ao atraso do tranporte'),(2,1,'Execesso de sono','Impontualidade na chegada a escola devido a ter acordado tarde'),(3,2,'Ausência da calça da farda','Fardamento incompleto devido a falta da calça da farda'),(4,2,'Ausência da blusa da farda','Fardamento incompleto devido a falta da camisa da farda'),(5,2,'Ausência da meia branca','Fardamento incompleto devido a cor da meia usada pelo estudante'),(6,2,'Ausência do tência preto','Fardamento incompleto devido a cor do tência usado pelo estudante'),(7,3,'Blusão descaracterizado','Uso acessório sem ser do fardamento da escola'),(8,3,'Boné, toca ou chapeú','Uso acessório na cabeça ser do fardamento da escola'),(9,1,'Problema de saúde','Impontualidade na chegada a escola devido a problema de saúde');
/*!40000 ALTER TABLE `tb_sisco_eventomotivo` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tb_sisco_ocorrenciacategoria`
--

DROP TABLE IF EXISTS `tb_sisco_ocorrenciacategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sisco_ocorrenciacategoria` (
  `ocorrenciaCategoria_id` mediumint NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação da categoria da ocorrência',
  `ocorrenciaCategoria_nome` varchar(50) NOT NULL COMMENT 'Identificação nominal da categoria da ocorrência',
  `ocorreciaCategoria_qtdAlerta` int NOT NULL DEFAULT '3' COMMENT 'Quantidade de ocorrencias para gerar uma alerta',
  `ocorrenciaCategoria_descricao` varchar(300) DEFAULT NULL COMMENT 'Descrição da categoria da ocorrência',
  PRIMARY KEY (`ocorrenciaCategoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de registro das categorias de ocorrências previstas no regimento escolar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sisco_ocorrenciacategoria`
--

LOCK TABLES `tb_sisco_ocorrenciacategoria` WRITE;
/*!40000 ALTER TABLE `tb_sisco_ocorrenciacategoria` DISABLE KEYS */;
INSERT INTO `tb_sisco_ocorrenciacategoria` VALUES (1,'Grave',1,'Passiveis de um dia de suspensão e retorno a escola com os responsáveis.'),(2,'Gravíssima',1,'Passiveis de três dias de suspensão e retorno a escola com os responsáveis.');
/*!40000 ALTER TABLE `tb_sisco_ocorrenciacategoria` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-06-01 20:04:05
