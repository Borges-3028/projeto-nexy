-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: nexy
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `arquivos`
--

DROP TABLE IF EXISTS `arquivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arquivos` (
  `id_arquivo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `id_sala` int DEFAULT NULL,
  `salas_id_sala` int NOT NULL,
  PRIMARY KEY (`id_arquivo`,`salas_id_sala`),
  KEY `id_sala` (`id_sala`),
  KEY `fk_arquivos_salas1_idx` (`salas_id_sala`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivos`
--

LOCK TABLES `arquivos` WRITE;
/*!40000 ALTER TABLE `arquivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `arquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_ia`
--

DROP TABLE IF EXISTS `chat_ia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_ia` (
  `id_chat` int NOT NULL AUTO_INCREMENT,
  `pergunta` text,
  `resposta` text,
  `id_usuario` int DEFAULT NULL,
  `usuarios_id_usuario` int NOT NULL,
  PRIMARY KEY (`id_chat`,`usuarios_id_usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_chat_ia_usuarios1_idx` (`usuarios_id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_ia`
--

LOCK TABLES `chat_ia` WRITE;
/*!40000 ALTER TABLE `chat_ia` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_ia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracoes_usuario`
--

DROP TABLE IF EXISTS `configuracoes_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracoes_usuario` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(50) DEFAULT NULL,
  `notificacoes` tinyint(1) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `usuarios_id_usuario` int NOT NULL,
  PRIMARY KEY (`id_config`,`usuarios_id_usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_configuracoes_usuario_usuarios1_idx` (`usuarios_id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracoes_usuario`
--

LOCK TABLES `configuracoes_usuario` WRITE;
/*!40000 ALTER TABLE `configuracoes_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracoes_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `acao` varchar(255) DEFAULT NULL,
  `data_log` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (3,'Novo usuário criado: carlos','2026-04-28 23:38:22'),(4,'Novo usuário criado: carlos','2026-04-28 23:44:00'),(5,'Novo usuário criado: ','2026-04-29 18:28:11'),(6,'Novo usuário criado: Dudu','2026-04-29 18:30:13'),(7,'Novo usuário criado: carlos','2026-04-29 19:28:46'),(8,'Novo usuário criado: Carlos doutor','2026-04-29 19:31:56'),(9,'Novo usuário criado: carlos','2026-05-12 17:20:30'),(10,'Novo usuário criado: carlos ADM','2026-05-16 11:14:12'),(11,'Sala criada: Sala Teste','2026-05-16 11:22:54'),(12,'Sala criada: Sala epapse','2026-05-18 17:52:11'),(13,'Sala criada: Sala 10gnw4','2026-05-18 17:59:09'),(14,'Novo usuário criado: dudu','2026-05-18 20:41:25'),(15,'Sala criada: Sala 2bkoq0','2026-05-18 20:45:58'),(16,'Novo usuário criado: Jonas','2026-05-21 19:45:51'),(17,'Sala criada: Sala zfcvbp','2026-05-21 19:46:32'),(18,'Sala criada: Sala lwz3dz','2026-05-21 19:46:48'),(19,'Sala criada: Sala s49uiz','2026-05-21 19:47:47'),(20,'Sala criada: Sala g71ehu','2026-05-21 19:48:07'),(21,'Sala criada: Sala mzyayu','2026-05-21 19:52:27'),(22,'Sala criada: Sala 8xd71q','2026-05-21 19:53:41'),(23,'Sala criada: Sala f54prb','2026-05-21 19:54:58'),(24,'Sala criada: Sala r4zcck','2026-05-30 16:09:08'),(25,'Novo usuário criado: Eduardo Mendonca','2026-05-30 16:11:27'),(26,'Sala criada: Sala 889etb','2026-05-30 16:23:04'),(27,'Sala criada: Sala ec5vnp','2026-05-30 16:26:02'),(28,'Sala criada: Sala 8ghg79','2026-05-30 16:32:37'),(29,'Sala criada: Sala sdevca','2026-05-30 17:02:10');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens` (
  `id_mensagem` int NOT NULL AUTO_INCREMENT,
  `texto` text,
  `data_envio` datetime DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_sala` int DEFAULT NULL,
  `usuarios_id_usuario` int NOT NULL,
  `salas_id_sala` int NOT NULL,
  PRIMARY KEY (`id_mensagem`,`usuarios_id_usuario`,`salas_id_sala`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_sala` (`id_sala`),
  KEY `fk_mensagens_usuarios1_idx` (`usuarios_id_usuario`),
  KEY `fk_mensagens_salas1_idx` (`salas_id_sala`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_notificacao_mensagem` AFTER INSERT ON `mensagens` FOR EACH ROW BEGIN
    -- Cria notificação quando uma mensagem é enviada
    INSERT INTO notificacoes (mensagem, id_usuario)
    VALUES ('Você recebeu uma nova mensagem', NEW.id_usuario);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `notificacoes`
--

DROP TABLE IF EXISTS `notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacoes` (
  `id_notificacao` int NOT NULL AUTO_INCREMENT,
  `mensagem` text,
  `id_usuario` int DEFAULT NULL,
  `lida` tinyint(1) DEFAULT '0',
  `usuarios_id_usuario` int NOT NULL,
  PRIMARY KEY (`id_notificacao`,`usuarios_id_usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_notificacoes_usuarios1_idx` (`usuarios_id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacoes`
--

LOCK TABLES `notificacoes` WRITE;
/*!40000 ALTER TABLE `notificacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `usuarios_id_usuario` int NOT NULL,
  `salas_id_sala` int NOT NULL,
  `id_participante` int NOT NULL,
  `data_entrada` datetime DEFAULT NULL,
  PRIMARY KEY (`usuarios_id_usuario`,`salas_id_sala`,`id_participante`),
  KEY `fk_usuarios_has_salas_salas1_idx` (`salas_id_sala`),
  KEY `fk_usuarios_has_salas_usuarios_idx` (`usuarios_id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunioes`
--

DROP TABLE IF EXISTS `reunioes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reunioes` (
  `id_reuniao` int NOT NULL AUTO_INCREMENT,
  `id_sala` int DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `salas_id_sala` int NOT NULL,
  PRIMARY KEY (`id_reuniao`,`salas_id_sala`),
  KEY `id_sala` (`id_sala`),
  KEY `fk_reunioes_salas1_idx` (`salas_id_sala`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunioes`
--

LOCK TABLES `reunioes` WRITE;
/*!40000 ALTER TABLE `reunioes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reunioes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `id_sala` int NOT NULL AUTO_INCREMENT,
  `nome_sala` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `id_criador` int DEFAULT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `id_criador` (`id_criador`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (2,'nexy','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/yq04ir',3),(3,'Sala ect3rl','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/ect3rl',3),(4,'Sala xrkvfs','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/xrkvfs',3),(5,'Sala Teste','http://localhost:5000/meeting/teste',1),(8,'Sala 2bkoq0','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/2bkoq0',1),(9,'Sala zfcvbp','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/zfcvbp',6),(10,'Sala lwz3dz','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/lwz3dz',6),(11,'Sala s49uiz','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/s49uiz',2),(12,'Sala g71ehu','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/g71ehu',1),(13,'Sala mzyayu','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/mzyayu',1),(14,'Sala 8xd71q','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/8xd71q',1),(15,'Sala f54prb','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/f54prb',2),(16,'Sala r4zcck','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/r4zcck',1),(17,'Sala 889etb','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/889etb',1),(18,'Sala ec5vnp','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/ec5vnp',1),(19,'Sala 8ghg79','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/8ghg79',1),(20,'Sala sdevca','http://intradermal-nonextensive-deedra.ngrok-free.dev/meeting/sdevca',1);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validar_sala` BEFORE INSERT ON `salas` FOR EACH ROW BEGIN
    -- Impede criar sala sem nome
    IF NEW.nome_sala IS NULL OR NEW.nome_sala = '' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nome da sala não pode ser vazio';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `data_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `tipo_usuario` enum('admin','usuario') DEFAULT 'usuario',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'carlos','eduardo.carlo0610@gmail.com','pbkdf2:sha256:1000000$9K3SacL7NFC70Arn$561c27877ea88b3ff173fb8aa45712d26a7dafc3c6ec1f0c228f04283a9ce3fc','2026-04-29 19:28:46','admin'),(2,'Carlos doutor','carlosmanoeldoutor@gmail.com','pbkdf2:sha256:1000000$HLKSqtfbUTgxmHhU$bf8a053389c89bb51259eabdb2ec4f9be4d4ac5d091aef8e49c4a009c6cbaf66','2026-04-29 19:31:56','usuario'),(3,'carlos','eduardom10.dev@gmail.com','pbkdf2:sha256:1000000$kbwjtRGWDNy3jSg8$33f25fc98dc0f72059dfa91dc674433d3e5c08455376c1fc8561b2e323822259','2026-05-12 17:20:30','usuario'),(4,'carlos ADM','carlos.admin@nexy.com','pbkdf2:sha256:1000000$AQhBo2hllB8EFypK$a5b3bd5f12701033bdb5854b5e3559563992e9aeb3bc8ef39929c7862b5962d0','2026-05-16 11:14:12','admin'),(5,'dudu','duda@gmail.com','pbkdf2:sha256:1000000$5G1lUHPwtuChug3I$f845067d7bccc69a903d443dba68df6cd48d3f8e4c8330e8b012823f46f609bb','2026-05-18 20:41:25','usuario'),(6,'Jonas','jonas@email.com','pbkdf2:sha256:1000000$QUVl0xirA98CkiBi$37a6bb5a1e764627a03aecdbdca4309a7ce55382f5b0b89070422ab074d6f29b','2026-05-21 19:45:51','admin'),(7,'Eduardo Mendonca','edrmendonca5541@gmail.com','pbkdf2:sha256:1000000$PIFBAfATcZeiTf4b$390546e9eea485811a215ab224c2211a0da95276e83e622047b13047380455c3','2026-05-30 16:11:27','usuario');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_usuario` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    
    INSERT INTO logs (acao)
    VALUES (CONCAT('Novo usuário criado: ', NEW.nome));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'nexy'
--

--
-- Dumping routines for database 'nexy'
--
/*!50003 DROP PROCEDURE IF EXISTS `criar_sala_com_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `criar_sala_com_log`(
    IN p_nome_sala VARCHAR(100),
    IN p_link VARCHAR(255),
    IN p_id_criador INT
)
BEGIN

    START TRANSACTION;

    INSERT INTO salas (
        nome_sala,
        link,
        id_criador
    )
    VALUES (
        p_nome_sala,
        p_link,
        p_id_criador
    );

    INSERT INTO logs (acao)
    VALUES (
        CONCAT('Sala criada: ', p_nome_sala)
    );

    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `relatorio_reunioes_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `relatorio_reunioes_usuario`()
BEGIN
    SELECT 
        u.nome,
        u.email,
        COUNT(r.id_reuniao) AS total_reunioes,
        COUNT(m.id_mensagem) AS total_mensagens
    FROM usuarios u
    LEFT JOIN mensagens m 
        ON u.id_usuario = m.id_usuario
    LEFT JOIN reunioes r 
        ON r.id_sala = m.id_sala
    GROUP BY u.id_usuario
    ORDER BY total_mensagens DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-30 18:13:56
