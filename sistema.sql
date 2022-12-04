-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistema
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `id_classe` int(3) NOT NULL,
  `nome_classe` varchar(45) DEFAULT NULL,
  `nome_medicamento` varchar(45) DEFAULT NULL,
  `interacao_com` varchar(300) DEFAULT NULL,
  `tipo_interacao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_classe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (0,'','Dipirona monossódica','Anticoncepcional','Positiva'),(1,'Antitireoidianos','Levotiroxina','Antidiabéticos','A Levotiroxina acarreta no aumento da glicemia'),(2,'Antitireoidianos','Levotiroxina','Insulina','A Levotiroxina acarreta no aumento da glicemia'),(3,'Antitireoidianos','Levotiroxina','Medicamentos indutores enzi','Reduz concentrações séricas plasmáticas des hormônios tireoideanos'),(4,'Antitireoidianos','Levotiroxina','Inibidores da protease','Redução do efeito terapêutico da Levotiroxina'),(5,'Antitireoidianos','Levotiroxina','Amiodarona','Reduz as concentrações séricas de T3'),(6,'Antitireoidianos','Levotiroxina','Glicocorticoides','Inibe a conversão de T4 para T3'),(7,'Antitireoidianos','Levotiroxina','Propiltiouracil','Inibe a conversão de T4 para T3'),(8,'Antitireoidianos','Levotiroxina','Beta-simpatolíticos','Inibe a conversão de T4 para T3'),(9,'Antitireoidianos','Levotiroxina','Inibidores da tirosina quin','Reduzem a eficácia da Levotiroxina'),(10,'Antitireoidianos','Levotiroxina','Estógenos','Aumenta a ligação da tiroxina, e como consequênte levando a erro de tratamentos e diagnósticos'),(11,'Antitireoidianos','Levotiroxina','Salicilatos','Pode inibir a ligação de T4 e T3 à Globulina Ligadora de Tiroxina (TBG)'),(12,'Antitireoidianos','Levotiroxina','Furosemida','Promove o aumento transitório de T4 livre e redução do T4 total'),(13,'Antitireoidianos','Levotiroxina','Sulfato ferroso','Reduz a absorção da Levotiroxina'),(14,'Antitireoidianos','Levotiroxina','Colestiramina','Reduz a absorção da Levotiroxina'),(15,'Antitireoidianos','Liotironina','Antidibéticos','Acarreta no aumento da glicemia'),(16,'Antitireoidianos','Liotironina','Anticoagulantes','Potencializa o efeito do anticoagulante'),(17,'Antitireoidianos','Metimazol','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),(18,'Antitireoidianos','Liotironina','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),(19,'Antitireoidianos','Liotironina','Beta-bloqueadores','Reduz os efeitos dos betabloqueadores'),(20,'Antitireoidianos','Liotironina','Colestiramina','Reduz a absorção da Liotironina'),(21,'Antitireoidianos','Metimazol','Anticoagulantes','Potencializa o efeito do anticoagulante'),(22,'Antitireoidianos','Metimazol','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),(23,'Antitireoidianos','Metimazol','Bloqueadores beta-adrenérgi','Aumento do clearence dos betabloqueadores '),(24,'Antitireoidianos','Metimazol','Teofilina','O clearence da Teofilina pode diminuir'),(25,'Antitireoidianos','Propiltiouracila','Anticoagulantes','Potencializa a ação dos anticoagulantes'),(26,'Antitireoidianos','Propiltiouracila','Amiodarona','Diminui a resposta da Propiltiouracila'),(27,'Antitireoidianos','Propiltiouracila','Glicerol Iodado','Diminui a resposta da Propiltiouracila'),(28,'Antitireoidianos','Propiltiouracila','Iodedo de Potássio','Diminui a resposta da Propiltiouracila'),(29,'Antitireoidianos','Propiltiouracila','Medicamentos mielodepressor','Aumenta os riscos de hemorragias'),(30,'Antitireoidianos','Propiltiouracila','Medicamentos hepatóxicos','Aumenta os riscos de hemorragias'),(31, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe', 'Varfarina', '13% de aumento no tempo de protrombina.'), 
(32, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe', 'Metotrexato', 'Etoricoxibe na dose de 120 mg aumentou a concentração plasmática do metotrexato em 28% (conforme avaliado pela AUC) e reduziu a depuração renal do metotrexato em 13%.'),
(33, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe', 'Rifampicina', 'Reduz em 65% a área sob a curva (AUC) da concentração plasmática do etoricoxibe.'),
(34, 'Anti-inflamatórios não esteroides (AINEs)','Atroveran DIP', 'Ciclosporinas','Redução dos níveis de ciclosporina no sangue.'),
(35, 'Anti-inflamatórios não esteroides (AINEs)','Atroveran DIP', 'Metotrexato','Aumento da toxicidade sanguínea do metotrexato particularmente em pacientes idosos. (colocar)'),
(36, 'Anti-inflamatórios não esteroides (AINEs)','Atroveran DIP', 'Ácido acetilsalicílico','edução do efeito do ácido acetilsalicílico na agregação plaquetária'),
(37, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Anticoagulantes','O Ácido Mefenâmico desloca a varfarina dos sítios de ligação à proteína e pode aumentar a resposta aos anticoagulantes orais. '),
(38, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico','Anti-hipertensivos','O ácido mefenâmico diminui a eficácia desses medicamentos.'),
(39, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Corticosteroides','Aumento do risco de ulceração gastrintestinal ou sangramento'),
(40, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Ciclosporina','Devido aos efeitos nas prostaglandinas renais, os AINEs como o ácidomefenâmico, podem aumentar o risco de nefrotoxicidade com a ciclosporina'),
(41, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Agentes hipoglicemiantes','Alterações no efeito dos agentes hipoglicemiantes orais na presença de AINEs. '),
(42, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Lítio','A interação ocorrida com os AINEs com este fármaco é por eles inibirem a síntese de prostaglandinas renais. Pode verificar-se uma maior reabsorção tubular do lítio, e ocorrência de níveis sanguíneos tóxicos. '),
(43, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Metotrexato','Aumento dos níveis plasmáticos de metotrexato'),
(44, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Cetorolaco','Aumento do risco de sangramento gastrointestinal'),
(45, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Ginkgo biloba','Aumento do risco de sangramento'),
(46, 'Anti-inflamatórios não esteroides (AINEs)','Ácido Mefenâmico', 'Inibidores seletivos da recaptação de serotonina ','Aumentam o risco de sangramento gastrointestinal'), 
(47, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Sódico', 'Lítio','A interação ocorrida com os AINEs com este fármaco é por eles inibirem a síntese de prostaglandinas renais. Pode verificar-se uma maior reabsorção tubular do lítio, e ocorrência de níveis sanguíneos tóxicos.'),
(48, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Sódico', 'Digoxina', 'elevação das concentrações plasmáticas de digoxina.'),
(49, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Sódico', 'Diuréticos ou anti-hipertensivos','O uso concomitante de diclofenaco com diuréticos ou anti-hipertensivos  pode diminuir o efeito anti-hipertensivo.'),
(50, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Sódico','Medicamentos conhecidos por causar hipercalemia','O tratamento concomitante com diuréticos poupadores de potássio, ciclosporina, tacrolimo ou trimetoprima podem ser associados com o aumento dos níveis séricos de potássio'),
(51, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Potássico','Lítio','A interação ocorrida com os AINEs com este fármaco é por eles inibirem a síntese de prostaglandinas renais. Pode verificar-se uma maior reabsorção tubular do lítio, e ocorrência de níveis sanguíneos tóxicos.'),
(52, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Potássico','Digoxina','  elevação das concentrações plasmáticas de digoxina.'),
(53, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Potássico','Diuréticos ou anti-hipertensivos','O uso concomitante de diclofenaco com diuréticos ou anti-hipertensivos  pode diminuir o efeito anti-hipertensivo.'),                                                                                                                           
(54, 'Anti-inflamatórios não esteroides (AINEs)','Diclofenaco Potássico','Medicamentos conhecidos por causar hipercalemia','O tratamento concomitante com diuréticos poupadores de potássio, ciclosporina, tacrolimo ou trimetoprima podem ser associados com o aumento dos níveis séricos de potássio.'),
(55, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe Diuréticos', 'Inibidores da enzima conversora de angiotensina (ECA) e bloqueadores do receptor de angiotensina II (BRAs): AINEs, incluindo os inibidores seletivos da COX-2','Podem diminuir o efeito anti-hipertensivo dos diuréticos, dos inibidores da ECA e dos BRAs.'),
(56, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe','Lítio','A interação ocorrida com os AINEs com este fármaco é por eles inibirem a síntese de prostaglandinas renais. Pode verificar-se uma maior reabsorção tubular do lítio, e ocorrência de níveis sanguíneos tóxicos.'),
(57, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe','Ácido acetilsalicílico','Aumento da incidência de úlceras ou de outras complicações do trato gastrintestinal em comparação com o uso de Etoricoxibe isoladamente'),
(58, 'Anti-inflamatórios não esteroides (AINEs)','Etoricoxibe','anticoncepcionais orais','Ocorre um aumento na concentração do etinilestradiol que possui em anticoncepcionais orais. ');

/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id_log` int(6) NOT NULL AUTO_INCREMENT,
  `criador_fk` int(11) DEFAULT NULL,
  `acao` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `criador_fk` (`criador_fk`),
  CONSTRAINT `log_ibfk_1` FOREIGN KEY (`criador_fk`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(6) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(99) DEFAULT NULL,
  `senha` varchar(99) DEFAULT NULL,
  `tipo` varchar(9) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Guilherme de Paula','123','ADMIN','guilherme.depaula300@gmail.com','Gui'),(2,'wellington','ADMIN','USER','wthiago.tdg@gmail.com','admin'),(8,'Wellington Thiago Borges Correa','ASD','USER','thiagobmxap@gmail.com','Wellington'),(10,'Wellington Thiago Borges Correa','ASD','USER','thiagobmxap@gmail.com','Wellington'),(11,'Wellington Thiago Borges Correa','ASD','USER','thiagobmxap@gmail.com','Wellington'),(12,'teste','dGVzdGU=','USER','teste','teste'),(13,'criptografada','Y3JpcHRvZ3JhZmFkYQ==','USER','criptografada','criptografada'),(14,'teste2','dGVzdGUy','USER','teste2','teste2'),(15,'teste3','dGVzdGUz','USER','teste3','teste3'),(16,'gui','MTIz','USER','gui@hotmail.com','gui'),(17,'gui1','MTIz','USER','gui1@gmail.com','gui1'),(18,'gui2','MTIz','USER','gui2@gmail.com','gui2'),(19,'henrique','MTIz','USER','henrique@gmail.com','henrique'),(20,'usuario3','MTIz','USER','usuario3@gmail.com','usuario3'),(21,'lucas','MTIz','USER','lucas@lucas.com','lucas'),(22,'admin','YWRtaW4=','ADMIN','admin@admin.com','admin');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03 20:27:04
