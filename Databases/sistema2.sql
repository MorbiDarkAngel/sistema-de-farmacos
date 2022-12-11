DROP TABLE IF EXISTS `classe`;
CREATE TABLE `classe` (
  `id_classe` int(3) NOT NULL,
  `nome_classe` varchar(45) DEFAULT NULL,
  `nome_medicamento` varchar(45) DEFAULT NULL,
  `interacao_com` varchar(300) DEFAULT NULL,
  `tipo_interacao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_classe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

DROP TABLE IF EXISTS `classe2`;
CREATE TABLE `classe2` (
  `id_classe2` int(4) NOT NULL,
  `nome_classe2` varchar(45) DEFAULT NULL,
  `nome_comercial` varchar(45) DEFAULT NULL,
  `para_que_serve` varchar(300) DEFAULT NULL,
  `como_usar` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_classe2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `classe2` VALUES 

(0,'METILPREDNISOLONA','Advantam','Dermatites e dermatoses','Aplicar 1 camada fina nas regiões afetadas, 1 vez ao dia, durante 4 a 12 semanas'),
(1,'METILPREDNISOLONA','Advantam', 'Creme  Dermatites e dermatoses', 'Aplicar 1 camada fina nas regiões afetadas, 1 vez ao dia, durante 2 semanas'),
(3,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Doenças hematológicas','Via injetável, posologia individualizada pra cada paciente'),
(4,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Artrite reumatóide','Via injetável, posologia individualizada pra cada paciente'),
(5,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Doenças autoimunes','Via injetável, posologia individualizada pra cada paciente'),
(6,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Imunossupressão','Via injetável, posologia individualizada pra cada paciente'),
(7,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Choque','Via injetável, posologia individualizada pra cada paciente'),
(8,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Oftalmopatias','Via injetável, posologia individualizada pra cada paciente'),
(9,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Lúpus','Via injetável, posologia individualizada pra cada paciente'),
(10,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Insuficiencia suprarrenal','Via injetável, posologia individualizada pra cada paciente'),
(11,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Neoplasias','Via injetável, posologia individualizada pra cada paciente'),
(12,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Inflamações em gerla','Via injetável, posologia individualizada pra cada paciente'),
(12,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Reumatismos em Gersl','Via injetável, posologia individualizada pra cada paciente'),
(13,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Edema cerebral','Via injetável, posologia individualizada pra cada paciente'),
(14,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Alergias','Via injetável, posologia individualizada pra cada paciente'),
(15,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Asma brônquica','Via injetável, posologia individualizada pra cada paciente'),
(16,'METILPREDNISOLONA','Depo Medrol Predi-Medrol','Colagenoses em geral','Via injetável, posologia individualizada pra cada paciente'),
(17,'METILPREDNISOLONA','Unimedrol solupren','Corticoterapia','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(18,'METILPREDNISOLONA','Unimedrol solupren','Reumatismo em Geral','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(19,'METILPREDNISOLONA','Unimedrol solupren','Colagenoses em geral','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(20,'METILPREDNISOLONA','Unimedrol solupren','Choque','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(21,'METILPREDNISOLONA','Unimedrol solupren','Asma brônquica','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(22,'METILPREDNISOLONA', 'Unimedrol solupren','Artrite reumatóide','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(23,'METILPREDNISOLONA','Unimedrol solupren','Alergia','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(24,'METILPREDNISOLONA','Unimedrol solupren','Lúpus','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(25,'METILPREDNISOLONA','Unimedrol solupren','Doenças autoimunes','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(26,'METILPREDNISOLONA','Unimedrol solupren','Neoplasias','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(27,'METILPREDNISOLONA','Unimedrol solupren','Corticoterapia','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(28,'METILPREDNISOLONA','Unimedrol solupren','Edema cerebral','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),
(29,'METILPREDNISOLONA','Unimedrol solupren','Insuficiência suprarrenal (Doença de Addison)','Frasco de 125mg e 500 mg Via intramuscular, posologia individualizada de cada paciente.'),

/*BECLOMETASONA*/
(30,'BECLOMETASONA','Alerfin','Rinite',' via nasal, aplicar 2 jatos, em cada narina, 2 vezes ao dia'),
(31,'BECLOMETASONA','Clenil HFA','Asma brônquica','Via inalatória, usar 2 doses, 2 vezes ao dia'),
(32,'BECLOMETASONA','Blecort','Corticoterapia','Via inalatória, usar 2 doses, 2 vezes ao dia'),
(33,'BECLOMETASONA','Clenil Nasal Aquoso','Rinite','Via nasal, aplicar 1 a 2 doses, 2 vezes ao dia'),
(34,'BECLOMETASONA','Clenil Pulvinal','Asma brônquica','Via inalatória. Adultos: usar 1 dose, 2 a 4 vezes ao dia'),
(35,'BECLOMETASONA','Clenil Pulvinal','Corticoterapia','Via inalatória. Crianças: usar 1 dose, 2 vezes ao dia'),
(36,'BECLOMETASONA','Blecosol','Rinite','Via nasal, uso adulto e pediátrico a partir de 6  anos'),
(37,'BECLOMETASONA','Fostair Aerosol','Asma Brônica','Recuperando dados. Aguarde alguns segundos e tente cortar ou copiar novamente.'),
(38,'BECLOMETASONA','Clenil Compositum HFA','Asma brônquica / Doença pulmonar obstrutiva crônica ','Via inalatória uso adulto e pediátrico a partir de  6 anos
Adultos: usae 2 doses, 4 ou 6 vezes ao dia
Crianças: usar 1 a 2 doses, 2 a 4 vezes ao dia'),
(39,'BECLOMETASONA','Areocort S','Asma brônquica / Doença pulmonar obstrutiva crônica','Via inalatória uso adulto e pediátrico a partir de  6 anos
Adultos: usae 2 doses, 4 ou 6 vezes ao dia
Crianças: usar 1 a 2 doses, 2 a 4 vezes ao dia'),
(40,'BECLOMETASONA','Fostair DPI','Asma brônquica / Doença pulmonar obstrutiva crônica','Via inalatória, usar 1 a 2 doses, 2 vezes ao dia' ),
(41,'BECLOMETASONA','Clenil A','Asma brônquica','Via inalatória, adultos usar 1 flaconete,1 ou 2 vezes ao dia.'),
(42,'BECLOMETASONA','Clenil A','Rinite','Crianças usar 0,5 flaconete, 1 ou 2 vezes ao dia'),
(42,'BECLOMETASONA','Miflasona','Rinite','Via inalatória, usar 1 cápsula , 2 vezes ao dia'),
(43,'BECLOMETASONA','Aerotide','Asma brônquica','Via inalatória, adultos 2 doses, 3 ou 4 vezes ao dia'),
(43,'BECLOMETASONA','Aerotide','Doença pulmonar obstrutiva crônica ','Crianças a partir de 12 anos 2,3 ou 4 vezes ao diaA'),
(44,'BECLOMETASONA','Trimbow','Doença pulmonar obstrutiva crônica ','Via inalatória, inalar 2 doses, de 12 em 12 horas, uso contínuo'),

/*TRIANCINOLONA*/
(45,'TRIANCINOLONA','Triancilonolona acetonilda+ sulfato de neomicina+gramicidina+ nistatina pomada','Doença pulmonar obstrutiva crônica ','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(46,'TRIANCINOLONA','MUD','Dermatites e dermsatoses, Infeccções ou inflamações na pele e mucosas, micoses superficiais','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(47,'TRIANCINOLONA','Oncibel','Dermatites e dermsatoses, Infeccções ou inflamações na pele e mucosas, micoses superficiais','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(48,'TRIANCINOLONA','Omcilon-Am','Dermatites e dermsatoses, Infeccções ou inflamações na pele e mucosas, micoses superficiais','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(49,'TRIANCINOLONA','Neolon D','Dermatites e dermsatoses, Infeccções ou inflamações na pele e mucosas, micoses superficiais','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(50,'TRIANCINOLONA','Oncileg','Dermatites e dermsatoses, Infeccções ou inflamações na pele e mucosas, micoses superficiais','Aplicar uma camada fina sobre a área afetada, 2 a 3 vezes ao dia'),
(51,'TRIANCINOLONA','Nasacort','Rinite','Via nasal, uso a dulto e pediátrico acima de 2 anos
Aplicar 1 a 2 borrifadas, em cada narina, 1 vez ao dia'),
(52,'TRIANCINOLONA','AlleNasal','Doença pulmonar obstrutiva crônica ','Via nasal, uso a dulto e pediátrico acima de 2 anos
Aplicar 1 a 2 borrifadas, em cada narina, 1 vez ao dia'),
(53,'TRIANCINOLONA','Omcilon -A-Orabase','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(54,'TRIANCINOLONA','Oralsept','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(55,'TRIANCINOLONA','Colujet','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(56,'TRIANCINOLONA','Oncileg-A','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(57,'TRIANCINOLONA','Coliaft','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(58,'TRIANCINOLONA','Oncicrem-A','lesões ulcerativas orais lesões inflamatórias orais','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(59,'TRIANCINOLONA','MUD oral','lesões ulcerativas orais lesões inflamatórias orais ','Aplicar 1 camada, sem esfregar sobre a lesão até que desenvolva uma película fina'),
(60,'TRIANCINOLONA','Airclin','Rinite','Via nasal, uso adulto e pediátrico acima de 4 anos
Aplicar 2 doses, em cada narina, 1 vez ao dia'),
(61,'TRIANCINOLONA','Ophtaac 40','Infeccções ou inflamções oculares', '-solução ocular de 20 mg Via intravítrea, aplicar 0,1 ml
Solução ocular de 20 mg  Via subtenoniana, aplicar 1 ml
Solução ocular de 40 mg  Via subtenoniana, aplicar 1 ml'),
(62,'TRIANCINOLONA','Triancil','Bursite','Via intra-articular, grandes articulações aplicar 10 a 20 mg, a cada 3 ou 4 semanas, pequenas juntas: aplicar 2 a 6 mg, a cada 3 ou 4 semanas'),
(63,'TRIANCINOLONA','Triancil','Osteoartite','Via intra-articular, grandes articulações aplicar 10 a 20 mg, a cada 3 ou 4 semanas, pequenas juntas: aplicar 2 a 6 mg, a cada 3 ou 4 semanas'),
(64,'TRIANCINOLONA','Triancil','Artrite reumatóide','Via intra-articular, grandes articulações aplicar 10 a 20 mg, a cada 3 ou 4 semanas, pequenas juntas: aplicar 2 a 6 mg, a cada 3 ou 4 semanas'),
(65,'TRIANCINOLONA','Triancil','Artrite gotosa aguda','Via intra-articular, grandes articulações aplicar 10 a 20 mg, a cada 3 ou 4 semanas, pequenas juntas: aplicar 2 a 6 mg, a cada 3 ou 4 semanas'),

/*DEXAMETASONA*/
(66,'DEXAMETASONA','Decadron Elixir','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(67,'DEXAMETASONA','Dexaden','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(68,'DEXAMETASONA','Dexason Elixir','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(69,'DEXAMETASONA','Koidexa','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(70,'DEXAMETASONA','Acetazona Elixir','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(71,'DEXAMETASONA','Dexaglós','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(72,'DEXAMETASONA','Neodex Elixir','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(73,'DEXAMETASONA','Bexeton','Inflamações em geral, Reumatismos em geral, Artrite reumatóide','Tomar 0,75 a 1,5 mg 1x ao dia'),
(74,'DEXAMETASONA','Decadron Comprimido','Choque','Tomar 0,75 a 15 mg ao dia'),
(75,'DEXAMETASONA','Decadron Comprimido','Oftalmopatias','Tomar 0,75 a 15 mg ao dia'),
(76,'DEXAMETASONA','Decadron Comprimido','Lúpus''Tomar 0,75 a 15 mg ao dia'),
(77,'DEXAMETASONA','Decadron Comprimido','Insuficiência suprarrenal (doença de Addison)','Tomar 0,75 a 15 mg ao dia'),
(78,'DEXAMETASONA','Decadron Comprimido','Imunossupressão','Tomar 0,75 a 15 mg ao dia'),
(79,'DEXAMETASONA','Decadron Comprimido','Asma bônquica','Tomar 0,75 a 15 mg ao dia'),
(80,'DEXAMETASONA','Decadron Comprimido','Edema cerebral','Tomar 0,75 a 15 mg ao dia'),
(81,'DEXAMETASONA','Decadron Comprimido','Alergias','Tomar 0,75 a 15 mg ao dia'),
(82,'DEXAMETASONA','Decadron Comprimido','Doenças autoimunes','Tomar 0,75 a 15 mg ao dia'),
(83,'DEXAMETASONA','Decadron Comprimido','Inflamações em geral','Tomar 0,75 a 15 mg ao dia'),
(84,'DEXAMETASONA','Decadron Comprimido','Reumatismos em geral','Tomar 0,75 a 15 mg ao dia'),
(85,'DEXAMETASONA','Decadron Comprimido','Artrite reumatóide','Tomar 0,75 a 15 mg ao dia'),
(86,'DEXAMETASONA','Maxidex','Infecções ou inflamações oculares','frasco gotejador 5 ml, pingar 1 a 2 gotas, no saco conjuntival, de hora em hora.'),
(87,'DEXAMETASONA','Dexanom','Infecções ou inflamações oculares','Bisnaga 3,5g. Aplicarn2 cm, da pomada no saco conjuntival, 4 vezes ao dia.'),
(88,'DEXAMETASONA','Tobradex suspensão','Corticoterapia tópica','Uso adulto ou pediátrico acima de 2 anos
Pingar 1 a 2 gotas, a cada 4 a 6 horas'),
(89,'DEXAMETASONA','Tobracin-D','Uso adulto ou pediátrico acima de 2 anos
Pingar 1 a 2 gotas, a cada 4 a 6 horas'),
(90,'DEXAMETASONA','Tobracort suspensão','Infecções ou inflamações oculares','Uso adulto ou pediátrico acima de 2 anos
Pingar 1 a 2 gotas, a cada 4 a 6 horas'),
(90,'DEXAMETASONA','Tobracort pomada','Corticoterapia tópica','Uso adulto e pediátrico acima de 2 anos
Aplicar 1,5 cm, da pomada no saco conjuntival, 3 a 4 vezes ao dia.'),
(91,'DEXAMETASONA','Tobradex Pomada','Infecções ou inflamações oculares','Uso adulto e pediátrico acima de 2 anos
Aplicar 1,5 cm, da pomada no saco conjuntival, 3 a 4 vezes ao dia.'),

(92,'DEXAMETASONA','Dexason Creme','Dermatite atópica','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(93,'DEXAMETASONA','Dexagreen','Otite externa','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(94,'DEXAMETASONA','Dexametrat','Queimaduras solares','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(95,'DEXAMETASONA','Dexaden Creme','Pruridos (coceiras)','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(96,'DEXAMETASONA','Dexadermil','Picadas de insetos','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(97,'DEXAMETASONA','Cortitop','Dermatites e dermatoses ','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(98,'DEXAMETASONA','Acetazona Creme','Dermatites e dermatoses ','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(99,'DEXAMETASONA','Metadex','Deramtite seborréica do couro cabeludo','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(100,'DEXAMETASONA','Cortidex','Deramtite seborréica do couro cabeludo','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(101,'DEXAMETASONA','Dexamex','Deramtite seborréica do couro cabeludo','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),
(102,'DEXAMETASONA','Cetadex','Deramtite seborréica do couro cabeludo','Aplicar 1 camada no local afetado, 2 a 3 vezes ao dia'),


(103,'DEXAMETASONA','Cilodex suspensão','Conjutivites','Pingar 1 a 2 gotas, de 4 em 4 horas, durante 7 dias.'),
(104,'DEXAMETASONA','Maxiflox-D','Infecções ou inflamações oculares','Pingar 1 a 2 gotas, de 4 em 4 horas, durante 7 dias.'),

(105,'DEXAMETASONA','Baycuten N','Micoses superficiais','Aplicar 1 camada, 2 vezes ao dia, de manhã e à noite, durante 8 a 10 dias.'),
(106,'DEXAMETASONA','Baycuten N','Dermatites e dermatoses ','Aplicar 1 camada, 2 vezes ao dia, de manhã e à noite, durante 8 a 10 dias.'),
(107,'DEXAMETASONA','Baycuten N','Dermatomicoses','Aplicar 1 camada, 2 vezes ao dia, de manhã e à noite, durante 8 a 10 dias.'),
(108,'DEXAMETASONA','Baycuten N','Eczemas','Aplicar 1 camada, 2 vezes ao dia, de manhã e à noite, durante 8 a 10 dias.'),

(109,'DEXAMETASONA','Dexa-Citoneurin NFF','Neurites e polineurites',' injeção com os conteúdos das ampolas I e II, a cada 2 ou 3 dias.'),
(110,'DEXAMETASONA','Dexalgen NF','Neuralgias',' injeção com os conteúdos das ampolas I e II, a cada 2 ou 3 dias.'),
(111,'DEXAMETASONA','Maxitrol pomada','Infecções ou inflamações oculares','Aplicar 1 a 1,5 cm, no saco conjuntival, 3 a 4 vezes ao dia.'),
(112,'DEXAMETASONA','Nepodex','Infecções ou inflamações oculares','Aplicar 1 a 1,5 cm, no saco conjuntival, 3 a 4 vezes ao dia.'),

(113,'DEXAMETASONA','Maxitrol Suspensão','Infecções ou inflamações oculares','Pingar 1 a 2 gotas, de 1 em 1 hora, em casos graves, diminuindo-se gradativamente a dosagem até
a interrupção quando se notar melhora da inflamação. Emacasos leves podem ser utilizadas de 4 a 6
vezes por dia').
(114,'DEXAMETASONA','Nepodex','Infecções ou inflamações oculares','Pingar 1 a 2 gotas, de 1 em 1 hora, em casos graves, diminuindo-se gradativamente a dosagem até
a interrupção quando se notar melhora da inflamação. Emacasos leves podem ser utilizadas de 4 a 6
vezes por dia'),
(115,'DEXAMETASONA','Maxinom','Infecções ou inflamações oculares','Pingar 1 a 2 gotas, de 1 em 1 hora, em casos graves, diminuindo-se gradativamente a dosagem até
a interrupção quando se notar melhora da inflamação. Emacasos leves podem ser utilizadas de 4 a 6
vezes por dia'),

(116,'DEXAMETASONA','Vigadexa','Infecções ou inflamações oculares','Pingar 1 gota, no olho afetado ,4 vezes ao dia.'),
(117,'DEXAMETASONA','Facoba','Infecções ou inflamações oculares','Pingar 1 gota, no olho afetado ,4 vezes ao dia.'),
(118,'DEXAMETASONA','Decadron Colírio','Infecções ou inflamações oculares','Via ocular, pingar 1 a 2 gotas, npo saco conjuntival, de 1 em 1 hora, durante o dia e a cada 2 horas durante a noite.'),
(119,'DEXAMETASONA','Neocortin','Infecções ou inflamações de ouvido','Via auricular, pingar 3 a 4 gotas, 2 vezes ao dia. Pode ser aplicada 3 vezes ao dia.'),
(120,'DEXAMETASONA','Dexavison','Infecções ou inflamações de ouvido','Via auricular, pingar 3 a 4 gotas, 2 vezes ao dia. Pode ser aplicada 3 vezes ao dia.'),
(121,'DEXAMETASONA','Neodex N','Infecções ou inflamações da pele e mucosas','Aplicar 1 camada, 2 a 4 vezes ao dia.'),
(122,'DEXAMETASONA','Neodex N','Dermatites e dermatoses','Aplicar 1 camada, 2 a 4 vezes ao dia.'),

(123,'DEXAMETASONA','Cylocort Solução','Infecções ou inflamações oculares, Conjuntivites','Pingar 1 a 2 gotas no olho afetado, de 4 em 4horas, durante 7 dias.'),
(124,'DEXAMETASONA','Biamotil D','Infecções ou inflamações oculares, Conjuntivites','Pingar 1 a 2 gotas no olho afetado, de 4 em 4horas, durante 7 dias.'),
(125,'DEXAMETASONA','Bialudex','Infecções ou inflamações oculares, Conjuntivites','Pingar 1 a 2 gotas no olho afetado, de 4 em 4horas, durante 7 dias.'),
(126,'DEXAMETASONA','Ciprin Dexa','Infecções ou inflamações oculares, Conjuntivites','Pingar 1 a 2 gotas no olho afetado, de 4 em 4horas, durante 7 dias.'),

(127,'DEXAMETASONA','Decadron Injetável 4 mg/ml','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(128,'DEXAMETASONA','Unidexa','Corticoterapias','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(129,'DEXAMETASONA','Unidexa','Oftalmopatias','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(130,'DEXAMETASONA','Unidexa','Lúpus','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(131,'DEXAMETASONA','Unidexa','Insuficiência suprarrenal (doença de Addison)','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(132,'DEXAMETASONA','Unidexa','Imunossupressão','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(133,'DEXAMETASONA','Unidexa','Asma bônquica','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(134,'DEXAMETASONA','Unidexa','Edema em geral','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(135,'DEXAMETASONA','Unidexa','Alergias','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(136,'DEXAMETASONA','Unidexa','Doenças hematológicas','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(137,'DEXAMETASONA','Unidexa','Inflamações em geral','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(138,'DEXAMETASONA','Unidexa','Reumatismos em geral','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(139,'DEXAMETASONA','Unidexa','Artrite reumatóide','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(140,'DEXAMETASONA','Unidexa','Colagenoses em geral','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(141,'DEXAMETASONA','Unidexa','Doenças dermatológicas','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(142,'DEXAMETASONA','Unidexa','Neoplasias (leucemias, linfomas)','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente'),
(143,'DEXAMETASONA','Unidexa','Disturbios respiratórios','Imunossupressão','Solução injetável com 4 MG/ML via intramuscular posologia individualizada de cada paciente');


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
