-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: custsql-myd02.eigbox.net
-- Tiempo de generación: 12-02-2014 a las 12:13:19
-- Versión del servidor: 5.5.32
-- Versión de PHP: 4.4.9
-- 
-- Base de datos: `prodes_me`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `equipos`
-- 

CREATE TABLE `equipos` (
  `id_equipo` bigint(2) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(100) DEFAULT NULL,
  `escudo` varchar(100) NOT NULL DEFAULT '',
  `torneo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

-- 
-- Volcar la base de datos para la tabla `equipos`
-- 

INSERT INTO `equipos` VALUES (1, 'Godoy Cruz', 'godoy.jpg', '7');
INSERT INTO `equipos` VALUES (2, 'Vélez Sardfield', 'velez.jpg', '7');
INSERT INTO `equipos` VALUES (3, 'Quilmes', 'quilmes.jpg', '7');
INSERT INTO `equipos` VALUES (4, 'Atlético Rafaela', 'rafaela.jpg', '7');
INSERT INTO `equipos` VALUES (5, 'Arsenal', 'arsenal.jpg', '7');
INSERT INTO `equipos` VALUES (6, 'Colón', 'colon.jpg', '7');
INSERT INTO `equipos` VALUES (7, 'All Boys', 'allboy_52.jpg', '7');
INSERT INTO `equipos` VALUES (8, 'Belgrano', 'belgrano_52.jpg', '7');
INSERT INTO `equipos` VALUES (9, 'Tigre', 'tigre.jpg', '7');
INSERT INTO `equipos` VALUES (10, 'Racing', 'racing.jpg', '7');
INSERT INTO `equipos` VALUES (11, 'River Plate', 'river.jpg', '7');
INSERT INTO `equipos` VALUES (12, 'Boca', 'boca.jpg', '7');
INSERT INTO `equipos` VALUES (33, 'Unión', 'union.jpg', '7');
INSERT INTO `equipos` VALUES (34, 'Argentinos Juniors ', 'argentinos.jpg', '7');
INSERT INTO `equipos` VALUES (35, 'Newell’s', 'Newells.jpg', '7');
INSERT INTO `equipos` VALUES (36, 'Estudiantes', 'estudiantes.jpg', '7');
INSERT INTO `equipos` VALUES (37, 'San Lorenzo', 'sanlorenzo.jpg', '7');
INSERT INTO `equipos` VALUES (38, 'Lanús', 'lanus.jpg', '7');
INSERT INTO `equipos` VALUES (39, 'Independiente', 'independiente.jpg', '7');
INSERT INTO `equipos` VALUES (40, 'San Martín de SJ', 'sanmartin.jpg', '7');
INSERT INTO `equipos` VALUES (41, 'Desamparados', 'desamparados.jpg', '2');
INSERT INTO `equipos` VALUES (42, 'Patronato', 'patronato.jpg', '2');
INSERT INTO `equipos` VALUES (43, 'Defensa y Justicia', 'defensayjusticia.jpg', '2');
INSERT INTO `equipos` VALUES (44, 'Rosario Central', 'rosariocentral.jpg', '7');
INSERT INTO `equipos` VALUES (45, 'Gimnasia LP', 'gimnasiaLP.jpg', '7');
INSERT INTO `equipos` VALUES (46, 'Atlético Tucumán', 'tucuman.jpg', '2');
INSERT INTO `equipos` VALUES (47, 'Atlanta', 'atlanta.jpg', '2');
INSERT INTO `equipos` VALUES (48, 'Aldosivi', 'aldosivi.jpg', '2');
INSERT INTO `equipos` VALUES (49, 'River Plate', 'river.jpg', '2');
INSERT INTO `equipos` VALUES (50, 'Chacarita', 'chacarita.jpg', '2');
INSERT INTO `equipos` VALUES (51, 'Instituto', 'instituto.jpg', '2');
INSERT INTO `equipos` VALUES (52, 'Huracán', 'huracan.jpg', '2');
INSERT INTO `equipos` VALUES (53, 'Gimnasia Jujuy', 'gimnasiaJ.jpg', '2');
INSERT INTO `equipos` VALUES (54, 'Ferro', 'ferro.jpg', '2');
INSERT INTO `equipos` VALUES (55, 'Brown Puerto Madryn', 'brownPM.jpg', '2');
INSERT INTO `equipos` VALUES (56, 'Merlo', 'merlo.jpg', '2');
INSERT INTO `equipos` VALUES (57, 'Boca Unidos', 'bocaunidos.jpg', '2');
INSERT INTO `equipos` VALUES (58, 'Quilmes', 'quilmes.jpg', '2');
INSERT INTO `equipos` VALUES (59, 'Almirante Brown', 'brown.jpg', '2');
INSERT INTO `equipos` VALUES (60, 'Independiente (M)', 'independienteM.jpg', '2');
INSERT INTO `equipos` VALUES (61, 'Argentina', 'Argentina.jpg', '4');
INSERT INTO `equipos` VALUES (62, 'Venezuela', 'Venezuela.jpg', '4');
INSERT INTO `equipos` VALUES (63, 'Bolivia', 'Bolivia.jpg', '4');
INSERT INTO `equipos` VALUES (64, 'Colombia', 'Colombia.jpg', '4');
INSERT INTO `equipos` VALUES (65, 'Uruguay', 'Uruguay.jpg', '4');
INSERT INTO `equipos` VALUES (66, 'Paraguay', 'Paraguay.jpg', '4');
INSERT INTO `equipos` VALUES (67, 'Perú', 'Perú.jpg', '4');
INSERT INTO `equipos` VALUES (68, 'Chile', 'Chile.jpg', '4');
INSERT INTO `equipos` VALUES (69, 'Ecuador', 'Ecuador.jpg', '4');
INSERT INTO `equipos` VALUES (70, 'Boca', 'boca.png', '5');
INSERT INTO `equipos` VALUES (71, 'Corinthians', 'Corinthians.png', '5');
INSERT INTO `equipos` VALUES (72, 'Atlético Mineiro', 'Mineiro.png', '5');
INSERT INTO `equipos` VALUES (73, 'San Pablo', 'SanPablo.png', '5');
INSERT INTO `equipos` VALUES (74, 'Ind Santa Fe', 'ISantaFe.png', '5');
INSERT INTO `equipos` VALUES (75, 'Gremio', 'Gremio.png', '5');
INSERT INTO `equipos` VALUES (76, 'Olimpia', 'Olimpia.png', '5');
INSERT INTO `equipos` VALUES (77, 'Tigre', 'tigre.png', '5');
INSERT INTO `equipos` VALUES (78, 'Vélez', 'velez.png', '5');
INSERT INTO `equipos` VALUES (79, 'Newell’s', 'Newells.png', '5');
INSERT INTO `equipos` VALUES (80, 'Nacional', 'Nacional.png', '5');
INSERT INTO `equipos` VALUES (81, 'Garcilaso', 'RealGarcilaso.png', '5');
INSERT INTO `equipos` VALUES (82, 'Palmeiras', 'Palmeiras.png', '5');
INSERT INTO `equipos` VALUES (83, 'Tijuana', 'Tijuana.png', '5');
INSERT INTO `equipos` VALUES (84, 'Fluminense', 'Fluminense.png', '5');
INSERT INTO `equipos` VALUES (85, 'Emelec', 'Emelec.png', '5');
INSERT INTO `equipos` VALUES (86, 'Barcelona', 'Barcelona.png', '6');
INSERT INTO `equipos` VALUES (87, 'Bayern Munich', 'BayernMinich.png', '6');
INSERT INTO `equipos` VALUES (88, 'Real Madrid', 'RealMadrid.png', '6');
INSERT INTO `equipos` VALUES (89, 'Borussia Dortmund', 'BorussiaDortmund.png', '6');
INSERT INTO `equipos` VALUES (90, 'Olimpo', 'olimpo.gif', '7');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `grupos_usuarios`
-- 

CREATE TABLE `grupos_usuarios` (
  `id_grupo` bigint(10) NOT NULL AUTO_INCREMENT,
  `grupo_padre` int(11) NOT NULL,
  `id_usuario` int(10) NOT NULL DEFAULT '0',
  `id_torneo` int(11) NOT NULL,
  `grupo` varchar(100) NOT NULL DEFAULT '',
  `empresa` varchar(100) DEFAULT NULL,
  `logo_empresa` varchar(100) NOT NULL DEFAULT '',
  `email_contacto` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_grupo`),
  KEY `grupo` (`grupo`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Volcar la base de datos para la tabla `grupos_usuarios`
-- 

INSERT INTO `grupos_usuarios` VALUES (1, 0, 1, 1, 'Buenos Aires', '', '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (2, 0, 1, 1, 'Córdoba', '', '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (3, 1, 276, 1, 'Sepyme', NULL, '', 'marcelo_laye@yahoo.com.ar');
INSERT INTO `grupos_usuarios` VALUES (4, 1, 276, 1, 'SL - Cancha', NULL, '', 'marcelo_laye@yahoo.com.ar');
INSERT INTO `grupos_usuarios` VALUES (5, 0, 1, 1, 'Santa Fe', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (6, 0, 1, 1, 'La Rioja', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (7, 0, 1, 1, 'San Juan', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (8, 0, 1, 1, 'Mendoza', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (9, 0, 1, 1, 'Tucumán', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (10, 0, 1, 1, 'San Luis', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (11, 0, 1, 1, 'Jujuy', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (12, 0, 1, 1, 'Salta', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (13, 0, 1, 1, 'Catamarca', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (14, 0, 1, 1, 'Santiago del E', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (15, 0, 1, 1, 'Formosa', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (16, 0, 1, 1, 'Chaco', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (17, 0, 1, 1, 'Entre Ríos', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (18, 0, 1, 1, 'Mosiones', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (19, 0, 1, 1, 'Corrientes', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (20, 0, 1, 1, 'La Pampa', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (21, 0, 1, 1, 'Neuquen', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (22, 0, 1, 1, 'Rio Negro', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (23, 0, 1, 1, 'Chubut', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (24, 0, 1, 1, 'Santa Cruz', NULL, '', 'aledaas@hotmail.com');
INSERT INTO `grupos_usuarios` VALUES (25, 0, 1, 1, 'Tierra Del Fuego', NULL, '', 'aledaas@hotmail.com');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `jugadores`
-- 

CREATE TABLE `jugadores` (
  `id_jugador` bigint(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_equipo` int(10) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jugador`)
) ENGINE=MyISAM AUTO_INCREMENT=738 DEFAULT CHARSET=latin1 AUTO_INCREMENT=738 ;

-- 
-- Volcar la base de datos para la tabla `jugadores`
-- 

INSERT INTO `jugadores` VALUES (1, 'Mariano Andujar', 5, 'A');
INSERT INTO `jugadores` VALUES (2, 'Diego Pozo', 5, 'A');
INSERT INTO `jugadores` VALUES (3, 'Sergio Romero', 5, 'A');
INSERT INTO `jugadores` VALUES (4, 'Nicolas Burdisso', 5, 'DF');
INSERT INTO `jugadores` VALUES (5, 'Ariel Garc', 5, 'DF');
INSERT INTO `jugadores` VALUES (6, 'Gabriel Heinze', 5, 'DF');
INSERT INTO `jugadores` VALUES (7, 'Nicol?s Otamendi', 5, 'DF');
INSERT INTO `jugadores` VALUES (8, 'Clemente Rodriguez', 5, 'DF');
INSERT INTO `jugadores` VALUES (9, 'Walter Samuel', 5, 'DF');
INSERT INTO `jugadores` VALUES (10, 'Mario Bolatti', 5, 'V');
INSERT INTO `jugadores` VALUES (11, 'Mart?n Demichelis ', 5, 'V');
INSERT INTO `jugadores` VALUES (12, '?ngel Di Mar', 5, 'V');
INSERT INTO `jugadores` VALUES (13, 'Jon?s Guti?rrez', 5, 'V');
INSERT INTO `jugadores` VALUES (14, 'Javier Mascherano', 5, 'V');
INSERT INTO `jugadores` VALUES (15, 'Javier Pastore', 5, 'V');
INSERT INTO `jugadores` VALUES (16, 'Maxi Rodr?guez', 5, 'V');
INSERT INTO `jugadores` VALUES (17, 'Juan Ver?n', 5, 'V');
INSERT INTO `jugadores` VALUES (18, 'Sergio Aguero', 5, 'DEL');
INSERT INTO `jugadores` VALUES (19, 'Diego Milito ', 5, 'DEL');
INSERT INTO `jugadores` VALUES (20, 'Gonzalo Higua', 5, 'DEL');
INSERT INTO `jugadores` VALUES (21, 'Lionel Messi', 5, 'DEL');
INSERT INTO `jugadores` VALUES (22, 'Mart?n Palermo', 5, 'DEL');
INSERT INTO `jugadores` VALUES (23, 'Carlos Tevez', 5, 'DEL');
INSERT INTO `jugadores` VALUES (24, 'Konstantinos Chalkias', 8, 'A');
INSERT INTO `jugadores` VALUES (25, 'Michalis Sifakis', 8, 'A');
INSERT INTO `jugadores` VALUES (26, 'Alexandros Tzorvas', 8, 'A');
INSERT INTO `jugadores` VALUES (27, 'Sotirios Kyrgiakos', 8, 'DF');
INSERT INTO `jugadores` VALUES (28, 'Stilianos Malezas', 8, 'DF');
INSERT INTO `jugadores` VALUES (29, 'Vaggelis Moras', 8, 'DF');
INSERT INTO `jugadores` VALUES (30, 'Avraam Papadopoulos', 8, 'DF');
INSERT INTO `jugadores` VALUES (31, 'Sokratis Papastrathopoulos', 8, 'DF');
INSERT INTO `jugadores` VALUES (32, 'Giourkas Seitaridis', 8, 'DF');
INSERT INTO `jugadores` VALUES (33, 'Nikos Spyropoulos', 8, 'DF');
INSERT INTO `jugadores` VALUES (34, 'Vassilis Torosidis', 8, 'DF');
INSERT INTO `jugadores` VALUES (35, 'Loukas Vintra', 8, 'DF');
INSERT INTO `jugadores` VALUES (36, 'Giorgias Karagounis', 8, 'V');
INSERT INTO `jugadores` VALUES (37, 'Kostas Katsouranis', 8, 'V');
INSERT INTO `jugadores` VALUES (38, 'Sotirios Ninis', 8, 'V');
INSERT INTO `jugadores` VALUES (39, 'Christos Patsatzoglou', 8, 'V');
INSERT INTO `jugadores` VALUES (40, 'Athanassios Prittas', 8, 'V');
INSERT INTO `jugadores` VALUES (41, 'Alexandros Tziolis', 8, 'V');
INSERT INTO `jugadores` VALUES (42, 'Angelos Charisteas', 8, 'DEL');
INSERT INTO `jugadores` VALUES (43, 'Theofanis Gekas', 8, 'DEL');
INSERT INTO `jugadores` VALUES (44, 'Pantelis Kapetanos', 8, 'DEL');
INSERT INTO `jugadores` VALUES (45, 'Dimitrios Salpingidis', 8, 'DEL');
INSERT INTO `jugadores` VALUES (46, 'Georgios Samaras', 8, 'DEL');
INSERT INTO `jugadores` VALUES (47, 'Bamidele Aiyenugba', 6, 'A');
INSERT INTO `jugadores` VALUES (48, 'Austin Ejide', 6, 'A');
INSERT INTO `jugadores` VALUES (49, 'Vincent Enyeama', 6, 'A');
INSERT INTO `jugadores` VALUES (50, 'Ayodele Adeleye', 6, 'DF');
INSERT INTO `jugadores` VALUES (51, 'Rabiu Afolabi', 6, 'DF');
INSERT INTO `jugadores` VALUES (52, 'Uwa Echiejile', 6, 'DF');
INSERT INTO `jugadores` VALUES (53, 'Chidi Odiah', 6, 'DF');
INSERT INTO `jugadores` VALUES (54, 'Danny Shittu', 6, 'DF');
INSERT INTO `jugadores` VALUES (55, 'Taye Taiwo', 6, 'DF');
INSERT INTO `jugadores` VALUES (56, 'Joseph Yobo', 6, 'DF');
INSERT INTO `jugadores` VALUES (57, 'Dickson Etuhu', 6, 'V');
INSERT INTO `jugadores` VALUES (58, 'Lukman Haruna', 6, 'V');
INSERT INTO `jugadores` VALUES (59, 'Sani Kaita', 6, 'V');
INSERT INTO `jugadores` VALUES (60, 'John Mikel Obi', 6, 'V');
INSERT INTO `jugadores` VALUES (61, 'Kalu Uche', 6, 'V');
INSERT INTO `jugadores` VALUES (62, 'John Utaka', 6, 'V');
INSERT INTO `jugadores` VALUES (63, 'Atanda Yussuf', 6, 'V');
INSERT INTO `jugadores` VALUES (64, 'Nwankwo Kanu', 6, 'DEL');
INSERT INTO `jugadores` VALUES (65, 'Obafemi Martins', 6, 'DEL');
INSERT INTO `jugadores` VALUES (66, 'Chinedu Obasi', 6, 'DEL');
INSERT INTO `jugadores` VALUES (67, 'Victor Obinna', 6, 'DEL');
INSERT INTO `jugadores` VALUES (68, 'Peter Odemwingie', 6, 'DEL');
INSERT INTO `jugadores` VALUES (69, 'Ayegbeni Yakubu', 6, 'DEL');
INSERT INTO `jugadores` VALUES (70, 'Jung Sung-Ryong', 7, 'A');
INSERT INTO `jugadores` VALUES (71, 'Kim Young-Kwang', 7, 'A');
INSERT INTO `jugadores` VALUES (72, 'Lee Woon-Jae', 7, 'A');
INSERT INTO `jugadores` VALUES (73, 'Cha Du-Ri', 7, 'DF');
INSERT INTO `jugadores` VALUES (74, 'Cho Yong-Hyung', 7, 'DF');
INSERT INTO `jugadores` VALUES (75, 'Kim Hyung-Il', 7, 'DF');
INSERT INTO `jugadores` VALUES (76, 'Kang Min-Soo', 7, 'DF');
INSERT INTO `jugadores` VALUES (77, 'Kim Dong-Jin', 7, 'DF');
INSERT INTO `jugadores` VALUES (78, 'Lee Jung-Soo', 7, 'DF');
INSERT INTO `jugadores` VALUES (79, 'Lee Young-Pyo', 7, 'DF');
INSERT INTO `jugadores` VALUES (80, 'Oh Beom-Seok', 7, 'DF');
INSERT INTO `jugadores` VALUES (81, 'Ki Sung-Yueng', 7, 'V');
INSERT INTO `jugadores` VALUES (82, 'Kim Bo-Kyung', 7, 'V');
INSERT INTO `jugadores` VALUES (83, 'Kim Jae-Sung', 7, 'V');
INSERT INTO `jugadores` VALUES (84, 'Kim Jung-Woo', 7, 'V');
INSERT INTO `jugadores` VALUES (85, 'Kim Nam-Il', 7, 'V');
INSERT INTO `jugadores` VALUES (86, 'Lee Chung-Yong', 7, 'V');
INSERT INTO `jugadores` VALUES (87, 'Park Ji-Sung', 7, 'V');
INSERT INTO `jugadores` VALUES (88, 'Yeom Ki-Hun', 7, 'V');
INSERT INTO `jugadores` VALUES (89, 'Ahn Jung-Hwan', 7, 'DEL');
INSERT INTO `jugadores` VALUES (90, 'Park Chu-Young', 7, 'DEL');
INSERT INTO `jugadores` VALUES (91, 'Lee Dong-Gook', 7, 'DEL');
INSERT INTO `jugadores` VALUES (92, 'Lee Seung-Yeoul', 7, 'DEL');
INSERT INTO `jugadores` VALUES (93, 'Fawzi Chaouchi', 11, 'A');
INSERT INTO `jugadores` VALUES (94, 'Lounes Gaouaoui', 11, 'A');
INSERT INTO `jugadores` VALUES (95, 'Rais M''Bolhi', 11, 'A');
INSERT INTO `jugadores` VALUES (96, 'Nadir Belhadj', 11, 'DF');
INSERT INTO `jugadores` VALUES (97, 'Habib Bellaid', 11, 'DF');
INSERT INTO `jugadores` VALUES (98, 'Madjid Bougherra', 11, 'DF');
INSERT INTO `jugadores` VALUES (99, 'Halliche', 11, 'DF');
INSERT INTO `jugadores` VALUES (100, 'Abdelkader Laifaoui', 11, 'DF');
INSERT INTO `jugadores` VALUES (101, 'Carl Medjani', 11, 'DF');
INSERT INTO `jugadores` VALUES (102, 'Antar Yahia', 11, 'DF');
INSERT INTO `jugadores` VALUES (103, 'Djamel Abdoun', 11, 'V');
INSERT INTO `jugadores` VALUES (104, 'Ryad Boudebouz', 11, 'V');
INSERT INTO `jugadores` VALUES (105, 'Adl?ne Gu?dioura', 11, 'V');
INSERT INTO `jugadores` VALUES (106, 'Foued Kadir', 11, 'V');
INSERT INTO `jugadores` VALUES (107, 'Medhi Lacen', 11, 'V');
INSERT INTO `jugadores` VALUES (108, 'Yazid Mansouri', 11, 'V');
INSERT INTO `jugadores` VALUES (109, 'Karim Matmour', 11, 'V');
INSERT INTO `jugadores` VALUES (110, 'Djamel Mesbah', 11, 'V');
INSERT INTO `jugadores` VALUES (111, 'Hassan Yebda', 11, 'V');
INSERT INTO `jugadores` VALUES (112, 'Karim Ziani', 11, 'V');
INSERT INTO `jugadores` VALUES (113, 'Rafik Djebbour', 11, 'DEL');
INSERT INTO `jugadores` VALUES (114, 'Abdelkader Ghezzal', 11, 'DEL');
INSERT INTO `jugadores` VALUES (115, 'Rafik Sa?fi', 11, 'DEL');
INSERT INTO `jugadores` VALUES (116, 'Robert Green', 9, 'A');
INSERT INTO `jugadores` VALUES (117, 'Joe Hart', 9, 'A');
INSERT INTO `jugadores` VALUES (118, 'David James', 9, 'A');
INSERT INTO `jugadores` VALUES (119, 'Jamie Carragher', 9, 'DF');
INSERT INTO `jugadores` VALUES (120, 'Ashley Cole', 9, 'DF');
INSERT INTO `jugadores` VALUES (121, 'Rio Ferdinand', 9, 'DF');
INSERT INTO `jugadores` VALUES (122, 'Glen Johnson', 9, 'DF');
INSERT INTO `jugadores` VALUES (123, 'Ledley King', 9, 'DF');
INSERT INTO `jugadores` VALUES (124, 'John Terry', 9, 'DF');
INSERT INTO `jugadores` VALUES (125, 'Matthew Upson', 9, 'DF');
INSERT INTO `jugadores` VALUES (126, 'Stephen Warnock', 9, 'DF');
INSERT INTO `jugadores` VALUES (127, 'Gareth Barry', 9, 'V');
INSERT INTO `jugadores` VALUES (128, 'Michael Carrick', 9, 'V');
INSERT INTO `jugadores` VALUES (129, 'Joe Cole', 9, 'V');
INSERT INTO `jugadores` VALUES (130, 'Steven Gerrard', 9, 'V');
INSERT INTO `jugadores` VALUES (131, 'Frank Lampard', 9, 'V');
INSERT INTO `jugadores` VALUES (132, 'Aaron Lennon', 9, 'V');
INSERT INTO `jugadores` VALUES (133, 'James Milner', 9, 'V');
INSERT INTO `jugadores` VALUES (134, 'Shaun Wright-Phillips', 9, 'V');
INSERT INTO `jugadores` VALUES (135, 'Peter Crouch', 9, 'DEL');
INSERT INTO `jugadores` VALUES (136, 'Jermain Defoe', 9, 'DEL');
INSERT INTO `jugadores` VALUES (137, 'Emile Heskey', 9, 'DEL');
INSERT INTO `jugadores` VALUES (138, 'Wayne Rooney', 9, 'DEL');
INSERT INTO `jugadores` VALUES (139, 'Jasmin Handanovic', 12, 'A');
INSERT INTO `jugadores` VALUES (140, 'Samir Handanovic', 12, 'A');
INSERT INTO `jugadores` VALUES (141, 'Aleksander Seliga', 12, 'A');
INSERT INTO `jugadores` VALUES (142, 'Miso Brecko', 12, 'DF');
INSERT INTO `jugadores` VALUES (143, 'Bostjan Cesar', 12, 'DF');
INSERT INTO `jugadores` VALUES (144, 'Elvedin Dzinic', 12, 'DF');
INSERT INTO `jugadores` VALUES (145, 'Suad Filekovic', 12, 'DF');
INSERT INTO `jugadores` VALUES (146, 'Branko Ilic', 12, 'DF');
INSERT INTO `jugadores` VALUES (147, 'Bojan Jokic', 12, 'DF');
INSERT INTO `jugadores` VALUES (148, 'Matej Mavric', 12, 'DF');
INSERT INTO `jugadores` VALUES (149, 'Marko Suler', 12, 'DF');
INSERT INTO `jugadores` VALUES (150, 'Valter Birsa', 12, 'V');
INSERT INTO `jugadores` VALUES (151, 'Andraz Kirm', 12, 'V');
INSERT INTO `jugadores` VALUES (152, 'Andrej Komac', 12, 'V');
INSERT INTO `jugadores` VALUES (153, 'Robert Koren', 12, 'V');
INSERT INTO `jugadores` VALUES (154, 'Rene Krhin', 12, 'V');
INSERT INTO `jugadores` VALUES (155, 'Aleksandar Radosavljevic', 12, 'V');
INSERT INTO `jugadores` VALUES (156, 'Dalibor Stevanovic', 12, 'V');
INSERT INTO `jugadores` VALUES (157, 'Zlatko Dedic', 12, 'DEL');
INSERT INTO `jugadores` VALUES (158, 'Zlatan Ljubijankic', 12, 'DEL');
INSERT INTO `jugadores` VALUES (159, 'Tim Matavz', 12, 'DEL');
INSERT INTO `jugadores` VALUES (160, 'Milivoje Novakovic', 12, 'DEL');
INSERT INTO `jugadores` VALUES (161, 'Nejc Pecnik', 12, 'DEL');
INSERT INTO `jugadores` VALUES (162, 'Brad Guzan', 10, 'A');
INSERT INTO `jugadores` VALUES (163, 'Marcus Hahnemann', 10, 'A');
INSERT INTO `jugadores` VALUES (164, 'Tim Howard', 10, 'A');
INSERT INTO `jugadores` VALUES (165, 'Carlos Bocanegra', 10, 'DF');
INSERT INTO `jugadores` VALUES (166, 'Jonathan Bornstein', 10, 'DF');
INSERT INTO `jugadores` VALUES (167, 'Steve Cherundolo', 10, 'DF');
INSERT INTO `jugadores` VALUES (168, 'Jay Demerit', 10, 'DF');
INSERT INTO `jugadores` VALUES (169, 'Clarence Goodson', 10, 'DF');
INSERT INTO `jugadores` VALUES (170, 'Oguchi Onyewu', 10, 'DF');
INSERT INTO `jugadores` VALUES (171, 'Jonathan Spector', 10, 'DF');
INSERT INTO `jugadores` VALUES (172, 'DaMarcus Beasley', 10, 'V');
INSERT INTO `jugadores` VALUES (173, 'Michael Bradley', 10, 'V');
INSERT INTO `jugadores` VALUES (174, 'Ricardo Clark', 10, 'V');
INSERT INTO `jugadores` VALUES (175, 'Clint Dempsey', 10, 'V');
INSERT INTO `jugadores` VALUES (176, 'Maurice Edu', 10, 'V');
INSERT INTO `jugadores` VALUES (177, 'Benny Feilhaber', 10, 'V');
INSERT INTO `jugadores` VALUES (178, 'Stuart Holden', 10, 'V');
INSERT INTO `jugadores` VALUES (179, 'Jos? Francisco Torres', 10, 'V');
INSERT INTO `jugadores` VALUES (180, 'Jozy Altidore', 10, 'DEL');
INSERT INTO `jugadores` VALUES (181, 'Edson Buddle', 10, 'DEL');
INSERT INTO `jugadores` VALUES (182, 'Landon Donovan', 10, 'DEL');
INSERT INTO `jugadores` VALUES (183, 'Robbie Findley', 10, 'DEL');
INSERT INTO `jugadores` VALUES (184, 'Herculez Gomez', 10, 'DEL');
INSERT INTO `jugadores` VALUES (185, 'Adam Federici', 14, 'A');
INSERT INTO `jugadores` VALUES (186, 'Brad Jones', 14, 'A');
INSERT INTO `jugadores` VALUES (187, 'Mark Schwarzer', 14, 'A');
INSERT INTO `jugadores` VALUES (188, 'Michael Beauchamp', 14, 'DF');
INSERT INTO `jugadores` VALUES (189, 'David Carney', 14, 'DF');
INSERT INTO `jugadores` VALUES (190, 'Mark Milligan', 14, 'DF');
INSERT INTO `jugadores` VALUES (191, 'Craig Moore', 14, 'DF');
INSERT INTO `jugadores` VALUES (192, 'Lucas Neill', 14, 'DF');
INSERT INTO `jugadores` VALUES (193, 'Mark Bresciano', 14, 'V');
INSERT INTO `jugadores` VALUES (194, 'Tim Cahill', 14, 'V');
INSERT INTO `jugadores` VALUES (195, 'Scott Chipperfield', 14, 'V');
INSERT INTO `jugadores` VALUES (196, 'Jason Culina', 14, 'V');
INSERT INTO `jugadores` VALUES (197, 'Brett Emerton', 14, 'V');
INSERT INTO `jugadores` VALUES (198, 'Richard Garcia', 14, 'V');
INSERT INTO `jugadores` VALUES (199, 'Vincenzo Grella', 14, 'V');
INSERT INTO `jugadores` VALUES (200, 'Mile Jedinak', 14, 'V');
INSERT INTO `jugadores` VALUES (201, 'Harry Kewell', 14, 'V');
INSERT INTO `jugadores` VALUES (202, 'Carl Valeri', 14, 'V');
INSERT INTO `jugadores` VALUES (203, 'Dario Vidosic', 14, 'V');
INSERT INTO `jugadores` VALUES (204, 'Luke Wilkshire', 14, 'V');
INSERT INTO `jugadores` VALUES (205, 'Brett Holman', 14, 'DEL');
INSERT INTO `jugadores` VALUES (206, 'Joshua Kennedy', 14, 'DEL');
INSERT INTO `jugadores` VALUES (207, 'Nikita Rukavytsa', 14, 'DEL');
INSERT INTO `jugadores` VALUES (208, 'Jorg Butt', 13, 'A');
INSERT INTO `jugadores` VALUES (209, 'Manuel Neuer', 13, 'A');
INSERT INTO `jugadores` VALUES (210, 'Tim Wiese', 13, 'A');
INSERT INTO `jugadores` VALUES (211, 'Dennis Aogo', 13, 'DF');
INSERT INTO `jugadores` VALUES (212, 'Holger Badstuber', 13, 'DF');
INSERT INTO `jugadores` VALUES (213, 'Jerome Boateng', 13, 'DF');
INSERT INTO `jugadores` VALUES (214, 'Arne Friedrich', 13, 'DF');
INSERT INTO `jugadores` VALUES (215, 'Marcell Jansen', 13, 'DF');
INSERT INTO `jugadores` VALUES (216, 'Philipp Lahm', 13, 'DF');
INSERT INTO `jugadores` VALUES (217, 'Per Mertesacker', 13, 'DF');
INSERT INTO `jugadores` VALUES (218, 'Serdar Tasci', 13, 'DF');
INSERT INTO `jugadores` VALUES (219, 'Sami Khedira', 13, 'V');
INSERT INTO `jugadores` VALUES (220, 'Toni Kroos', 13, 'V');
INSERT INTO `jugadores` VALUES (221, 'Marko Marin', 13, 'V');
INSERT INTO `jugadores` VALUES (222, 'Mesut ?zil', 13, 'V');
INSERT INTO `jugadores` VALUES (223, 'Bastian Schweinsteiger', 13, 'V');
INSERT INTO `jugadores` VALUES (224, 'Piotr Trochowski', 13, 'V');
INSERT INTO `jugadores` VALUES (225, 'Cacau', 13, 'DEL');
INSERT INTO `jugadores` VALUES (226, 'Mario Gomez', 13, 'DEL');
INSERT INTO `jugadores` VALUES (227, 'Stefan Kie?ling', 13, 'DEL');
INSERT INTO `jugadores` VALUES (228, 'Miroslav Klose', 13, 'DEL');
INSERT INTO `jugadores` VALUES (229, 'Thomas M?ller', 13, 'DEL');
INSERT INTO `jugadores` VALUES (230, 'Lukas Podolski', 13, 'DEL');
INSERT INTO `jugadores` VALUES (231, 'Daniel Adjei', 16, 'A');
INSERT INTO `jugadores` VALUES (232, 'Stephen Ahorlu', 16, 'A');
INSERT INTO `jugadores` VALUES (233, 'Richard Kingson', 16, 'A');
INSERT INTO `jugadores` VALUES (234, 'Lee Addy', 16, 'DF');
INSERT INTO `jugadores` VALUES (235, 'Ibrahim Ayew', 16, 'DF');
INSERT INTO `jugadores` VALUES (236, 'Samuel Inkoom', 16, 'DF');
INSERT INTO `jugadores` VALUES (237, 'John Mensah', 16, 'DF');
INSERT INTO `jugadores` VALUES (238, 'Jonathan Mensah', 16, 'DF');
INSERT INTO `jugadores` VALUES (239, 'John Pantsil', 16, 'DF');
INSERT INTO `jugadores` VALUES (240, 'Hans Sarpei', 16, 'DF');
INSERT INTO `jugadores` VALUES (241, 'Isaac Vorsah', 16, 'DF');
INSERT INTO `jugadores` VALUES (242, 'Anthony Annan', 16, 'V');
INSERT INTO `jugadores` VALUES (243, 'Kwadwo Asamoah', 16, 'V');
INSERT INTO `jugadores` VALUES (244, 'Andr? Ayew', 16, 'V');
INSERT INTO `jugadores` VALUES (245, 'Derek Boateng', 16, 'V');
INSERT INTO `jugadores` VALUES (246, 'Kevin-Prince Boateng', 16, 'V');
INSERT INTO `jugadores` VALUES (247, 'Sulley Muntari', 16, 'V');
INSERT INTO `jugadores` VALUES (248, 'Stephen Appiah', 16, 'V');
INSERT INTO `jugadores` VALUES (249, 'Dominic Adiyiah', 16, 'DEL');
INSERT INTO `jugadores` VALUES (250, 'Matthew Amoah', 16, 'DEL');
INSERT INTO `jugadores` VALUES (251, 'Asamoah Gyan', 16, 'DEL');
INSERT INTO `jugadores` VALUES (252, 'Owusu-Abeyie Quincy', 16, 'DEL');
INSERT INTO `jugadores` VALUES (253, 'Prince Tagoe', 16, 'DEL');
INSERT INTO `jugadores` VALUES (254, 'Andjelko Djuricic', 15, 'A');
INSERT INTO `jugadores` VALUES (255, 'Bojan Isailovic', 15, 'A');
INSERT INTO `jugadores` VALUES (256, 'Vladimir Stojkovic', 15, 'A');
INSERT INTO `jugadores` VALUES (257, 'Branislav Ivanovic', 15, 'DF');
INSERT INTO `jugadores` VALUES (258, 'Aleksandar Kolarov', 15, 'DF');
INSERT INTO `jugadores` VALUES (259, 'Aleksandar Lukovic', 15, 'DF');
INSERT INTO `jugadores` VALUES (260, 'Ivan Obradovic', 15, 'DF');
INSERT INTO `jugadores` VALUES (261, 'Antonio Rukavina', 15, 'DF');
INSERT INTO `jugadores` VALUES (262, 'Neven Subotic', 15, 'DF');
INSERT INTO `jugadores` VALUES (263, 'Nemanja Vidic', 15, 'DF');
INSERT INTO `jugadores` VALUES (264, 'Milan Jovanovic', 15, 'V');
INSERT INTO `jugadores` VALUES (265, 'Gojko Kacar', 15, 'V');
INSERT INTO `jugadores` VALUES (266, 'Milos Krasic', 15, 'V');
INSERT INTO `jugadores` VALUES (267, 'Zdravko Kuzmanovic', 15, 'V');
INSERT INTO `jugadores` VALUES (268, 'Nenad Milijas', 15, 'V');
INSERT INTO `jugadores` VALUES (269, 'Milos Ninkovic', 15, 'V');
INSERT INTO `jugadores` VALUES (270, 'Radoslav Petrovic', 15, 'V');
INSERT INTO `jugadores` VALUES (271, 'Dejan Stankovic', 15, 'V');
INSERT INTO `jugadores` VALUES (272, 'Zoran Tosic', 15, 'V');
INSERT INTO `jugadores` VALUES (273, 'Danko Lazovic', 15, 'DEL');
INSERT INTO `jugadores` VALUES (274, 'Dragan Mrdja', 15, 'DEL');
INSERT INTO `jugadores` VALUES (275, 'Marko Pantelic', 15, 'DEL');
INSERT INTO `jugadores` VALUES (276, 'Nikola Zigic', 15, 'DEL');
INSERT INTO `jugadores` VALUES (277, 'Gianluigi Buffon', 21, 'A');
INSERT INTO `jugadores` VALUES (278, 'Morgan De Sanctis', 21, 'A');
INSERT INTO `jugadores` VALUES (279, 'Federico Marchetti', 21, 'A');
INSERT INTO `jugadores` VALUES (280, 'Salvatore Bocchetti', 21, 'DF');
INSERT INTO `jugadores` VALUES (281, 'Leonardo Bonucci', 21, 'DF');
INSERT INTO `jugadores` VALUES (282, 'Fabio Cannavaro', 21, 'DF');
INSERT INTO `jugadores` VALUES (283, 'Giorgio Chiellini', 21, 'DF');
INSERT INTO `jugadores` VALUES (284, 'Domenico Criscito', 21, 'DF');
INSERT INTO `jugadores` VALUES (285, 'Cristian Maggio', 21, 'DF');
INSERT INTO `jugadores` VALUES (286, 'Gianluca Zambrotta', 21, 'DF');
INSERT INTO `jugadores` VALUES (287, 'Mauro Camoranesi', 21, 'V');
INSERT INTO `jugadores` VALUES (288, 'Daniele De Rossi', 21, 'V');
INSERT INTO `jugadores` VALUES (289, 'Gennaro Gattuso', 21, 'V');
INSERT INTO `jugadores` VALUES (290, 'Claudio Marchisio', 21, 'V');
INSERT INTO `jugadores` VALUES (291, 'Riccardo Montolivo', 21, 'V');
INSERT INTO `jugadores` VALUES (292, 'Angelo Palombo', 21, 'V');
INSERT INTO `jugadores` VALUES (293, 'Andrea Pirlo', 21, 'V');
INSERT INTO `jugadores` VALUES (294, 'Antonio Di Natale', 21, 'DEL');
INSERT INTO `jugadores` VALUES (295, 'Alberto Gilardino', 21, 'DEL');
INSERT INTO `jugadores` VALUES (296, 'Vincenzo Iaquinta', 21, 'DEL');
INSERT INTO `jugadores` VALUES (297, 'Giampaolo Pazzini', 21, 'DEL');
INSERT INTO `jugadores` VALUES (298, 'Simone Pepe', 21, 'DEL');
INSERT INTO `jugadores` VALUES (299, 'Fabio Quagliarella', 21, 'DEL');
INSERT INTO `jugadores` VALUES (300, 'James Bannatyne', 23, 'A');
INSERT INTO `jugadores` VALUES (301, 'Glen Moss', 23, 'A');
INSERT INTO `jugadores` VALUES (302, 'Mark Paston', 23, 'A');
INSERT INTO `jugadores` VALUES (303, 'Andrew Boyens', 23, 'DF');
INSERT INTO `jugadores` VALUES (304, 'Tony Lochhead', 23, 'DF');
INSERT INTO `jugadores` VALUES (305, 'Dave Mulligan', 23, 'DF');
INSERT INTO `jugadores` VALUES (306, 'Ryan Nelsen', 23, 'DF');
INSERT INTO `jugadores` VALUES (307, 'Winston Reid', 23, 'DF');
INSERT INTO `jugadores` VALUES (308, 'Ben Sigmund', 23, 'DF');
INSERT INTO `jugadores` VALUES (309, 'Tommy Smith', 23, 'DF');
INSERT INTO `jugadores` VALUES (310, 'Ivan Vicelich', 23, 'DF');
INSERT INTO `jugadores` VALUES (311, 'Andy Barron', 23, 'V');
INSERT INTO `jugadores` VALUES (312, 'Leo Bertos', 23, 'V');
INSERT INTO `jugadores` VALUES (313, 'Jeremy Brockie', 23, 'V');
INSERT INTO `jugadores` VALUES (314, 'Tim Brown', 23, 'V');
INSERT INTO `jugadores` VALUES (315, 'Jeremy Christie', 23, 'V');
INSERT INTO `jugadores` VALUES (316, 'Aaron Clapham', 23, 'V');
INSERT INTO `jugadores` VALUES (317, 'Simon Elliott', 23, 'V');
INSERT INTO `jugadores` VALUES (318, 'Michael McGlinchey', 23, 'V');
INSERT INTO `jugadores` VALUES (319, 'Rory Fallon', 23, 'DEL');
INSERT INTO `jugadores` VALUES (320, 'Chris Killen', 23, 'DEL');
INSERT INTO `jugadores` VALUES (321, 'Shane Smeltz', 23, 'DEL');
INSERT INTO `jugadores` VALUES (322, 'Chris Wood', 23, 'DEL');
INSERT INTO `jugadores` VALUES (323, 'Diego Barreto', 22, 'A');
INSERT INTO `jugadores` VALUES (324, 'Aldo Bobadilla', 22, 'A');
INSERT INTO `jugadores` VALUES (325, 'Justo Villar', 22, 'A');
INSERT INTO `jugadores` VALUES (326, 'Antolin Alcaraz', 22, 'DF');
INSERT INTO `jugadores` VALUES (327, 'Julio C?ceres', 22, 'DF');
INSERT INTO `jugadores` VALUES (328, 'Denis Caniza', 22, 'DF');
INSERT INTO `jugadores` VALUES (329, 'Paulo Da Silva', 22, 'DF');
INSERT INTO `jugadores` VALUES (330, 'Claudio Morel', 22, 'DF');
INSERT INTO `jugadores` VALUES (331, 'Aureliano Torres', 22, 'DF');
INSERT INTO `jugadores` VALUES (332, 'Dar?o Ver?n', 22, 'DF');
INSERT INTO `jugadores` VALUES (333, 'Edgar Barreto', 22, 'V');
INSERT INTO `jugadores` VALUES (334, 'Carlos Bonet', 22, 'V');
INSERT INTO `jugadores` VALUES (335, 'Victor C?ceres', 22, 'V');
INSERT INTO `jugadores` VALUES (336, 'N?stor Ortigoza', 22, 'V');
INSERT INTO `jugadores` VALUES (337, 'Christian Riveros', 22, 'V');
INSERT INTO `jugadores` VALUES (338, 'Jonathan Santana', 22, 'V');
INSERT INTO `jugadores` VALUES (339, 'Enrique Vera', 22, 'V');
INSERT INTO `jugadores` VALUES (340, 'Lucas Barrios', 22, 'DEL');
INSERT INTO `jugadores` VALUES (341, 'Edgar Benitez', 22, 'DEL');
INSERT INTO `jugadores` VALUES (342, '?scar Cardozo', 22, 'DEL');
INSERT INTO `jugadores` VALUES (343, 'Rodolfo Gamarra', 22, 'DEL');
INSERT INTO `jugadores` VALUES (344, 'Roque Santa Cruz', 22, 'DEL');
INSERT INTO `jugadores` VALUES (345, 'Nelson Valdez', 22, 'DEL');
INSERT INTO `jugadores` VALUES (346, 'Dusan Kuciak', 24, 'A');
INSERT INTO `jugadores` VALUES (347, 'J?n Mucha', 24, 'A');
INSERT INTO `jugadores` VALUES (348, 'Dusan Pernis', 24, 'A');
INSERT INTO `jugadores` VALUES (349, 'Marek Cech', 24, 'DF');
INSERT INTO `jugadores` VALUES (350, 'Jan Durica', 24, 'DF');
INSERT INTO `jugadores` VALUES (351, 'Peter Pekar', 24, 'DF');
INSERT INTO `jugadores` VALUES (352, 'Martin Petras', 24, 'DF');
INSERT INTO `jugadores` VALUES (353, 'Kornel Salata', 24, 'DF');
INSERT INTO `jugadores` VALUES (354, 'Martin Skrtel', 24, 'DF');
INSERT INTO `jugadores` VALUES (355, 'Radoslav Zabavn', 24, 'DF');
INSERT INTO `jugadores` VALUES (356, 'Marek Hamsik', 24, 'V');
INSERT INTO `jugadores` VALUES (357, 'Kamil Kopunek', 24, 'V');
INSERT INTO `jugadores` VALUES (358, 'Jan Kozak', 24, 'V');
INSERT INTO `jugadores` VALUES (359, 'Juraj Kucka', 24, 'V');
INSERT INTO `jugadores` VALUES (360, 'Marek Sapara', 24, 'V');
INSERT INTO `jugadores` VALUES (361, 'Miroslav Stoch', 24, 'V');
INSERT INTO `jugadores` VALUES (362, 'Zdenko Strba', 24, 'V');
INSERT INTO `jugadores` VALUES (363, 'Vladimir Weiss', 24, 'V');
INSERT INTO `jugadores` VALUES (364, 'Filip Holosko', 24, 'DEL');
INSERT INTO `jugadores` VALUES (365, 'Martin Jakubko', 24, 'DEL');
INSERT INTO `jugadores` VALUES (366, 'Erik Jendrisek', 24, 'DEL');
INSERT INTO `jugadores` VALUES (367, 'Stanislav Sestak', 24, 'DEL');
INSERT INTO `jugadores` VALUES (368, 'Robert Vittek', 24, 'DEL');
INSERT INTO `jugadores` VALUES (369, 'Gomes', 27, 'A');
INSERT INTO `jugadores` VALUES (370, 'Doni', 27, 'A');
INSERT INTO `jugadores` VALUES (371, 'Julio C?sar', 27, 'A');
INSERT INTO `jugadores` VALUES (372, 'Daniel Alves', 27, 'DF');
INSERT INTO `jugadores` VALUES (373, 'Michel Bastos', 27, 'DF');
INSERT INTO `jugadores` VALUES (374, 'Lucio', 27, 'DF');
INSERT INTO `jugadores` VALUES (375, 'Gilberto', 27, 'DF');
INSERT INTO `jugadores` VALUES (376, 'Luis', 27, 'DF');
INSERT INTO `jugadores` VALUES (377, 'Thiago Silva', 27, 'DF');
INSERT INTO `jugadores` VALUES (378, 'Juan', 27, 'DF');
INSERT INTO `jugadores` VALUES (379, 'Maicon', 27, 'DF');
INSERT INTO `jugadores` VALUES (380, 'Gilberto Silva', 27, 'V');
INSERT INTO `jugadores` VALUES (381, 'Julio Baptista', 27, 'V');
INSERT INTO `jugadores` VALUES (382, 'Josu', 27, 'V');
INSERT INTO `jugadores` VALUES (383, 'Blumer Elano', 27, 'V');
INSERT INTO `jugadores` VALUES (384, 'Kak', 27, 'V');
INSERT INTO `jugadores` VALUES (385, 'Kleberson', 27, 'V');
INSERT INTO `jugadores` VALUES (386, 'Felipe Melo', 27, 'V');
INSERT INTO `jugadores` VALUES (387, 'Ramires', 27, 'V');
INSERT INTO `jugadores` VALUES (388, 'Robinho', 27, 'DEL');
INSERT INTO `jugadores` VALUES (389, 'Grafite', 27, 'DEL');
INSERT INTO `jugadores` VALUES (390, 'Luis Fabiano', 27, 'DEL');
INSERT INTO `jugadores` VALUES (391, 'Nilmar', 27, 'DEL');
INSERT INTO `jugadores` VALUES (392, 'Boubacar Barry', 25, 'A');
INSERT INTO `jugadores` VALUES (393, 'Daniel Yeboah', 25, 'A');
INSERT INTO `jugadores` VALUES (394, 'Aristide Zogbo', 25, 'A');
INSERT INTO `jugadores` VALUES (395, 'Brou Angoua', 25, 'DF');
INSERT INTO `jugadores` VALUES (396, 'Souleymane Bamba', 25, 'DF');
INSERT INTO `jugadores` VALUES (397, 'Arthur Boka', 25, 'DF');
INSERT INTO `jugadores` VALUES (398, 'Guy Demel', 25, 'DF');
INSERT INTO `jugadores` VALUES (399, 'Emmanuel Eboue', 25, 'DF');
INSERT INTO `jugadores` VALUES (400, 'Steve Gohouri', 25, 'DF');
INSERT INTO `jugadores` VALUES (401, 'Siaka Ti?n', 25, 'DF');
INSERT INTO `jugadores` VALUES (402, 'Kolo Toure', 25, 'DF');
INSERT INTO `jugadores` VALUES (403, 'Jean-Jacques Gosso', 25, 'V');
INSERT INTO `jugadores` VALUES (404, 'Abdul-Kader Keita', 25, 'V');
INSERT INTO `jugadores` VALUES (405, 'Emmanuel Kon', 25, 'V');
INSERT INTO `jugadores` VALUES (406, 'Romaric', 25, 'V');
INSERT INTO `jugadores` VALUES (407, 'Chiek Tiote', 25, 'V');
INSERT INTO `jugadores` VALUES (408, 'Yaya Toure', 25, 'V');
INSERT INTO `jugadores` VALUES (409, 'Didier Zokora', 25, 'V');
INSERT INTO `jugadores` VALUES (410, 'Aruna Dindane', 25, 'DEL');
INSERT INTO `jugadores` VALUES (411, 'Seydou Doumbia', 25, 'DEL');
INSERT INTO `jugadores` VALUES (412, 'Didier Drogba', 25, 'DEL');
INSERT INTO `jugadores` VALUES (413, 'Salomon Kalou', 25, 'DEL');
INSERT INTO `jugadores` VALUES (414, 'Gervinho', 25, 'DEL');
INSERT INTO `jugadores` VALUES (415, 'Kim Myong-Gil', 28, 'A');
INSERT INTO `jugadores` VALUES (416, 'Ri Myong-Guk', 28, 'A');
INSERT INTO `jugadores` VALUES (417, 'Pak Chol-Jin', 28, 'DF');
INSERT INTO `jugadores` VALUES (418, 'Cha Jong-Hyok', 28, 'DF');
INSERT INTO `jugadores` VALUES (419, 'Ri Jun-Il', 28, 'DF');
INSERT INTO `jugadores` VALUES (420, 'Ri Kwang-Chon', 28, 'DF');
INSERT INTO `jugadores` VALUES (421, 'Ri Kwang-Hyok', 28, 'DF');
INSERT INTO `jugadores` VALUES (422, 'Pak Nam-Chol', 28, 'DF');
INSERT INTO `jugadores` VALUES (423, 'Nam Song-Chol', 28, 'DF');
INSERT INTO `jugadores` VALUES (424, 'Pak Sung-Hyok', 28, 'DF');
INSERT INTO `jugadores` VALUES (425, 'Ri Chol-Myong', 28, 'V');
INSERT INTO `jugadores` VALUES (426, 'Mun In-Guk', 28, 'V');
INSERT INTO `jugadores` VALUES (427, 'Kim Kyong-Il', 28, 'V');
INSERT INTO `jugadores` VALUES (428, 'Pak Nam-Chol', 28, 'V');
INSERT INTO `jugadores` VALUES (429, 'Kim Yong-Jun', 28, 'V');
INSERT INTO `jugadores` VALUES (430, 'An Young-Hak', 28, 'V');
INSERT INTO `jugadores` VALUES (431, 'Ji Yun-Nam', 28, 'V');
INSERT INTO `jugadores` VALUES (432, 'An Chol-Hyok', 28, 'DEL');
INSERT INTO `jugadores` VALUES (433, 'Choe Kum-Chol', 28, 'DEL');
INSERT INTO `jugadores` VALUES (434, 'Kim Kum-Il', 28, 'DEL');
INSERT INTO `jugadores` VALUES (435, 'Kim Myong-Won', 28, 'DEL');
INSERT INTO `jugadores` VALUES (436, 'Jong Tae-Se', 28, 'DEL');
INSERT INTO `jugadores` VALUES (437, 'Hong Yong-Jo', 28, 'DEL');
INSERT INTO `jugadores` VALUES (438, 'Beto', 26, 'A');
INSERT INTO `jugadores` VALUES (439, 'Eduardo', 26, 'A');
INSERT INTO `jugadores` VALUES (440, 'Daniel Fernandes', 26, 'A');
INSERT INTO `jugadores` VALUES (441, 'Duda', 26, 'DF');
INSERT INTO `jugadores` VALUES (442, 'Bruno Alves', 26, 'DF');
INSERT INTO `jugadores` VALUES (443, 'Ricardo Carvalho', 26, 'DF');
INSERT INTO `jugadores` VALUES (444, 'F?bio Coentr', 26, 'DF');
INSERT INTO `jugadores` VALUES (445, 'Ricardo Costa', 26, 'DF');
INSERT INTO `jugadores` VALUES (446, 'Rolando', 26, 'DF');
INSERT INTO `jugadores` VALUES (447, 'Paulo Ferreira', 26, 'DF');
INSERT INTO `jugadores` VALUES (448, 'Miguel', 26, 'DF');
INSERT INTO `jugadores` VALUES (449, 'Deco', 26, 'V');
INSERT INTO `jugadores` VALUES (450, 'Pepe', 26, 'V');
INSERT INTO `jugadores` VALUES (451, 'Ra?l Meireles', 26, 'V');
INSERT INTO `jugadores` VALUES (452, 'Pedro Mendes', 26, 'V');
INSERT INTO `jugadores` VALUES (453, 'Tiago', 26, 'V');
INSERT INTO `jugadores` VALUES (454, 'Nani', 26, 'V');
INSERT INTO `jugadores` VALUES (455, 'Sim', 26, 'V');
INSERT INTO `jugadores` VALUES (456, 'Miguel Veloso', 26, 'V');
INSERT INTO `jugadores` VALUES (457, 'Danny', 26, 'DEL');
INSERT INTO `jugadores` VALUES (458, 'Liedson', 26, 'DEL');
INSERT INTO `jugadores` VALUES (459, 'Hugo Almeida', 26, 'DEL');
INSERT INTO `jugadores` VALUES (460, 'Cristiano Ronaldo', 26, 'DEL');
INSERT INTO `jugadores` VALUES (461, 'Claudio Bravo', 30, 'A');
INSERT INTO `jugadores` VALUES (462, 'Luis Murillo Marin', 30, 'A');
INSERT INTO `jugadores` VALUES (463, 'Miguel Pinto', 30, 'A');
INSERT INTO `jugadores` VALUES (464, 'Pablo Contreras', 30, 'DF');
INSERT INTO `jugadores` VALUES (465, 'Ismael Fuentes', 30, 'DF');
INSERT INTO `jugadores` VALUES (466, 'Mauricio Isla', 30, 'DF');
INSERT INTO `jugadores` VALUES (467, 'Gonzalo Jara', 30, 'DF');
INSERT INTO `jugadores` VALUES (468, 'Gary Medel', 30, 'DF');
INSERT INTO `jugadores` VALUES (469, 'Waldo Ponce', 30, 'DF');
INSERT INTO `jugadores` VALUES (470, 'Arturo Vidal', 30, 'DF');
INSERT INTO `jugadores` VALUES (471, 'Jean Beausejour', 30, 'V');
INSERT INTO `jugadores` VALUES (472, 'Carlos Carmona', 30, 'V');
INSERT INTO `jugadores` VALUES (473, 'Marco Estrada', 30, 'V');
INSERT INTO `jugadores` VALUES (474, 'Matias Fernandez', 30, 'V');
INSERT INTO `jugadores` VALUES (475, 'Gonzalo Fierro', 30, 'V');
INSERT INTO `jugadores` VALUES (476, 'Mark Gonzalez', 30, 'V');
INSERT INTO `jugadores` VALUES (477, 'Rodrigo Millar', 30, 'V');
INSERT INTO `jugadores` VALUES (478, 'Rodrigo Tello', 30, 'V');
INSERT INTO `jugadores` VALUES (479, 'Fabi?n Orellana', 30, 'DEL');
INSERT INTO `jugadores` VALUES (480, 'Esteban Paredes', 30, 'DEL');
INSERT INTO `jugadores` VALUES (481, 'Alexis S?nchez', 30, 'DEL');
INSERT INTO `jugadores` VALUES (482, 'Humberto Suazo', 30, 'DEL');
INSERT INTO `jugadores` VALUES (483, 'Jorge Valdivia', 30, 'DEL');
INSERT INTO `jugadores` VALUES (484, 'Ricardo Canales', 29, 'A');
INSERT INTO `jugadores` VALUES (485, 'Donis Escober', 29, 'A');
INSERT INTO `jugadores` VALUES (486, 'Noel Valladares', 29, 'A');
INSERT INTO `jugadores` VALUES (487, 'Victor Bernardez', 29, 'DF');
INSERT INTO `jugadores` VALUES (488, 'Osman Chavez', 29, 'DF');
INSERT INTO `jugadores` VALUES (489, 'Maynor Figueroa', 29, 'DF');
INSERT INTO `jugadores` VALUES (490, 'Oscar Garc', 29, 'DF');
INSERT INTO `jugadores` VALUES (491, 'Emilio Izaguirre', 29, 'DF');
INSERT INTO `jugadores` VALUES (492, 'Sergio Mendoza', 29, 'DF');
INSERT INTO `jugadores` VALUES (493, 'Johnny Palacios', 29, 'DF');
INSERT INTO `jugadores` VALUES (494, 'Mauricio Sabillon', 29, 'DF');
INSERT INTO `jugadores` VALUES (495, 'Edgar Alvarez', 29, 'V');
INSERT INTO `jugadores` VALUES (496, 'Roger Espinoza', 29, 'V');
INSERT INTO `jugadores` VALUES (497, 'Amado Guevara', 29, 'V');
INSERT INTO `jugadores` VALUES (498, 'Julio Leon', 29, 'V');
INSERT INTO `jugadores` VALUES (499, 'Ramon Nunez', 29, 'V');
INSERT INTO `jugadores` VALUES (500, 'Wilson Palacios', 29, 'V');
INSERT INTO `jugadores` VALUES (501, 'Hendry Thomas', 29, 'V');
INSERT INTO `jugadores` VALUES (502, 'Danilo Turcios', 29, 'V');
INSERT INTO `jugadores` VALUES (503, 'Walter Martinez', 29, 'DEL');
INSERT INTO `jugadores` VALUES (504, 'Carlos Pavon', 29, 'DEL');
INSERT INTO `jugadores` VALUES (505, 'David Suazo', 29, 'DEL');
INSERT INTO `jugadores` VALUES (506, 'Georgie Welcome', 29, 'DEL');
INSERT INTO `jugadores` VALUES (507, 'Iker Casillas', 31, 'A');
INSERT INTO `jugadores` VALUES (508, 'Pepe Reina', 31, 'A');
INSERT INTO `jugadores` VALUES (509, 'V?ctor Vald', 31, 'A');
INSERT INTO `jugadores` VALUES (510, 'Ra?l Albiol', 31, 'DF');
INSERT INTO `jugadores` VALUES (511, '?lvaro Arbeloa', 31, 'DF');
INSERT INTO `jugadores` VALUES (512, 'Joan Capdevila', 31, 'DF');
INSERT INTO `jugadores` VALUES (513, 'Carlos Marchena', 31, 'DF');
INSERT INTO `jugadores` VALUES (514, 'Gerard Pique', 31, 'DF');
INSERT INTO `jugadores` VALUES (515, 'Carles Puyol', 31, 'DF');
INSERT INTO `jugadores` VALUES (516, 'Sergio Ramos', 31, 'DF');
INSERT INTO `jugadores` VALUES (517, 'Xabi Alonso', 31, 'V');
INSERT INTO `jugadores` VALUES (518, 'Sergi Busquets', 31, 'V');
INSERT INTO `jugadores` VALUES (519, 'Cesc F?bregas', 31, 'V');
INSERT INTO `jugadores` VALUES (520, 'Xavi', 31, 'V');
INSERT INTO `jugadores` VALUES (521, 'Andr?s Iniesta', 31, 'V');
INSERT INTO `jugadores` VALUES (522, 'Jesus Navas', 31, 'V');
INSERT INTO `jugadores` VALUES (523, 'David Silva', 31, 'V');
INSERT INTO `jugadores` VALUES (524, 'Javier Mart?nez', 31, 'V');
INSERT INTO `jugadores` VALUES (525, 'Mata', 31, 'V');
INSERT INTO `jugadores` VALUES (526, 'Pedro', 31, 'V');
INSERT INTO `jugadores` VALUES (527, 'Fernando Llorente', 31, 'DEL');
INSERT INTO `jugadores` VALUES (528, 'Fernando Torres', 31, 'DEL');
INSERT INTO `jugadores` VALUES (529, 'David Villa', 31, 'DEL');
INSERT INTO `jugadores` VALUES (530, 'Diego Benaglio', 32, 'A');
INSERT INTO `jugadores` VALUES (531, 'Johnny Leoni', 32, 'A');
INSERT INTO `jugadores` VALUES (532, 'Marco W?lfli', 32, 'A');
INSERT INTO `jugadores` VALUES (533, 'Mario Eggimann', 32, 'DF');
INSERT INTO `jugadores` VALUES (534, 'Stephane Grichting', 32, 'DF');
INSERT INTO `jugadores` VALUES (535, 'Stephan Lichtsteiner', 32, 'DF');
INSERT INTO `jugadores` VALUES (536, 'Ludovic Magnin', 32, 'DF');
INSERT INTO `jugadores` VALUES (537, 'Philippe Senderos', 32, 'DF');
INSERT INTO `jugadores` VALUES (538, 'Steve von Bergen', 32, 'DF');
INSERT INTO `jugadores` VALUES (539, 'Reto Ziegler', 32, 'DF');
INSERT INTO `jugadores` VALUES (540, 'Tranquillo Barnetta', 32, 'V');
INSERT INTO `jugadores` VALUES (541, 'Valon Behrami', 32, 'V');
INSERT INTO `jugadores` VALUES (542, 'Gelson Fernandes', 32, 'V');
INSERT INTO `jugadores` VALUES (543, 'Benjamin Huggel', 32, 'V');
INSERT INTO `jugadores` VALUES (544, 'G?khan Inler', 32, 'V');
INSERT INTO `jugadores` VALUES (545, 'Marco Padalino', 32, 'V');
INSERT INTO `jugadores` VALUES (546, 'Pirmin Schwegler', 32, 'V');
INSERT INTO `jugadores` VALUES (547, 'Xherdan Shaqiri', 32, 'V');
INSERT INTO `jugadores` VALUES (548, 'Hakan Yakin', 32, 'V');
INSERT INTO `jugadores` VALUES (549, 'Albert Bunjaku', 32, 'DEL');
INSERT INTO `jugadores` VALUES (550, 'Eren Derdiyok', 32, 'DEL');
INSERT INTO `jugadores` VALUES (551, 'Alexander Frei', 32, 'DEL');
INSERT INTO `jugadores` VALUES (552, 'Blaise N''Kufo', 32, 'DEL');
INSERT INTO `jugadores` VALUES (553, 'C?dric Carrasso', 4, 'A');
INSERT INTO `jugadores` VALUES (554, 'Hugo Lloris', 4, 'A');
INSERT INTO `jugadores` VALUES (555, 'Steve Mandanda', 4, 'A');
INSERT INTO `jugadores` VALUES (556, 'Eric Abidal', 4, 'DF');
INSERT INTO `jugadores` VALUES (557, 'Ga?l Clichy', 4, 'DF');
INSERT INTO `jugadores` VALUES (558, 'Patrice Evra', 4, 'DF');
INSERT INTO `jugadores` VALUES (559, 'William Gallas', 4, 'DF');
INSERT INTO `jugadores` VALUES (560, 'Marc Planus', 4, 'DF');
INSERT INTO `jugadores` VALUES (561, 'Anthony Reveillere', 4, 'DF');
INSERT INTO `jugadores` VALUES (562, 'Bacary Sagna', 4, 'DF');
INSERT INTO `jugadores` VALUES (563, 'Sebastien Squillaci', 4, 'DF');
INSERT INTO `jugadores` VALUES (564, 'Abou Diaby', 4, 'V');
INSERT INTO `jugadores` VALUES (565, 'Alou Diarra', 4, 'V');
INSERT INTO `jugadores` VALUES (566, 'Yoann Gourcuff', 4, 'V');
INSERT INTO `jugadores` VALUES (567, 'Florent Malouda', 4, 'V');
INSERT INTO `jugadores` VALUES (568, 'Franck Ribery', 4, 'V');
INSERT INTO `jugadores` VALUES (569, 'Jeremy Toulalan', 4, 'V');
INSERT INTO `jugadores` VALUES (570, 'Mathieu Valbuena', 4, 'V');
INSERT INTO `jugadores` VALUES (571, 'Nicolas Anelka', 4, 'DEL');
INSERT INTO `jugadores` VALUES (572, 'Djibril Cisse', 4, 'DEL');
INSERT INTO `jugadores` VALUES (573, 'Andr?-Pierre Gignac', 4, 'DEL');
INSERT INTO `jugadores` VALUES (574, 'Sidney Govou', 4, 'DEL');
INSERT INTO `jugadores` VALUES (575, 'Thierry Henry', 4, 'DEL');
INSERT INTO `jugadores` VALUES (576, 'Luis Michel', 2, 'A');
INSERT INTO `jugadores` VALUES (577, 'Guillermo Ochoa', 2, 'A');
INSERT INTO `jugadores` VALUES (578, '?scar P?rez', 2, 'A');
INSERT INTO `jugadores` VALUES (579, 'Paul Aguilar', 2, 'DF');
INSERT INTO `jugadores` VALUES (580, 'Efrain Ju?rez', 2, 'DF');
INSERT INTO `jugadores` VALUES (581, 'Jonny Magall?n', 2, 'DF');
INSERT INTO `jugadores` VALUES (582, 'Rafael M?rquez', 2, 'DF');
INSERT INTO `jugadores` VALUES (583, 'H?ctor Moreno', 2, 'DF');
INSERT INTO `jugadores` VALUES (584, 'Ricardo Osorio', 2, 'DF');
INSERT INTO `jugadores` VALUES (585, 'Francisco Rodr?guez', 2, 'DF');
INSERT INTO `jugadores` VALUES (586, 'Carlos Salcido', 2, 'DF');
INSERT INTO `jugadores` VALUES (587, 'Jorge Torres Nilo', 2, 'DF');
INSERT INTO `jugadores` VALUES (588, 'Pablo Barrera', 2, 'V');
INSERT INTO `jugadores` VALUES (589, 'Israel Castro', 2, 'V');
INSERT INTO `jugadores` VALUES (590, 'Giovani Dos Santos', 2, 'V');
INSERT INTO `jugadores` VALUES (591, 'Andres Guardado', 2, 'V');
INSERT INTO `jugadores` VALUES (592, 'Alberto Medina', 2, 'V');
INSERT INTO `jugadores` VALUES (593, 'Gerardo Torrado', 2, 'V');
INSERT INTO `jugadores` VALUES (594, 'Adolfo Bautista', 2, 'DEL');
INSERT INTO `jugadores` VALUES (595, 'Cuauht?moc Blanco', 2, 'DEL');
INSERT INTO `jugadores` VALUES (596, 'Guillermo Franco', 2, 'DEL');
INSERT INTO `jugadores` VALUES (597, 'Javier Hernandez', 2, 'DEL');
INSERT INTO `jugadores` VALUES (598, 'Carlos Vela', 2, 'DEL');
INSERT INTO `jugadores` VALUES (599, 'Moneeb Josephs', 1, 'A');
INSERT INTO `jugadores` VALUES (600, 'Itumeleng Khune', 1, 'A');
INSERT INTO `jugadores` VALUES (601, 'Shu-Aib Walters', 1, 'A');
INSERT INTO `jugadores` VALUES (602, 'Matthew Booth', 1, 'DF');
INSERT INTO `jugadores` VALUES (603, 'Siboniso Gaxa', 1, 'DF');
INSERT INTO `jugadores` VALUES (604, 'Bongani Khumalo', 1, 'DF');
INSERT INTO `jugadores` VALUES (605, 'Tsepo Masilela', 1, 'DF');
INSERT INTO `jugadores` VALUES (606, 'Aaron Mokoena', 1, 'DF');
INSERT INTO `jugadores` VALUES (607, 'Anele Ngongca', 1, 'DF');
INSERT INTO `jugadores` VALUES (608, 'Siyabonga Sangweni', 1, 'DF');
INSERT INTO `jugadores` VALUES (609, 'Lucas Thwala', 1, 'DF');
INSERT INTO `jugadores` VALUES (610, 'Lance Davids', 1, 'V');
INSERT INTO `jugadores` VALUES (611, 'Kagisho Dikgacoi', 1, 'V');
INSERT INTO `jugadores` VALUES (612, 'Thanduyise Khuboni', 1, 'V');
INSERT INTO `jugadores` VALUES (613, 'Reneilwe Letsholonyane', 1, 'V');
INSERT INTO `jugadores` VALUES (614, 'Teko Modise', 1, 'V');
INSERT INTO `jugadores` VALUES (615, 'Surprise Moriri', 1, 'V');
INSERT INTO `jugadores` VALUES (616, 'Steven Pienaar', 1, 'V');
INSERT INTO `jugadores` VALUES (617, 'MacBeth Sibaya', 1, 'V');
INSERT INTO `jugadores` VALUES (618, 'Siphiwe Tshabalala', 1, 'V');
INSERT INTO `jugadores` VALUES (619, 'Katlego Mphela', 1, 'DEL');
INSERT INTO `jugadores` VALUES (620, 'Siyabonga Nomvete', 1, 'DEL');
INSERT INTO `jugadores` VALUES (621, 'Bernard Parker', 1, 'DEL');
INSERT INTO `jugadores` VALUES (622, 'Juan Castillo', 3, 'A');
INSERT INTO `jugadores` VALUES (623, 'Fernando Muslera', 3, 'A');
INSERT INTO `jugadores` VALUES (624, 'Martin Silva', 3, 'A');
INSERT INTO `jugadores` VALUES (625, 'Mart?n C?ceres', 3, 'DF');
INSERT INTO `jugadores` VALUES (626, 'Jorge Fucile', 3, 'DF');
INSERT INTO `jugadores` VALUES (627, 'Diego Godin', 3, 'DF');
INSERT INTO `jugadores` VALUES (628, 'Diego Lugano', 3, 'DF');
INSERT INTO `jugadores` VALUES (629, 'Andr?s Scotti', 3, 'DF');
INSERT INTO `jugadores` VALUES (630, 'Mauricio Victorino', 3, 'DF');
INSERT INTO `jugadores` VALUES (631, 'Egidio Ar?valo R?os', 3, 'V');
INSERT INTO `jugadores` VALUES (632, 'Sebastian Eguren', 3, 'V');
INSERT INTO `jugadores` VALUES (633, 'Alvaro Fern?ndez', 3, 'V');
INSERT INTO `jugadores` VALUES (634, 'Walter Gargano', 3, 'V');
INSERT INTO `jugadores` VALUES (635, 'Ignacio Gonz?lez', 3, 'V');
INSERT INTO `jugadores` VALUES (636, 'Nicolas Lodeiro', 3, 'V');
INSERT INTO `jugadores` VALUES (637, 'Alvaro Pereira', 3, 'V');
INSERT INTO `jugadores` VALUES (638, 'Maximiliano Pereira', 3, 'V');
INSERT INTO `jugadores` VALUES (639, 'Diego Perez', 3, 'V');
INSERT INTO `jugadores` VALUES (640, 'Sebastian Abreu', 3, 'DEL');
INSERT INTO `jugadores` VALUES (641, 'Edison Cavani', 3, 'DEL');
INSERT INTO `jugadores` VALUES (642, 'Sebasti?n Fern?ndez', 3, 'DEL');
INSERT INTO `jugadores` VALUES (643, 'Diego Forlan', 3, 'DEL');
INSERT INTO `jugadores` VALUES (644, 'Luis Su?rez', 3, 'DEL');
INSERT INTO `jugadores` VALUES (645, 'Souleymanou Hamidou', 20, 'A');
INSERT INTO `jugadores` VALUES (646, 'Carlos Kameni', 20, 'A');
INSERT INTO `jugadores` VALUES (647, 'Guy Ndy', 20, 'A');
INSERT INTO `jugadores` VALUES (648, 'Benoit Assou-Ekotto', 20, 'DF');
INSERT INTO `jugadores` VALUES (649, 'Sebastien Bassong', 20, 'DF');
INSERT INTO `jugadores` VALUES (650, 'Gaetan Bong', 20, 'DF');
INSERT INTO `jugadores` VALUES (651, 'Geremi', 20, 'DF');
INSERT INTO `jugadores` VALUES (652, 'Joel Matip', 20, 'DF');
INSERT INTO `jugadores` VALUES (653, 'St?phane Mbia', 20, 'DF');
INSERT INTO `jugadores` VALUES (654, 'Nicolas Nkoulou', 20, 'DF');
INSERT INTO `jugadores` VALUES (655, 'Rigobert Song', 20, 'DF');
INSERT INTO `jugadores` VALUES (656, 'Aur?lien Chedjou', 20, 'V');
INSERT INTO `jugadores` VALUES (657, 'Achille Emana', 20, 'V');
INSERT INTO `jugadores` VALUES (658, 'Eyong Enoh', 20, 'V');
INSERT INTO `jugadores` VALUES (659, 'Jean Makoun', 20, 'V');
INSERT INTO `jugadores` VALUES (660, 'Georges Mandjeck', 20, 'V');
INSERT INTO `jugadores` VALUES (661, 'Landry N`Guemo', 20, 'V');
INSERT INTO `jugadores` VALUES (662, 'Alexandre Song', 20, 'V');
INSERT INTO `jugadores` VALUES (663, 'Vincent Aboubakar', 20, 'DEL');
INSERT INTO `jugadores` VALUES (664, 'Maxim Choupo-Moting', 20, 'DEL');
INSERT INTO `jugadores` VALUES (665, 'Samuel Eto''o', 20, 'DEL');
INSERT INTO `jugadores` VALUES (666, 'Mohamadou Idrissou', 20, 'DEL');
INSERT INTO `jugadores` VALUES (667, 'Pierre Web?', 20, 'DEL');
INSERT INTO `jugadores` VALUES (668, 'Stephan Andersen', 18, 'A');
INSERT INTO `jugadores` VALUES (669, 'Jesper Christiansen', 18, 'A');
INSERT INTO `jugadores` VALUES (670, 'Thomas Sorensen', 18, 'A');
INSERT INTO `jugadores` VALUES (671, 'Daniel Agger', 18, 'DF');
INSERT INTO `jugadores` VALUES (672, 'Lars Jacobsen', 18, 'DF');
INSERT INTO `jugadores` VALUES (673, 'Simon Kjaer', 18, 'DF');
INSERT INTO `jugadores` VALUES (674, 'Per Kroldrup', 18, 'DF');
INSERT INTO `jugadores` VALUES (675, 'Patrick Mtiliga', 18, 'DF');
INSERT INTO `jugadores` VALUES (676, 'Mikkel Beckmann', 18, 'V');
INSERT INTO `jugadores` VALUES (677, 'Thomas Enevoldsen', 18, 'V');
INSERT INTO `jugadores` VALUES (678, 'Christian Eriksen', 18, 'V');
INSERT INTO `jugadores` VALUES (679, 'Jesper Gronkjaer', 18, 'V');
INSERT INTO `jugadores` VALUES (680, 'Daniel Jensen', 18, 'V');
INSERT INTO `jugadores` VALUES (681, 'Martin Jorgensen', 18, 'V');
INSERT INTO `jugadores` VALUES (682, 'Thomas Kahlenberg', 18, 'V');
INSERT INTO `jugadores` VALUES (683, 'William Kvist', 18, 'V');
INSERT INTO `jugadores` VALUES (684, 'Christian Poulsen', 18, 'V');
INSERT INTO `jugadores` VALUES (685, 'Jakob Poulsen', 18, 'V');
INSERT INTO `jugadores` VALUES (686, 'Simon Poulsen', 18, 'V');
INSERT INTO `jugadores` VALUES (687, 'Dennis Rommedahl', 18, 'V');
INSERT INTO `jugadores` VALUES (688, 'Nicklas Bendtner', 18, 'DEL');
INSERT INTO `jugadores` VALUES (689, 'S?ren Larsen', 18, 'DEL');
INSERT INTO `jugadores` VALUES (690, 'Jon Dahl Tomasson', 18, 'DEL');
INSERT INTO `jugadores` VALUES (691, 'Yoshikatsu Kawaguchi', 19, 'A');
INSERT INTO `jugadores` VALUES (692, 'Eiji Kawashima', 19, 'A');
INSERT INTO `jugadores` VALUES (693, 'Seigo Narazaki', 19, 'A');
INSERT INTO `jugadores` VALUES (694, 'Daiki Iwamasa', 19, 'DF');
INSERT INTO `jugadores` VALUES (695, 'Yuichi Komano', 19, 'DF');
INSERT INTO `jugadores` VALUES (696, 'Yasuyuki Konno', 19, 'DF');
INSERT INTO `jugadores` VALUES (697, 'Yuto Nagatomo', 19, 'DF');
INSERT INTO `jugadores` VALUES (698, 'Yuji Nakazawa', 19, 'DF');
INSERT INTO `jugadores` VALUES (699, 'Tulio Tanaka', 19, 'DF');
INSERT INTO `jugadores` VALUES (700, 'Atsuto Uchida', 19, 'DF');
INSERT INTO `jugadores` VALUES (701, 'Yuki Abe', 19, 'V');
INSERT INTO `jugadores` VALUES (702, 'Yasuhito Endo', 19, 'V');
INSERT INTO `jugadores` VALUES (703, 'Makoto Hasebe', 19, 'V');
INSERT INTO `jugadores` VALUES (704, 'Keisuke Honda', 19, 'V');
INSERT INTO `jugadores` VALUES (705, 'Junichi Inamoto', 19, 'V');
INSERT INTO `jugadores` VALUES (706, 'Daisuke Matsui', 19, 'V');
INSERT INTO `jugadores` VALUES (707, 'Kengo Nakamura', 19, 'V');
INSERT INTO `jugadores` VALUES (708, 'Shunsuke Nakamura', 19, 'V');
INSERT INTO `jugadores` VALUES (709, 'Takayuki Morimoto', 19, 'DEL');
INSERT INTO `jugadores` VALUES (710, 'Shinji Okazaki', 19, 'DEL');
INSERT INTO `jugadores` VALUES (711, 'Yoshito Okubo', 19, 'DEL');
INSERT INTO `jugadores` VALUES (712, 'Keiji Tamada', 19, 'DEL');
INSERT INTO `jugadores` VALUES (713, 'Kisho Yano', 19, 'DEL');
INSERT INTO `jugadores` VALUES (714, 'Sander Boschker', 17, 'A');
INSERT INTO `jugadores` VALUES (715, 'Maarten Stekelenburg', 17, 'A');
INSERT INTO `jugadores` VALUES (716, 'Michel Vorm', 17, 'A');
INSERT INTO `jugadores` VALUES (717, 'Khalid Boulahrouz', 17, 'DF');
INSERT INTO `jugadores` VALUES (718, 'Edson Braafheid', 17, 'DF');
INSERT INTO `jugadores` VALUES (719, 'Johnny Heitinga', 17, 'DF');
INSERT INTO `jugadores` VALUES (720, 'Joris Mathijsen', 17, 'DF');
INSERT INTO `jugadores` VALUES (721, 'Andre Ooijer', 17, 'DF');
INSERT INTO `jugadores` VALUES (722, 'Giovanni Van Bronckhorst', 17, 'DF');
INSERT INTO `jugadores` VALUES (723, 'Gregory Van Der Wiel', 17, 'DF');
INSERT INTO `jugadores` VALUES (724, 'Ibrahim Afellay', 17, 'V');
INSERT INTO `jugadores` VALUES (725, 'Nigel De Jong', 17, 'V');
INSERT INTO `jugadores` VALUES (726, 'Demy De Zeeuw', 17, 'V');
INSERT INTO `jugadores` VALUES (727, 'Stijn Schaars', 17, 'V');
INSERT INTO `jugadores` VALUES (728, 'Wesley Sneijder', 17, 'V');
INSERT INTO `jugadores` VALUES (729, 'Mark Van Bommel', 17, 'V');
INSERT INTO `jugadores` VALUES (730, 'Rafael Van der Vaart', 17, 'V');
INSERT INTO `jugadores` VALUES (731, 'Ryan Babel', 17, 'DEL');
INSERT INTO `jugadores` VALUES (732, 'Eljero Elia', 17, 'DEL');
INSERT INTO `jugadores` VALUES (733, 'Klaas-Jan Huntelaar', 17, 'DEL');
INSERT INTO `jugadores` VALUES (734, 'Dirk Kuyt', 17, 'DEL');
INSERT INTO `jugadores` VALUES (735, 'Arjen Robben', 17, 'DEL');
INSERT INTO `jugadores` VALUES (736, 'Robin Van Persie', 17, 'DEL');
INSERT INTO `jugadores` VALUES (737, '', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `partidos`
-- 

CREATE TABLE `partidos` (
  `id_partido` bigint(10) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `lugar` varchar(40) NOT NULL,
  `equipo01` int(3) NOT NULL,
  `golequipo01` int(2) NOT NULL DEFAULT '0',
  `equipo02` int(3) NOT NULL,
  `golequipo02` int(2) NOT NULL DEFAULT '0',
  `ronda` int(1) NOT NULL,
  `torneo` int(10) NOT NULL,
  `estado` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_partido`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

-- 
-- Volcar la base de datos para la tabla `partidos`
-- 

INSERT INTO `partidos` VALUES (184, 'FECHA 2', '2014-02-16', '21:30', '', 12, 0, 8, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (180, 'FECHA 2', '2014-02-15', '21:30', '', 37, 0, 10, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (177, 'FECHA 2', '2014-02-15', '18:00', '', 5, 0, 2, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (176, 'FECHA 2', '2014-02-15', '17:00', '', 7, 0, 36, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (183, 'FECHA 2', '2014-02-16', '18:15', '', 44, 0, 11, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (182, 'FECHA 2', '2014-02-16', '17:00', '', 38, 0, 4, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (181, 'FECHA 2', '2014-02-16', '17:00', '', 45, 0, 35, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (179, 'FECHA 2', '2014-02-15', '21:15', '', 6, 0, 34, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (178, 'FECHA 2', '2014-02-15', '19:10', '', 9, 0, 90, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (175, 'FECHA 2', '2014-02-14', '19:15', '', 1, 0, 3, 0, 2, 7, 'A');
INSERT INTO `partidos` VALUES (165, 'FECHA 1', '2014-02-07', '17:00', '', 36, 1, 5, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (166, 'FECHA 1', '2014-02-07', '19:15', '', 2, 0, 9, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (167, 'FECHA 1', '2014-02-07', '21:30', '', 90, 2, 37, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (168, 'FECHA 1', '2014-02-08', '18:30', '', 34, 2, 1, 1, 1, 7, 'C');
INSERT INTO `partidos` VALUES (169, 'FECHA 1', '2014-02-08', '19:30', '', 4, 1, 7, 1, 1, 7, 'C');
INSERT INTO `partidos` VALUES (170, 'FECHA 1', '2014-02-08', '20:30', '', 10, 3, 6, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (171, 'FECHA 1', '2014-02-09', '17:00', '', 3, 0, 44, 1, 1, 7, 'C');
INSERT INTO `partidos` VALUES (172, 'FECHA 1', '2014-02-09', '18:15', '', 35, 0, 12, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (173, 'FECHA 1', '2014-02-09', '21:30', '', 11, 1, 45, 0, 1, 7, 'C');
INSERT INTO `partidos` VALUES (174, 'FECHA 1', '2014-02-10', '21:15', '', 8, 2, 38, 2, 1, 7, 'C');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `perfiles`
-- 

CREATE TABLE `perfiles` (
  `id_perfil` bigint(10) NOT NULL,
  `Perfil` varchar(100) NOT NULL DEFAULT '',
  UNIQUE KEY `id_perfil` (`id_perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `perfiles`
-- 

INSERT INTO `perfiles` VALUES (1, 'Administrador basic');
INSERT INTO `perfiles` VALUES (2, 'Adminstrador Plata');
INSERT INTO `perfiles` VALUES (3, 'Administrador Oro');
INSERT INTO `perfiles` VALUES (4, 'Administrador Platinum');
INSERT INTO `perfiles` VALUES (5, 'Usuario');
INSERT INTO `perfiles` VALUES (6, 'Usuario Plata');
INSERT INTO `perfiles` VALUES (7, 'Usuario Oro');
INSERT INTO `perfiles` VALUES (8, 'Usuario Platinum');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `prodes`
-- 

CREATE TABLE `prodes` (
  `id_prode` bigint(10) NOT NULL DEFAULT '0',
  `id_partido` int(10) NOT NULL DEFAULT '0',
  `id_usuario` varchar(20) NOT NULL DEFAULT '0',
  `golequipo01` int(2) NOT NULL DEFAULT '0',
  `golequipo02` int(2) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT '2010-06-01',
  `hora` varchar(5) DEFAULT '00:00',
  `estado` char(1) NOT NULL DEFAULT 'A',
  `ronda` int(3) NOT NULL,
  `torneo` int(10) NOT NULL,
  KEY `id_prode` (`id_prode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `prodes`
-- 

INSERT INTO `prodes` VALUES (1, 165, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 166, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 167, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 168, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 169, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 170, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 171, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 172, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 173, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (1, 174, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (2, 165, '1175830146', 1, 3, '2014-02-07', '15:15', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 166, '1175830146', 2, 1, '2014-02-07', '14:42', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 167, '1175830146', 0, 2, '2014-02-07', '14:42', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 168, '1175830146', 1, 1, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 169, '1175830146', 1, 0, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 170, '1175830146', 2, 0, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 171, '1175830146', 0, 1, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 172, '1175830146', 2, 1, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 173, '1175830146', 0, 2, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (2, 174, '1175830146', 2, 0, '2014-02-07', '15:07', 'C', 1, 7);
INSERT INTO `prodes` VALUES (3, 165, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 166, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 167, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 168, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 169, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 170, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 171, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 172, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 173, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (3, 174, '2147483647', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (4, 165, '100004151317926', 1, 1, '2014-02-07', '14:24', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 166, '100004151317926', 2, 0, '2014-02-07', '14:24', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 167, '100004151317926', 1, 0, '2014-02-07', '14:24', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 168, '100004151317926', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (4, 169, '100004151317926', 2, 1, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 170, '100004151317926', 1, 0, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 171, '100004151317926', 0, 3, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 172, '100004151317926', 3, 2, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 173, '100004151317926', 2, 1, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (4, 174, '100004151317926', 2, 0, '2014-02-07', '14:25', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 165, '548667561', 0, 1, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 166, '548667561', 2, 1, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 167, '548667561', 0, 1, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 168, '548667561', 3, 0, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 169, '548667561', 2, 0, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 170, '548667561', 0, 1, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 171, '548667561', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (5, 172, '548667561', 0, 1, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 173, '548667561', 2, 0, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (5, 174, '548667561', 2, 2, '2014-02-07', '14:27', 'C', 1, 7);
INSERT INTO `prodes` VALUES (6, 165, '1347417916', 3, 1, '2014-02-07', '14:29', 'C', 1, 7);
INSERT INTO `prodes` VALUES (6, 166, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 167, '1347417916', 1, 2, '2014-02-07', '14:29', 'C', 1, 7);
INSERT INTO `prodes` VALUES (6, 168, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 169, '1347417916', 1, 0, '2014-02-07', '14:29', 'C', 1, 7);
INSERT INTO `prodes` VALUES (6, 170, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 171, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 172, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 173, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (6, 174, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (7, 165, '1344951503', 0, 4, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 166, '1344951503', 3, 0, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 167, '1344951503', 1, 0, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 168, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (7, 169, '1344951503', 4, 0, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 170, '1344951503', 0, 1, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 171, '1344951503', 4, 0, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 172, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (7, 173, '1344951503', 0, 3, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (7, 174, '1344951503', 2, 0, '2014-02-07', '14:39', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 165, '1144278709', 0, 1, '2014-02-07', '14:43', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 166, '1144278709', 1, 0, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 167, '1144278709', 1, 0, '2014-02-07', '14:43', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 168, '1144278709', 1, 0, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 169, '1144278709', 0, 2, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 170, '1144278709', 0, 2, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 171, '1144278709', 2, 0, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 172, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (8, 173, '1144278709', 0, 2, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (8, 174, '1144278709', 3, 0, '2014-02-07', '14:46', 'C', 1, 7);
INSERT INTO `prodes` VALUES (9, 165, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 166, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 167, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 168, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 169, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 170, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 171, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 172, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 173, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (9, 174, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 1, 7);
INSERT INTO `prodes` VALUES (10, 184, '548667561', 1, 0, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 180, '548667561', 0, 1, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 177, '548667561', 0, 2, '2014-02-11', '16:02', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 176, '548667561', 1, 1, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 183, '548667561', 1, 1, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 182, '548667561', 2, 0, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 181, '548667561', 1, 3, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 179, '548667561', 0, 1, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 178, '548667561', 2, 1, '2014-02-11', '16:05', 'A', 2, 7);
INSERT INTO `prodes` VALUES (10, 175, '548667561', 0, 1, '2014-02-11', '16:02', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 184, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 180, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 177, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 176, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 183, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 182, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 181, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 179, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 178, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (11, 175, '1144278709', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 184, '1175830146', 1, 2, '2014-02-11', '16:08', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 180, '1175830146', 1, 3, '2014-02-11', '16:07', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 177, '1175830146', 2, 1, '2014-02-11', '16:07', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 176, '1175830146', 1, 2, '2014-02-11', '16:07', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 183, '1175830146', 2, 3, '2014-02-11', '16:08', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 182, '1175830146', 1, 2, '2014-02-11', '16:08', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 181, '1175830146', 1, 1, '2014-02-11', '16:08', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 179, '1175830146', 2, 2, '2014-02-11', '16:07', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 178, '1175830146', 2, 0, '2014-02-11', '16:08', 'A', 2, 7);
INSERT INTO `prodes` VALUES (12, 175, '1175830146', 1, 1, '2014-02-11', '16:04', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 184, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 180, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 177, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 176, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 183, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 182, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 181, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 179, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 178, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (13, 175, '1344951503', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 184, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 180, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 177, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 176, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 183, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 182, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 181, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 179, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 178, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (14, 175, '1347417916', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 184, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 180, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 177, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 176, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 183, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 182, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 181, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 179, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 178, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (15, 175, '100001882297669', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 184, '100004151317926', 2, 1, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 180, '100004151317926', 1, 3, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 177, '100004151317926', 2, 1, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 176, '100004151317926', 2, 0, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 183, '100004151317926', 1, 2, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 182, '100004151317926', 2, 0, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 181, '100004151317926', 0, 3, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 179, '100004151317926', 0, 2, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 178, '100004151317926', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (16, 175, '100004151317926', 1, 1, '2014-02-11', '16:03', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 184, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 180, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 177, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 176, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 183, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 182, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 181, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 179, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 178, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (17, 175, '100006457313538', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 184, '559355237', 1, 2, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 180, '559355237', 2, 1, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 177, '559355237', 2, 1, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 176, '559355237', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 183, '559355237', 0, 1, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 182, '559355237', 2, 0, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 181, '559355237', 1, 0, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 179, '559355237', 1, 1, '2014-02-11', '16:20', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 178, '559355237', 0, 0, '2010-06-01', '00:00', 'A', 2, 7);
INSERT INTO `prodes` VALUES (18, 175, '559355237', 0, 1, '2014-02-11', '16:20', 'A', 2, 7);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `prodes_usuarios`
-- 

CREATE TABLE `prodes_usuarios` (
  `id_prode` bigint(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`id_prode`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

-- 
-- Volcar la base de datos para la tabla `prodes_usuarios`
-- 

INSERT INTO `prodes_usuarios` VALUES (1, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (2, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (3, '2147483647');
INSERT INTO `prodes_usuarios` VALUES (8, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (9, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (10, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (11, '548667561');
INSERT INTO `prodes_usuarios` VALUES (12, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (13, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (14, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (15, '548667561');
INSERT INTO `prodes_usuarios` VALUES (16, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (17, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (18, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (19, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (20, '548667561');
INSERT INTO `prodes_usuarios` VALUES (21, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (22, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (23, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (24, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (25, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (26, '548667561');
INSERT INTO `prodes_usuarios` VALUES (27, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (28, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (29, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (30, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (31, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (32, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (33, '548667561');
INSERT INTO `prodes_usuarios` VALUES (34, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (35, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (36, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (37, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (38, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (39, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (40, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (41, '548667561');
INSERT INTO `prodes_usuarios` VALUES (42, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (43, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (44, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (45, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (46, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (47, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (48, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (49, '548667561');
INSERT INTO `prodes_usuarios` VALUES (50, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (51, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (52, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (53, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (54, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (55, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (56, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (57, '548667561');
INSERT INTO `prodes_usuarios` VALUES (58, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (59, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (60, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (61, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (62, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (63, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (64, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (65, '548667561');
INSERT INTO `prodes_usuarios` VALUES (66, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (67, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (68, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (69, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (70, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (71, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (72, '100006457313538');
INSERT INTO `prodes_usuarios` VALUES (73, '548667561');
INSERT INTO `prodes_usuarios` VALUES (74, '559355237');
INSERT INTO `prodes_usuarios` VALUES (75, '1144278709');
INSERT INTO `prodes_usuarios` VALUES (76, '1175830146');
INSERT INTO `prodes_usuarios` VALUES (77, '1344951503');
INSERT INTO `prodes_usuarios` VALUES (78, '1347417916');
INSERT INTO `prodes_usuarios` VALUES (79, '100001882297669');
INSERT INTO `prodes_usuarios` VALUES (80, '100004151317926');
INSERT INTO `prodes_usuarios` VALUES (81, '100006457313538');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_groups`
-- 

CREATE TABLE `qo_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(35) DEFAULT NULL,
  `description` text,
  `importance` int(3) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `qo_groups`
-- 

INSERT INTO `qo_groups` VALUES (1, 'System Administrator', 'The administrator of this desktop system.', 100, 1);
INSERT INTO `qo_groups` VALUES (2, 'Demo', 'A demo user', 1, 1);
INSERT INTO `qo_groups` VALUES (3, 'vendors', 'vendedores', 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_groups_has_member_preferences`
-- 

CREATE TABLE `qo_groups_has_member_preferences` (
  `qo_groups_id` int(11) unsigned NOT NULL DEFAULT '0',
  `qo_members_id` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text COMMENT 'JSON data',
  PRIMARY KEY (`qo_members_id`,`qo_groups_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_groups_has_member_preferences`
-- 

INSERT INTO `qo_groups_has_member_preferences` VALUES (0, 0, '{"backgroundColor": "f9f9f9","fontColor": "000000","launchers": {"autorun": [],"quickstart": [],"shortcut": []},"themeId": 1,"transparency": 100,"wallpaperId": 11,"wallpaperPosition": "center"}');
INSERT INTO `qo_groups_has_member_preferences` VALUES (1, 3, '{"backgroundColor":"f9f9f9","fontColor":"000000","wallpaperId":3,"wallpaperPosition":"center","launchers":{"shortcut":["qo-admin","demo-tab"]}}');
INSERT INTO `qo_groups_has_member_preferences` VALUES (3, 3, '{"launchers":{"shortcut":[]},"themeId":1,"transparency":100}');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_groups_has_members`
-- 

CREATE TABLE `qo_groups_has_members` (
  `qo_groups_id` int(11) unsigned NOT NULL DEFAULT '0',
  `qo_members_id` int(11) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is the member currently active in this group',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is the member the administrator of this group',
  PRIMARY KEY (`qo_members_id`,`qo_groups_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_groups_has_members`
-- 

INSERT INTO `qo_groups_has_members` VALUES (2, 2, 1, 0);
INSERT INTO `qo_groups_has_members` VALUES (1, 3, 0, 0);
INSERT INTO `qo_groups_has_members` VALUES (3, 3, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_groups_has_privileges`
-- 

CREATE TABLE `qo_groups_has_privileges` (
  `qo_groups_id` int(11) unsigned NOT NULL DEFAULT '0',
  `qo_privileges_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qo_groups_id`,`qo_privileges_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_groups_has_privileges`
-- 

INSERT INTO `qo_groups_has_privileges` VALUES (1, 1);
INSERT INTO `qo_groups_has_privileges` VALUES (2, 2);
INSERT INTO `qo_groups_has_privileges` VALUES (3, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_libraries`
-- 

CREATE TABLE `qo_libraries` (
  `id` varchar(35) NOT NULL DEFAULT '',
  `data` text COMMENT 'The definition data ( JSON )',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A value of 1 or 0 is expected',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_libraries`
-- 

INSERT INTO `qo_libraries` VALUES ('colorpicker', '{\r\n   "dependencies": [\r\n      { "id": "hexfield", "type": "library" }\r\n   ],\r\n\r\n   "client": {\r\n      "css": [\r\n         {\r\n           "directory": "color-picker/resources/",\r\n           "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "color-picker/",\r\n            "files": [ "Ext.ux.ColorPicker.js" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);
INSERT INTO `qo_libraries` VALUES ('columntree', '{\r\n   "client": {\r\n      "css": [\r\n         {\r\n            "directory": "column-tree/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);
INSERT INTO `qo_libraries` VALUES ('explorerview', '{\r\n   "client": {\r\n      "css": [\r\n         {\r\n            "directory": "explorer-view/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "explorer-view/",\r\n            "files": [ "Ext.ux.grid.ExplorerView.js", "Ext.ux.grid.GroupingExplorerView.js" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);
INSERT INTO `qo_libraries` VALUES ('hexfield', '{\r\n   "client": {\r\n      "javascript": [\r\n         {\r\n            "directory": "hex-field/",\r\n            "files": [ "Ext.ux.form.HexField.js" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);
INSERT INTO `qo_libraries` VALUES ('iframecomponent', '{\r\n   "client": {\r\n      "javascript": [\r\n         {\r\n            "directory": "iframe-component/",\r\n            "files": [ "Ext.ux.IFrameComponent.js" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);
INSERT INTO `qo_libraries` VALUES ('modalnotice', '{\r\n   "client": {\r\n      "javascript": [\r\n         {\r\n            "directory": "modal-notice/",\r\n            "files": [ "Ext.plugin.ModalNotice.js" ]\r\n         }\r\n      ]\r\n   }\r\n}', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_log`
-- 

CREATE TABLE `qo_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(15) DEFAULT NULL COMMENT 'ERROR, WARNING, MESSAGE or AUDIT',
  `text` text,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

-- 
-- Volcar la base de datos para la tabla `qo_log`
-- 

INSERT INTO `qo_log` VALUES (112, 'ERROR', 'In validate_module() of os.php, Missing module file (/var/www/virtualdesktop/modules/demo/layout-win/client/resources/styles.css) for module id demo-layout', '2013-01-29 12:38:23');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_members`
-- 

CREATE TABLE `qo_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `email_address` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `locale` varchar(5) DEFAULT 'en',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is the member currently active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `qo_members`
-- 

INSERT INTO `qo_members` VALUES (2, 'Andrea', 'Cabrera', 'Andrea', '3aa50a240649d35f2effc6b4a5247af9980adc37', 'en', 1);
INSERT INTO `qo_members` VALUES (1, 'Alejandro', 'Daas', 'aledaas', '3aa50a240649d35f2effc6b4a5247af9980adc37', 'en', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_modules`
-- 

CREATE TABLE `qo_modules` (
  `id` varchar(35) NOT NULL DEFAULT '',
  `type` varchar(35) DEFAULT NULL,
  `data` text COMMENT 'The definition data ( JSON )',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A value of 1 or 0 is expected',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_modules`
-- 

INSERT INTO `qo_modules` VALUES ('demo-accordion', 'demo/accordion', '{\r\n   "id": "demo-accordion",\r\n\r\n   "type": "demo/accordion",\r\n\r\n   "about": {\r\n      "author": "Jack Slocum",\r\n      "description": "Demo of window with accordion.",\r\n      "name": "Accordion Window",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "locale": {\r\n      "class": "QoDesk.AccordionWindow.Locale",\r\n      "directory": "demo/acc-win/client/locale/",\r\n      "extension": ".json",\r\n      "languages": [ "en" ]\r\n   },\r\n\r\n   "client": {\r\n      "class": "QoDesk.AccordionWindow",\r\n      "css": [\r\n         {\r\n            "directory": "demo/acc-win/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "demo/acc-win/client/",\r\n            "files": [ "acc-win.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "acc-icon",\r\n            "shortcutIconCls": "demo-acc-shortcut",\r\n            "text": "Accordion Window",\r\n            "tooltip": "<b>Accordion Window</b><br />A window with an accordion layout"\r\n         },\r\n         "paths": {\r\n            "startmenu": "/"\r\n         }\r\n      }\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('demo-bogus', 'demo/bogus', '{\r\n   "id": "demo-bogus",\r\n\r\n   "type": "demo/bogus",\r\n\r\n   "about": {\r\n      "author": "Jack Slocum",\r\n      "description": "Demo of bogus window.",\r\n      "name": "Accordion Window",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "client": {\r\n      "class": "QoDesk.BogusWindow",\r\n      "css": [\r\n         {\r\n            "directory": "demo/bogus-win/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "demo/bogus-win/client/",\r\n            "files": [ "bogus-win.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "bogus-icon",\r\n            "shortcutIconCls": "demo-bogus-shortcut",\r\n            "text": "Bogus Window",\r\n            "tooltip": "<b>Bogus Window</b><br />A bogus window"\r\n         },\r\n         "paths": {\r\n             "startmenu": "/Bogus Menu/Bogus Sub Menu"\r\n         }\r\n      }\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('demo-grid', 'demo/grid', '{\r\n   "id": "demo-grid",\r\n\r\n   "type": "demo/grid",\r\n\r\n   "about": {\r\n      "author": "Jack Slocum",\r\n      "description": "Demo of grid window.",\r\n      "name": "Grid Window",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "client": {\r\n      "class": "QoDesk.GridWindow",\r\n      "css": [\r\n         {\r\n            "directory": "demo/grid-win/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "demo/grid-win/client/",\r\n            "files": [ "grid-win.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "grid-icon",\r\n            "shortcutIconCls": "demo-grid-shortcut",\r\n            "text": "Grid Window",\r\n            "tooltip": "<b>Grid Window</b><br />A grid window"\r\n         },\r\n         "paths": {\r\n            "startmenu": "/"\r\n         }\r\n      }\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('demo-layout', 'demo/layout', '{\n   "id": "demo-layout",\n\n   "type": "demo/layout",\n\n   "about": {\n      "author": "aledaas",\n      "description": "panel para el resumen de horas.",\n      "name": "Works and hours",\n      "url": "www.umbralinternet.com",\n      "version": "1.0"\n   },\n\n   "client": {\n      "class": "QoDesk.LayoutWindow",\n      "css": [\n         {\n            "directory": "demo/layout-win/client/resources/",\n            "files": [ "styles.css" ]\n         }\n      ],\n      "javascript": [\n         {\n            "directory": "demo/layout-win/client/",\n            "files": [ "worksandhours.js" ]\n         }\n      ],\n      "launcher": {\n         "config": {\n            "iconCls": "layout-icon",\n            "shortcutIconCls": "demo-layout-shortcut",\n            "text": "Works and hours",\n            "tooltip": "<b>Works and hours</b><br />A works and hours register"\n         },\n         "paths": {\n            "startmenu": "/"\n         }\n      }\n   }\n}', 1);
INSERT INTO `qo_modules` VALUES ('demo-tab', 'demo/tab', '{\r\n   "id": "demo-tab",\r\n   \r\n   "type": "demo/tab",\r\n\r\n   "about": {\r\n      "author": "aledaas",\r\n      "description": "admin principal databases",\r\n      "name": "Main Databases",\r\n      "url": "www.umbralinternet.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "client": {\r\n      "class": "QoDesk.TabWindow",\r\n      "css": [\r\n         {\r\n            "directory": "demo/tab-win/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "demo/tab-win/client/",\r\n            "files": [ "tab-win.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "tab-icon",\r\n            "shortcutIconCls": "demo-tab-shortcut",\r\n            "text": "Main Databases",\r\n            "tooltip": "<b>Main Databases</b><br />Admin principal Databases"\r\n         },\r\n         "paths": {\r\n            "startmenu": "/"\r\n         }\r\n      }\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('qo-admin', 'system/administration', '{\r\n   "id": "qo-admin",\r\n\r\n   "type": "system/administration",\r\n\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "description": "Allows system administration",\r\n      "name": "Admin",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "dependencies": [\r\n      { "id": "columntree", "type": "library" }\r\n   ],\r\n\r\n   "client": {\r\n      "class": "QoDesk.QoAdmin",\r\n      "css": [\r\n         {\r\n            "directory": "qwiki/admin/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "qwiki/admin/client/",\r\n            "files": [ "QoAdmin.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/",\r\n            "files": [ "ActiveColumn.js", "ColumnNodeUI.js", "Nav.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/groups/",\r\n            "files": [ "Groups.js", "GroupsAdd.js", "GroupsDetail.js", "GroupsGrid.js", "GroupsEdit.js", "GroupsTree.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/members/",\r\n            "files": [ "Members.js", "MembersAdd.js", "MembersDetail.js", "MembersEdit.js", "MembersGrid.js", "MembersTree.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/privileges/",\r\n            "files": [ "Privileges.js", "PrivilegesDetail.js", "PrivilegesGrid.js", "PrivilegesManage.js", "PrivilegesTree.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/modules/",\r\n            "files": [ "Modules.js", "ModulesDetail.js", "ModulesGrid.js", "ModulesMethodsGrid.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/admin/client/lib/signups/",\r\n            "files": [ "Signups.js", "SignupsDetail.js", "SignupsGrid.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "qo-admin-icon",\r\n            "shortcutIconCls": "qo-admin-shortcut-icon",\r\n            "text": "Admin",\r\n            "tooltip": "<b>Admin</b><br />Allows system administration"\r\n         },\r\n         "paths": {\r\n            "startmenu": "/Admin"\r\n         }\r\n      }\r\n   },\r\n\r\n   "server": {\r\n      "methods": [\r\n         { "name": "addMember", "description": "Add a new member" },\r\n         { "name": "addMemberToGroup", "description": "Add a member to a group" },\r\n         { "name": "approveSignupsToGroup", "description": "Approve a signup request" },\r\n         { "name": "deleteMemberFromGroup", "description": "Delete a member from a group" },\r\n         { "name": "deleteMembers", "description": "Delete a member" },\r\n         { "name": "denySignups", "description": "Deny a signup request" },\r\n         { "name": "editMember", "description": "Edit a members information" }\r\n      ],\r\n      "class": "QoAdmin",\r\n      "file": "qwiki/admin/server/QoAdmin.php"\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('qo-mail', 'email', '{\r\n   "id": "qo-mail",\r\n\r\n   "type": "system/email",\r\n\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "description": "Allows users to send and receive email",\r\n      "name": "qWikiMail",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "dependencies": [\r\n         { "id": "iframecomponent", "type": "library" }\r\n   ],\r\n\r\n   "client": {\r\n      "class": "QoDesk.QoMail",\r\n      "css": [\r\n         {\r\n            "directory": "qwiki/mail/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "qwiki/mail/client/",\r\n            "files": [ "QoMail.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "qo-mail-icon",\r\n            "shortcutIconCls": "qo-mail-shortcut-icon",\r\n            "text": "Mail",\r\n            "tooltip": "<b>Mail</b><br />Allows you to send and receive email"\r\n         },\r\n         "paths": {\r\n            "startmenu": "/"\r\n         }\r\n      }\r\n   },\r\n\r\n   "server": {\r\n      "methods": [\r\n         { "name": "loadMemberFolders", "description": "Allow member to load (view) their folders" },\r\n         { "name": "addMemberFolder", "description": "Allow member to add a new folder" }\r\n      ],\r\n      "class": "QoMail",\r\n      "file": "qwiki/mail/server/QoMail.php"\r\n   }\r\n}', 1);
INSERT INTO `qo_modules` VALUES ('qo-preferences', 'system/preferences', '{\r\n   "id": "qo-preferences",\r\n\r\n   "type": "system/preferences",\r\n\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "description": "Allows users to set and save their desktop preferences",\r\n      "name": "Preferences",\r\n      "url": "www.qwikioffice.com",\r\n      "version": "1.0"\r\n   },\r\n\r\n   "dependencies": [\r\n      { "id": "colorpicker", "type": "library" },\r\n      { "id": "explorerview", "type": "library" },\r\n      { "id": "modalnotice", "type": "library" }\r\n   ],\r\n\r\n   "locale": {\r\n      "class": "QoDesk.QoPreferences.Locale",\r\n      "directory": "qwiki/preferences/client/locale/",\r\n      "extension": ".json",\r\n      "languages": [ "en" ]\r\n   },\r\n\r\n   "client": {\r\n      "class": "QoDesk.QoPreferences",\r\n      "css": [\r\n         {\r\n            "directory": "qwiki/preferences/client/resources/",\r\n            "files": [ "styles.css" ]\r\n         }\r\n      ],\r\n      "javascript": [\r\n         {\r\n            "directory": "qwiki/preferences/client/",\r\n            "files": [ "QoPreferences.js" ]\r\n         },\r\n         {\r\n            "directory": "qwiki/preferences/client/lib/",\r\n            "files": [ "Appearance.js", "AutoRun.js", "Background.js", "Grid.js", "Nav.js", "QuickStart.js", "Shortcuts.js" ]\r\n         }\r\n      ],\r\n      "launcher": {\r\n         "config": {\r\n            "iconCls": "pref-icon",\r\n            "shortcutIconCls": "pref-shortcut-icon",\r\n            "text": "Preferences",\r\n            "tooltip": "<b>Preferences</b><br />Allows you to modify your desktop"\r\n         },\r\n         "paths": {\r\n            "contextmenu": "/",\r\n            "startmenutool": "/"\r\n         }\r\n      }\r\n   },\r\n\r\n   "server": {\r\n      "methods": [\r\n         { "name": "saveAppearance", "description": "Allow member to save appearance" },\r\n         { "name": "saveAutorun", "description": "Allow member to save which modules run at start up" },\r\n         { "name": "saveBackground", "description": "Allow member to save a wallpaper as the background" },\r\n         { "name": "saveQuickstart", "description": "Allow member to save which modules appear in the Quick Start panel" },\r\n         { "name": "saveShortcut", "description": "Allow member to save which modules appear as a Shortcut" },\r\n         { "name": "viewThemes", "description": "Allow member to view the available themes" },\r\n         { "name": "viewWallpapers", "description": "Allow member to view the available wallpapers" }\r\n      ],\r\n      "class": "QoPreferences",\r\n      "file": "qwiki/preferences/server/QoPreferences.php"\r\n   }\r\n}', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_privileges`
-- 

CREATE TABLE `qo_privileges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data` text COMMENT 'The definition data ( JSON )',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A value of 1 or 0 is expected',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `qo_privileges`
-- 

INSERT INTO `qo_privileges` VALUES (1, '{\r\n   "description": "A user with system administrator privileges.  The administrator for the desktop environment.",\r\n\r\n   "name": "System Administrator",\r\n\r\n   "modules": [\r\n      {\r\n         "id": "qo-admin",\r\n         "allow": 1,\r\n         "methods": [\r\n            { "name": "addGroup", "allow": 1 },\r\n            { "name": "addMember", "allow": 1 },\r\n            { "name": "addMemberToGroup", "allow": 1 },\r\n            { "name": "addPrivilege", "allow": 1 },\r\n            { "name": "approveSignupsToGroup", "allow": 1 },\r\n            { "name": "changeGroupPrivilege", "allow": 1 },\r\n            { "name": "deleteGroups", "allow": 1 },\r\n            { "name": "deleteMembers", "allow": 1 },\r\n            { "name": "deleteMemberFromGroup", "allow": 1 },\r\n            { "name": "deletePrivileges", "allow": 1 },\r\n            { "name": "denySignups", "allow": 1 },\r\n            { "name": "editGroup", "allow": 1 },\r\n            { "name": "editMember", "allow": 1 },\r\n            { "name": "editPrivilege", "allow": 1 },\r\n            { "name": "loadGroupsCombo", "allow": 1 },\r\n            { "name": "loadPrivilegesCombo", "allow": 1 },\r\n            { "name": "markSignupsAsSpam", "allow": 1 },\r\n            { "name": "viewAllGroups", "allow": 1 },\r\n            { "name": "viewAllMembers", "allow": 1 },\r\n            { "name": "viewAllPrivileges", "allow": 1 },\r\n            { "name": "viewAllSignups", "allow": 1 },\r\n            { "name": "viewGroup", "allow": 1 },\r\n            { "name": "viewGroupPrivileges", "allow": 1 },\r\n            { "name": "viewMember", "allow": 1 },\r\n            { "name": "viewMemberGroups", "allow": 1 },\r\n            { "name": "viewModuleMethods", "allow": 1 },\r\n            { "name": "viewPrivilegeModules", "allow": 1 }\r\n         ]\r\n      },\r\n      {\r\n         "id": "qo-mail",\r\n         "allow": 1,\r\n         "methods": [\r\n            { "name": "addMemberFolder", "allow": 1 },\r\n            { "name": "loadMemberFolders", "allow": 1 }\r\n         ]\r\n      },\r\n      {\r\n         "id": "qo-preferences",\r\n         "allow": 1,\r\n         "methods": [\r\n            { "name": "saveAppearance", "allow": 1 },\r\n            { "name": "saveAutorun", "allow": 1 },\r\n            { "name": "saveBackground", "allow": 1 },\r\n            { "name": "saveQuickstart", "allow": 1 },\r\n            { "name": "saveShortcut", "allow": 1 },\r\n            { "name": "viewThemes", "allow": 1 },\r\n            { "name": "viewWallpapers", "allow": 1 }\r\n         ]\r\n      },\r\n      {\r\n         "id": "demo-layout",\r\n         "allow": 1\r\n      },\r\n      {\r\n         "id": "demo-grid",\r\n         "allow": 1\r\n      },\r\n      {\r\n         "id": "demo-bogus",\r\n         "allow": 1\r\n      },\r\n      {\r\n         "id": "demo-tab",\r\n         "allow": 1\r\n      },\r\n      {\r\n         "id": "demo-accordion",\r\n         "allow": 1\r\n      }\r\n   ]\r\n}', 1);
INSERT INTO `qo_privileges` VALUES (2, '{\r\n   "description": "A user with minimum (demo) privileges.  Can not save or edit.",\r\n\r\n   "name": "Demo",\r\n\r\n   "modules": [\r\n      {\r\n         "id": "qo-preferences",\r\n         "allow": 1,\r\n         "methods": [\r\n            { "name": "viewThemes", "allow": 1 },\r\n            { "name": "viewWallpapers", "allow": 1 }\r\n         ]\r\n      },\r\n      {\r\n         "id": "demo-layout",\r\n         "allow": 1\r\n      },\r\n      {\r\n         "id": "demo-tab",\r\n         "allow": 1\r\n      }\r\n     \r\n   ]\r\n}', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_sessions`
-- 

CREATE TABLE `qo_sessions` (
  `id` varchar(128) NOT NULL DEFAULT '' COMMENT 'a randomly generated id',
  `qo_members_id` int(11) unsigned NOT NULL DEFAULT '0',
  `qo_groups_id` int(11) unsigned DEFAULT NULL COMMENT 'Group the member signed in under',
  `data` text,
  `ip` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`qo_members_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_sessions`
-- 

INSERT INTO `qo_sessions` VALUES ('99dc5fd6135a890b404fc56d9b07de12', 2, 2, '{"module":{"demo-layout":{"valid":1,"loaded":{"css":1}},"demo-tab":{"valid":1,"loaded":{"css":1}},"qo-preferences":{"valid":1,"loaded":{"css":1}}},"library":{"colorpicker":{"loaded":{"css":1}},"explorerview":{"loaded":{"css":1}}}}', '190.111.243.98', '2013-07-16 15:58:46');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_signup_requests`
-- 

CREATE TABLE `qo_signup_requests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `email_address` varchar(55) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `qo_signup_requests`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_spam`
-- 

CREATE TABLE `qo_spam` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_address` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `qo_spam`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_themes`
-- 

CREATE TABLE `qo_themes` (
  `id` varchar(35) NOT NULL DEFAULT '',
  `data` text COMMENT 'The definition data ( JSON )',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A value of 1 or 0 is expected',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `qo_themes`
-- 

INSERT INTO `qo_themes` VALUES ('1', '{\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "version": "1.0",\r\n      "url": "www.qWikiOffice.com"\r\n   },\r\n   "group": "Vista",\r\n   "name": "Vista Black",\r\n   "thumbnail": "xtheme-vistablack/xtheme-vistablack.png",\r\n   "file": "xtheme-vistablack/css/xtheme-vistablack.css"\r\n}', 1);
INSERT INTO `qo_themes` VALUES ('2', '{\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "version": "1.0",\r\n      "url": "www.qWikiOffice.com"\r\n   },\r\n   "group": "Vista",\r\n   "name": "Vista Blue",\r\n   "thumbnail": "xtheme-vistablue/xtheme-vistablue.png",\r\n   "file": "xtheme-vistablue/css/xtheme-vistablue.css"\r\n}', 1);
INSERT INTO `qo_themes` VALUES ('3', '{\r\n   "about": {\r\n      "author": "Todd Murdock",\r\n      "version": "1.0",\r\n      "url": "www.qWikiOffice.com"\r\n   },\r\n   "group": "Vista",\r\n   "name": "Vista Glass",\r\n   "thumbnail": "xtheme-vistaglass/xtheme-vistaglass.png",\r\n   "file": "xtheme-vistaglass/css/xtheme-vistaglass.css"\r\n}', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `qo_wallpapers`
-- 

CREATE TABLE `qo_wallpapers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data` text COMMENT 'The definition data ( JSON )',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A value of 1 or 0 is expected',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `qo_wallpapers`
-- 

INSERT INTO `qo_wallpapers` VALUES (1, '{\r\n   "group": "Blank",\r\n   "name": "Blank",\r\n   "thumbnail": "thumbnails/blank.gif",\r\n   "file": "blank.gif"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (2, '{\r\n   "group": "Pattern",\r\n   "name": "Blue Psychedelic",\r\n   "thumbnail": "thumbnails/blue-psychedelic.jpg",\r\n   "file": "blue-psychedelic.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (3, '{\r\n   "group": "Pattern",\r\n   "name": "Blue Swirl",\r\n   "thumbnail": "thumbnails/blue-swirl.jpg",\r\n   "file": "blue-swirl.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (4, '{\r\n   "group": "Nature",\r\n   "name": "Colorado Farm",\r\n   "thumbnail": "thumbnails/colorado-farm.jpg",\r\n   "file": "colorado-farm.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (5, '{\r\n   "group": "Nature",\r\n   "name": "Curls On Green",\r\n   "thumbnail": "thumbnails/curls-on-green.jpg",\r\n   "file": "curls-on-green.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (6, '{\r\n   "group": "Pattern",\r\n   "name": "Emotion",\r\n   "thumbnail": "thumbnails/emotion.jpg",\r\n   "file": "emotion.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (7, '{\r\n   "group": "Pattern",\r\n   "name": "Eos",\r\n   "thumbnail": "thumbnails/eos.jpg",\r\n   "file": "eos.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (8, '{\r\n   "group": "Nature",\r\n   "name": "Fields of Peace",\r\n   "thumbnail": "thumbnails/fields-of-peace.jpg",\r\n   "file": "fields-of-peace.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (9, '{\r\n   "group": "Nature",\r\n   "name": "Fresh Morning",\r\n   "thumbnail": "thumbnails/fresh-morning.jpg",\r\n   "file": "fresh-morning.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (10, '{\r\n   "group": "Nature",\r\n   "name": "Lady Buggin",\r\n   "thumbnail": "thumbnails/ladybuggin.jpg",\r\n   "file": "ladybuggin.jpg"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (11, '{\r\n   "group": "qWikiOffice",\r\n   "name": "qWikiOffice",\r\n   "thumbnail": "thumbnails/qwikioffice.jpg",\r\n   "file": "logo-eriksen.png"\r\n}', 1);
INSERT INTO `qo_wallpapers` VALUES (12, '{\r\n   "group": "Nature",\r\n   "name": "Summer",\r\n   "thumbnail": "thumbnails/summer.jpg",\r\n   "file": "summer.jpg"\r\n}', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ranking`
-- 

CREATE TABLE `ranking` (
  `id_usuario` varchar(20) NOT NULL,
  `ronda` int(1) NOT NULL,
  `torneo` int(10) NOT NULL,
  `puntos` int(5) NOT NULL DEFAULT '0',
  KEY `id_usuario` (`id_usuario`),
  KEY `USUARIO` (`id_usuario`,`ronda`,`torneo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `ranking`
-- 

INSERT INTO `ranking` VALUES ('100004151317926', 1, 7, 4);
INSERT INTO `ranking` VALUES ('1144278709', 1, 7, 2);
INSERT INTO `ranking` VALUES ('1175830146', 1, 7, 4);
INSERT INTO `ranking` VALUES ('1344951503', 1, 7, 1);
INSERT INTO `ranking` VALUES ('1347417916', 1, 7, 1);
INSERT INTO `ranking` VALUES ('548667561', 1, 7, 5);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sucursales`
-- 

CREATE TABLE `sucursales` (
  `prov_codigo` varchar(3) NOT NULL,
  `sucursal` varchar(100) NOT NULL,
  PRIMARY KEY (`prov_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `sucursales`
-- 

INSERT INTO `sucursales` VALUES ('SY3', 'Sistemas-TRECE');
INSERT INTO `sucursales` VALUES ('SYC', 'Sistemas-Ciudad');
INSERT INTO `sucursales` VALUES ('SYT', 'Sistemas-TN');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `torneos`
-- 

CREATE TABLE `torneos` (
  `id_torneo` bigint(10) NOT NULL AUTO_INCREMENT,
  `torneo` varchar(100) NOT NULL,
  `deporte` varchar(100) NOT NULL,
  PRIMARY KEY (`id_torneo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `torneos`
-- 

INSERT INTO `torneos` VALUES (1, 'Primera A', 'FUTBOL');
INSERT INTO `torneos` VALUES (2, 'Primera B', 'FUTBOL');
INSERT INTO `torneos` VALUES (3, 'Liga de Ezpaña', 'FUTBOL');
INSERT INTO `torneos` VALUES (4, 'Eliminatorias Conmebol', 'FUTBOL');
INSERT INTO `torneos` VALUES (5, 'Libertadores 2013', 'FUTBOL');
INSERT INTO `torneos` VALUES (6, 'Champion Leage (Semifinales)', 'FUTBOL');
INSERT INTO `torneos` VALUES (7, 'PRIMERA A - 2014', 'FUTBOL');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) NOT NULL,
  `id_usuario_face` varchar(20) DEFAULT NULL,
  `usuario` varchar(10) NOT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_grupo` int(10) DEFAULT '0',
  `perfil` int(10) DEFAULT '0',
  `referidopor` int(10) DEFAULT '0',
  `LOGIN` date DEFAULT NULL,
  `activo` char(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `provincia` varchar(3) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `fb_location_id` varchar(20) DEFAULT NULL,
  `fb_location_name` varchar(150) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (100006457313538, '100006457313538', 'karem.hali', 'karem.halime.3', 'karemhalime@gmail.com', 3, 5, 1, NULL, 'A', 'Karem', 'Halime', 'SYT', NULL, NULL, '106423786059675', 'Buenos Aires, Argentina', 'female');
INSERT INTO `usuarios` VALUES (1175830146, '1175830146', 'aledaas', 'aledaas', 'aledaas@gmail.com', 3, 5, 1, NULL, 'A', 'Alejandro Ibrahin', 'Daas', 'SYT', NULL, NULL, '106423786059675', 'Buenos Aires, Argentina', 'male');
INSERT INTO `usuarios` VALUES (100004151317926, '100004151317926', 'sergio.mil', 'sergio.milla.357', 'sergio_milla@live.com', 3, 5, 1, NULL, 'A', 'Sergio', 'Milla', 'SYT', NULL, NULL, '', '', 'male');
INSERT INTO `usuarios` VALUES (548667561, '548667561', 'leanazulyo', 'leanazulyoro2', 'leanazulyoro@gmail.com', 3, 5, 1, NULL, 'A', 'Leandro', 'Almeida', 'SYT', NULL, NULL, '', '', 'male');
INSERT INTO `usuarios` VALUES (1347417916, '1347417916', '', '', 'hugo_silva20@hotmail.com', 3, 5, 1, NULL, 'A', 'Hugo', 'Silva', 'SYT', NULL, NULL, '108266569197448', 'MorÃ³n, Buenos Aires', 'male');
INSERT INTO `usuarios` VALUES (1344951503, '1344951503', 'emanuelvig', 'emanuelvignoli', 'emanuelvignoli@hotmail.com', 3, 5, 1, NULL, 'A', 'Ema', 'Vignoli', 'SYT', NULL, NULL, '', '', 'male');
INSERT INTO `usuarios` VALUES (1144278709, '1144278709', 'daniel.ase', 'daniel.asencio.16', 'danielasencio@ciudad.com.ar', 3, 5, 1, NULL, 'A', 'Daniel', 'Asencio', 'SYT', NULL, NULL, '109390122412267', 'CÃ³rdoba, Argentina', 'male');
INSERT INTO `usuarios` VALUES (100001882297669, '100001882297669', 'maximilian', 'maximilianoluis.rigoni', 'maximiliano.rigoni@hotmail.com', 3, 5, 1, NULL, 'A', 'Maximiliano Luis', 'Rigoni', 'SYT', NULL, NULL, '', '', 'male');
INSERT INTO `usuarios` VALUES (559355237, '559355237', 'daniel.mac', 'daniel.macol', 'danielmacol@hotmail.com', 3, 5, 1, NULL, 'A', 'Daniel', 'Macol', 'SYT', NULL, NULL, '106423786059675', 'Buenos Aires, Argentina', 'male');
