/* Base de dados para consulta de interação medicamentosa */

DROP TABLE IF EXISTS `classe`;

CREATE TABLE `classe` (
  `id_classe` int(3) NOT NULL,
  `nome_classe` varchar(27) DEFAULT NULL,
  `nome_medicamento` varchar(27) DEFAULT NULL,
  `interacao_com` varchar(27) DEFAULT NULL,
  `tipo_interacao` varchar(123) DEFAULT NULL,
  PRIMARY KEY (`id_classe`)
) ENGINE=InnoDB  DEFAULT CHARSET= Latin1 COLLATE = latin1_swedish_ci;

INSERT INTO `classe` VALUES

(1,'Antitireoidianos','Levotiroxina','Antidiabéticos','A Levotiroxina acarreta no aumento da glicemia'),
(2,'Antitireoidianos','Levotiroxina','Insulina','A Levotiroxina acarreta no aumento da glicemia'),
(3,'Antitireoidianos','Levotiroxina','Medicamentos indutores enzimaticos','Reduz concentrações séricas plasmáticas des hormônios tireoideanos'),
(4,'Antitireoidianos','Levotiroxina','Inibidores da protease','Redução do efeito terapêutico da Levotiroxina'),
(5,'Antitireoidianos','Levotiroxina','Amiodarona','Reduz as concentrações séricas de T3'),
(6,'Antitireoidianos','Levotiroxina','Glicocorticoides','Inibe a conversão de T4 para T3'),
(7,'Antitireoidianos','Levotiroxina','Propiltiouracil','Inibe a conversão de T4 para T3'),
(8,'Antitireoidianos','Levotiroxina','Beta-simpatolíticos','Inibe a conversão de T4 para T3'),
(9,'Antitireoidianos','Levotiroxina','Inibidores da tirosina quinase','Reduzem a eficácia da Levotiroxina'),
(10,'Antitireoidianos','Levotiroxina','Estógenos','Aumenta a ligação da tiroxina, e como consequênte levando a erro de tratamentos e diagnósticos'),
(11,'Antitireoidianos','Levotiroxina','Salicilatos','Pode inibir a ligação de T4 e T3 à Globulina Ligadora de Tiroxina (TBG)'),
(12,'Antitireoidianos','Levotiroxina','Furosemida','Promove o aumento transitório de T4 livre e redução do T4 total'),
(13,'Antitireoidianos','Levotiroxina','Sulfato ferroso','Reduz a absorção da Levotiroxina'),
(14,'Antitireoidianos','Levotiroxina','Colestiramina','Reduz a absorção da Levotiroxina'),
(15,'Antitireoidianos','Liotironina','Antidibéticos','Acarreta no aumento da glicemia'),
(16,'Antitireoidianos','Liotironina','Anticoagulantes','Potencializa o efeito do anticoagulante'),
(17,'Antitireoidianos','Metimazol','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),
(18,'Antitireoidianos','Liotironina','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),
(19,'Antitireoidianos','Liotironina','Beta-bloqueadores','Reduz os efeitos dos betabloqueadores'),
(20,'Antitireoidianos','Liotironina','Colestiramina','Reduz a absorção da Liotironina'),
(21,'Antitireoidianos','Metimazol','Anticoagulantes','Potencializa o efeito do anticoagulante'),
(22,'Antitireoidianos','Metimazol','Glicosídeos digitálicos','Aumenta os níveis séricos de digitálicos'),
(23,'Antitireoidianos','Metimazol','Bloqueadores beta-adrenérgicos','Aumento do clearence dos betabloqueadores '),
(24,'Antitireoidianos','Metimazol','Teofilina','O clearence da Teofilina pode diminuir'),
(25,'Antitireoidianos','Propiltiouracila','Anticoagulantes','Potencializa a ação dos anticoagulantes'),
(26,'Antitireoidianos','Propiltiouracila','Amiodarona','Diminui a resposta da Propiltiouracila'),
(27,'Antitireoidianos','Propiltiouracila','Glicerol Iodado','Diminui a resposta da Propiltiouracila'),
(28,'Antitireoidianos','Propiltiouracila','Iodedo de Potássio','Diminui a resposta da Propiltiouracila'),
(29,'Antitireoidianos','Propiltiouracila','Medicamentos mielodepressores','Aumenta os riscos de hemorragias'),
(30,'Antitireoidianos','Propiltiouracila','Medicamentos hepatóxicos','Aumenta os riscos de hemorragias');
