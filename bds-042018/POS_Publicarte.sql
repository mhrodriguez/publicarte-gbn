-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2018 a las 20:23:12
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `POS_Publicarte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `rfc` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `id_empresa`, `rfc`, `razonsocial`, `activo`) VALUES
(19, 1, '0000000000000', 'PUBLICO EN GENERAL', 1),
(20, 1, 'LERS821021BV9', 'EDUARDO LEOS CO.', 1),
(21, 1, 'CSG100927I57', 'COMERCIALIZADORA SAN GERMAN', 1),
(23, 1, 'SDI77030747A', 'SISTEMA PARA EL DESARROLLO INTEGRAL DE LA FAMILIA DE TAMAULIPAS', 1),
(24, 1, 'IJT111109EE0', 'INSTITUTO DE LA JUVENTUD DE TAMAULIPAS', 1),
(25, 1, 'RAVR9712314C4', 'LA BODEGUITA ROMINA RAMIREZ VILLARREAL', 1),
(26, 1, 'UAT670315518', 'UNIVERSIDAD AUTONOMA DE TAMAULIPAS', 1),
(27, 1, 'SFG210216AJ9', 'EDUCACION/ SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(28, 1, 'CAGR5908319Q4', 'CAPED', 1),
(29, 1, 'MVC840208V96', 'MUEBLERIA VILLARREAL CABALLERO, S.A DE C.V.', 1),
(31, 1, 'PUBLICO GRAL.', 'SOCORO RAMIREZ', 1),
(32, 1, 'UPV0611123L44', 'UNIVERSIDAD POLICTECNICA DE VICTORIA', 1),
(33, 1, 'GAGG671224P80', 'GABRIELA GATTAS GARCIA', 1),
(34, 1, 'OCL091202ML1', 'OPERADORA COMERCIAL LIVERPOOL S.A. DE C.V.', 1),
(35, 1, 'FOL810907CJ4', 'FOLY S.A. DE C.V.', 1),
(36, 1, 'CTC8906071M1', 'CONSEJO TAMAULIPECO DE CIENCIA Y TECNOLOGIA', 1),
(37, 1, 'III9006143U3', 'INSTITUTO IBEROAMERICANO DE IDIOMAS DE VICTORIA A.C.', 1),
(38, 1, 'INF110308BH9', 'INFOX SA DE CV', 1),
(39, 1, 'GAM0803125Z3', 'GEMBER AMBIENTAL SA DE CV', 1),
(40, 1, 'TUN930101L63', 'TRANSPAIS UNICO SA DE CV', 1),
(41, 1, 'GOAJ700522B64', 'MULTIEVENTOS / JUAN CARLOS GONZALEZ ALANIS', 1),
(42, 1, 'VAE010503S7A', 'VEHICULOS AEROPUERTO SA DE CV', 1),
(43, 1, 'AVV1507245Z8', 'AUTOS VALLE VICTORIA, S.A. DE C.V.', 1),
(44, 1, 'AVI810804M93', 'AUTOMOTRIZ VICTORIA, S.A. DE C.V.', 1),
(45, 1, 'CST050215QP9', 'COMERCIALIZADORA Y SERVICIOS  DE TAMAULIPAS, S.A. DE C.V.', 1),
(46, 1, 'ZPR041125MD4', 'COMISION DE PARQUE Y BIODIVERSIDAD DE TAMAULIPAS', 1),
(47, 1, 'SFG210216AJ9', 'SECRETARIA DEL TRABAJO/SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO', 1),
(48, 1, 'SEVR891101AT2', 'ROBERTO SEPULVEDA VAZQUEZ', 1),
(49, 1, 'ITD110102PG0', 'INSTITUTO DEL DEPORTE DE TAMAULIPAS', 1),
(50, 1, 'ROPA650501CI4', 'AMADO RODRIGUEZ', 1),
(51, 1, 'CNF970509HX3', 'COORDINACION NACIONAL DE LAS FUNDACIONES PRODUCE AC', 1),
(52, 1, 'CVQ9303161VA', 'COLEGIO VICTORENSE DE QUIMICOS CLINICOS A.C.', 1),
(53, 1, 'CMI970416U95', 'CAMARA MEXICANA DE LA INDUSTRIA DE LA CONSTRUCCION', 1),
(54, 1, 'GAZV921024550', 'VALERIA ALEJANDRA GARDEA ZARATE', 1),
(55, 1, 'SFG210216AJ9', 'SEC. GENERAL / SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(56, 1, 'SFG210216AJ9', 'SEC. TURISMO/ SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(57, 1, 'GUGN800505LM6', 'VICTOR GAXIOLA / NIDIA ZULEMA', 1),
(58, 1, 'DPL971125KX0', 'DULCERIA EL PAJARO LOCO DE VICTORIA S.A.DE.C.V.', 1),
(59, 1, 'SFG210216AJ9', 'DESARROLLO  ECONOMICO / SECRETARIA DE FINANZAS DEL GOBIENO DEL ESATADO  DE TAMAULIPAS', 1),
(61, 1, 'AIP1606222S9', 'agricola ikal panabchen,s.a de c.v', 1),
(62, 1, 'CAFK921201U47', 'LUIS CARRILLO / KAREN YAMILE CARRILLO DE LA FUENTE', 1),
(63, 1, 'HFV710430FH7', 'HOTEL LAS FUENTES DE VICTORIA,SA.CV.', 1),
(64, 1, 'X', 'PRI DE VILLA DE CASAS / SANTOS  ZURITA', 1),
(65, 1, 'DIRW7412266V1', 'WENDY ITZAMARA BETANIA DIAZ RENTERIA', 1),
(66, 1, 'SFG210216AJ9', 'FORESTAL  / SECRETARIA DE FINANZAS DEL GOBIENO DEL ESATADO  DE TAMAULIPAS', 1),
(67, 1, 'CMA140122RA8', 'CARBONERA MAYELIN S.P.R. DE R.L.', 1),
(68, 1, 'IEB050915KM7', 'INSTRUMENTOS Y EQUIPOS BERMAN , S.A DE C.V', 1),
(69, 1, 'CNP140906H36', 'CORDINACION NACIONAL DE PROSPERA PROGRAMA DE  INCLUSION SOCIAL SIN TIPO DE SOCIEDAD', 1),
(70, 1, 'SFG210216AJ9', 'SECRETARIA DE GOBIERNO/SECRETARIA DE FINANZAS DELGOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(71, 1, 'SFG210216AJ9', 'SECRETARIA PARTICULAR/SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(72, 1, 'BOPA740826197', 'ADRIAN BORREGO PEREZ', 1),
(73, 1, 'CST080307387', 'CAJA SOLIDARIA TAMAULIPAS  S.C. DE A. P. DE R.L. DE CV.', 1),
(74, 1, 'CEL210216T5A', 'CONGRESO DEL ESTADO LIBRE Y SOBERANO DE TAMAULIPAS', 1),
(75, 1, 'VAE010503S7A', 'RENAULT / VEHICULOS AEROPUERTO, SA DE CV', 1),
(76, 1, 'MCA931213GC9', 'MARCOS CARRASCO Y ASOCIADOS S.A. DE C,V,', 1),
(77, 1, 'GFN920701Q57', 'GRUPO  FUNERARIO  DEL NORTE', 1),
(78, 1, 'GACB601121S50', 'CONYS ALIMENTOS/BRIGIDA GARCIA CANTU', 1),
(79, 1, 'AEVG811106M59', 'PUBLICARTE', 1),
(80, 1, 'GSI010214BN6', 'GRUPO SIGNOS S.A. DE C.V.', 1),
(82, 1, 'XXXXXXX', 'PARROQUIA   SAN ISIDRO   LABRADOR', 1),
(83, 1, 'RIGJ630515JU1', 'JESUS AURELIO RIVERA GARCIA', 1),
(84, 1, 'FCE8803093E6', 'FERRETERIA EL CEDRO SA DE CV', 1),
(85, 1, 'CIG101229FR8', 'CITRICOS INDUSTRIALES DEL GOLFO SA DE CV', 1),
(86, 1, 'CNF010405EG1', 'CONAFOR/COMISION NACIONAL FORESTAL', 1),
(87, 1, 'CMI970416U95', 'CAMARA MEXICANA DE LA INDUSTRIA DE LA  CONSTRUCCION', 1),
(88, 1, 'FEV980629BB2', 'FERRETERIA  Y EQUIPOS VICTORIA SA', 1),
(89, 1, 'VIGR760823QW3', 'RAUL VILLARREAL  GOMEZ', 1),
(90, 1, 'CST050215QP9', 'BOCHS /COMERCIALIZADORA Y SERVICIOS DE TAMAULIPAS,S.A DE C.V..', 1),
(91, 1, 'GCO0105044S9', 'CONY  GASTRONOMICA CONYS SA DE CV', 1),
(92, 1, 'IMT050308QX7', 'INSTITUTO DE LA MUJER TAMAULIPECA', 1),
(93, 1, 'TNM140723GFA', 'TECNOLOGICO NACIONAL DE MEXICO /INSTITUTO TECNOLOGICO  DE DC. VICTORIA', 1),
(94, 1, 'GOHH661214R84', 'CONY /  HAZEL GOMEZ HALLAM', 1),
(95, 1, 'CMN0302066B2', 'CONSULTORA MEXICANA  DE  NEGOCIOS , S.C.', 1),
(96, 1, 'USJ1411265K2', 'UNIVERSIDAD DE SEGURIDAD Y JUSTICIA DE TAMAULIPAS', 1),
(97, 1, 'COPA770521AY6', 'ALFREDO CONTRERAS PEREZ', 1),
(98, 1, 'PHV0202205A2', 'PROMOTORIA HABITAT DE VICTORIA S.A. DE C.V.', 1),
(99, 1, 'FORU7011198Y7', 'ULYSSES FLORES RODRIGUEZ', 1),
(101, 1, 'XXXXXXXXX', 'MARIANO LARA', 1),
(102, 1, 'RDADAF', 'RAFAEL VARGAR', 1),
(103, 1, 'CHAPA', 'JUAN ALBERTO', 1),
(104, 1, 'SAFG210216AJ9', 'TECNOLOGIA   EDUCATIVA', 1),
(105, 1, 'COFL400924KJ0', 'JOSE LUIS CONTRERAS DE LA FUENTE', 1),
(106, 1, 'AASE491107LM3', 'ERNESTO  AVALOS', 1),
(107, 1, 'CASG721113GG2', 'GUILLERMO CARRILLO SOTO', 1),
(108, 1, 'BOGP771129V10', 'PATRICIA ILIANA BORREGO GARCIA', 1),
(109, 1, 'MOTC8307088J8', 'DON MOSTACHON/ CARLOS GUILLERMO MORRIS TORRE', 1),
(110, 1, 'STJ2102162N6', 'SUPREMO TRIBUNAL DE JUSTICIA DEL ESTADO DE TAMAULIPAS', 1),
(111, 1, 'GJG0611012U2', 'GRUPO JGV SA DE CV / JESUS VILLANUEVA M', 1),
(112, 1, 'GUGR370802Q5A', 'ROSALIO GUEVARA GARCIA', 1),
(113, 1, 'QUSG730426QN0', 'JOSE GUILLERMO QUINTERO SALAZAR', 1),
(114, 1, 'GOGL8208138N9', 'LUCIA GARZA GONZALEZ', 1),
(115, 1, 'SFG210216AJ9', 'SEDUMA  /SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(116, 1, 'XXXX0000000', 'MARIO ALBERTO LAURENT CASTRO', 1),
(117, 1, 'SNT770331D90', 'SINDICATO NACIONAL DE TRABAJADORES DEL SEGURO SOCIAL', 1),
(118, 1, 'PIMF9606202V8', 'FERNANDO PIMENTEL', 1),
(119, 1, 'CNO6403177CA', 'CONSTRUCTORA DEL NORESTE S.A.', 1),
(120, 1, 'SAGA810128PN9', 'IMAGEN B /RAFAEL SANCHEZ GARZA', 1),
(121, 1, 'AAKNCSANVO', 'MIZRAIM ABREGO', 1),
(122, 1, 'RAT810516L6A', 'TANIA ALEJANDRA RENDON ACOSTA', 1),
(123, 1, 'GATICAVAZQUEZ', 'JARDIN  GABILONDO  SOLER', 1),
(124, 1, 'CCC780602PH6', 'CENTRAL CAMIONERA CIUDAD VICTORIA S.A. DE C.V.', 1),
(125, 1, 'EPA151127GX3', 'EJE PARALELO', 1),
(126, 1, 'RMO810216MV2', 'CITY EXPRESS/ HOTELERIA Y SERVICIOS REFORMA SA DE CV', 1),
(127, 1, 'XXX', 'ROSAURA OLVERA', 1),
(128, 1, 'AAG160805FE9', 'AGRICENTER /ABASTECEDORA AGRICENTER, SA DE CV', 1),
(129, 1, 'MPT750101FY3', 'MUNICIPIO DE PADILLA TAM', 1),
(130, 1, 'XXXX000000XXX', 'LISY RODRIGUEZ', 1),
(131, 1, 'NWM9709244W4', 'NUEVA WALMART DE MEXICO S DE RL DE CV', 1),
(132, 1, 'GUNG550110IB1', 'LABORATORIO TAMAULIPAS  / GONZALO GUTIERREZ NOYOLA', 1),
(133, 1, 'CASLCHF', 'WENDY 2', 1),
(134, 1, '8341503711', 'FEDERICO IBARRA AGUILAR', 1),
(140, 1, 'CET100708B47', 'CALIDAD EMPRESARIAL DE TAMAULIPAS S.A. DE C.V.', 1),
(142, 1, 'SMA890116I54', 'SEMARNAT CONAGUA ORGANISMO DE CUENCA GOLFO NORTE', 1),
(143, 1, 'GCE050223HK1', 'GASTRONOMICA CHEVRE S. DE R.L. MI', 1),
(144, 1, 'MOCJ8309125C1', 'JESUS ALEJANDRO MONTELONGO CANCHOLA', 1),
(145, 1, 'NO TIENE', 'JUAN PINEDA', 1),
(146, 1, 'ITA070705N73', 'INSTITUTO DE TRANSPARENCIA Y ACCESO A LA INFORMACION DE TAMAULIPAS', 1),
(147, 1, 'SWF090623JJ6', 'SPRINGS WINDOW FASHIONS DE VICTORIA S.  DE R.L. DE C.V.', 1),
(148, 1, 'UGP0302193P3', 'UNION DE GANADEROS PRODUCTORES DE ALIMENTOS CONCENTRADOS S.A. DE C.V.', 1),
(149, 1, 'CNC190403NB4', 'CAMARA NACIONAL DE COMERCIO Y SERVICIOS', 1),
(150, 1, 'SST970123DE3', 'SERVICIOS DE SALUD DE TAMAULIPAS', 1),
(151, 1, 'MSE1301113R3', 'MULTIMATERIALES Y SERVICIOS SA DE CV', 1),
(152, 1, 'GAP170117D37', 'GESTION DE AGROPROYECTOS Y PROVEEDOR DE SERVICIOS INTEGRALES DE TAMAULIPAS S.A. DE C.V.', 1),
(153, 1, 'MCF070220LS6', 'MEXICO CITRUS FARMS, SA DE CV', 1),
(154, 1, 'SMT940307581', 'SERVICIOS MULTIPLES DE TAMAULIPAS S.A DE C.V.', 1),
(155, 1, 'CEA060307391', 'COMISION ESTATAL DEL AGUA DE TAMAULIPAS', 1),
(156, 1, 'SDI841106BX3', 'DIF SAN FER/ SISTEMA PARA EL DESARROLLO INTEGRAL DE LA FAMILIA DEL MUNICIPIO DE SAN FERNANDO', 1),
(157, 1, 'CJF950204TL0', 'CONSEJO DE LA JUDICATURA FEDERAL', 1),
(158, 1, '00000000000', 'ADMINISTRACION  PORTUARIA  INTEGRAL  DE  TAMAULIAPS  S.A.DE C.V.', 1),
(159, 1, 'SEP210905778', 'SEP/DGCFT/CECATINo76', 1),
(160, 1, 'CMA0212168V3', 'COMISION MUNICIPAL DE AGUA POTABLE Y ALCANTARILLADO DEL MUNICIPIO DE VICTORIA TAMAULIPAS', 1),
(161, 1, 'COCJ660115LW5', 'JORGE CORONADO CASTILLO', 1),
(162, 1, 'OFI931001TV1', 'SRA. PATY /OFIVIC, S.A. DE C.D.', 1),
(163, 1, 'PMA9706168A5', 'PROVEEDORES MAHYC, SA DE CV', 1),
(164, 1, 'ZPR041125MD4', 'ZOOLOGICO Y PARQUE RECREATIVO TAMATAN', 1),
(165, 1, 'JUSE7903155EA', 'ELI JAPETH JURADO SERNA', 1),
(166, 1, 'IRT050121QV8', 'IMPULSORA REGIONAL DE TAMAULIPAS SA DE CV', 1),
(167, 1, 'SIN RFC', 'DAPHNE HERRERA', 1),
(168, 1, 'ATR0102065D2', 'ARQUITECTOS 3, S.A. DE C.V.', 1),
(169, 1, 'ATE150902GY9', 'ARQUITECTOS 3 EDIFICA S.A. DE C.V.', 1),
(170, 1, 'PSG120126811', 'PROMOCIONES Y SERVICIOS GRAFICOS DE TAMAULIPAS S.A. DE C.V.', 1),
(171, 1, 'MVT7301017R2', 'MUNICIPIO DE VICTORIA, TAMAULIPAS', 1),
(172, 1, 'POOA891207NM3', 'FACTORY ( ALBA NIDIA PONCE OCHOA )', 1),
(173, 1, 'SFG210216AJ9', 'NORMAL DE EDUCADORAS / SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(174, 1, 'MAX130220T37', 'MAXIGRAFICA  SA DE CV', 1),
(175, 1, 'XXXXXX', 'CARNITAS  MATA', 1),
(176, 1, 'XXXX0000000', 'C.P DORA  MARIA HERNANDEZ', 1),
(177, 1, 'MJA1305026K5', 'MEZCALES JAGUAR, SA DE CV', 1),
(178, 1, 'MAHA8512112LA', 'ALEJANDRA MANSUR HERNANDEZ', 1),
(179, 1, 'XXXX000000XXX', 'JULIO CESAR BUJANOS', 1),
(180, 1, 'JSA920206FYA', 'JAVIER DE LOS SANTOS Y CIA. S.C.', 1),
(181, 1, 'XXXX000000XXX', 'IRIS GODINA', 1),
(182, 1, 'AAT740102P79', 'ASISTENCIA ADMINISTRATIVA DE TAMAULIPAS S.C.', 1),
(183, 1, 'GAGC640101RF2', 'CESAR GARCIA GALLEGOS', 1),
(184, 1, 'XXXX0000000', 'ADRIANA DANIELA SOSA CID', 1),
(185, 1, 'XXXX0000000', 'MA. TRINIDAD DOMINGUEZ GALVAN', 1),
(186, 1, 'SER000620558', 'SERVITONER SA DE CV', 1),
(187, 1, 'GHR600310', 'REINA GARZA HINOJOSA', 1),
(188, 1, 'PRO010129B32', 'PROYEXTRA S.A. DE C.V.', 1),
(189, 1, 'COVJ8209306N2', 'JULIO ISAAC CONTRERAS DE LA VEGA', 1),
(190, 1, 'CALE751216P20', 'MIL MASCOTAS / JOSE ELIAS CHARUR LOZANO', 1),
(191, 1, 'HECO930627VE4', 'ORLANDO GUILLERMO HERNANDEZ CARRILLO', 1),
(192, 1, 'CVI8203253Z1', 'Alzar, S.A. de C.V.', 1),
(193, 1, 'SES170603FH9', 'SECRETARIA EJECUTIVA DEL SISTEMA ESTATAL ANTICORRUPCION DE TAMAULIPAS', 1),
(194, 1, 'GOB061128FTA', 'GASOLINERA 8 BOULEVARD, S.A. DE C.V.', 1),
(195, 1, 'TSL010215EF9', 'TRANSPAIS SAN LUIS, S.A DE C.V.', 1),
(196, 1, 'CCV610211MT1', 'CLUB CAMPESTRE VICTORIA A.C.', 1),
(197, 1, 'SJA010831CM5', 'SAVILA DE JAUMAVE SA DE CV', 1),
(198, 1, 'REGF660414TQ6', 'FIDEL RENDON GARCIA', 1),
(199, 1, 'OHV0710094GA', 'OPERADORA DE HOTELES VICTORIA S DE RL DE CV', 1),
(200, 1, 'EVI15032651A', 'ESPACIOS DEL NORTE S.A. DE C.V', 1),
(201, 1, 'XXX0000000', 'JUAN E ESCOBEDO YAÑEZ', 1),
(202, 1, 'ZPR041125MD4', 'VIDA SILVESTRE/COMISION DE PARQUES Y BIODIVERSIDAD DE TAMAULIPAS', 1),
(203, 1, 'XXX0000XXX', 'MUNICIPIO DE OCAMPO TAMAULIPAS', 1),
(204, 1, 'ZUCF590709CA2', 'DR. FELIPE DE JESUS ZUÑIGA CEDILLO', 1),
(205, 1, 'XX', 'BAUDELIO LUNA', 1),
(206, 1, 'AVI050823SCA', 'AMOR VIVIENTE A.R.', 1),
(207, 1, 'HECH7904255H6', 'HUGO ALBERTO HERNANDEZ CARDENAS', 1),
(208, 1, 'MATC751120P66', 'SAN  RAFAEL  ( CECILIA  MARTINEZ TERAN  )', 1),
(209, 1, 'XXXXXX', 'PALMILLAS  (  PAN  )', 1),
(211, 1, 'HRA091214DF2', 'HOSPITAL REGIONAL DE ALTA ESPECIALIDAD DE CIUDAD VICTORIA BICENTENARIO 2010', 1),
(212, 1, 'BEB010820HQ8', 'BEBECITOS SC', 1),
(213, 1, 'xxxxxxxxxxxx', 'INSTITUTO TAMAULIPECO PARA LA CULTURA Y LAS ARTES', 1),
(214, 1, 'XX0000XX', 'RAUL CARRILLO / FOLK´S', 1),
(215, 1, 'XXXXXXX', 'Direccion Administrativa de la Contraloria Gubernamental  Gobierno del Estado de Tamaulipas', 1),
(216, 1, 'VIMG8108096F8', 'GABRIEL ALVARO VILLANUEVA MORATO', 1),
(217, 1, 'PNO000119522', 'PROMOVISION NORESTE SA DE CV', 1),
(218, 1, 'IAFI940517BS2', 'ATRACCIONES LA FERIA / ITZIA IBARRA FERNANDEZ', 1),
(219, 1, 'XX', 'CARLOS MAYORGA', 1),
(221, 1, 'AAIL8805058U5', 'LUIS MANUEL ADAME IBARRA', 1),
(222, 1, 'SFG210216AJ9', 'SECRETARIA DE SEGURIDAD PUBLICA/ SECRETARIA DE FINANZAS DEL GOBIERNO DEL ESTADO DE TAMAULIPAS', 1),
(223, 1, 'XXXX0000000', 'TERE CUELLAR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_contacto`
--

CREATE TABLE `cliente_contacto` (
  `id_cliente` int(11) NOT NULL,
  `id_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_contacto`
--

INSERT INTO `cliente_contacto` (`id_cliente`, `id_contacto`) VALUES
(19, 43),
(19, 49),
(19, 65),
(19, 70),
(19, 72),
(19, 80),
(19, 83),
(19, 84),
(19, 85),
(19, 86),
(19, 108),
(19, 109),
(19, 213),
(19, 220),
(20, 19),
(21, 20),
(21, 168),
(23, 21),
(23, 62),
(24, 22),
(24, 132),
(25, 131),
(26, 23),
(26, 71),
(26, 82),
(26, 87),
(27, 24),
(27, 63),
(27, 66),
(27, 224),
(28, 25),
(29, 27),
(29, 29),
(29, 40),
(29, 74),
(29, 120),
(31, 26),
(32, 28),
(32, 214),
(32, 215),
(33, 30),
(34, 31),
(35, 32),
(36, 125),
(37, 33),
(37, 173),
(38, 34),
(39, 35),
(40, 36),
(40, 37),
(40, 38),
(40, 39),
(40, 44),
(40, 160),
(40, 176),
(40, 232),
(40, 238),
(41, 41),
(41, 42),
(42, 45),
(43, 46),
(43, 227),
(44, 237),
(45, 47),
(46, 48),
(47, 60),
(48, 50),
(48, 52),
(49, 51),
(50, 53),
(51, 54),
(52, 55),
(53, 58),
(54, 56),
(55, 57),
(55, 186),
(56, 59),
(57, 61),
(59, 96),
(59, 97),
(62, 64),
(63, 209),
(63, 231),
(65, 136),
(71, 67),
(72, 68),
(74, 69),
(75, 73),
(79, 200),
(80, 75),
(82, 77),
(83, 76),
(84, 78),
(85, 79),
(86, 81),
(87, 88),
(90, 123),
(90, 124),
(92, 153),
(92, 154),
(93, 89),
(93, 92),
(95, 90),
(96, 91),
(98, 93),
(99, 94),
(101, 95),
(104, 98),
(105, 99),
(106, 100),
(107, 101),
(108, 102),
(109, 103),
(109, 143),
(110, 104),
(111, 105),
(112, 106),
(113, 107),
(114, 110),
(115, 111),
(115, 126),
(115, 127),
(115, 128),
(115, 155),
(116, 112),
(117, 113),
(118, 114),
(119, 115),
(120, 116),
(122, 117),
(124, 122),
(125, 118),
(126, 119),
(127, 121),
(128, 129),
(129, 130),
(129, 170),
(130, 133),
(131, 134),
(132, 135),
(140, 138),
(142, 139),
(143, 140),
(144, 141),
(145, 142),
(146, 144),
(146, 145),
(147, 146),
(148, 147),
(149, 148),
(150, 149),
(151, 150),
(151, 151),
(152, 152),
(153, 156),
(154, 157),
(155, 158),
(156, 159),
(157, 161),
(158, 162),
(159, 163),
(160, 164),
(162, 165),
(163, 166),
(164, 167),
(164, 182),
(165, 169),
(166, 180),
(167, 171),
(168, 172),
(170, 174),
(171, 175),
(172, 177),
(173, 178),
(174, 179),
(175, 181),
(177, 183),
(178, 184),
(179, 185),
(180, 188),
(181, 187),
(182, 189),
(183, 190),
(186, 191),
(187, 192),
(188, 193),
(189, 194),
(190, 195),
(191, 196),
(192, 197),
(193, 198),
(194, 199),
(195, 201),
(196, 202),
(197, 203),
(197, 204),
(198, 205),
(199, 206),
(200, 207),
(202, 208),
(204, 210),
(206, 211),
(207, 212),
(208, 216),
(208, 217),
(209, 218),
(209, 219),
(211, 221),
(212, 222),
(213, 223),
(214, 225),
(215, 226),
(216, 228),
(217, 229),
(218, 230),
(221, 234),
(222, 235),
(223, 236);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_domicilio`
--

CREATE TABLE `cliente_domicilio` (
  `id_cliente` int(11) NOT NULL,
  `id_domicilio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_domicilio`
--

INSERT INTO `cliente_domicilio` (`id_cliente`, `id_domicilio`) VALUES
(19, 17),
(20, 18),
(21, 19),
(23, 21),
(24, 22),
(25, 23),
(26, 24),
(27, 25),
(28, 26),
(29, 27),
(31, 29),
(32, 30),
(33, 31),
(34, 32),
(35, 33),
(36, 34),
(37, 35),
(38, 36),
(39, 37),
(40, 38),
(41, 39),
(42, 40),
(43, 41),
(44, 42),
(45, 43),
(46, 44),
(47, 45),
(48, 46),
(49, 47),
(50, 48),
(51, 49),
(52, 50),
(53, 51),
(54, 52),
(55, 53),
(56, 54),
(57, 55),
(58, 56),
(59, 57),
(61, 59),
(62, 60),
(63, 61),
(64, 62),
(65, 63),
(66, 64),
(67, 65),
(68, 66),
(69, 67),
(70, 68),
(71, 69),
(72, 70),
(73, 71),
(74, 72),
(75, 73),
(76, 74),
(77, 75),
(78, 76),
(79, 77),
(80, 78),
(82, 80),
(83, 81),
(84, 82),
(85, 83),
(86, 84),
(87, 85),
(88, 86),
(89, 87),
(90, 88),
(91, 89),
(92, 90),
(93, 91),
(94, 92),
(95, 93),
(96, 94),
(97, 95),
(98, 96),
(99, 97),
(101, 99),
(102, 100),
(103, 101),
(104, 102),
(105, 103),
(106, 104),
(107, 105),
(108, 106),
(109, 107),
(110, 108),
(111, 109),
(112, 110),
(113, 111),
(114, 112),
(115, 113),
(116, 114),
(117, 115),
(118, 116),
(119, 117),
(120, 118),
(121, 119),
(122, 120),
(123, 121),
(124, 122),
(125, 123),
(126, 124),
(127, 125),
(128, 126),
(129, 127),
(130, 128),
(131, 129),
(132, 130),
(133, 131),
(134, 132),
(140, 133),
(142, 135),
(143, 136),
(144, 137),
(145, 138),
(146, 139),
(147, 140),
(148, 141),
(149, 142),
(150, 143),
(151, 144),
(152, 145),
(153, 146),
(154, 147),
(155, 148),
(156, 149),
(157, 150),
(158, 151),
(159, 152),
(160, 153),
(161, 154),
(162, 155),
(163, 156),
(164, 157),
(165, 158),
(166, 159),
(167, 160),
(168, 161),
(169, 162),
(170, 163),
(171, 164),
(172, 165),
(173, 166),
(174, 167),
(175, 168),
(176, 169),
(177, 170),
(178, 171),
(179, 172),
(180, 173),
(181, 174),
(182, 175),
(183, 176),
(184, 177),
(185, 178),
(186, 179),
(187, 180),
(188, 181),
(189, 182),
(190, 183),
(191, 184),
(192, 185),
(193, 186),
(194, 187),
(195, 188),
(196, 189),
(197, 190),
(198, 191),
(199, 192),
(200, 193),
(201, 194),
(202, 195),
(203, 196),
(204, 197),
(205, 198),
(206, 199),
(207, 200),
(208, 201),
(209, 202),
(211, 204),
(212, 205),
(213, 206),
(214, 207),
(215, 208),
(216, 209),
(217, 210),
(218, 211),
(219, 212),
(221, 214),
(222, 215),
(223, 216);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combinacion`
--

CREATE TABLE `combinacion` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_moneda` int(11) DEFAULT NULL,
  `id_unidad` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL DEFAULT '0.00',
  `satclaveprodserv` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combinacionitem`
--

CREATE TABLE `combinacionitem` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_subcategoria` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `incluido` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combinacion_item`
--

CREATE TABLE `combinacion_item` (
  `id_combinacion` int(11) NOT NULL,
  `id_combinacionitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `valor` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `id_mediopago` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `puesto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correofacturacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `id_mediopago`, `nombre`, `apellidos`, `puesto`, `correo`, `correofacturacion`, `telefono`, `activo`) VALUES
(19, 3, 'EDUARDO', 'LEOS', 'PROPIETARIO', 'eduardoleos_m@hotmail.com', 'eduardoleos_m@hotmail.com', '8341260483', 1),
(20, 3, 'HILARIO', 'AGUILAR', 'DIRECTOR', 'hilarioaguilar@gmail.com', 'hilarioaguilar@gmail.com', '8342230300', 1),
(21, 3, 'SADA', 'NAFARRETE', 'COMPRAS', 'compras.diftam@gmail.com', 'compras.diftam@gmail.com', '3181426', 1),
(22, 3, 'GISELLE', 'LUGO', 'ADMINISTRATIVA', 'algis90@hotmail.com', 'algis90@hotmail.com', '8341148169', 1),
(23, 3, 'YOLANDA', 'GARCIA SALAZAR', 'DIRECCION DE ADQUISICIONES', 'tampico_uat@hotmail.com', 'tampico_uat@hotmail.com', '834 3181800 EXT 1179', 1),
(24, 3, 'JOSE ANTONIO', 'TREJO', 'COMPRAS', 'setcompras2018@outlook.es', 'notificacionpededu@hotmail.com', '8342478833', 1),
(25, 1, 'RAUL', 'CARRILLO GARCIA', 'DUEÑO', 'impotam@gmail.com', 'impotam@gmail.com', '1100504', 1),
(26, 1, 'SOCORRO', 'RAMIREZ', 'ESPOSA', 'socormzv@hotmail.com', 'socormzv@hotmail.com', '8341691090', 1),
(27, 3, 'PATRICIA', 'VILLARREAL', 'COMPRAS', 'paty.villarreal@mvc.com.mx;insumos', 'paty.villarreal@mvc.com.mx;insumos', '3182700', 1),
(28, 3, 'YULIANA', 'FUNTES MONTES', 'RECURSOS MATERIALES Y ADQUISICIONES/COMPRAS', 'yfuentesm@upv.edu.mx', 'yfuentesm@upv.edu.mx', '8341155178', 1),
(29, 3, 'BERENICE', 'ALCANTARA', 'PAGOS', 'berenice.alcantara@mvc.com.mx', 'berenice.alcantara@mvc.com.mx', '3182700', 1),
(30, 1, 'GABRIELA', 'GATTAAS GARCIA', 'DUEÑA', 'chproteinafacturas@gmail.com', 'chproteinafacturas@gmail.com', 'S/N', 1),
(31, 3, 'ALEJANDRA', 'EZQUIVEL', 'PUBLICIDAD', 'AESQUIVELV@LIVERPOOL.COM.MX', 'aesquivel@liverpool.com.mx', '1531100 EXT: 1357', 1),
(32, 3, 'AZALIA', 'RAMIREZ', 'CONTADORA', 'mercadotecnia@folymuebles.com', 'mercadotecnia@folymuebles.com;foly.pagos@folymuebles.com.mx', '1530016', 1),
(33, 2, 'HOMERO', 'PATIÑO', 'DIRECTOR PUBLICIDAD', 'homero007@gmail.com', 'elias.ibero@hotmail.com', '834 126 4603', 1),
(34, 2, 'ALEJANDRO', 'ARROYO', 'DIRECTOR', 'aayr2000@hotmail.com', 'aayr2000@hotmail.com', '834 1114497', 1),
(35, 2, 'GERARDO', 'WILLIAMS', 'PROPIETARIO', 'gwilliamsh@gmail.com', 'gwilliamsh@gmail.com', '31 6 9521', 1),
(36, 3, 'SANTIAGO', 'SOSA', 'DESARROLLO DE NEGOCIOS', 'ssosa@transpais.com.mx', 'mario.vallejo@transpais.com.mx', '3184611 EXT 1202', 1),
(37, 3, 'MONICA', 'GUEVARA', 'MERCADOTECNIA', 'monica.guevara@transpais.com.mx', 'mario.vallejo@transpais.com.mx', '3184611 EXT 1230', 1),
(38, 3, 'JORGE', 'RAMOS', 'NEGOCIOS INBOX', 'jramos@inbox.com.mx', 'mario.vallejo@transpais.com.mx', '3181426 EXT 1293', 1),
(39, 3, 'VICTOR IVAN', 'CRUZ', 'TRANPAIS TURISMO', 'victor.cruz@transpais.com.mx', 'mario.vallejo@transpais.com.mx', '3181426 EXT 1211', 1),
(40, 3, 'KAREN', 'RODRIGUEZ', 'INSUMOS', 'insumos@mvc.com.mx', 'paty.villarreal@mvc.com.mx, berenice.alcantara@mvc.com.mx', '3182700', 1),
(41, 2, 'DAPHNE', 'HERRERA', 'VENTAS', 'daphne@multieventos.mx', 'daphne@multieventos.mx', '834311 2229', 1),
(42, 2, 'ITZEL', 'GAMEZ', 'VENTAS', 'itzel@multieventos.mx', 'itzel@multieventos.mx', '834106 9012', 1),
(43, 1, 'JUANITA', 'PEREZ', 'ESCUELA LEONA', 'juanitaperez@hotmail.com', 'notiene@hotmail.com', '8341231212', 1),
(44, 3, 'MANUEL', 'AVALOS', 'COMPRAS', 'manuel.avalos@transpais.com.mx', 'mario.vallejo@transpais.com.mx', '3184611 ext 1290', 1),
(45, 2, 'PAMELA', 'S/A', 'MARKETING', 'contabilidad1@renaultvictoria.com.mx;mercadotecnia@renaultvictoria.com.mx', 'contabilidad1@renaultvictoria.com.mx;mercadotecnia@renaultvictoria.com.mx', '3182600', 1),
(46, 2, 'OLGA KAREN', 'GARCIA RODIGREZ', 'RAB', 'procesos@vw-victoria.com.mx', 'fdelafuente@vw-victoria.com.mx', '8341848080', 1),
(47, 3, 'DERLY', 'MARTINEZ MORALES', 'CONTADORA', 'BOSCH_CONTABILIDAD@HOTMAIL.COM', 'bosch.contabilidad@hotmail.com', '110 2959', 1),
(48, 3, 'NELlIA', 'TORRES', 'ADMINISTRATIVA', 'nellatorrres@hotmail.com', 'recepciondefacturas_tamatan@outlook.com', '834 100 8735', 1),
(49, 1, 'JOVITA', 'XXXX', 'XXX', 'm@hotmail.com', 'm@hotmail.com', '834125569', 1),
(50, 1, 'ROBERTO', 'SEPUVEDA VAZQUEZ', 'JEFE', 'jorgepollo_93@hotmail.com', 'jorgepollo_93@hotmail.com', '8341445124', 1),
(51, 2, 'ANA', 'MEDELLIN', 'COMPRAS', 'indetam.sg@hotmail.com', 'indetam.sg@hotmail.com', '3129408', 1),
(52, 1, 'JORGE', 'RS', 'PAGOS', 'jorgepollo_93@hotmail.com', 'jorgepollo_93@hotmail.com', '8341445126', 1),
(53, 1, 'AMADO', 'RODRIGUE', 'PROPIETARIO', 'afocovi@hotmail.com', 'afocovi@hotmail.com', '834 115 14 89', 1),
(54, 1, 'ANDRES', 'X', 'COMPRAS', 'andres_mr@hotmail.com', 'rromo@cofupro.org.mx', '000000', 1),
(55, 1, 'FRANCISCO JAVIER', 'PEREZ', 'COMPRAS', 'javierperezbaez@yahoo.com.mx', 'javierperezbaez@yahoo.com.mx', '8343085644', 1),
(56, 3, 'VALERIA', 'GARDEA', 'DUEÑA', 'gardea.alejandra@gmail.com', 'gardea.alejandra@gmail.com', '8187095227', 1),
(57, 3, 'ZUGEY', 'LOPEZ', 'SEC GENERAL', 'zuga3_@hotmail.com', 'zuga3_@hotmail.com', '8341338965', 1),
(58, 3, 'MILTON', 'VERBEL', 'CONTADOR', 'CONTABILIDAD@CMICVICTORIA.ORG', 'administracion@cmicvictoria.org', '3167333', 1),
(59, 3, 'ARTURO RAFAEL', 'SANCHEZ GARZA', 'X', 'SOYBORRADO@GMAIL.COM', 'la_yellis@hotmail.com', '834 126 32 69', 1),
(60, 3, 'VIRGINIA', 'X', 'X', 'compras1622@hotmail.com', 'la_yellis@hotmail.com', '8341162810', 1),
(61, 3, 'NIDIA ZULEMA', 'GUZMAN GASTELUM', 'X', 'mas_impresiones@hotmail.com', 'mas_impresiones@hotmail.com', 'X', 1),
(62, 3, 'ITZAMARA', 'VILLANUEVA', 'RELACIONES PUBLICAS', 'Itzamara.villanueva@hotmail.com', 'Itzamara.villanueva@hotmail.com', '8342472523', 1),
(63, 3, 'MA. EMILIA', 'ORTIZ', 'COMPRAS', 'mely.compras@gmail.com', 'notificacionpededu@hotmail.com', '8341495011', 1),
(64, 1, 'LUIS', 'CARRILLO SOTO', 'COMPRAS', 'karen.imprenta@gmail.com', 'karen.imprenta@gmail.com', '3166613', 1),
(65, 4, 'PRI VILLA  DE CASAS/  SANTO', 'ZURITA', 'CORDINADOR', 'ventaspublicarte@yahoo.com.mx', 'ventaspublicarte@yahoo.com.mx', '8341771605  /', 1),
(66, 3, 'JUAN JOSE', 'MUÑOZ', 'COMPRAS', 'juan_jose_munoz89@hotmail.com', 'juan_jose_munoz89@hotmail.com', '834 208 3008', 1),
(67, 3, 'ARELY', 'ANDRADE', 'PARTICULAR', 'la_yellis@hotmail.com', 'la_yellis@hotmail.com', '8341389077', 1),
(68, 3, 'ADRIAN', 'BORREGO', 'DUEÑO', 'adrian.borrego@gmail.com', 'adrian.borrego@gmail.com', '834 1679362', 1),
(69, 3, 'ING. ESMERALDA', 'QUIROZ GONZALEZ', 'COMPRAS', 'esmeralda.quiroz@congresotamaulipas.gob.mx', 'claudia.bres@congresotamaulipas.gob.mx', '834 126 2475', 1),
(70, 1, 'RAFAEL', 'SANCHEZ GARZAA', 'IMAGEN B', 'soyborrado@gmail.com', 'soyborrado@gmail.com', '834126 3269', 1),
(71, 3, 'JOSE ALDAPE', 'ALDAPE', 'FAC COMERCIO', 'jasanchez@docentes.uat.edu.mx', 'earratia@docentes.uat.edu.mx', '8341161306', 1),
(72, 1, 'ROBERTO', 'RIVERA', 'AMIGO DE JURUX', 'nose@hotmail.com', 'nose@hotmail.com', '88888', 1),
(73, 2, 'PAMELA', 'SALAZAR', 'COMPRAS', 'mercadotecnia@renaultvictoria.com.mx', 'mercadotecnia@renaultvictoria.com.mx', '3182600', 1),
(74, 3, 'SHIDARTHA', 'ABREGO', 'PUBLICIDAD', 'siddharta.abrego@mvc.com.mx', 'berenice.alcantara@mvc.com.mx', '834 3110430', 1),
(75, 1, 'ROCIO', 'ROJO RODRIGUEZ', 'VENTAS', 'signosdiseno@gmail.com', 'signos.admon@gmail.com', '31 42224', 1),
(76, 2, 'JESUS AURELIO', 'RIVERA GARCIA', 'DUEÑO', 'copypaper@infinitummail.com', 'copypaper@infinitummail.com', '834 169 0218', 1),
(77, 1, 'PADRE  NAVOR', 'NAVOR', 'PADRE', 'sanisidrolabradordcv@outlook.com', 'sanisidrolabradordcv@outlook.com', '312 5720', 1),
(78, 2, 'JOSE ASSAD', 'VILLARRAL', 'PUBLICIDAD', 'joseassadv@gmail.com', 'joseassadv@gmail.com', '8341160948', 1),
(79, 3, 'MAGALY', 'HERNANDEZ', 'COMPRAS', 'magaly.hdz@citricosindustriales.com', 'magaly.hdz@citricosindustriales.com', '1844368', 1),
(80, 1, 'MARIANA E.', 'RAMOS SAUCEDO', 'XX', 'padilla.gob@gmail.com', 'padilla.gob@gmail.com', '834 189 00 53', 1),
(81, 4, 'MAITE', 'BAÑUELOS', 'COMPRAS', 'maitte.bañuelos@conafor.gob.mx', 'maitte.bañuelos@conafor.gob.mx', '834 144 19 04', 1),
(82, 4, 'ELVIA', 'ARRATIA', 'COMPRAS', 'earratia@docentes.uat.edu.mx', 'earratia@docentes.uat.edu.mx', '31 8 18 00', 1),
(83, 1, 'FERMIN', 'GONZALEZ', 'ID CREATIVO', 'fermin@idcreativo.com.mx', 'fermin@idcreativo.com.mx', '8341442095', 1),
(84, 1, 'PEPE', 'LAVADORAS', 'DUEÑO', 'joseggg72@live.com.mx', 'joseggg72@live.com.mx', '8341396116', 1),
(85, 1, 'MARY', 'RONQUILLO', 'RONQUILLO', 'mary@hotmail.com', 'mary@hotmail.com', '+1 956 330 0849', 1),
(86, 1, 'JAIR', 'SILVA', 'SEC GENERAL', 'jair.zilva@gmail.com', 'jair.zilva@gmail.com', '888888888', 1),
(87, 1, 'ROSY', 'UAT', 'INGENERIA  Y CIENCIAS  DE LA EDUCACION', 'rgsg75@hotmail.com', 'rgsg75@hotmail.com', '83411260585', 1),
(88, 3, 'MILTO', 'VERBER', 'ADQUISICIONES', 'administracion@cmicvictoria.org', 'administracion@cmicvictoria.org', '31 67630', 1),
(89, 2, 'JESSICA', 'TERAN', 'ADQUISICIONES', 'jessitcv@hotmail.com', 'jessitcv@hotmail.com', '8341176768', 1),
(90, 3, 'PEDRO', 'OLVERA', 'CORDINADOR  DE  ADQUISICIONES', 'compras01@consultoramexicana.com', 'compras01@consultoramexicana.com', '3052050', 1),
(91, 3, 'ANGELICA', 'ROSALES', 'ADQUISICIONES', 'angiee.311211@gmail.com', 'angiee.311211@gmail.com', '3186275', 1),
(92, 2, 'DR.  ASUNCION', 'AZUARA', 'Posgrado en biología', 'azuarad@gmail.com', 'azuarad@gmail.com', '8331360736', 1),
(93, 2, 'JESSICA', 'RODRIGUEZ RODRIGUEZ', 'VENTAS', 'ventas@casasguri.com', 'facturacion.casasguri@gmail.com', '3143346', 1),
(94, 2, 'ULYSSES', 'FLORES RODRIGUEZ', 'NOTARIO', 'ulyssesflores@hotmail.com', 'ulyssesflores@hotmail.com', '3126171', 1),
(95, 1, 'MARIANO', 'LARA', 'NUEVA ALIANZA', 'marianolara@hotmail.com', 'marianolara@hotmail.com', '1234R5TY', 1),
(96, 4, 'YULETH', 'TORRES', 'COMPRAS', 'elda.torres@tam.gob.mx', 'elda.torres@tam.gob.mx', '834 126 16 74', 1),
(97, 4, 'YURI', 'NAVARRO', 'COMPRAS', 'yuridia.navarro@tam.gob.mx', 'yuridia.navarro@tam.gob.mx', '107 88 47', 1),
(98, 3, 'KARLA', 'CANTU', 'ADMINISTRATIVO', 'karla.rodriguez@set.edu.mx', 'karla.rodriguez@set.edu.mx', '8341538006', 1),
(99, 1, 'JOSE LUIS', 'CONTRERAS DE LA FUENTES', 'DIRECTOR', 'lavoz400@hotmail.com', 'lavoz400@hotmail.com', '8341505534', 1),
(100, 1, 'ERNESTO', 'AVALOS', 'ADMINISTRADOR', 'ernestoavasal@outlook.com', 'ernestoavasal@outlook.com', '834 255 97 93', 1),
(101, 1, 'GUILLERMO', 'CARRILLO SOTO', 'DIRECTOR', 'memo_cs72@hotmail.com', 'memo_cs72@hotmail.com', '8343111780 Y 18 2 65 43', 1),
(102, 1, 'OCTAVIO', 'RAMIREZ', 'DUEÑO', 'ramireo2511@hotmail.com', 'facturasgaliz01@gmail.com', '8341214264', 1),
(103, 2, 'C.P. MIGUEL ANGEL', 'MIRANDA TORRES', 'ADMINISTRADOR', 'meguelo@hotmail.com', 'donmostachonmatriz@hotmail.com', '3129115 Y 3100857', 1),
(104, 3, 'LETICIA', 'RAMIREZ RAIZ', 'ADQUISICIONES', 'stjdeptoadquisiciones@gmail.com', 'stjdeptoadquisiciones@gmail.com', '834 126 2475 Y 3187113', 1),
(105, 3, 'JESUS', 'VILLANUEVA', 'DUEÑO', 'jesus.villanueva@grupojgv.com', 'contabilidad@grupojgv.com', '8341114539', 1),
(106, 1, 'ROSALIO', 'GUEVARA', 'DIRECTOR', 'Imprenta_chalio@live.com.mx', 'Imprenta_chalio@live.com.mx', '312009', 1),
(107, 1, 'ESMERALDA', 'CAMARILLO AGUILAR', 'ADMINISTRACION', 'pollosquinsal@hotmail.com', 'pollosquinsal@hotmail.com', '3168077', 1),
(108, 1, 'SEDUMA  /  CECILIA', 'ZOZAYA PERALES', 'HANBURGUESAS', 'cecyzozaya@gmail.com', 'cecyzozaya@gmail.com', '8342576128', 1),
(109, 1, 'CONRADO', 'ANAYA', 'PROF. ESDUCACION  ESPECIAL', 'com_piry@hotmail.com', 'com_piry@hotmail.com', '8341163928', 1),
(110, 1, 'LUCIA', 'GARZA', 'XXX', 'verlage@yahoo.com', 'verlage@yahoo.com', '8331003013', 1),
(111, 1, 'MARCO ANTONIO', 'GALLEGOS', 'RECURSOS MATERIALES', 'marco.gallegos@tam.gob.mx', 'marco.gallegos@tam.gob.mx', '8341386440', 1),
(112, 1, 'MARIO ALBERTO', 'LAURENT', 'XXX', 'mario_laurent@outlook.com', 'mario_laurent@outlook.com', '834 165 59 96', 1),
(113, 2, 'JOSE CARLOS', 'MENDOZA LEDEZMA', 'TESORERO', 'sntss_tesoreria@outlook.es', 'sntss_tesoreria@outlook.es', '3121072 3121966', 1),
(114, 3, 'MARIA FERNANDA', 'PIMENTEL', 'HIJA', 'fernando_pime70@hotmail.com', 'fernando_pime70@hotmail.com', '8341156191', 1),
(115, 3, 'ARTEMIO', 'SANCHEZ PUGA', 'ADMINISTRACION', 'cno_contabilidad@hotmail.com', 'cno_contabilidad@hotmail.com', '3150538', 1),
(116, 1, 'RAFAEL', 'SANCHEZ G', 'DUEÑO', 'soyborrado@gmail.com', 'soyborrado@gmail.com', '8341263269', 1),
(117, 3, 'TANIA', 'RENDON  ACOSTA', 'DUEÑA', 'taniarendon@hotmail.com', 'taniarendon@hotmail.com', '834 118 3194', 1),
(118, 1, 'JASSIEL', 'GONZALEZ', 'RESIDENTE DE OBRA', 'facturasejeparalelo@gmail.com', 'facturasejeparalelo@gmail.com', '834 169 47 67', 1),
(119, 2, 'LAZARO', 'NAVA ORTIZ', 'CONTADOR GENERAL', 'cecvm.contador@cityexpress.com.mx', 'cecvm.contador@cityexpress.com.mx', '184 9000', 1),
(120, 3, 'ARLETH', 'BANDA', 'COMPRAS', 'insumos@mvc.com.mx', 'insumos@mvc.com.mx', '31 8 27 00', 1),
(121, 1, 'ROSAURA', 'OLVERA', 'ASESOR DE VENTAS', 'rolvera8@hotmail.com', 'rolvera8@hotmail.com', '8341139372', 1),
(122, 3, 'CONCHIS', 'CONCHIS', 'ADMINISTRACION', 'central_ciudad-victoria@hotmail.com', 'central_ciudad-victoria@hotmail.com', '3167841', 1),
(123, 3, 'C.P. DERLY MAIDALY', 'MARTINEZ MORALES', 'CONTADORA', 'bosch_contabilidad@hotmail.com', 'bosch_contabilidad@hotmail.com', 'Tel. 110 10 60  Ext 3', 1),
(124, 3, 'C.P. DERLY MAIDALY', 'MARTINEZ MORALES', 'CONTADORA', 'bosch_contabilidad@hotmail.com', 'bosch_contabilidad@hotmail.com', 'Tel. 110 10 60  Ext 3', 1),
(125, 3, 'ENRIQUE', 'VAZQUEZ', 'X', 'enriquevazquez01@hotmail.com', 'enriquevazquez01@hotmail.com', '318 9601', 1),
(126, 1, 'Gertrudis del Carmen', 'Silva Sánchez', 'DISEÑADORA', 'gertrudis.silva@tam.gob.mx', 'gertrudis.silva@tam.gob.mx', '107 8000  Ext. 42762', 1),
(127, 1, 'CECY', 'SOZAYA', 'CASA  DE LA  TIERRA', 'cecyzozaya@gmail.com', 'cecyzozaya@gmail.com', '107 8000  Ext. 42762', 1),
(128, 3, 'Uriel', 'Betancourt', 'COTIZADOR', 'becks8881@hotmail.com', 'becks8881@hotmail.com', '8341285837', 1),
(129, 3, 'ELIZABETH', 'SALAZAR', 'CONTADORA', 'e.salazar@agricenter.com.mx', 'e.salazar@agricenter.com.mx', '3162302', 1),
(130, 3, 'LUIS', 'ENRIQUE', 'COMBPRAS', 'DEMECANO725@HOTMAIL.COM', 'isaac_m1@hotmail.com', '8341783438', 1),
(131, 3, 'OSIEL', 'X', 'CONTADOR', 'labodeguita.msc@gmail.com', 'labodeguita.msc@gmail.com', '1100977', 1),
(132, 3, 'ALEJANDRA', 'GAMEZ', 'X', 'facturajovtam@hotmail.com', 'facturajovtam@hotmail.com', '8341670622', 1),
(133, 1, 'LISY', 'RODRIGUEZ', 'XXX', 'tamaulipas2igual1@gmail.com', 'tamaulipas2igual1@gmail.com', '834 300 17 55', 1),
(134, 1, 'NORMA', 'RAMIREZ', 'COMPRAS', 'pendiente@hotmail.com', 'pendiente@hotmail.com', '3050085   / 8348526807 /8341314784', 1),
(135, 3, 'DIANA  CAROLINA', 'TREJO MARTINEZ', 'RELACIONES  PUBLICAS', 'labtamrp@hotmail.com', 'facturaslabtam@gmail.com', '305-1883 EXT. 113', 1),
(136, 1, 'WENDY ITZAMARA BETANIA', 'DÍAZ RENTERÍA', 'DIRECTOR', 'diart_@hotmail.com', 'diart_@hotmail.com', '834-312-44-19', 1),
(137, 1, 'TANIA', 'RENDON', 'XXX', 'taniarendon@hotmail.com', 'taniarendon@hotmail.com', '834 1183194', 1),
(138, 3, 'YADIRA', 'GUERRERO', 'ADMINISTRACION', 'tamhidalgo_admon@qualitas.com.mx', 'tamhidalgo_admon@qualitas.com.mx', '8333385141', 1),
(139, 3, 'SANDRA', 'ALVAREZ MORALES', 'COMUNICACION SOCIAL', 'sandra.alvarez@conagua.gob.mx', 'sandra.alvarez@conagua.gob.mx', '1200000', 1),
(140, 1, 'VERONICA', 'LOPEZ CASTILLO', 'RECEPCION', 'roccattivictoria@gmail.com', 'roccattivictoria@gmail.com', '3161818', 1),
(141, 3, 'JESUS ALEJANDRO', 'MONTELONGO CANCHOLA', 'DUEÑO', 'direccion@elfarafara.mx', 'administracion@elfarafara.mx', '8180811080', 1),
(142, 1, 'JUAN', 'PINEDA', 'DUEÑO', 'jantoniopineda2@gmail.com', 'jantoniopineda2@gmail.com', '8341161585', 1),
(143, 3, 'CARLOS GUILLERMO', 'MORRIS TORRES', 'DUEÑO', 'donmostachonmatriz@gmail.com', 'donmostachonmatriz@gmail.com', '3129115', 1),
(144, 3, 'JOEL', 'GARCIA', 'COMPRAS', 'joelgarcia.itait@hotmail.com', 'joelgarcia.itait@hotmail.com', '31 6 48 88', 1),
(145, 3, 'ARMANDO', 'BARRON', 'COMPRAS', 'armando.barron@itait.org.mx', 'armando.barron@itait.org.mx', '834 311 24 47', 1),
(146, 3, 'PERLA', 'BANDA', 'COMPRAS', 'perla.banda@springswindowfashions.com', 'perla.banda@springswindowfashions.com', '1538351', 1),
(147, 3, 'ING. ELADIO', 'HERNANDEZ NAVA', 'ADMINISTRACION', 'eladio.ganhos@hotmail.com', 'eladio.ganhos@hotmail.com', '8362741661', 1),
(148, 2, 'DIANA', 'BETANCOUR', 'DIRECCION ADMINISTRATIVA', 'direccion@canacovictoria.org.mx', 'direccion@canacovictoria.org.mx', '8341442350', 1),
(149, 3, 'ALFONSO DIAZ', 'DIAZ', 'PARTICULAR ADQUISICIONES', 'j.a.diaz88@hotmail.com', 'jaimemorris1@hotmail.com', '8341446813', 1),
(150, 3, 'ESPERANZA', 'GONZALEZ', 'ADMINISTRATIVA', 'administracion@multimatvictoria.com.mx', 'administracion@multimatvictoria.com.mx', '8341444929', 1),
(151, 3, 'DANIEL', 'OROZCO', 'DISEÑO', 'danielorozcogonzalez@gmail.com', 'administracion@multimatvictoria.com.mx', '8342155720', 1),
(152, 2, 'ING. SAID', 'HERNANDEZ CONTRERAS', 'ADMINISTRACION', 'gapsit@gmail.com', 'gapsit@gmail.com', '1853826', 1),
(153, 1, 'Jorge', 'Terreros Ledezma', 'Jefe de Depto. de Recursos Humanos y Materiales', 'jorge.terreros@tam.gob.mx>', 'jorge.terreros@tam.gob.mx>', '110 1495', 1),
(154, 1, 'Jorge', 'Terreros Ledezma', 'Jefe de Depto. de Recursos Humanos y Materiales', 'jorge.terreros@tam.gob.mx>', 'jorge.terreros@tam.gob.mx>', '110 1495', 1),
(155, 3, 'Aisly Anayin', 'Blanco Martinez', 'Medio  Ambiente', 'aisly.blanco@tam.gob.mx', 'aisly.blanco@tam.gob.mx', '1078266', 1),
(156, 3, 'CLAUDIA', 'SANCHEZ PAZ', 'ADMINISTRACION', 'cln021007@hotmail.com', 'cln021007@hotmail.com', '(834) 123 02 70', 1),
(157, 3, 'LUZ MARIA', 'QUERO', 'ADMINISTRACION', 'smtamps@gmail.com', 'smtamps@gmail.com', '8341867626 Y 2030745', 1),
(158, 3, 'EFREN', 'MARISCAL LOPEZ', 'CONTADOR', 'mariscal12_@hotmail.com', 'mariscal12_@hotmail.com', '1078322', 1),
(159, 3, 'JOHANA', 'JOANA', 'SAN FERNANDO', 'difsanfernando@hotmail.com', 'difsanfernando@hotmail.com', '8411025671', 1),
(160, 3, 'EDUARDO', 'GARZA', 'PROMOVISION', 'eduardo.garza@transpais.com.mx', 'eduardo.garza@transpais.com.mx', '3184611 EXT 1275', 1),
(161, 2, 'C.P. DANIEL', 'DE LEON SIERRA', 'RECURSOS MATERIALES', 'daniel.deleon.sierra@correo.cjf.gob.mx', 'daniel.deleon.sierra@correo.cjf.gob.mx', '3183900', 1),
(162, 1, 'Gabriela', 'Gabriela Moreno', 'RECURSOS  HUMANOS', 'g.moreno@apitamaulipas.com.mx', 'g.moreno@apitamaulipas.com.mx', '018688170831', 1),
(163, 2, 'LIC. HAYDEE', 'SANTANA', 'DIRECCION', 'cecati76.dir@dgcft.sems.gob.mx', 'cecati76.dir@dgcft.sems.gob.mx', '3163527', 1),
(164, 3, 'JUAN', 'ZAMARRIPA', 'RECURSOS MATERIALES', 'gabriela7374@hotmail.com', 'factura.electronica@comapavictoria.gob.mx', '3187200', 1),
(165, 3, 'PATRICIA', 'MANOTOU', 'DUEÑA', 'contabilidad_ofivic@telmexmail.com', 'contabilidad_ofivic@telmexmail.com', '3169600', 1),
(166, 3, 'EDITH', 'X', 'X', 'edith_juarez2@hotmail.com', 'edith_juarez2@hotmail.com', '018343143205', 1),
(167, 3, 'NELIA', 'TORRES', 'X', 'nellatorres@hotmail.com', 'recepciondefacturas_tamatan@outlook.com;nellatorres@hotmail.com', 'X', 1),
(168, 3, 'NACY', 'X', 'X', 'nancy.90dance@hotmail.com', 'sugy508@hotmail.com', '1352002', 1),
(169, 1, 'ELI JAPETH', 'JURADO SERNA', 'ADMINISTRACION', 'ejapethh@hotmail.com', 'ejapethh@hotmail.com', '8341307188', 1),
(170, 3, 'ISSAC', 'MONTEMAYOR', 'RELACIONES PUBLICAS', 'isaac_m1@hotmail.com', 'isaac_m1@hotmail.com', '8341750554', 1),
(171, 1, 'DAPHNE', 'HERRERA', 'COMPRAS', 'daphne@multieventos.mx', 'daphne@multieventos.mx', '8343112229', 1),
(172, 3, 'JANETH', 'TOVAR', 'X', 'ing.janeth@arquitectos3.com', 'sonia_admin@arquitectos3.com', '3157580', 1),
(173, 1, 'MIREYA', 'MORALES', 'COMPRAS', 'anna.ibero@hotmail.com', 'anna.ibero@hotmail.com', '834 127 34 37', 1),
(174, 1, 'NICO', 'VALLES', 'VENTAS', 'oxal_admon@hotmail.com', 'oxal_admon@hotmail.com', '3162831', 1),
(175, 3, 'EVERARDO', 'AVENDAÑO', 'DIF VICTORIA', 'ever_avevid@hotmail.com', 'ever_avevid@hotmail.com', '8341026726', 1),
(176, 3, 'VERONICA', 'COMPEAN', 'COMPRAS', 'vcompean@transpais.com.mx', 'vcompean@transpais.com.mx', '3184611 EXT1276', 1),
(177, 1, 'ALBA NIDIA', 'PONCE OCHOA', 'ADMINISTRACION', 'anponceo@gmail.com', 'facturacion.grupoas@gmail.com', '8341441422', 1),
(178, 1, 'CHUCHIS', 'X', 'MAESTRA', 'neducadoras@hotmail.com', 'la_yellis@hotmail.com', '8343010878', 1),
(179, 3, 'CELENE', 'VILLASANA', 'VENTAS', 'premiarte_adm@hotmail.com', 'premiarte_adm@hotmail.com', '8341513220', 1),
(180, 3, 'SEBASTIAN', 'FIGUEROA', 'COMPRAS', 'sfcomprasimp@hotmail.com', 'sfcomprasimp@hotmail.com', '8341264102', 1),
(181, 1, 'MIROSLAVA', 'CALDERON', 'EMPLEADA', 'julia-gonzalez@gmail.com', 'julia-gonzalez@gmail.com', '172 03 69', 1),
(182, 3, 'ARMANDO', 'MARTINEZ', 'HERNANDEZ', 'arxs_mtz@hotmail.com', 'arxs_mtz@hotmail.com', '8341755882', 1),
(183, 4, 'ALEJANDRA', 'NAVARRO', 'CONTADORA', 'mezcalesjaguar@hotmail.,com', 'mezcalesjaguar@hotmail.com', '8343112233', 1),
(184, 1, 'ALEJANDRA', 'MANSUR', 'COMPRAS', 'alicia_mansur@hotmail.com', 'alicia_mansur@hotmail.com', '8341262938', 1),
(185, 1, 'WENDY', 'LUNA GUERRERO', 'XXX', 'wendylu2010@hotmail.com', 'wendylu2010@hotmail.com', '8341797775', 1),
(186, 3, 'JUANITA', 'X', 'X', 'zuga3_@hotmail.com', 'zuga3_@hotmail.com', '8341338965', 1),
(187, 1, 'IRIS', 'GODINA', 'XX', 'iris.yadid.godina@gmail.com', 'iris.yadid.godina@gmail.com', '8341135275', 1),
(188, 3, 'SONIA', 'MONTOYA YEPES', 'COMPRAS ALMACEN', 'administracion@asisata.com.mx', 'administracion@asisata.com.mx', '3185800', 1),
(189, 3, 'SONIA', 'MONTOYA YEPES', 'COMPRAS ALMACEN', 'administracion@asisata.com.mx', 'administracion@asisata.com.mx', '3185800', 1),
(190, 3, 'ALBA', 'JIMENEZ LORES', 'ADMINISTRACION', 'albabre@hotmail.com', 'albabre@hotmail.com', '3130287', 1),
(191, 1, 'ING JORGE', 'YEPEZ', 'DUEÑO', 'servitoner2000@hotmail.com', 'servitoner2000@hotmail.com', '8341114919', 1),
(192, 1, 'JORGE ALBERTO', 'MACIAS JIMENEZ', 'DIRECTO PARTIDO', 'maciasjim64@gmail.com', 'maciasjim64@gmail.com', '8341018611', 1),
(193, 3, 'MARIA BELEM', 'ZUÑIGA GALLEGOS', 'ADMINISTRACION', 'mabelem30@hotmail.com', 'proveedores.proyextra@gmail.com', '3167708', 1),
(194, 1, 'JULIO ISAAC', 'CONTRERAS DE LA VEGA', 'DIRECTIVO', 'julisaac_82@hotmail.com', 'julisaac_82@hotmail.com', '3157235', 1),
(195, 4, 'GRISELDA', 'CASTELAN', 'ADMINISTRACION', 'gcastelanmilmascotas@gmail.com', 'gcastelanmilmascotas@gmail.com', '8341250143', 1),
(196, 1, 'ORLANDO G', 'HERNANDEZ CARRILLO', 'DUEÑO', 'orlandohernandez93@gmail.com', 'orlandohernandez93@gmail.com', '8341113304', 1),
(197, 4, 'ANTONIO', 'URBINA', 'COMPRAS', 'antoniourbinadeleon@gmail.com', 'antoniourbinadeleon@gmail.com', '8341675422', 1),
(198, 3, 'MARCO', 'MALDONADO', 'ADMON', 'marcoamu@hotmail.com', 'marcoamu@hotmail.com', '8341180900', 1),
(199, 1, 'ROSARIO', 'X', 'X', 'gasolinera8@hotmail.com', 'gasolinera8@hotmail.com', '1341986', 1),
(200, 1, 'EDER', 'PEREZ', 'BORDADOR', 'publicarte_bordados@hotmail.com', 'publicarte_bordados@hotmail.com', '3059021', 1),
(201, 3, 'MONICA', 'GUEVARA', 'RUTAS', 'monica.guevara@transpais.com.mx', 'monica.guevara@transpais.com.mx', '3184611 ext 1232', 1),
(202, 3, 'LIC. MARIO', 'MONTOYA ZAMARRIPA', 'ADMINISTRACION', 'campestrevictoria@hotmail.com', 'campestrevictoria@hotmail.com', '3160618', 1),
(203, 3, 'LUCERO', 'VILLAVICENCIO', 'COMPRAS', 'lucerovill@hotmail.com', 'lucerovill@hotmail.com', '8321013265', 1),
(204, 3, 'MANUEL', 'LLEVERINO', 'CAMPAÑA', 'lucerovill@hotmail.com', 'lucerovill@hotmail.com', '8342701921', 1),
(205, 4, 'OSWALDO', 'BARRON', 'AUXILIAR', 'oswal30_ba@hotmail.com', 'fidelrg@prodigy.net.mx', '834 158 06 88', 1),
(206, 2, 'LESLY M', 'PAZ DE LA FUENTE', 'VENTAS', 'lesly.paz@hotelesmilenium.com', 'lesly.paz@hotelesmilenium.com', '3186004', 1),
(207, 3, 'DANIEL F', 'GONZALEZ B', 'DUEÑO', 'sfcompras.imp@hotmail.com', 'sfcompras.imp@hotmail.com', '8180814219', 1),
(208, 4, 'MARIA AZUCENA', 'MARTINEZ MARTINEZ', 'DIRECTORA ADMVA.', 'proveedores.cpbt@tam.gob.mx', 'proveedores.cpbt@tam.gob.mx', '107 8617', 1),
(209, 4, 'CP ALMA GUADALUPE', 'MARTINEZ', 'RECURSOS HUMANOS', 'recursoshumanos@granhotellasfuentes.com.mx', 'recursoshumanos@granhotellasfuentes.com.mx', '83425811', 1),
(210, 4, 'DR. FELIPE DE JESUS', 'ZUÑIGA CEDILLO', 'DOCTOR', 'zucfvide@prodigy.net.mx', 'zucfvide@prodigy.net.mx', '3120626 Y 3121315', 1),
(211, 2, 'YESSICA', 'ILIZALITURRI', 'ADMINISTRACION', 'yessica.i@amorviviente.mx', 'yessica.i@amorviviente.mx', '3150095', 1),
(212, 1, 'LUIS ANGEL', 'MARTINEZ TIRADO', 'EMPLEADO', 'hugobeto_79@hotmail.com', 'hugobeto_79@hotmail.com', '8341542793', 1),
(213, 1, 'PAOLA- DESARROLLO ECONOMICO', 'X', 'X', 'ventaspublicarte@yahoo.com.mx', 'ventaspublicarte@yahoo.com.mx', 'X', 1),
(214, 3, 'ALMA ROSA', 'ALVARADO PEREZ', 'RECURSOS MATERIALES  Y  ADQUISICIONES', 'aalvaradop@upv.edu.mx', 'aalvaradop@upv.edu.mx', '1711100', 1),
(215, 3, 'ALMA ROSA', 'ALVARADO PEREZ', 'RECURSOS MATERIALES  Y  ADQUISICIONES', 'aalvaradop@upv.edu.mx', 'aalvaradop@upv.edu.mx', '1711100', 1),
(216, 1, 'MELISSA', 'ALCOCER ZAVALA', 'ENCARGADA DE  TIENDA', 'vicsanrafael@hotmail.com', 'vcsanrafael@hotmail.com', '30 5 04 80', 1),
(217, 1, 'MELISSA', 'ALCOCER ZAVALA', 'ENCARGADA DE  TIENDA', 'vicsanrafael@hotmail.com', 'vcsanrafael@hotmail.com', '30 5 04 80', 1),
(218, 1, 'NANCY', 'MARTINEZ  PINEDA', 'ADMINISTRATIVO', 'nancymtz.sn@gmail.com', 'nancymtz.sn@gmail.com', '8341024111', 1),
(219, 1, 'NANCY', 'MARTINEZ  PINEDA', 'ADMINISTRATIVO', 'nancymtz.sn@gmail.com', 'nancymtz.sn@gmail.com', '83410241111', 1),
(220, 1, 'IRIS', 'MAGAÑA', 'DIF', 'iris.magsal@gmail.com', 'iris.magsal@gmail.com', '8348520660', 1),
(221, 3, 'FERNANDO', 'RUIZ', 'COMPRAS', 'fernando.hraev@gmail.com', 'fernando.hraev@gmail.com', '834 3002029', 1),
(222, 1, 'DIANA', 'MANZANO', 'EMPLEADA', 'bebecitos@outlook.es', 'bebecitos@outlook.es', '3160446', 1),
(223, 3, 'C.P. BEATRIZ ANGELICA', 'ORTIZ GONZALEZ', 'DEPTO. DE RECURSOS MATERIALES', 'recursosmaterialesitca_elida@hotmail.com', 'recursosmaterialesitca_elida@hotmail.com', '1534312 ext. 124', 1),
(224, 1, 'mely', 'x', 'x', 'notificacionpededu@hotmail.com', 'notificacionpededu@hotmail.com', 'x', 1),
(225, 1, 'RAUL', 'CARRILLO', 'FOLK´S', 'folkspizza@gmail.com', 'folkspizza@gmail.com', '8341652814', 1),
(226, 3, 'LIC.  OSCAR', 'PEREZ', 'ADQUISICIONES', 'cotizacionescontraloria@gmail.com', 'cotizacionescontraloria@gmail.com', 'Tel 107 8494, ext 43631,', 1),
(227, 2, 'FRANCISCO', 'DE LA FUENTE', 'GERENTE COMERCIAL', 'fdelafuente@vw-victoria.com.mx', 'fdelafuente@vw-victoria.com.mx', '8343012416', 1),
(228, 2, 'GABRIEL', 'VILLANUEVA', 'DUEÑO', 'grabielvillanuevam@hotmail.com', 'grabielvillanuevam@hotmail.com', '8341325563', 1),
(229, 3, 'EDUARDO', 'GARZA', 'DIRECCION', 'eduardo.garza@transpais.com.mx', 'eduardo.garza@transpais.com.mx', '31846112 EXT 1275', 1),
(230, 3, 'ITZIA', 'FERNANDEZ GARCIA', 'CONTADORA', 'fdzgarcia@hotmail.com', 'fdzgarcia@hotmail.com', '8343151257', 1),
(231, 4, 'ARNULFO', 'MIRELES', 'COMPRAS', 'compras@granhotellasfuentes.com.mx', 'compras@granhotellasfuentes.com.mx', '31 2 53 59', 1),
(232, 3, 'LESLY', 'RUIZ', 'RECURSOS HUMANOS', 'lruiz@transpais.com.mx', 'lruiz@transpais.com.mx', '3184611 EXT1272', 1),
(233, 4, 'JOHAN', 'RAMIREZ', 'ADMVO', 'gasolinera8@hotmail.com', 'gasolinera8@hotmail.com', '134 19 86', 1),
(234, 1, 'CARLOS', 'MAYORGA', 'DIRECTOR', 'impublivic@hotmail.com', 'impublivic@hotmail.com', '1101578', 1),
(235, 1, 'BLANCA', 'VAZQUEZ', 'ADMINISTRACION', 'blaly18@hotmail.com', 'blaly18@hotmail.com', '3186263', 1),
(236, 4, 'TERE', 'CUELLAR', 'DIRECTORA', 'ana-terec@hotmail.com', 'ana-terec@hotmail.com', '834 144 08 64', 1),
(237, 2, 'IVONNER', 'GARZA', 'VENTAS', 'igarza@fordvictoria.com', 'ecerna@fordvictoria.com  fmartinez@fordvictoria.com', '1531515', 1),
(238, 3, 'CINTHYA', 'FLORES', 'RECURSOS HUMANOS', 'cflores@transpais.com.mx', 'cflores@transpais.com.mx', '3184611 EXT 1235', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortecaja`
--

CREATE TABLE `cortecaja` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fechainicio` datetime NOT NULL,
  `fechafin` datetime NOT NULL,
  `totalefectivo` decimal(12,2) NOT NULL,
  `totaltarjetacredito` decimal(12,2) NOT NULL,
  `totalefectivoreportado` decimal(12,2) NOT NULL,
  `totaltarjetacreditoreportado` decimal(12,2) NOT NULL,
  `remanente` decimal(12,2) NOT NULL,
  `propinasefectivo` decimal(12,2) NOT NULL,
  `propinastarjetacredito` decimal(12,2) NOT NULL,
  `numventasefectivo` int(11) NOT NULL,
  `numventastarjetacredito` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `id_cotizacionestado` int(11) NOT NULL,
  `motivocancelacion` longtext COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL,
  `fecharecepcion` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_cliente` int(11) DEFAULT NULL,
  `id_contacto` int(11) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `fechavalida` datetime NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `tiempoentrega` longtext COLLATE utf8_unicode_ci,
  `id_esquemapago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`id`, `id_usuario`, `id_empresa`, `id_sucursal`, `id_seccion`, `id_cotizacionestado`, `motivocancelacion`, `fecha`, `fecharecepcion`, `activo`, `id_cliente`, `id_contacto`, `subtotal`, `iva`, `total`, `fechavalida`, `id_moneda`, `tiempoentrega`, `id_esquemapago`) VALUES
(26, 3, 1, 1, NULL, 1, NULL, '2018-02-26 20:33:08', '2018-02-26 20:33:08', 1, 26, 23, '6300.00', '1008.00', '7308.00', '2018-03-02 00:00:00', 1, '3 DIAS HABILES', 2),
(27, 3, 1, 1, NULL, 1, NULL, '2018-02-27 15:59:16', '2018-02-27 15:59:16', 1, 41, 42, '2100.00', '336.00', '2436.00', '2018-03-14 00:00:00', 1, '7 días hábiles', 2),
(28, 3, 1, 1, NULL, 1, NULL, '2018-02-27 19:33:29', '2018-02-27 19:33:29', 1, 23, 21, '5700.00', '912.00', '6612.00', '2018-03-16 00:00:00', 1, '1 día hábil', 2),
(29, 3, 1, 1, NULL, 1, NULL, '2018-02-27 19:34:34', '2018-02-27 19:34:34', 1, 23, 21, '5700.00', '912.00', '6612.00', '2018-03-14 00:00:00', 1, '1 día hábil', 2),
(30, 10, 1, 1, NULL, 1, NULL, '2018-02-27 22:47:45', '2018-02-27 22:47:45', 1, 34, 31, '4950.00', '792.00', '5742.00', '2018-03-14 00:00:00', 1, '1 a 3 días hábiles', 2),
(31, 10, 1, 1, NULL, 1, NULL, '2018-02-27 22:50:34', '2018-02-27 22:50:34', 1, 34, 31, '8500.00', '1360.00', '9860.00', '2018-03-14 00:00:00', 1, '2 días hábiles', 2),
(32, 10, 1, 1, NULL, 1, NULL, '2018-02-27 23:04:37', '2018-02-27 23:04:37', 1, 46, 48, '22400.00', '3584.00', '25984.00', '2018-03-14 00:00:00', 1, '7 días hábiles', 2),
(33, 10, 1, 1, NULL, 1, NULL, '2018-02-28 00:38:56', '2018-02-28 00:38:56', 1, 34, 31, '4950.00', '792.00', '5742.00', '2018-03-15 00:00:00', 1, '7 días hábiles', 1),
(34, 3, 1, 1, NULL, 1, NULL, '2018-02-28 17:32:08', '2018-02-28 17:32:08', 1, 19, NULL, '39000.00', '6240.00', '45240.00', '2018-03-15 00:00:00', 1, '3 días hábiles', 1),
(35, 7, 1, 1, NULL, 1, NULL, '2018-02-28 21:25:48', '2018-02-28 21:25:48', 1, 59, NULL, '3400.00', '544.00', '3944.00', '2018-03-15 00:00:00', 1, '7 días hábiles', 1),
(36, 3, 1, 1, NULL, 1, NULL, '2018-02-28 21:34:40', '2018-02-28 21:34:40', 1, 23, 21, '23100.00', '3696.00', '26796.00', '2018-02-28 00:00:00', 1, '1 días hábiles', 2),
(37, 3, 1, 1, NULL, 1, NULL, '2018-02-28 21:35:42', '2018-02-28 21:35:42', 1, 23, 21, '7400.00', '1184.00', '8584.00', '2018-02-28 00:00:00', 1, '1 días hábiles', 2),
(38, 10, 1, 1, NULL, 1, NULL, '2018-02-28 22:30:20', '2018-02-28 22:30:20', 1, 47, 60, '7400.00', '1184.00', '8584.00', '2018-03-15 00:00:00', 1, '7 días hábiles', 2),
(39, 10, 1, 1, NULL, 1, NULL, '2018-02-28 22:51:42', '2018-02-28 22:51:42', 1, 47, 60, '4320.00', '691.20', '5011.20', '2018-03-15 00:00:00', 1, '7 días hábiles', 2),
(40, 10, 1, 1, NULL, 1, NULL, '2018-02-28 23:38:35', '2018-02-28 23:38:35', 1, 61, NULL, '6465.00', '1034.40', '7499.40', '2018-03-15 00:00:00', 1, '7 días hábiles', 1),
(41, 7, 1, 1, NULL, 1, NULL, '2018-03-01 00:00:00', '2018-03-01 19:08:50', 1, 66, NULL, '8735.00', '1397.60', '10132.60', '2018-03-13 00:00:00', 1, '7 días hábiles', 2),
(42, 7, 1, 1, NULL, 1, NULL, '2018-03-01 19:41:12', '2018-03-01 19:41:12', 1, 67, NULL, '4500.00', '720.00', '5220.00', '2018-03-01 00:00:00', 1, '7 días hábiles', 2),
(43, 10, 1, 1, NULL, 1, NULL, '2018-03-02 16:45:57', '2018-03-02 16:45:57', 1, 29, NULL, '1100.00', '176.00', '1276.00', '2018-03-17 00:00:00', 1, '7 días hábiles', 1),
(44, 3, 1, 1, NULL, 1, NULL, '2018-03-02 00:00:00', '2018-03-02 17:30:43', 1, 35, 32, '41000.00', '6560.00', '47560.00', '2018-03-17 00:00:00', 1, '15 días hábiles', 2),
(45, 7, 1, 1, NULL, 1, NULL, '2018-03-02 17:37:17', '2018-03-02 17:37:17', 1, 69, NULL, '284400.00', '45504.00', '329904.00', '2018-03-14 00:00:00', 1, '7 días hábiles', 2),
(46, 10, 1, 1, NULL, 1, NULL, '2018-03-02 17:46:16', '2018-03-02 17:46:16', 1, 29, NULL, '1820.00', '291.20', '2111.20', '2018-03-17 00:00:00', 1, '7 días hábiles', 2),
(47, 11, 1, 1, NULL, 1, NULL, '2018-03-03 17:02:22', '2018-03-03 17:02:22', 1, 75, 73, '3500.00', '560.00', '4060.00', '2018-03-18 00:00:00', 1, '7 días hábiles', 2),
(48, 7, 1, 1, NULL, 1, NULL, '2018-03-05 18:14:49', '2018-03-05 18:14:49', 1, 59, NULL, '3400.00', '544.00', '3944.00', '2018-03-20 00:00:00', 1, '7 días hábiles', 1),
(50, 3, 1, 1, NULL, 1, NULL, '2018-03-16 00:00:00', '2018-03-05 19:42:54', 1, 71, 67, '252565.00', '40410.40', '292975.40', '2018-03-09 00:00:00', 1, '5 días hábiles', 2),
(51, 7, 1, 1, NULL, 1, NULL, '2018-03-05 20:22:35', '2018-03-05 20:22:35', 1, 82, NULL, '7000.00', '1120.00', '8120.00', '2018-03-20 00:00:00', 1, '7 días hábiles', 2),
(52, 7, 1, 1, NULL, 1, NULL, '2018-03-05 22:59:22', '2018-03-05 22:59:22', 1, 19, NULL, '2600.00', '416.00', '3016.00', '2018-03-20 00:00:00', 1, '7 días hábiles', 1),
(53, 10, 1, 1, NULL, 1, NULL, '2018-03-06 16:23:55', '2018-03-06 16:23:55', 1, 86, 81, '4500.00', '720.00', '5220.00', '2018-03-06 00:00:00', 1, '7 días hábiles', 1),
(54, 7, 1, 1, NULL, 1, NULL, '2018-03-06 18:28:47', '2018-03-06 18:28:47', 1, 26, 87, '5100.00', '816.00', '5916.00', '2018-03-21 00:00:00', 1, '7 días hábiles', 2),
(55, 10, 1, 1, NULL, 1, NULL, '2018-03-06 00:00:00', '2018-03-06 18:44:07', 1, 26, 82, '7826.00', '1252.16', '9078.16', '2018-03-21 00:00:00', 1, '7 días hábiles', 2),
(56, 7, 1, 1, NULL, 1, NULL, '2018-03-06 18:55:17', '2018-03-06 18:55:17', 1, 87, 88, '3800.00', '608.00', '4408.00', '2018-03-21 00:00:00', 1, '7 días hábiles', 2),
(57, 7, 1, 1, NULL, 1, NULL, '2018-03-06 19:49:30', '2018-03-06 19:49:30', 1, 95, 90, '24718.00', '3954.88', '28672.88', '2018-03-21 00:00:00', 1, '7 días hábiles', 1),
(58, 7, 1, 1, NULL, 1, NULL, '2018-03-06 20:40:19', '2018-03-06 20:40:19', 1, 93, 92, '5500.00', '880.00', '6380.00', '2018-03-21 00:00:00', 1, '7 días hábiles', 1),
(59, 7, 1, 1, NULL, 1, NULL, '2018-03-06 20:53:08', '2018-03-06 20:53:08', 1, 93, 89, '3980.00', '636.80', '4616.80', '2018-03-21 00:00:00', 1, '7 días hábiles', 1),
(60, 7, 1, 1, NULL, 1, NULL, '2018-03-06 21:14:38', '2018-03-06 21:14:38', 1, 93, 89, '36750.00', '5880.00', '42630.00', '2018-03-21 00:00:00', 1, '7 días hábiles', 1),
(61, 3, 1, 1, NULL, 1, NULL, '2018-03-07 02:29:20', '2018-03-07 02:29:20', 1, 40, 37, '580400.00', '92864.00', '673264.00', '2018-03-22 00:00:00', 1, '7 A 10 días hábiles', 2),
(62, 7, 1, 1, NULL, 1, NULL, '2018-03-07 15:56:30', '2018-03-07 15:56:30', 1, 69, NULL, '23400.00', '3744.00', '27144.00', '2018-03-08 00:00:00', 1, '08/03/2018', 2),
(63, 10, 1, 1, NULL, 1, NULL, '2018-03-07 16:54:00', '2018-03-07 16:54:00', 1, 59, 96, '107400.00', '17184.00', '124584.00', '2018-03-22 00:00:00', 1, '7 días hábiles', 1),
(64, 10, 1, 1, NULL, 1, NULL, '2018-03-07 16:57:42', '2018-03-07 16:57:42', 1, 59, 96, '7315.00', '1170.40', '8485.40', '2018-03-22 00:00:00', 1, '7 días hábiles', 2),
(65, 10, 1, 1, NULL, 1, NULL, '2018-03-07 17:20:58', '2018-03-07 17:20:58', 1, 36, NULL, '11050.00', '1768.00', '12818.00', '2018-03-22 00:00:00', 1, '7 días hábiles', 2),
(66, 10, 1, 1, NULL, 1, NULL, '2018-03-07 17:34:42', '2018-03-07 17:34:42', 1, 36, NULL, '11050.00', '1768.00', '12818.00', '2018-03-22 00:00:00', 1, '7 días hábiles', 2),
(67, 7, 1, 1, NULL, 1, NULL, '2018-03-07 18:08:34', '2018-03-07 18:08:34', 1, 104, 98, '18138.00', '2902.08', '21040.08', '2018-03-22 00:00:00', 1, '7 días hábiles', 1),
(68, 10, 1, 1, NULL, 1, NULL, '2018-03-07 18:32:41', '2018-03-07 18:32:41', 1, 34, 31, '1000.00', '160.00', '1160.00', '2018-03-22 00:00:00', 1, '7 días hábiles', 2),
(69, 10, 1, 1, NULL, 1, NULL, '2018-03-07 19:23:23', '2018-03-07 19:23:23', 1, 59, 97, '500.00', '80.00', '580.00', '2018-02-28 00:00:00', 1, '7 días hábiles', 2),
(70, 10, 1, 1, NULL, 1, NULL, '2018-03-07 19:30:30', '2018-03-07 19:30:30', 1, 59, 97, '4830.00', '772.80', '5602.80', '2018-03-22 00:00:00', 1, '7 días hábiles', 1),
(71, 3, 1, 1, NULL, 1, NULL, '2018-03-07 23:53:41', '2018-03-07 23:53:41', 1, 75, 73, '550.00', '88.00', '638.00', '2018-03-22 00:00:00', 1, '3 a 5 días hábiles', 2),
(72, 7, 1, 1, NULL, 1, NULL, '2018-03-08 00:00:00', '2018-03-09 00:50:02', 1, 115, 111, '3650.00', '584.00', '4234.00', '2018-03-09 00:00:00', 1, '1 días hábiles', 2),
(73, 7, 1, 1, NULL, 1, NULL, '2018-03-08 00:00:00', '2018-03-09 01:02:38', 1, 115, 111, '28400.00', '4544.00', '32944.00', '2018-03-09 00:00:00', 1, '1 días hábiles', 2),
(74, 7, 1, 1, NULL, 1, NULL, '2018-03-08 00:00:00', '2018-03-09 01:08:19', 1, 115, 111, '34400.00', '5504.00', '39904.00', '2018-03-09 00:00:00', 1, '1días hábiles', 2),
(79, 7, 1, 1, NULL, 1, NULL, '2018-03-09 00:00:00', '2018-03-09 20:05:37', 1, 104, 98, '36440.00', '5830.40', '42270.40', '2018-03-24 00:00:00', 1, '15días hábiles', 2),
(80, 7, 1, 1, NULL, 1, NULL, '2018-03-09 00:00:00', '2018-03-09 21:29:19', 1, 90, NULL, '25600.00', '4096.00', '29696.00', '2018-02-15 00:00:00', 1, '7 días hábiles', 1),
(81, 10, 1, 1, NULL, 1, NULL, '2018-03-09 00:00:00', '2018-03-09 22:43:42', 1, 75, 73, '1890.00', '302.40', '2192.40', '2018-03-24 00:00:00', 1, '7 días hábiles', 1),
(82, 3, 1, 1, NULL, 1, NULL, '2018-03-27 00:00:00', '2018-03-11 21:06:16', 1, 19, NULL, '1175280.00', '188044.80', '1363324.80', '2018-04-09 00:00:00', 1, '15 días hábiles', 1),
(83, 7, 1, 1, NULL, 1, NULL, '2018-03-12 00:00:00', '2018-03-12 19:14:12', 1, 132, 135, '12000.00', '1920.00', '13920.00', '2018-03-27 00:00:00', 1, '7 días hábiles', 2),
(84, 7, 1, 1, NULL, 1, NULL, '2018-03-12 00:00:00', '2018-03-12 19:32:17', 1, 132, 135, '1960.00', '313.60', '2273.60', '2018-03-27 00:00:00', 1, '7 días hábiles', 2),
(85, 7, 1, 1, NULL, 1, NULL, '2018-03-12 00:00:00', '2018-03-12 19:39:38', 1, 132, 135, '4400.00', '704.00', '5104.00', '2018-03-27 00:00:00', 1, '7 días hábiles', 2),
(86, 10, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 17:44:51', 1, 55, 57, '2413.79', '386.21', '2800.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 1),
(87, 3, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 19:06:08', 1, 40, 39, '3100.00', '496.00', '3596.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(88, 7, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 19:17:48', 1, 95, 90, '1790.00', '286.40', '2076.40', '2018-03-28 00:00:00', 1, '7 días hábiles', 1),
(89, 10, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 22:56:21', 1, 146, 145, '45710.00', '7313.60', '53023.60', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(90, 3, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 23:02:25', 1, 23, 21, '7400.00', '1184.00', '8584.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(91, 3, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 23:04:10', 1, 23, 21, '23100.00', '3696.00', '26796.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(92, 3, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 23:30:51', 1, 75, 73, '9450.00', '1512.00', '10962.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(93, 10, 1, 1, NULL, 1, NULL, '2018-03-13 00:00:00', '2018-03-13 23:40:42', 1, 147, 146, '550.00', '88.00', '638.00', '2018-03-28 00:00:00', 1, '7 días hábiles', 2),
(94, 3, 1, 1, NULL, 1, NULL, '2018-02-28 00:00:00', '2018-03-14 19:48:30', 1, 23, 62, '37550.00', '6008.00', '43558.00', '2018-03-29 00:00:00', 1, '10 días hábiles', 2),
(95, 3, 1, 1, NULL, 1, NULL, '2018-03-14 00:00:00', '2018-03-14 20:16:49', 1, 23, 21, '47000.00', '7520.00', '54520.00', '2018-03-29 00:00:00', 1, '5 días hábiles', 2),
(96, 3, 1, 1, NULL, 1, NULL, '2018-03-14 00:00:00', '2018-03-14 21:08:43', 1, 149, 148, '24630.00', '3940.80', '28570.80', '2018-03-29 00:00:00', 1, '7 días hábiles', 2),
(97, 3, 1, 1, NULL, 1, NULL, '2018-03-15 00:00:00', '2018-03-15 00:48:15', 1, 23, 21, '35000.00', '5600.00', '40600.00', '2018-03-30 00:00:00', 1, '7 días hábiles', 2),
(98, 7, 1, 1, NULL, 1, NULL, '2018-03-15 00:00:00', '2018-03-15 17:57:18', 1, 92, 153, '4860.00', '777.60', '5637.60', '2018-03-30 00:00:00', 1, '7 días hábiles', 2),
(99, 11, 1, 1, NULL, 1, NULL, '2018-03-15 00:00:00', '2018-03-15 23:12:11', 1, 153, 156, '2100.00', '336.00', '2436.00', '2018-03-30 00:00:00', 1, '7 días hábiles', 2),
(100, 7, 1, 1, NULL, 1, NULL, '2018-03-16 00:00:00', '2018-03-16 00:26:12', 1, 115, 155, '832300.00', '133168.00', '965468.00', '2018-03-31 00:00:00', 1, '30 días hábiles', 2),
(101, 3, 1, 1, NULL, 1, NULL, '2018-03-16 00:00:00', '2018-03-16 19:08:07', 1, 40, 160, '4850.00', '776.00', '5626.00', '2018-03-31 00:00:00', 1, '5 A 7 días hábiles', 2),
(102, 3, 1, 1, NULL, 1, NULL, '2018-03-16 00:00:00', '2018-03-16 20:11:41', 1, 108, 102, '849.00', '135.84', '984.84', '2018-03-31 00:00:00', 1, '7 días hábiles', 1),
(103, 7, 1, 1, NULL, 1, NULL, '2018-03-16 00:00:00', '2018-03-16 23:39:48', 1, 115, 128, '8980.00', '1436.80', '10416.80', '2018-03-31 00:00:00', 1, '7 días hábiles', 2),
(104, 7, 1, 1, NULL, 1, NULL, '2018-03-17 00:00:00', '2018-03-17 00:16:37', 1, 158, 162, '3300.00', '528.00', '3828.00', '2018-04-01 00:00:00', 1, '7 días hábiles', 1),
(105, 10, 1, 1, NULL, 1, NULL, '2018-03-12 00:00:00', '2018-03-17 17:35:25', 1, 59, 97, '4830.00', '772.80', '5602.80', '2018-04-12 00:00:00', 1, '7 días hábiles', 2),
(106, 3, 1, 1, NULL, 1, NULL, '2018-03-20 00:00:00', '2018-03-20 17:17:26', 1, 23, NULL, '1526000.00', '244160.00', '1770160.00', '2018-04-04 00:00:00', 1, '7 A 15 días hábiles', 2),
(107, 9, 1, 1, NULL, 1, NULL, '2018-03-20 00:00:00', '2018-03-20 18:47:37', 1, 26, NULL, '22800.00', '3648.00', '26448.00', '2020-01-04 00:00:00', 1, '10 días hábiles', 2),
(108, 3, 1, 1, NULL, 1, NULL, '2018-03-20 00:00:00', '2018-03-20 20:14:01', 1, 19, NULL, '27000.00', '4320.00', '31320.00', '2018-04-04 00:00:00', 1, '3 días hábiles', 1),
(109, 3, 1, 1, NULL, 1, NULL, '2018-03-20 00:00:00', '2018-03-20 22:25:29', 1, 36, 125, '7750.00', '1240.00', '8990.00', '2018-04-04 00:00:00', 1, '7 días hábiles', 2),
(110, 10, 1, 1, NULL, 1, NULL, '2018-03-07 00:00:00', '2018-03-21 00:26:52', 1, 32, 28, '1540.00', '246.40', '1786.40', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(111, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 00:36:50', 1, 29, 120, '900.00', '144.00', '1044.00', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(112, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 16:24:50', 1, 29, 120, '950.00', '152.00', '1102.00', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(113, 3, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 18:24:58', 1, 171, NULL, '1950.00', '312.00', '2262.00', '2018-04-05 00:00:00', 1, '1 día hábiL', 2),
(114, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 18:55:55', 1, 29, 120, '2000.00', '320.00', '2320.00', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(115, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 18:58:58', 1, 29, 120, '550.00', '88.00', '638.00', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(116, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-21 19:03:26', 1, 29, 120, '4000.00', '640.00', '4640.00', '2018-04-05 00:00:00', 1, '7 días hábiles', 2),
(117, 3, 1, 1, NULL, 1, NULL, '2018-03-22 00:00:00', '2018-03-22 04:34:42', 1, 111, 105, '2400.00', '384.00', '2784.00', '2018-04-06 00:00:00', 1, '7 días hábiles', 2),
(118, 7, 1, 1, NULL, 1, NULL, '2018-03-22 00:00:00', '2018-03-22 18:33:46', 1, 132, 135, '2400.00', '384.00', '2784.00', '2018-04-06 00:00:00', 1, '7 días hábiles', 1),
(119, 7, 1, 1, NULL, 1, NULL, '2018-03-22 00:00:00', '2018-03-22 18:36:52', 1, 58, NULL, '5500.00', '880.00', '6380.00', '2018-04-06 00:00:00', 1, '7 días hábiles', 1),
(120, 3, 1, 1, NULL, 1, NULL, '2018-03-22 00:00:00', '2018-03-22 21:44:41', 1, 23, 21, '50000.00', '8000.00', '58000.00', '2018-04-06 00:00:00', 1, '7 A 10 días hábiles', 2),
(121, 10, 1, 1, NULL, 1, NULL, '2018-03-21 00:00:00', '2018-03-23 00:29:05', 1, 23, 21, '480.00', '76.80', '556.80', '2018-04-07 00:00:00', 1, '7 días hábiles', 2),
(122, 7, 1, 1, NULL, 1, NULL, '2018-03-23 00:00:00', '2018-03-23 20:19:38', 1, 164, 182, '17850.00', '2856.00', '20706.00', '2018-04-07 00:00:00', 1, '4 días hábiles', 2),
(123, 10, 1, 1, NULL, 1, NULL, '2018-03-23 00:00:00', '2018-03-23 22:04:47', 1, 59, 96, '30900.00', '4944.00', '35844.00', '2018-04-07 00:00:00', 1, '7 días hábiles', 2),
(124, 10, 1, 1, NULL, 1, NULL, '2018-03-23 00:00:00', '2018-03-23 22:08:12', 1, 59, 96, '2600.00', '416.00', '3016.00', '2018-04-07 00:00:00', 1, '7 días hábiles', 2),
(125, 10, 1, 1, NULL, 1, NULL, '2018-02-08 00:00:00', '2018-03-23 23:04:19', 1, 23, 21, '550.00', '88.00', '638.00', '2018-03-08 00:00:00', 1, '7 días hábiles', 2),
(126, 10, 1, 1, NULL, 1, NULL, '2018-03-02 00:00:00', '2018-03-23 23:07:48', 1, 23, 21, '1500.00', '240.00', '1740.00', '2018-04-02 00:00:00', 1, '7 días hábiles', 2),
(127, 10, 1, 1, NULL, 1, NULL, '2018-03-08 00:00:00', '2018-03-23 23:26:23', 1, 23, 21, '6385.00', '1021.60', '7406.60', '2018-04-07 00:00:00', 1, '7 días hábiles', 2),
(128, 10, 1, 1, NULL, 1, NULL, '2018-03-23 00:00:00', '2018-03-24 00:25:48', 1, 59, 96, '3000.00', '480.00', '3480.00', '2018-04-08 00:00:00', 1, '7 días hábiles', 2),
(129, 10, 1, 1, NULL, 1, NULL, '2018-03-24 00:00:00', '2018-03-24 18:40:11', 1, 55, 57, '1370.00', '219.20', '1589.20', '2018-04-08 00:00:00', 1, '7 días hábiles', 2),
(130, 7, 1, 1, NULL, 1, NULL, '2018-03-26 00:00:00', '2018-03-26 21:00:06', 1, 115, 127, '148900.00', '23824.00', '172724.00', '2018-04-10 00:00:00', 1, '7 días hábiles', 2),
(131, 7, 1, 1, NULL, 1, NULL, '2018-04-02 00:00:00', '2018-04-02 17:00:57', 1, 92, 154, '15000.00', '2400.00', '17400.00', '2018-04-17 00:00:00', 1, '7 días hábiles', 2),
(132, 10, 1, 1, NULL, 1, NULL, '2018-04-02 00:00:00', '2018-04-02 17:33:47', 1, 55, 57, '920.00', '147.20', '1067.20', '2018-04-17 00:00:00', 1, '7 días hábiles', 1),
(133, 10, 1, 1, NULL, 1, NULL, '2018-04-02 00:00:00', '2018-04-02 17:52:36', 1, 55, 57, '990.00', '158.40', '1148.40', '2018-04-17 00:00:00', 1, '7 días hábiles', 2),
(134, 3, 1, 1, NULL, 1, NULL, '2018-04-02 00:00:00', '2018-04-02 23:56:32', 1, 43, 46, '2100.00', '336.00', '2436.00', '2018-04-17 00:00:00', 1, '7 días hábiles', 2),
(135, 3, 1, 1, NULL, 1, NULL, '2018-04-03 00:00:00', '2018-04-03 00:44:08', 1, 35, 32, '12055.00', '1928.80', '13983.80', '2018-04-18 00:00:00', 1, '7 días hábiles', 2),
(136, 10, 1, 1, NULL, 1, NULL, '2018-04-03 00:00:00', '2018-04-03 15:01:10', 1, 55, 57, '7360.00', '1177.60', '8537.60', '2018-04-18 00:00:00', 1, '7 días hábiles', 2),
(137, 3, 1, 1, NULL, 1, NULL, '2018-04-03 00:00:00', '2018-04-03 18:39:49', 1, 199, 206, '8000.00', '1280.00', '9280.00', '2018-04-18 00:00:00', 1, '7 días hábiles', 2),
(138, 7, 1, 1, NULL, 1, NULL, '2018-04-03 00:00:00', '2018-04-03 22:24:01', 1, 19, NULL, '4000.00', '640.00', '4640.00', '2018-04-18 00:00:00', 1, '7 días hábiles', 1),
(139, 7, 1, 1, NULL, 1, NULL, '2018-04-03 00:00:00', '2018-04-03 22:32:46', 1, 19, NULL, '4500.00', '720.00', '5220.00', '2018-04-18 00:00:00', 1, '7 días hábiles', 1),
(140, 3, 1, 1, NULL, 1, NULL, '2018-04-04 00:00:00', '2018-04-04 16:46:33', 1, 95, 90, '2400.00', '384.00', '2784.00', '2018-04-19 00:00:00', 1, '7 días hábiles', 2),
(141, 3, 1, 1, NULL, 1, NULL, '2018-04-04 00:00:00', '2018-04-04 17:19:08', 1, 23, 21, '559800.00', '89568.00', '649368.00', '2018-04-19 00:00:00', 1, '7 A 15 días hábiles', 2),
(142, 10, 1, 1, NULL, 1, NULL, '2018-04-04 00:00:00', '2018-04-04 23:46:39', 1, 29, 120, '8750.00', '1400.00', '10150.00', '2018-04-19 00:00:00', 1, '7 días hábiles', 2),
(143, 10, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 16:22:41', 1, 202, 208, '300.00', '48.00', '348.00', '2018-04-20 00:00:00', 1, '7 días hábiles', 2),
(144, 3, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 17:04:53', 1, 63, NULL, '3200.00', '512.00', '3712.00', '2018-04-20 00:00:00', 1, '7 días hábiles', 2),
(145, 11, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 17:20:29', 1, 63, 209, '7215.00', '1154.40', '8369.40', '2018-04-20 00:00:00', 1, '7 días hábiles', 2),
(146, 3, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 17:29:24', 1, 29, 40, '3750.00', '600.00', '4350.00', '2018-04-20 00:00:00', 1, '3 A 5 días hábiles', 2),
(147, 7, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 18:27:35', 1, 19, NULL, '900.00', '144.00', '1044.00', '2018-04-20 00:00:00', 1, '7 días hábiles', 1),
(148, 3, 1, 1, NULL, 1, NULL, '2018-04-05 00:00:00', '2018-04-05 22:16:06', 1, 197, 203, '426250.00', '68200.00', '494450.00', '2018-04-20 00:00:00', 1, '10 A 15  días hábiles', 1),
(149, 3, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-06 17:15:23', 1, 23, 21, '9000.00', '1440.00', '10440.00', '2018-04-21 00:00:00', 1, '2 A 3 días hábiles', 2),
(150, 7, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-06 18:05:30', 1, 58, NULL, '3120.00', '499.20', '3619.20', '2018-04-10 00:00:00', 1, '7 días hábiles', 2),
(151, 7, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-06 20:57:33', 1, 32, 215, '6830.00', '1092.80', '7922.80', '2018-04-09 00:00:00', 1, '7 días hábiles', 1),
(152, 7, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-06 22:37:53', 1, 96, NULL, '10100.00', '1616.00', '11716.00', '2018-04-21 00:00:00', 1, '7 días hábiles', 2),
(153, 3, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-06 22:46:15', 1, 19, NULL, '15500.00', '2480.00', '17980.00', '2018-04-21 00:00:00', 1, '7 días hábiles', 1),
(154, 3, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-07 00:03:23', 1, 19, NULL, '146900.00', '23504.00', '170404.00', '2018-04-21 00:00:00', 1, '7 días hábiles', 1),
(155, 3, 1, 1, NULL, 1, NULL, '2018-04-06 00:00:00', '2018-04-07 15:40:23', 1, 23, 21, '490.00', '78.40', '568.40', '2018-04-22 00:00:00', 1, '7 días hábiles', 2),
(156, 3, 1, 1, NULL, 1, NULL, '2018-04-07 00:00:00', '2018-04-07 18:57:56', 1, 211, 221, '4200.00', '672.00', '4872.00', '2018-04-22 00:00:00', 1, '7 días hábiles', 2),
(157, 3, 1, 1, NULL, 1, NULL, '2018-04-09 00:00:00', '2018-04-09 15:28:43', 1, 23, 21, '700.00', '112.00', '812.00', '2018-04-24 00:00:00', 1, '1 días hábiles', 2),
(158, 7, 1, 1, NULL, 1, NULL, '2018-04-09 00:00:00', '2018-04-09 18:14:34', 1, 213, 223, '53040.00', '8486.40', '61526.40', '2018-04-24 00:00:00', 1, '7 días hábiles', 2),
(159, 10, 1, 1, NULL, 1, NULL, '2018-04-09 00:00:00', '2018-04-09 22:49:11', 1, 40, 37, '1000.00', '160.00', '1160.00', '2018-04-24 00:00:00', 1, '7 días hábiles', 2),
(160, 3, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 00:48:39', 1, 40, 160, '3450.00', '552.00', '4002.00', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(161, 7, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 17:01:29', 1, 92, 154, '4320.00', '691.20', '5011.20', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(162, 7, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 17:10:43', 1, 96, NULL, '4200.00', '672.00', '4872.00', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(163, 7, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 19:45:02', 1, 215, 226, '880.00', '140.80', '1020.80', '2018-04-25 00:00:00', 1, '7 días hábiles', 1),
(164, 7, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 19:47:50', 1, 96, NULL, '30250.00', '4840.00', '35090.00', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(165, 3, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 20:16:59', 1, 29, 74, '33000.00', '5280.00', '38280.00', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(166, 11, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-10 21:51:51', 1, 40, 37, '2500.00', '400.00', '2900.00', '2018-04-25 00:00:00', 1, '7 días hábiles', 2),
(167, 3, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 00:07:13', 1, 43, 227, '3500.00', '560.00', '4060.00', '2018-04-26 00:00:00', 1, '7 días hábiles', 2),
(168, 7, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 17:22:52', 1, 115, 127, '47400.00', '7584.00', '54984.00', '2018-04-26 00:00:00', 1, '7 días hábiles', 1),
(169, 7, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 17:32:50', 1, 115, 127, '49800.00', '7968.00', '57768.00', '2018-04-26 00:00:00', 1, '7 días hábiles', 1),
(170, 7, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 18:14:27', 1, 115, 127, '48240.00', '7718.40', '55958.40', '2018-04-26 00:00:00', 1, '7 días hábiles', 2),
(171, 7, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 18:53:37', 1, 115, 127, '11000.00', '1760.00', '12760.00', '2018-04-26 00:00:00', 1, '7 días hábiles', 1),
(172, 7, 1, 1, NULL, 1, NULL, '2018-04-11 00:00:00', '2018-04-11 19:13:25', 1, 95, 90, '2950.00', '472.00', '3422.00', '2018-04-26 00:00:00', 1, '7 días hábiles', 1),
(173, 3, 1, 1, NULL, 1, NULL, '2018-04-10 00:00:00', '2018-04-11 22:21:59', 1, 19, NULL, '85500.00', '13680.00', '99180.00', '2018-04-26 00:00:00', 1, '7 A 10 días hábiles', 1),
(174, 3, 1, 1, NULL, 1, NULL, '2018-04-12 00:00:00', '2018-04-12 18:03:56', 1, 26, 82, '19000.00', '3040.00', '22040.00', '2018-04-27 00:00:00', 1, '3 días hábiles', 2),
(175, 3, 1, 1, NULL, 1, NULL, '2018-04-13 00:00:00', '2018-04-13 17:32:08', 1, 19, NULL, '742000.00', '118720.00', '860720.00', '2018-04-28 00:00:00', 1, '7 A 15 días hábiles', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionestado`
--

CREATE TABLE `cotizacionestado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cotizacionestado`
--

INSERT INTO `cotizacionestado` (`id`, `nombre`, `activo`) VALUES
(1, 'Inicial', 1),
(2, 'Orden de Trabajo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionitem`
--

CREATE TABLE `cotizacionitem` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_moneda` int(11) NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cotizacionitem`
--

INSERT INTO `cotizacionitem` (`id`, `id_producto`, `cantidad`, `fecha`, `activo`, `id_moneda`, `descripcion`, `precio`, `total`) VALUES
(39, 14, 6000, '2018-02-26 20:33:08', 1, 1, 'TRIPTICOS IMPRESOS SELECCION COLOR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS. UN SOLO DISEÑO.', '1.05', '6300.00'),
(40, 17, 28, '2018-02-27 15:59:16', 1, 1, 'VINIL IMPRESION DIGITAL MEDIDA 3 X .25', '75.00', '2100.00'),
(41, 17, 1, '2018-02-27 19:33:29', 1, 1, 'LONA IMPRESION DIGITAL MEDIDA 9.76 X 3.05 MTS CON SOBRANTE PARA RESTIRAR.... EVENTO REYNOSA', '5700.00', '5700.00'),
(42, 17, 1, '2018-02-27 19:34:34', 1, 1, 'LONA IMPRESION DIGITAL MEDIDA 9.76 X 3.05 MTS CON SOBRENTA PARA RESTIRAR...EVENTO MATAMOROS', '5700.00', '5700.00'),
(43, 17, 1, '2018-02-27 22:47:45', 1, 1, 'VINIL IMPRESOS MEDIDA 5.00 X 6.66  MTS INCLUYE INSTALACION EN VIDRIOS ', '4950.00', '4950.00'),
(44, 17, 1, '2018-02-27 22:50:34', 1, 1, 'PAQUETE DE PUBLICIDAD MOVIL INCLUYE:\n2 LONAS IMPRESION DIGITAL PARA CAMIONETA\n1 SEMANA DE RENTA DE 4 HORAS FIJAS Y 4 HORAS MOVILES DEL 5 AL 11 DE MARZO.', '8500.00', '8500.00'),
(45, 15, 500, '2018-02-27 23:04:37', 1, 1, 'GORRA DE ALGODO GEP 003 IMPRESA 1 TINTA 2 LOGOS', '28.00', '14000.00'),
(46, 15, 500, '2018-02-27 23:04:37', 1, 1, 'LAPIZ IMPRESO 1 TINTA DPO 008 ', '2.50', '1250.00'),
(47, 15, 500, '2018-02-27 23:04:37', 1, 1, 'PLUMAS CLIP UP IMPRESA 1 TINTA SH 9010', '6.70', '3350.00'),
(48, 15, 1000, '2018-02-27 23:04:37', 1, 1, 'PULSERAS TEJIDAS A COLOR', '3.80', '3800.00'),
(49, 17, 1, '2018-02-28 00:38:56', 1, 1, 'VINIL IMPRESOS MEDIDA 5.00 X 6.66  MTS INCLUYE INSTALACION EN VIDRIOS VACACIONES', '4950.00', '4950.00'),
(50, 15, 1000, '2018-02-28 17:32:08', 1, 1, 'PLAYERAS CUELLO REDONDO IMPRESAS A 2 TINTAS FRENTE', '39.00', '39000.00'),
(51, 16, 20, '2018-02-28 21:25:48', 1, 1, 'PLAYERA   EN COLOR NEGRA   DE LA MARCA  YAZBEK  CON  2 LOGOS  BORDADOS  AL FRENTE  Y 1 EN LA PARTE  DE LA ESPALDA ', '170.00', '3400.00'),
(52, 17, 14, '2018-02-28 21:34:40', 1, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.5 X 3.00 CON BASTIDOR DE MADERA Y TABLAS PARA FIJAR A PISO.', '1650.00', '23100.00'),
(53, 17, 37, '2018-02-28 21:35:42', 1, 1, 'LETREROS DE VINIL HD CON COROPLAST MEDIDA 70 X 30 CM, CON MADERA PARA SOSTENER', '200.00', '7400.00'),
(54, 17, 1, '2018-02-28 22:30:20', 1, 1, 'LONA IMPRESION DIGITAL CON BASTIDOR DE MADERA MEDIDA DE 4 X 2  METROS CON 2 TRIPIES EMPOTRABLES DE MADERA MEDIDA DE 1 METRO', '7400.00', '7400.00'),
(55, NULL, 27, '2018-02-28 22:51:42', 1, 1, 'BANNERS MEDIDA .80 X 1.80 METROS', '160.00', '4320.00'),
(56, 16, 14, '2018-02-28 23:38:35', 1, 1, 'CAMISAS MANGA LARGA MARCA DACACHE PARA CABALLERO CON 1 LOGO BORDADO TALLAS XS A LA XL', '375.00', '5250.00'),
(57, 16, 3, '2018-02-28 23:38:35', 1, 1, 'CAMISAS MANGA LARGA MARCA DACACHE PARA CABALLERO CON 1 LOGO BORDADO TALLAS 3XL', '405.00', '1215.00'),
(58, 15, 250, '2018-03-01 19:08:50', 1, 1, 'MOCHILA SIN 235  EN COLOR AZUL  CON IMPRESIÓN  A 1 TINTA  EN COLOR BLANCO', '17.00', '4250.00'),
(59, 15, 500, '2018-03-01 19:08:50', 1, 1, 'LAPIZ  EN COLOR BLANCO  CON IMPRESIÓN  A  1 TINTA ', '2.50', '1250.00'),
(60, 14, 200, '2018-03-01 19:08:50', 1, 1, 'IMPRESION  DE TRIPTICO A SELECCION  DE COLOR  EN PAPEL COUCHE  DE  130 GRS. ', '7.30', '1460.00'),
(61, 15, 250, '2018-03-01 19:08:50', 1, 1, 'BORRADOR BLANCO  CON IMPRESIÓN   A 1 TINTA ', '2.10', '525.00'),
(62, 15, 50, '2018-03-01 19:08:50', 1, 1, 'TERMO    LAKE EN COLOR  AZUL  CON IMPRESIÓN   A 1 TINTA ', '25.00', '1250.00'),
(63, 17, 1, '2018-03-01 19:41:12', 1, 1, 'MAMPARA   DE  2  X 4  METROS   CON BASTIDOR  DE MADERA   ', '2400.00', '2400.00'),
(64, 15, 35, '2018-03-01 19:41:12', 1, 1, ' TAZAS  SUBLIMADAS  S/ COLOR', '60.00', '2100.00'),
(65, 14, 1000, '2018-03-02 16:45:57', 1, 1, 'SOBRES DE CORRESPONDENCIA SIN VENTANA IMPRESION A 1 TINTA', '1.10', '1100.00'),
(66, 17, 1, '2018-03-02 17:30:43', 1, 1, 'ROTULACION DE ANUNCION LUMINOSO MEDIDA 3.55 X 6.04 INCLUYE: 	DESINSTALACION DE ANUNCIO ADOSADO A PARED, PARA	TRASLADAR A TALLER, DESARMADO DE ANUNCIO, PINTURA ANTICORROSIVA, INSTALACION DE MATERIAL ELECTRICO, INSTALACION DE LONA 3M TRASLUCIDA BLANCA, E INSTALACION DE VINIL SERIE 2500 COLOR ROJO, CORTE POR COMPUTADORA	TRASLADOO A MATRIZ E INSTALACION DE ANUNCIO ADOSADO. ', '41000.00', '41000.00'),
(67, 15, 9000, '2018-03-02 17:37:17', 1, 1, 'Playera blanca marca  Yazbek  unisex CUELLO REDONDO    Las medidas  de impresión son las siguientes:   M: 20.5  x 8.5 3000 PIEZAS  G: 23 x 9.5 3000 PIEZAS  XL: 25 x 10.5 cm 3000 PIEZAS  IMPRESION EN SERIGRAFIA EN PECHO   A 5  TINTAS\nNOTA   SI LAS PLAYERAS LA  AUTORIZAN EL LUNES   SE ESTARIAN  ENTREGANDO EL DIA  MIERCOLES  14 DE MARZO ', '31.60', '284400.00'),
(68, 17, 3, '2018-03-02 17:46:16', 1, 1, 'SELLOS EN BASE DE MADERA MEDIDA DE 8.5 X 1.5 CM\nCON NOMBRES \n', '300.00', '900.00'),
(69, 17, 2, '2018-03-02 17:46:16', 1, 1, 'SELLOS AUTOENTINTABLES FECHADOR MEDIDA DE \n6 X 4 CM', '460.00', '920.00'),
(70, 15, 500, '2018-03-03 17:02:22', 1, 1, 'BOLIGRAFO ROSEG AMARILLO SH 2025 CON IMPRESION A UNA TINTA.', '7.00', '3500.00'),
(71, 16, 20, '2018-03-05 18:14:49', 1, 1, 'playera de color  negro  yazbek  tipo  polo  con  2 logos bordados  al frente  y  espalda 1 ', '170.00', '3400.00'),
(73, 16, 1000, '2018-03-05 19:42:54', 1, 1, 'GORRAS DE MALLA CON LOGO SUBLIMADO FRENTE, LATERALES LOGOS BORDADOS (2)', '79.00', '79000.00'),
(74, 15, 1000, '2018-03-05 19:42:54', 1, 1, 'PLAYERAS DRIFYT SUBLIMADAS A COLOR AMBOS LADOS Y MANGAS. VARIAS TALLAS.\n400 TALLA G HOMBRE\n400 TALLA G MUJER\n20 TALLA 12 NIÑOS', '115.00', '115000.00'),
(75, 15, 1000, '2018-03-05 19:42:54', 1, 1, 'MEDALLAS GRABADAS AMBOS LADOS COLOR PLATA NATURAL ', '53.00', '53000.00'),
(76, 15, 105, '2018-03-05 19:42:54', 1, 1, 'MEDALLAS GRABADAS AMBOS LADOS \n35 PRIMER LUGAR  COLOR ORO\n35 SEGUNDO LUGAR  COLOR PLATA\n35 TERCER LUGAR  COLOR BRONCE', '53.00', '5565.00'),
(77, 15, 100, '2018-03-05 20:22:35', 1, 1, 'PLAYERA  CUELLO  REDONDO  CON IMPRESION  EN SERIGRAFIA  ESPALDA  A 1 TINTA   FRENTE  LADO IZQUIERDO  LA  IMAGEN  DE  SAN ISIDRO LABRADO EN PARCHE  DE  10 CM  X  10  CM.  ', '70.00', '7000.00'),
(78, 15, 65, '2018-03-05 22:59:22', 1, 1, 'PLAYERA   CUELLO  REDONDO    COLOR  ROJA   CON IMPRESION  EN SERIGRAFIA  A  3 TINTAS   SOLO  FRENTE EN DIFERENTES  TALLAS  ', '40.00', '2600.00'),
(79, 17, 1, '2018-03-06 16:23:55', 1, 1, 'MAMPARA CON IMPRESION DIGITAL CON BASTIDOR DE MADERA MEDIDA 4 X 2 METROS', '4500.00', '4500.00'),
(80, 15, 1500, '2018-03-06 18:28:47', 1, 1, 'SH 1415 N \nBOLÍGRAFO ARROW COLOR  NEGRO, NARANJA. BLANCO,   CON IMPRESION  EN SERIGRAFIA  A 1 TINTA  ', '3.40', '5100.00'),
(81, 14, 500, '2018-03-06 18:44:07', 1, 1, 'HOJAS MEMBRETADAS  IMPRESION SELECCION COLOR TAMAÑO CARTA', '2.80', '1400.00'),
(82, 14, 200, '2018-03-06 18:44:07', 1, 1, 'CARPETAS IMPRESAS A SELECCION COLOR EN COUCHE DE 300 GRAMOS', '10.50', '2100.00'),
(84, 14, 240, '2018-03-06 18:44:07', 1, 1, 'GAFETTES TAMAÑO 1/4 CARTA  SELECCION COLOR EN COUCHE DE 300 GRAMOS ENMICADOS INCLUYE PORTAGAFETTE', '9.90', '2376.00'),
(85, 14, 1000, '2018-03-06 18:55:17', 1, 1, 'IMPRESION  DE CARPETA TAMAÑO  CARTA  CON  PESTAÑA     A SELECCION  DE  COLOR   EN  PAPEL COCUCHE  DE 300 GRS.   CON  UN ACABADO  DE  BARNIZ  BRILLANTE ', '3.80', '3800.00'),
(86, 15, 50, '2018-03-06 19:49:30', 1, 1, 'TMPS 42 A \nTERMO NYUK COLOR AZUL  CON IMPRESION EN SERIGRAFIA A 1  TINTA ', '84.36', '4218.00'),
(87, 15, 50, '2018-03-06 19:49:30', 1, 1, 'TMPS 57 A \nTERMO LIPOVEI COLOR AZUL CON IMPRESION  EN SERIGRAFIA  A 1 TINTA ', '210.00', '10500.00'),
(88, 15, 50, '2018-03-06 19:49:30', 1, 1, 'TMPS 58 A \nTERMO VICARE COLOR AZUL  CON IMPRESION  EN SERIGRAFIA  A 1  TINTA ', '110.00', '5500.00'),
(89, 15, 50, '2018-03-06 19:49:30', 1, 1, 'TMPS 39 A \nTERMO CLOVELLY COLOR AZUL  CON IMPRESION  EN SERIGRAFIA  A 1 TINTA \n', '90.00', '4500.00'),
(90, 14, 500, '2018-03-06 20:40:19', 1, 1, ' IMPRESION DE POSTER DOBLE CARTA DE MAESTRIA EN PAPEL  COUCHE  DE 250 GRS.  A SELECCION  DE  COLOR ', '3.60', '1800.00'),
(91, 14, 500, '2018-03-06 20:40:19', 1, 1, ' IMPRESION DE TRIPTICOS DE MAESTRIA EN PAPEL COUCHE DE 130 GRS. ', '3.70', '1850.00'),
(92, 14, 500, '2018-03-06 20:40:19', 1, 1, 'IMPRESION  DE TRIPTICOS DE DOCTORADO  EN PAPEL COUCHE DE 130 GRS.  A SELECCION  DE  COLOR ', '3.70', '1850.00'),
(93, 14, 2000, '2018-03-06 20:53:08', 1, 1, 'IMPRESION DE  FORMATO  EN PAPEL  SEGURIDA  EN COLOR  VERDE  A SELECCION  DE COLOR  TAMAÑO CARTA  LOGO  IMPRESO   EN MARCA  DE AGUA ', '1.99', '3980.00'),
(94, 17, 3500, '2018-03-06 21:14:38', 1, 1, 'IMPRESION  DE  HOLOGRAMA  A SELECCION  DE COLOR   \nIMPRESO EN REFLEJO  DE  ESPEJO  EN VINIL \n\n MEDIDA   12 cm x 5.5 cm', '10.50', '36750.00'),
(95, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'PELOTA ANTIESTRES SOC 013 IMPRESA 1 TINTA ', '11.00', '22000.00'),
(96, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'CUBO LISO ANTIESTRES SOC 063 IMPRESO 1 TINTA', '15.00', '30000.00'),
(97, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'ABANICO DE CARTON CON PALITO DE MADERA SELECCION COLOR 1 LADO', '3.00', '6000.00'),
(98, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLIGRAFO SLIM IMPRESO SH 1135 1 TINTA', '2.30', '4600.00'),
(99, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA MOCHILA PRISMA SIN 021 IMPRESA 1 TINTA', '18.50', '37000.00'),
(100, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA RIOJA SIN 022 IMPRESA 1 TINTA', '14.50', '29000.00'),
(101, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA SHOPPER SIN 041 IMPRESA 1 TINTA', '20.50', '41000.00'),
(102, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA TOLEDO SIN 043 IMPRESA 1 TINTA', '11.90', '23800.00'),
(103, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA AVERY SIN 048 IMPRESA 1 TINTA', '19.50', '39000.00'),
(104, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA MOCHILA SIMME SIN 107 IMPRESA 1 TINTA', '19.50', '39000.00'),
(105, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA BAGGARA SIN 147 IMPRESA 1 TINTA', '11.00', '22000.00'),
(106, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA ECOLOGICA SIN 230 IMPRESA 1 TINTA', '14.90', '29800.00'),
(107, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'BOLSA MOCHILA ASTORGA SIN 235 IMPRESA 1 TINTA', '12.50', '25000.00'),
(108, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'ANFORA LAKE ANF 006 1 TINTA', '17.50', '35000.00'),
(109, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'ANFORA SINKKER ANF 009 1 TINTA', '11.50', '23000.00'),
(110, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'ANFORA SHADOW ANF 004 1 TINTA', '16.30', '32600.00'),
(111, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'LONCHERA SELK KTC 032 1 TINTA', '16.00', '32000.00'),
(112, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'LONCHERA ZIAR SIN 156 1 TINTA', '21.00', '42000.00'),
(113, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'LIBRETA WENDEL HL 1300', '17.90', '35800.00'),
(114, 15, 2000, '2018-03-07 02:29:20', 1, 1, 'LIBRETA ECOLOGICA HL 2010', '15.90', '31800.00'),
(115, 15, 450, '2018-03-07 15:56:30', 1, 1, 'PLAYERA  BLANCA  CUELLO  REDONDO   CON IMPRESION  EN SERIGRAFIA  A 4  TINTAS  \n\n\n\n', '52.00', '23400.00'),
(116, 15, 50, '2018-03-07 16:54:00', 1, 1, 'CARGADOR BRAZALETE NARITA NG COLOR NEGRO IMPRESOS A 1 TINTA', '95.00', '4750.00'),
(117, 15, 50, '2018-03-07 16:54:00', 1, 1, 'BOLIGRAFO SEÑALADOR LASER METALICO COLOR NEGRO  IMPRESOS A 1 TINTA', '115.00', '5750.00'),
(118, 15, 150, '2018-03-07 16:54:00', 1, 1, 'MEMORIA USB 8 GB 1 CARA 2D  CON MOLDE', '290.00', '43500.00'),
(119, 15, 100, '2018-03-07 16:54:00', 1, 1, 'LIBRETA CON 80 HOJAS,BANDA ELASTIC SKY COLOR AZUL MEDIDA 7.5 X 12.5 CM IMPRESAS A 1 TINTA', '39.00', '3900.00'),
(120, 15, 50, '2018-03-07 16:54:00', 1, 1, 'AUDIFONOS MANOS LIBRES BLUETOOTH MICRO NG COLOR NEGRO IMPREOS A 1 TINTA', '990.00', '49500.00'),
(121, 16, 19, '2018-03-07 16:57:42', 1, 1, 'BLUSAS PARA DAMA COLOR BLANCAS MANGA LARGA CON 2 LOGOS BORDADOS', '385.00', '7315.00'),
(122, 14, 3000, '2018-03-07 17:20:58', 1, 1, 'DIPTICOS SELECCION A COLOR IMPRESION POR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS ,TAMAÑO CARTA', '1.65', '4950.00'),
(123, 14, 2000, '2018-03-07 17:20:58', 1, 1, 'DIPTICOS SELECCION A COLOR IMPRESION POR AMBOS LADOS  EN PAPEL COUCHE DE 130 GRAMOS ,TAMAÑO CARTA', '1.80', '3600.00'),
(124, 14, 1000, '2018-03-07 17:20:58', 1, 1, 'DIPTICOS SELECCION A COLOR IMPRESOS POR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS ,TAMAÑO CARTA', '2.50', '2500.00'),
(125, 14, 3000, '2018-03-07 17:34:42', 1, 1, 'TRIPTICOS SELECCION A COLOR IMPRESOS POR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS,TAMAÑO CARTA', '1.65', '4950.00'),
(126, 14, 2000, '2018-03-07 17:34:42', 1, 1, 'TRIPTICOS SELECCION A COLOR IMPRESOS POR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS,TAMAÑO CARTA', '1.80', '3600.00'),
(127, 14, 1000, '2018-03-07 17:34:42', 1, 1, 'TRIPTICOS SELECCION A COLOR IMPRESOS POR AMBOS LADOS EN PAPEL COUCHE DE 130 GRAMOS,TAMAÑO CARTA', '2.50', '2500.00'),
(128, 14, 284, '2018-03-07 18:08:34', 1, 1, 'IMPRESION  DE  CUBO  DE  15   X  15 CM  EN  PAPEL  COUCHE DE 300 GRS.  CON UN ACABADO  DE BARNIZ  BRILLANTE  \n\nCUBO  SUAJADO ', '42.00', '11928.00'),
(129, 14, 460, '2018-03-07 18:08:34', 1, 1, 'IMPRESION  DE  CUBO DE  7 .50  X  7.50  CM.   EN PAPEL  COCUCHE  DE 300 GRS.  CON UN ACABADO  DE BARNIZ BRILLANTE \n', '13.50', '6210.00'),
(130, 17, 1, '2018-03-07 18:32:41', 1, 1, 'VINIL IMPRESO EN HD  MEDIDA 3.60 X 2.00 METROS CON INSTALACION', '1000.00', '1000.00'),
(131, 14, 100, '2018-03-07 19:23:23', 1, 1, '1 SERVICIO DE IMPRESION DE TARJETAS DE PRESENTACION IMPRESION POR AMBOS LADOS EN PAPEL CARTULINA OPALINA MEDIDA DE 9 X 5 CM\n\nRFC:AEVG811106M59', '5.00', '500.00'),
(132, 17, 7, '2018-03-07 19:30:30', 1, 1, 'PENDONES CON IMPRESION DIGITAL MEDIDA 1.80 X .80 METROS CON PORTAPENDON\n\n FRC:AEVG811106M58', '690.00', '4830.00'),
(133, 17, 1, '2018-03-07 23:53:41', 1, 1, 'VINIL TRANSPARENTE Y FONDO VINIL BLANCO\nINCLUYE INSTALACION MEDIDA 1.20 X 1.0 MTS', '550.00', '550.00'),
(134, 14, 20, '2018-03-09 00:50:02', 1, 1, 'IMPRESION DE  CALCAS  EN VINIL HD   DE  42 X  19 PULGADAS ', '150.00', '3000.00'),
(135, 17, 10, '2018-03-09 00:50:02', 1, 1, 'IMPRESION DE  CALCAS  PARA   CARRO  EN VINIL  DE   .54 X 21  CM          \n\n\n\n\n\nNo.  PROVEEDOR  5022042 \n\n RFC AEVG11106M59', '65.00', '650.00'),
(136, 17, 30, '2018-03-09 01:02:38', 1, 1, 'IMPRESION  DE BANDERAS    IMPRESAS  POR AMBOS  LADOS A SELECCION  DE  COLOR  EN TELA BANDERA  .80 X 1.20 METROS  CON ASTA  DE MADERA ', '750.00', '22500.00'),
(137, 17, 50, '2018-03-09 01:02:38', 1, 1, 'IMPRESION DE CALCAS  ( PARES  )  EN VINIL HD ', '65.00', '3250.00'),
(138, 17, 10, '2018-03-09 01:02:38', 1, 1, 'IMPRESION DE  CALCAS  EN VINIL  ( PARES  )  EN VINIL HD \n\n\n\nNo. PROVEEDOR  5022042\nRFC. AEVG11106M59', '265.00', '2650.00'),
(139, 17, 4, '2018-03-09 01:08:19', 1, 1, 'ESTRUCTURA METALICA EN PTR DE  3 X 3 CON LAMINA  GALVANIZADA CALIBRE 22 CON ROTULACION  EN VINIL REFLEJANTE 1.22 X 2.40 METROS  CON PATITAS CON ALTURA DE 1.50\n\n\n\n\nNo. DE  PROVEEDOR  5022042   RFC. AEVG11106M59', '8600.00', '34400.00'),
(144, 17, 284, '2018-03-09 20:05:37', 1, 1, 'CUBO  DE  15   X  15  CM     EN MATERIAL  DE COROPLAST   ROTULADO     CON  VINIL  HD   A SELECCION  DE  COLOR ', '70.00', '19880.00'),
(145, 17, 460, '2018-03-09 20:05:37', 1, 1, 'IMPRESION  DE   CUBO  DE COROPLAST  7.50  X 7.50  CM. EN MATERIAL  DE   ROTULADO  CON  VINIL HD   A SELECCION  DE COLOR  ', '36.00', '16560.00'),
(146, 14, 10000, '2018-03-09 21:29:19', 1, 1, ' inpresión  de   volantes  en papel couche, impreso  a seleccion  de  color por  ambas caras, al frente la promoción y al reverso el croquis', '0.70', '7000.00'),
(147, 14, 15000, '2018-03-09 21:29:19', 1, 1, 'impresión  de   volantes  en papel couche, impreso  a seleccion  de  color por  ambas caras, al frente la promoción y al reverso el croquis', '0.60', '9000.00'),
(148, 14, 20000, '2018-03-09 21:29:19', 1, 1, 'impresión  de   volantes  en papel couche, impreso  a seleccion  de  color por  ambas caras, al frente la promoción y al reverso el croquis', '0.48', '9600.00'),
(149, 17, 1, '2018-03-09 22:43:42', 1, 1, 'ARCO DE LONA CON ESTRUCTURA DE MADERA IMPRESION EN HD', '1890.00', '1890.00'),
(150, 17, 1000, '2018-03-11 21:06:16', 1, 1, 'LONA IMPRESION DIGITAL 1.00 X 1.70 BASTILLA Y OJILLOS  ', '110.00', '110000.00'),
(151, 17, 500, '2018-03-11 21:06:16', 1, 1, 'LONA IMPRESION DIGITAL 1.50 X 3.00 MTS BASTILLA Y OJILLOS', '295.00', '147500.00'),
(152, 17, 2000, '2018-03-11 21:06:16', 1, 1, 'CALCAS IMPRESION DIGITLA HD MEDIDA 30 X 10 CM', '1.99', '3980.00'),
(153, 17, 1000, '2018-03-11 21:06:16', 1, 1, 'MICROPERFORADOS 60 X 30 CM', '30.00', '30000.00'),
(154, 14, 1000, '2018-03-11 21:06:16', 1, 1, 'ABANICOS DE CARTONCILLO CON PALITO DE MADERA', '2.30', '2300.00'),
(155, 14, 10000, '2018-03-11 21:06:16', 1, 1, 'VOLANTES SELECCION COLOR AMBOS LADOS EN COUCHE DE 130 GRAMOS MEDIA CARTA\n', '0.45', '4500.00'),
(156, 14, 20000, '2018-03-11 21:06:16', 1, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS COUCHE DE 130 GRAMOS, TAMAÑO CARTA\n', '0.75', '15000.00'),
(157, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'PLAYERAS CUELLO REDONDO COLOR BLANCA IMPRESAS 3 A 4 TINTAS FRENTE PESO MEDIO 160 GRAMOS UNITALLA', '29.50', '147500.00'),
(159, 15, 200, '2018-03-11 21:06:16', 1, 1, 'GORRA DE ALGODON BORDADA CON 1 LOGO FRENTE', '45.00', '9000.00'),
(160, 15, 3000, '2018-03-11 21:06:16', 1, 1, 'GORRA ECONOMICA IMPRESA MAXIMO 3 TINTA', '21.00', '63000.00'),
(161, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'TORTILLEROS 23 CM DIAMETRO, CON TELA TERGAL Y CAPITONIADA AMBOS LADOS, IMPRESA 1 TINTA', '14.50', '72500.00'),
(162, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'BOLSA TOLEDO NON WOVEN  IMPRESA 1 TINTA SIN 043', '13.90', '69500.00'),
(163, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'BOLSA ECOLOGICA NON WOVEN CON FUELLE SIN 230 IMPRESA 1 TINTA', '15.50', '77500.00'),
(164, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'BOLSA MOCHILA NYLON CON JARETA SIN 021 IMPRESA 1 TINTA', '18.00', '90000.00'),
(165, 15, 5000, '2018-03-11 21:06:16', 1, 1, 'BOLSA MOCHILA NON WOVEN CON JARETA SIN 235 IMPRESA 1 TINTA', '12.00', '60000.00'),
(166, 15, 1000, '2018-03-11 21:06:16', 1, 1, 'PARAGUAS 94 CM NYLON IMPRESO 1 TINTA 4 GAJOS PAR 016', '75.00', '75000.00'),
(167, 15, 500, '2018-03-12 19:14:12', 1, 1, 'PASTILLERO DENNIS COLOR AZUL\n\nCódigo del Artículo: PT 300 A', '11.00', '5500.00'),
(168, 15, 500, '2018-03-12 19:14:12', 1, 1, 'PASTILLERO CON CORTA PASTILLAS CRYSTAL\n\n\nCódigo del Artículo: PT 2100', '13.00', '6500.00'),
(169, 14, 4000, '2018-03-12 19:32:17', 1, 1, 'VOLANTES   1/4 DE CARTA   IMPRESO   POR LADO Y LADO VERTICAL LAMINADO POR AMBOS LADOS.  IMPRESO A SELECION DE COLOR    EN PAPEL  COUCHE 130 GRS.  ', '0.49', '1960.00'),
(170, 14, 10000, '2018-03-12 19:39:38', 1, 1, 'IMPRESION  DE  FORMATOS SOLICITUD DE ANALISIS   EN PAPEL  BOND  IMPRESO  POR  AMBOS  LADOS   A  UNA  TINTA  EN  COLOR  AZUL TAMAÑO   13.97 X 21.59', '0.44', '4400.00'),
(171, 17, 1, '2018-03-13 17:44:51', 1, 1, '1 SERVICIO DE IMPRESION DE LONA', '2413.79', '2413.79'),
(172, 15, 100, '2018-03-13 19:06:08', 1, 1, 'MOCHILA SIN 130 COLORES SURTIDOS IMPRESOS 1 TINTA', '31.00', '3100.00'),
(173, 15, 20, '2018-03-13 19:17:48', 1, 1, 'TMPS 42 A  TERMO NYUK COLOR AZUL  CON IMPRESION EN SERIGRAFIA A 1  TINTA ', '89.50', '1790.00'),
(174, 15, 300, '2018-03-13 22:56:21', 1, 1, 'PLAYERAS CUELLO REDONDO DRY-COOL CON IMPRESION A 1 TINTA  FRENTE', '77.00', '23100.00'),
(175, 15, 30, '2018-03-13 22:56:21', 1, 1, 'PLAYERA CUELLO REDONDO DRY- COOL CON IMPRESION A 1 TINTA  FRENTE Y ESPALDA', '87.00', '2610.00'),
(176, 15, 500, '2018-03-13 22:56:21', 1, 1, 'MEDALLAS CON  IMPRESION A 1 TINTA INCLUYE LISTON', '40.00', '20000.00'),
(177, 17, 1, '2018-03-13 23:02:25', 1, 1, 'SERVICIOS DE IMPRESION LETREROS EN COROPLAST MEDIDA 30 X 70 CM EN VINIL HD, CON TABLA DE MADERA', '7400.00', '7400.00'),
(178, 17, 14, '2018-03-13 23:04:10', 1, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.5 X 3 MTS CON BASTILLA Y OJILLOS, INCLUYE BASTIDOR DE MADERA Y ADOSAR LONA A BASTIDOR', '1650.00', '23100.00'),
(179, 15, 210, '2018-03-13 23:30:51', 1, 1, 'PLAYERAS CUELLO REDONDO AMARILLAS IMPRESAS 1 TINTA FRENTE, 1 TINTA ESPALDA', '45.00', '9450.00'),
(180, 14, 1000, '2018-03-13 23:40:43', 1, 1, ' FORMATOS 1/6 DE OFICIO IMPRESOS A 1 TINTA  EN PAPEL  BOND  BLOCK CON 100 PIEZAS', '0.55', '550.00'),
(181, 15, 5, '2018-03-14 19:48:30', 1, 1, 'ROLLO DE LISTON SUBLIMADO 4.5 CM A COLOR CON 50 MTS', '2350.00', '11750.00'),
(182, 15, 5, '2018-03-14 19:48:30', 1, 1, 'ROLLO DELISTON SUBLIMADO 3.5 CM A COLOR CON 50 MTS', '1990.00', '9950.00'),
(183, 15, 5, '2018-03-14 19:48:30', 1, 1, 'ROLLO DELISTON SUBLIMADO DE 2 CM CON 100 MTS', '2990.00', '14950.00'),
(184, 15, 1, '2018-03-14 19:48:30', 1, 1, 'ROLLO DE LISTON 4.5 CM AZUL CON IMPRESION EN BLANCO 1 TINTA', '900.00', '900.00'),
(185, 14, 1000, '2018-03-14 20:16:49', 1, 1, 'LIBRETA PASTA DURA PORTADA SELECCION COLOR MEDIDA 22 X 17 CM CON 100 HOJAS BOND IMPRESAS 1 TINTA AMBOS LADOS, ENGARGOLADO METALICO', '47.00', '47000.00'),
(186, 15, 1000, '2018-03-14 21:08:43', 1, 1, 'CARPETAS CARTULINA NACARADA METALICA IMPRESAS 1 TINTA CON SUAJE.', '10.99', '10990.00'),
(187, 15, 100, '2018-03-14 21:08:43', 1, 1, 'CARPETAS CARTULINA NACARADA METALICA IMPRESAS 1 TINTA CON SUAJE.', '13.90', '1390.00'),
(188, 15, 500, '2018-03-14 21:08:43', 1, 1, 'CARPETAS CARTULINA NACARADA METALICA IMPRESAS 1 TINTA CON SUAJE.', '12.50', '6250.00'),
(189, 14, 500, '2018-03-14 21:08:43', 1, 1, 'CARTULINA MANILA FOLDER AZUL REY IMPRESAS 1 TINTA', '4.20', '2100.00'),
(190, 14, 1000, '2018-03-14 21:08:43', 1, 1, 'CARTULINA MANILA FOLDER AZUL REY IMPRESAS 1 TINTA', '3.90', '3900.00'),
(191, 14, 1000, '2018-03-15 00:48:15', 1, 1, 'LIBRETA PASTA CARTULINA SULFATADA DE 16 PTS PORTADA SELECCION COLOR MEDIDA 22 X 17 CM CON 100 HOJAS BOND IMPRESAS 1 TINTA AMBOS LADOS, ENGARGOLADO METALICO', '35.00', '35000.00'),
(192, 15, 60, '2018-03-15 17:57:18', 1, 1, 'PLAYERA  BLANCA   CON IMPRESION EN SERIGRAFIA   A UNA TINTA  EN COLOR  AZUL ', '55.00', '3300.00'),
(193, NULL, 60, '2018-03-15 17:57:18', 1, 1, 'SIN 131 A  BOLSA CIMBOA COLOR AZUL CON IMPRESION  EN SERIGRAFIA  A  1  TINTA   EN COLOR BLANCO ', '10.00', '600.00'),
(194, NULL, 60, '2018-03-15 17:57:18', 1, 1, 'ANF 021 A  CILINDRO VAUS COLOR AZUL  CON IMPRESION  EN SERIGRAFIA  A 1 TINTA  EN COLOR  BLANCO ', '16.00', '960.00'),
(195, 16, 4, '2018-03-15 23:12:11', 1, 1, 'CAMISA BLANCA DE GABARDINA MANGA LARGA CON UN LOGO BORDADO PECHO IZQ. TALLA CHICA', '375.00', '1500.00'),
(196, 17, 5, '2018-03-15 23:12:11', 1, 1, 'TARJETON PARA RETROVISOR EN ESTIRENO CON VINIL IMPRESO FRENTE Y REVERSO CON FOLIO', '120.00', '600.00'),
(197, 15, 7000, '2018-03-16 00:26:12', 1, 1, 'PLAYERA  BLANCA   CON CUELLO  REDONDO   EN DIFERENTES TALLAS   CHICA  MEDIANA , GRANDE ,  XL,  CON  IMPRESION  EN SERIGRAFIA   A 1 TINTA ', '59.00', '413000.00'),
(198, 15, 14000, '2018-03-16 00:26:12', 1, 1, 'COSTAL  DE RAFIA (  POLIPRO ) BLANCO   50 CM.  X 70 CM. CAP.  APROXIMADAMENTE   40  KILOS  CON IMPRESION  EN SERIGRAFIA   A  1 TINTA ', '13.00', '182000.00'),
(199, 15, 7000, '2018-03-16 00:26:12', 1, 1, 'GEP 003 A  GORRA DE ALGODÓN COLOR AZUL REY  CON IMPRESION  EN SERIGRAFIA  A 1  TINTA  ', '33.90', '237300.00'),
(200, 14, 1000, '2018-03-16 19:08:07', 1, 1, 'TARJETON MEDIA CARTA SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS BARNIZ UV BRILLANTE AMBOS LADOS.', '2.30', '2300.00'),
(201, 14, 1000, '2018-03-16 19:08:07', 1, 1, 'TARJETON MEDIA CARTA SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS PLASTIFICADO BRILLANTE AMBOS LADOS', '2.55', '2550.00'),
(202, 16, 7, '2018-03-16 20:11:41', 1, 1, 'BORDADOS LOGO GUTI', '5.00', '35.00'),
(203, NULL, 42, '2018-03-16 20:11:41', 1, 1, 'BORDADOS LOGO TAM', '9.00', '378.00'),
(204, 16, 40, '2018-03-16 20:11:41', 1, 1, 'BORDADOS LOGO CONALEP', '7.50', '300.00'),
(205, 16, 17, '2018-03-16 20:11:41', 1, 1, 'BORDADOS LOGOS GEM', '8.00', '136.00'),
(206, 16, 40, '2018-03-16 23:39:48', 1, 1, ' CAP 004 B \nGORRA TRUCKER COLOR BLANCO CON  2 LOGOS  BORDADOS  ', '79.50', '3180.00'),
(207, 16, 40, '2018-03-16 23:39:48', 1, 1, 'SEC 001 Y \nCHALECO DE SEGURIDAD SIKKER', '145.00', '5800.00'),
(208, 14, 300, '2018-03-17 00:16:37', 1, 1, 'IMPRESION  DE  TRIPTICOS  A SELECCION  DE COLOR  EN PAPEL COUCHE  DE  130 GRS.  16  X  16  CM ', '6.00', '1800.00'),
(209, 15, 100, '2018-03-17 00:16:37', 1, 1, 'SH 1519 A \nBOLÍGRAFO BOMBAY COLOR AZUL\n ', '15.00', '1500.00'),
(210, 17, 7, '2018-03-17 17:35:25', 1, 1, 'PENDONES IMPRESION DIGITAL MEDIDA DE .80 X 1.80 METROS  CON PORTABANNER', '690.00', '4830.00'),
(211, 15, 10000, '2018-03-20 17:17:26', 1, 1, 'LONCHERA SELK IMPRESA 1 TINTA\nEXISTENCIA: AZUL 12,450, BLANCO 18,000', '17.60', '176000.00'),
(212, 15, 10000, '2018-03-20 17:17:26', 1, 1, 'HIELERA KOSTA IMPRESA 1 TINTA\nEXISTENCIA AZUL17,400 ', '33.00', '330000.00'),
(213, 15, 10000, '2018-03-20 17:17:26', 1, 1, 'LONCHERA LEIRA IMPRESA 1 TINTA\nEXISTENCIA AZUL 11,000, VERDE 5,000', '29.00', '290000.00'),
(214, 15, 10000, '2018-03-20 17:17:26', 1, 1, 'LONCHERA JESEL IMPRESA 1 TINTA\nEXISTENCIA AZUL 9,000, VERDE 2,900', '46.00', '460000.00'),
(215, 15, 10000, '2018-03-20 17:17:26', 1, 1, 'LONCHERA ZIAR IMPRESA 1 TINTA\nEXISTENCIA AZUL 7,800, VERDE 2,900', '27.00', '270000.00'),
(216, 16, 60, '2018-03-20 18:47:37', 1, 1, 'CAMISA O BLUSA MARCA DACACHE CON 1 LOGO BORDADO', '380.00', '22800.00'),
(217, 15, 500, '2018-03-20 20:14:01', 1, 1, 'ANFORA LAKE IMPRESA 1 TINTA', '29.00', '14500.00'),
(218, 15, 500, '2018-03-20 20:15:01', 1, 1, 'ANFORA TWISTER IMPRESA 1 TINTA', '25.00', '12500.00'),
(219, 14, 5000, '2018-03-20 22:25:29', 1, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS EN COUCHE DE 130 GRAMOS, ACABADO DOBLADO', '1.55', '7750.00'),
(220, 15, 300, '2018-03-20 22:49:50', 1, 1, 'BOLIGRAFO DYCK AZUL IMPRESO 1 TINTA\n(COLOR DE TINTA AZUL)', '6.50', '1950.00'),
(221, 16, 7, '2018-03-21 00:26:52', 1, 1, 'PARCHES GRANDES MEDIDA DE 18 X 20 CM CON LOGO BORDADO DE JAGUARES', '150.00', '1050.00'),
(222, 16, 7, '2018-03-21 00:26:52', 1, 1, 'PARCHES CHICOS MEDIDA DE 8.5 X 8.5 CM CON LOGO BORDADO DE LA UPV', '20.00', '140.00'),
(223, 16, 7, '2018-03-21 00:26:52', 1, 1, 'PARCHE CHICO MEDIDA DE 8 X 24 CM CON LOGO BORDADO CONDE', '25.00', '175.00'),
(224, 16, 7, '2018-03-21 00:26:52', 1, 1, 'PARCHE  CHICO MEDIDA DE 8 X 24 CM  CON LOGO BORDADO DE TAM', '25.00', '175.00'),
(225, 14, 3000, '2018-03-21 00:36:50', 1, 1, 'VALES AMARILLOS IMPRESION A 1 TINTA EN PAPEL SEGURIDAD TAMAÑO  1/4  CARTA', '0.30', '900.00'),
(226, 14, 1000, '2018-03-21 16:24:50', 1, 1, 'PAGARES MEDIDA DE 1/3 CARTA IMPRESOS EN PAPEL BOND DE 90 GRAMOS  A  2 TINTAS', '0.95', '950.00'),
(227, 17, 3, '2018-03-21 18:24:58', 1, 1, 'LONAS IMPRESION DIGITAL MEDIDA 3 X 2 MTS BASTILLA Y OJILLOS', '650.00', '1950.00'),
(228, 14, 2000, '2018-03-21 18:55:55', 1, 1, 'TRIPTICOS SELECCION A COLOR  EN PAPEL COUCHE DE 115 GRAMOS', '1.00', '2000.00'),
(229, 14, 1000, '2018-03-21 18:58:58', 1, 1, 'HOJAS MEMBRETADAS TAMAÑO CARTA ', '0.55', '550.00'),
(230, 14, 5000, '2018-03-21 19:03:26', 1, 1, 'ORDEN DE SERVICIO EN ORIGINAL Y  2 COPIAS EN PAPEL AUTOCOPIA MEDIDA DE 9.5 X 11 CM A 1 TINTA', '0.80', '4000.00'),
(231, 14, 10000, '2018-03-22 04:34:42', 1, 1, 'FORMATOS DE KEMET MEDIA CARTA, 1 TINTA EN PAPEL BOND, CON FOLIO', '0.24', '2400.00'),
(232, 14, 4000, '2018-03-22 18:33:46', 1, 1, 'IMPRESION  DE TARJETA DE  DESCUENTO   8.5  X 5.5  CM   IMPRESA  EN   CARTULINA  OPALINA  IMPRESO  A  1 TINTA   POR   AMBOS  LADOS  ', '0.60', '2400.00'),
(233, 15, 100, '2018-03-22 18:36:52', 1, 1, 'PLAYERA  BLANCA   CON IMPRESION   A SELECCION  DE  COLOR    SOLO   FRENTE   EN DIFERENTES  TALLAS    CHICA , MEDIANA   ,  GRANDE  .  XL.  ', '55.00', '5500.00'),
(234, 15, 10000, '2018-03-22 21:44:41', 1, 1, 'BORRADOR IMPRESO 1 TINTA 1 LADO', '2.10', '21000.00'),
(235, 15, 10000, '2018-03-22 21:44:41', 1, 1, 'LAPICES IMPRESOS 1 TINTA', '2.90', '29000.00'),
(236, 17, 2, '2018-03-23 00:29:05', 1, 1, 'PENDONES IMPRESION DIGITAL MEDIDA DE 1.80 X .80  CON BASTILLA Y OJILLOS', '240.00', '480.00'),
(237, 17, 10, '2018-03-23 20:19:38', 1, 1, 'IMPRESION  DE PENDONES  DE   MEDIDA  DE  .90  X  1.80 IMPRESA  EN HD,  CON MADERA  Y ALAMBRE   LISTOS  PARA  COLGAR', '295.00', '2950.00'),
(238, 17, 1000, '2018-03-23 20:19:38', 1, 1, 'IMPRESION DE  CALCAS  MEDIDA   DE 9  X 9.5  CM  IMPRESA HD  EN VINIL A SELECCION  DE COLOR  CON  SUAJE  ', '8.00', '8000.00'),
(239, 16, 1000, '2018-03-23 20:19:38', 1, 1, 'PULSERA  DE  COLORES   BORDADA   DE  MEDIDA  DE  25   X  1.20  CM, ', '6.90', '6900.00'),
(240, 15, 100, '2018-03-23 22:04:47', 1, 1, 'BOLIGRAFO SEÑALADOR  LASER METALICO COLOR NEGRO IMPRESOS A 1 TINTA', '115.00', '11500.00'),
(241, 15, 100, '2018-03-23 22:04:47', 1, 1, 'LIBRETA CON 80 HOJAS ,BANDA ELASTICA SKY COLOR AZUL  MEDIDA 7.5 X 12.5 CM CON IMPRESION A 1 TINTA', '39.00', '3900.00'),
(242, 15, 100, '2018-03-23 22:04:47', 1, 1, 'USB MODELO 013 A EN COLOR AZUL CON IMPRESION A 1 TINTA', '155.00', '15500.00'),
(243, 14, 250, '2018-03-23 22:08:12', 1, 1, 'TRIPTICOS IMPRESION A SELECCION A COLOR POR AMBOS LADOS MEDIDA DE 48 X 16 CM EN PAPEL COUCHE ', '10.40', '2600.00'),
(244, 17, 1, '2018-03-23 23:04:19', 1, 1, 'PENDON IMPRESION DIGITAL  MEDIDA DE 1.50 X 2.00 CON BASTILLA Y OJILLOS', '550.00', '550.00'),
(245, 17, 2, '2018-03-23 23:07:48', 1, 1, 'LONA IMPRESION DIGITAL MEDIDA DE 3 X 1.50 METROS CON BASTILLA Y OJILLOS A CADA METRO', '750.00', '1500.00'),
(246, 14, 100, '2018-03-23 23:26:23', 1, 1, 'TARJETAS DE PRESENTACION IMPRESAS POR 1 LADO CON LAMINADO MATE EN PAPEL COUCHE DE 300 GRAMOS MEDIDA DE 9 X 5 CM', '4.00', '400.00'),
(247, 14, 1500, '2018-03-23 23:26:23', 1, 1, 'ETIQUETAS EN ADHESIVO MEDIDA 10 X 6 CM A 1 TINTA', '1.90', '2850.00'),
(248, 14, 1500, '2018-03-23 23:26:23', 1, 1, 'ETIQUETAS EN ADHESIVO MEDIDA DE 2 X 4 CM A 1 TINTA', '0.90', '1350.00'),
(249, 14, 1500, '2018-03-23 23:26:23', 1, 1, 'ETIQUETAS EN ADHESIVO MEDIDA DE 4 X 4 CM A 1 TINTA', '1.10', '1650.00'),
(250, 14, 150, '2018-03-23 23:26:23', 1, 1, 'ETIQUETAS EN ADHESIVO MEDIDA DE 4 X 2 CM A 1 TINTA', '0.90', '135.00'),
(251, 14, 250, '2018-03-24 00:25:48', 1, 1, 'TRIPTICOS IMPRESION A SELECCION A COLOR MEDIDA DE 48 X 16 CM EN PAPEL COUCHE DE 250 GRAMOS CON BARBIZ UV', '12.00', '3000.00'),
(252, 17, 2, '2018-03-24 18:40:11', 1, 1, 'SELLOS AUTOENTINTABLES  DE RECIBIDO Y DESPACHADO FECHADOR MEDIDA DE 6 X 4 CM', '460.00', '920.00'),
(253, 17, 1, '2018-03-24 18:40:11', 1, 1, 'SELLO AUTOENTINTABLE  DE PLACA CON EL ESCUDO NACIONAL MEDIDA DE 6 X 4 CM', '450.00', '450.00'),
(254, 15, 2000, '2018-03-26 21:00:06', 1, 1, 'BOLIGRAFO  ECO 010 A    CON IMPRESION   EN SERIGRAFIA    A 1   TINTA ', '4.90', '9800.00'),
(255, 15, 1500, '2018-03-26 21:00:06', 1, 1, 'ANFORA  ANF 005  A    CON IMPRESION   E  SERIGAFIA  A  1  TINTA  ', '19.90', '29850.00'),
(256, 15, 1500, '2018-03-26 21:00:06', 1, 1, 'DISCO VOLAD  FREE 005 A     CON  IMPRESION  EN SERIGRAFIA   A  1  TINTA  ', '19.50', '29250.00'),
(257, 15, 1500, '2018-03-26 21:00:06', 1, 1, 'PORTA NOTAS  FL 6530 BE  CON IMPRESION   EN SERIGRAFIA  A 1 TINTA ', '32.00', '48000.00'),
(258, 15, 2000, '2018-03-26 21:00:06', 1, 1, 'SIN 230 A \nBOLSA ECOLÓGICA ENVIRONMENT COLOR AZUL CON  IMPRESION   EN SERIGRAFIA   A 1 TINTA ', '16.00', '32000.00'),
(259, 15, 3000, '2018-03-28 01:14:25', 1, 1, 'PLAYERA CUELLO REDONDO COLOR TURQUESA IMPRESA 1 TINTA FRENTE 1 TINTA ESPALDA', '33.00', '99000.00'),
(260, 15, 3000, '2018-03-28 01:14:25', 1, 1, 'HIELERA KOSTA IMPRESA 1 TINTA', '33.00', '99000.00'),
(261, 14, 10000, '2018-04-02 17:00:57', 1, 1, 'SOBRE   TAMAÑO  OFICIO EN  PAPEL  BOND  CON  IMPRERSION A SELECCION  DE   COLOR ', '0.95', '9500.00'),
(262, 14, 10000, '2018-04-02 17:00:57', 1, 1, 'HOJA  MEMBRETADA   TAMAÑO  CARTA    IMPRESA  A SELECCION  DE  COLOR  EN PAPEL BOND  DE 90 GRAS', '0.55', '5500.00'),
(263, 17, 2, '2018-04-02 17:33:47', 1, 1, 'SELLOS AUTOENTINTABLES  FECHADORES DE RECIBIDO MEDIDA 6 X 4 CM', '460.00', '920.00'),
(264, 17, 3, '2018-04-02 17:52:36', 1, 1, 'SELLOS OFICIALES DE GOMA EN BASE DE MADERA CON EL ESCUDO NACIONAL  MEDIDA  6 X 4 CM.', '330.00', '990.00'),
(265, 14, 1000, '2018-04-02 23:56:32', 1, 1, 'FORMATO TAMAÑO CARTA IMPRESOS 1 TINTA, ORIGINAL Y COPIA SIN FOLIO. SIN GOMA.', '1.30', '1300.00'),
(266, 14, 1000, '2018-04-02 23:56:32', 1, 1, 'FORMATO TAMAÑO CARTA SERVICIO DE MANTENIMIENTO IMPRESOS AMBOS LADOS 1 TINTA', '0.80', '800.00'),
(267, 17, 20, '2018-04-03 00:44:08', 1, 1, 'VINIL IMPRESOS GRAN FORMATO  AMBOS LADOS MEDIDA 72 CM DIAMETRO INSTALADO EN COROPLAST PROPORCIONADO POR CLIENTE\n', '155.00', '3100.00'),
(268, 17, 45, '2018-04-03 00:44:08', 1, 1, 'COROPLAST CON VINIL IMPRESO AMBOS LADOS GRAN FORMATO. INCLUYE INSTALACION Y COROPLAST', '199.00', '8955.00'),
(269, 17, 8, '2018-04-03 15:01:10', 1, 1, 'SELLOS AUTOENTINTABLES FECHADORES DE DESPACHADO MEDIDA 6 X 4 CM', '460.00', '3680.00'),
(270, 17, 8, '2018-04-03 15:01:10', 1, 1, 'SELLOS AUTOENTINTABLES FECHADORES DE RECIBIDO MEDIDA DE 6 X 4 CM', '460.00', '3680.00'),
(271, 17, 1, '2018-04-03 18:39:49', 1, 1, 'EXPODEMO 2.25 X 2.25 INCLUYE LONA IMPRESION DIGITAL HD', '3900.00', '3900.00'),
(272, 17, 1, '2018-04-03 18:39:49', 1, 1, 'PORTABANNER 20 X 47 CON LONA IMPRESION DIGITAL', '150.00', '150.00'),
(273, 17, 1, '2018-04-03 18:39:49', 1, 1, 'PORTABANNER 1.80 X .80 CON LONA IMPRESION DIGITAL', '550.00', '550.00'),
(274, 14, 2000, '2018-04-03 18:39:49', 1, 1, 'IMPRESION TAMAÑO CARTA SELECCION COLOR AMBOS LADOS EN CARTULINA COUCHE DE 250 GRAMOS', '1.70', '3400.00'),
(275, 15, 100, '2018-04-03 22:24:01', 1, 1, 'PLAYERA  CUELLO  REDONDO COLOR BLANCA CON IMPRESION  A  1 TINTA', '40.00', '4000.00'),
(276, 15, 100, '2018-04-03 22:32:46', 1, 1, 'PLAYERA DE  COLOR   DE CUELLO  REDONDO  CON IMPRESION  A 1  TINTA', '45.00', '4500.00'),
(277, 15, 50, '2018-04-04 16:46:33', 1, 1, 'BOLSA MOCHILA SURF IMPRESA 1 TINTA SIN 019', '48.00', '2400.00'),
(278, 15, 2000, '2018-04-04 17:19:08', 1, 1, 'GORRA TRUCKER CON LOGO SUBLIMADO FRENTE, Y LOGO BORDADO LATERAL', '64.00', '128000.00'),
(279, 15, 2000, '2018-04-04 17:19:08', 1, 1, 'PLAYERA CUELLO REDONDO CON LOGO SELECCION COLOR FRENTE Y LATERAL A COLOR', '49.90', '99800.00'),
(280, 15, 2000, '2018-04-04 17:19:08', 1, 1, 'PLAYERAS TELA DRYFIT SUBLIMADAS FRENTE Y MANGA', '88.00', '176000.00'),
(281, 15, 2000, '2018-04-04 17:19:08', 1, 1, 'PLAYERA TELA SHIFON SUBLIMADA FRENTE Y MANGA', '78.00', '156000.00'),
(282, 14, 5000, '2018-04-04 23:46:39', 1, 1, 'ORDENES DE COMPRA TAMAÑO OFICIO EN PAPEL AUTOCOPIA CON 2 COPIAS ( ROSA Y AMARILLO) IMPRESION POR AMBOS LADOS A 1 TINTA CON PLECA  DE CORTE EN LA PARTE INFERIOR', '1.75', '8750.00'),
(283, 17, 1, '2018-04-05 16:22:41', 1, 1, 'SELLO AUTOENTINTABLE DE PLACA TRODAT 4912\nMEDIDA 4.7 X 1.8 CM', '300.00', '300.00'),
(284, 14, 200, '2018-04-05 17:04:53', 1, 1, 'MENU DE COMIDAS 20 X 24 EXTENDIDO, SELECCION COLOR AMBOS LADOS , COUCHE DE 300 GRAMOS, PLASTIFICADO MATE AMBOS LADOS', '16.00', '3200.00'),
(285, 16, 39, '2018-04-05 17:20:29', 1, 1, 'PLAYERA TIPO POLO NEGRA CON LOGO BORDADO EL TUCAN PECHO IZQ. Y LOGO HOTEL LAS FUENTES EN LA ESPALDA IMPRESION EN SERIGRAFIA A UNA TINTA', '185.00', '7215.00'),
(286, 14, 3000, '2018-04-05 17:29:24', 1, 1, 'CATALOGO DE 4 PAGINAS SELECCION COLOR AMBOS LADOS', '1.25', '3750.00'),
(287, 16, 30, '2018-04-05 18:27:35', 1, 1, 'MAQUILA  DE BORDADO   DE  CARITA  FELIZ ', '30.00', '900.00'),
(288, 15, 4000, '2018-04-05 22:16:06', 1, 1, 'BOLSA SHOPPER ECOLOGICA NARANJA IMPRESA 1 TINTA', '19.50', '78000.00'),
(289, 15, 3000, '2018-04-05 22:16:06', 1, 1, 'PLAYERAS CUELLO REDONDO COLOR NARANJA IMPRESAS 1 TINTA FRENTE', '32.00', '96000.00'),
(290, 15, 2000, '2018-04-05 22:16:06', 1, 1, 'HILERA KOSTA COLOR NARANJA IMPRESA 1 TINTA', '31.00', '62000.00'),
(291, 15, 4000, '2018-04-05 22:16:06', 1, 1, 'GORRA COLOR NARANJRA IMPRESA 1 TINTA ', '19.00', '76000.00'),
(292, 17, 1000, '2018-04-05 22:16:06', 1, 1, 'MICROPERFORADOS A COLOR', '31.00', '31000.00'),
(293, 15, 450, '2018-04-05 22:16:06', 1, 1, 'PARAGUAS SABETTA COLOR NARANJA IMPRESO 1 TINTA 4 GAJOS', '75.00', '33750.00'),
(294, 15, 500, '2018-04-05 22:16:06', 1, 1, 'LONA IMPRESION DIGITAL 2 X 1 MTS', '99.00', '49500.00'),
(295, 16, 20, '2018-04-06 17:15:23', 1, 1, 'GORRA TIPO SANDWICH CON LOGO BORDADO', '65.00', '1300.00'),
(296, 15, 20, '2018-04-06 17:15:23', 1, 1, 'CILINDRO MILO ANF 010 IMPRESO 1 TINTA', '120.00', '2400.00'),
(297, 16, 20, '2018-04-06 17:15:23', 1, 1, 'MOCHILA NEVERI CON LOGO BORDADO ', '265.00', '5300.00'),
(298, 15, 1200, '2018-04-06 18:05:30', 1, 1, 'PULSERA  BRAZALETE  INCLUYE  2 FOLIOS  CON IMPRESION  EN SERIGRAFIA  A 1 TINTA  600 EN COLOR   ROSA 600  EN  COLOR  CELESTE ', '2.60', '3120.00'),
(299, 14, 1000, '2018-04-06 20:57:33', 1, 1, 'TRIPTICOS  A SELECCION  DE  COLOR  EN  PAPEL  COUCHE  DE 130 GRS.\n\nSERVICIOS TECNOLOGICOS DE LA UPV', '1.95', '1950.00'),
(300, 14, 1000, '2018-04-06 20:57:33', 1, 1, 'TRIPTICOS   IMPRESO EN PAPEL  COUCHE  DE 130 GRAS-   \n\nMAESTRIAS DE  ENERGIA RENOVABLE ', '1.95', '1950.00'),
(301, 17, 2, '2018-04-06 20:57:33', 1, 1, 'BANNER    PROMOCIONAL  DE MAESTRIAS  DE   ENERGIA  RENOBABLE     1.60  X .60', '490.00', '980.00'),
(302, 14, 1000, '2018-04-06 20:57:33', 1, 1, 'TRIPTICOS A SELECION  DE COLOR   EN  PAPEL  COCUHE DE 130 GRS.   \n\nDIPLOMADO EN CALIDAD Y  AHORRO  DE  DE ENERGIA ', '1.95', '1950.00'),
(303, 14, 5000, '2018-04-06 22:37:53', 1, 1, 'SOLICITUD  DE  EMPLEO   2  HOJAS    1 IMPRESA    POR  AMBOS  LADOS      1 POR  UN SOLO LADO   IMPRESAS  A  1 TINTA    EN PAPEL  BOND  DE 90 GRS. ', '0.85', '4250.00'),
(304, 14, 1000, '2018-04-06 22:46:15', 1, 1, 'CARPETAS SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS SIN BARNIZ', '4.70', '4700.00'),
(305, 14, 1000, '2018-04-06 22:46:15', 1, 1, 'CARPETAS SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS CON BARNIZ 1 LADO', '5.10', '5100.00'),
(306, 14, 1000, '2018-04-06 22:46:15', 1, 1, 'CARPETAS SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS CON BARNIZ AMBOS LADOS', '5.70', '5700.00'),
(307, 14, 5000, '2018-04-06 23:03:32', 1, 1, 'REFERENCIAS  VECINALES \nIMPRESO  A  1 TINTA  EN  PAPEL  BOND  DE 90 GRAS. ', '0.39', '1950.00'),
(308, 14, 5000, '2018-04-06 23:03:32', 1, 1, 'REGISTRO  DE ASISTENCIA   \nIMPRESO  A  1 TINTA  EN  PAPEL  BOND  DE 90 GRAS. ', '0.39', '1950.00'),
(309, 14, 5000, '2018-04-06 23:03:32', 1, 1, 'DEVOLUCION DE  DOCUMENTOS  \nIMPRESO  A  1 TINTA  EN  PAPEL  BOND  DE 90 GRAS. ', '0.39', '1950.00'),
(310, 17, 1000, '2018-04-07 00:03:23', 1, 1, 'CALCA 10 X 30 CM VINIL HD', '1.80', '1800.00'),
(311, 17, 200, '2018-04-07 00:03:23', 1, 1, 'LONA IMPRESION DIGITAL 1.20 X 1.50 MTS', '110.00', '22000.00'),
(312, 17, 1000, '2018-04-07 00:03:23', 1, 1, 'MICROPERFORADO 60 X 30 CM', '27.50', '27500.00'),
(313, 17, 50, '2018-04-07 00:03:23', 1, 1, 'BANDERAS 1.50 X .75 CON ASTA', '180.00', '9000.00'),
(314, 17, 100, '2018-04-07 00:03:23', 1, 1, 'BANDERAS .73 X .50 CON ASTA', '99.00', '9900.00'),
(315, 15, 500, '2018-04-07 00:03:23', 1, 1, 'GORRA BLANCA IMPRESA 1 TINTA FRENTE, 1 LATERA', '21.00', '10500.00'),
(316, 15, 1000, '2018-04-07 00:03:23', 1, 1, 'TORTILLERO MORADO 1 TINTA 1 LADO', '16.00', '16000.00'),
(317, 15, 500, '2018-04-07 00:03:23', 1, 1, 'PLAYERAS CUELLO REDONDO BLANCA UNITALLA 140 GRAMOS', '22.00', '11000.00'),
(318, 14, 1000, '2018-04-07 00:03:23', 1, 1, 'ABANICO SENCILLO IMPRESO A COLOR AMBOS LADOS ', '2.00', '2000.00'),
(319, 15, 500, '2018-04-07 00:03:23', 1, 1, 'MANDIL IMPRESO 1 TINTA', '25.00', '12500.00'),
(320, 15, 100, '2018-04-07 00:05:22', 1, 1, 'PLAYERA AVANZA 1 TINTA FRENTE Y ESPALDA', '38.00', '3800.00'),
(321, 14, 10000, '2018-04-07 00:08:38', 1, 1, 'VOLANTES SELECCION COLOR 1 LADO', '0.35', '3500.00'),
(322, 14, 60000, '2018-04-07 00:08:38', 1, 1, 'VOLANTES SELECCION COLOR 1 LADO', '0.29', '17400.00'),
(323, 17, 1, '2018-04-07 15:40:23', 1, 1, 'LONA IMPRESION DIGITAL 1.50 X 2.00 MTS', '490.00', '490.00'),
(324, 14, 2000, '2018-04-07 18:57:56', 1, 1, 'FORMATO DE REGISTRO DE ANESTECIA SELECCION COLOR AMBOS LADOS EN PAPEL BOND 75 GRAMOS', '2.10', '4200.00'),
(325, 17, 1, '2018-04-09 15:28:43', 1, 1, 'VINIL HD IMPRESION DIGITAL MEDIDA .63 X .25 M', '250.00', '250.00'),
(326, 17, 1, '2018-04-09 15:28:43', 1, 1, 'VINIL HD IMPRESION DIGITAL MEDIDA 2.26 X .36 MTS', '450.00', '450.00'),
(327, 16, 30, '2018-04-09 18:14:34', 1, 1, '30 CAMISAS COLOR BLANCO MANGA LARGA MARCA BIBO CON DOS LOGOS BORDADOS PARA MUJERES (ITCA Y GOBIERNO DEL ESTADO)', '350.00', '10500.00'),
(328, 16, 30, '2018-04-09 18:14:34', 1, 1, '30 CAMISAS COLOR BLANCO MANGA LARGA MARCA BIBO CON UN LOGO BORDADO PARA MUJER (GOBIERNO DEL ESTADO)', '330.00', '9900.00'),
(329, 16, 48, '2018-04-09 18:14:34', 1, 1, '48 CAMISAS COLOR BLANCO MANGA LARGA MARCA BIBO CON DOS LOGOS BORDADOS PARA HOMBRES (ITCA Y GOBIERNO DEL ESTADO)', '350.00', '16800.00'),
(330, 16, 48, '2018-04-09 18:14:34', 1, 1, '48 CAMISAS COLOR BLANCO MANGA LARGA MARCA BIBO CON UN LOGO BORDADO PARA HOMBRE (GOBIERNO DEL ESTADO)        OBSERVACION  . \n LAS  TALLAS   ESTRAS     AUMENTA $ 30 .00   MAS   2 XL   3  XL   4  XL   5  XL ', '330.00', '15840.00'),
(331, 14, 50, '2018-04-09 22:49:11', 1, 1, 'CARTELES EN TAMAÑO DOBLE CARTA IMPRESOS A COLOR POR 1 LADO EN PAPEL CARTULINA OPALINA', '15.00', '750.00'),
(332, NULL, 500, '2018-04-10 00:48:39', 1, 1, 'TRIPTICOS SELECCION COLOR MEDIDA CARTA COUCHE DE 130 GRAMOS CON BRANIZ UV BRILLANTE', '3.60', '1800.00'),
(333, 14, 500, '2018-04-10 00:48:39', 1, 1, 'TRIPTICOS SELECCION COLOR MEDIDA CARTA COUCHE DE 130 GRAMOS', '3.30', '1650.00'),
(334, 14, 3600, '2018-04-10 17:01:29', 1, 1, 'IMPRESION   DE  TRIPTICOS   A SELECCION   DE  COLOR   EN PAPEL   COUCHE  DE  130 GRS. ', '1.20', '4320.00'),
(335, 14, 3000, '2018-04-10 17:10:43', 1, 1, 'IMPRESION   DE  FORMATO    (  NOMINA  )  \n\nIMPRESO   EN PAPEL  OPALINA   A  SELECCION   DE  COLOR   TAMAÑO  CARTA ', '1.40', '4200.00'),
(336, 17, 4, '2018-04-10 19:45:02', 1, 1, 'Pendón  1.80 mts x 0.80 mts, con bastilla  y  ojillos ', '220.00', '880.00'),
(337, 15, 50, '2018-04-10 19:47:50', 1, 1, 'ANF 006 A \nCILINDRO LAKE COLOR AZUL CON IMPRESION   EN SERIGRAFIA   A 1 TINTA \n ', '25.00', '1250.00'),
(338, 15, 200, '2018-04-10 20:16:59', 1, 1, 'PARAGUAS PROMOCIONAL CON FUNDA PAR 01 1 TINTA 4 GAJOS', '105.00', '21000.00'),
(339, 15, 800, '2018-04-10 20:16:59', 1, 1, 'ANFORA SHADOW IMPRESA 1 TINTA ANF 004', '15.00', '12000.00'),
(340, 15, 50, '2018-04-10 20:21:54', 1, 1, 'SIN 168 A \nMALETA TABUSH COLOR AZUL CON IMPRESION   EN SERIGRAFIA  ', '240.00', '12000.00'),
(341, 16, 50, '2018-04-10 20:21:54', 1, 1, 'SIN 149 A \nMOCHILA NEVERI COLOR AZUL   CON LOGO  BORDADO ', '210.00', '10500.00'),
(342, 17, 1, '2018-04-10 21:51:51', 1, 1, 'RENTA DE VALLA PUBLICITARIA MENSUAL MEDIDA 8X3 MTS. \nCONTRATO A 6 MESES, INCLUYE LONA PUBLICITARIA DE 3X8 MTS.', '2500.00', '2500.00'),
(343, 17, 1, '2018-04-11 00:07:13', 1, 1, 'ROTULACION DE VIDRIO 6.94 X 2.67 MTS EN VINIL HD MICROPERDORADO, INCLUYE INSTALACION.', '3500.00', '3500.00'),
(344, 15, 50, '2018-04-11 16:40:38', 1, 1, 'HL 1100 C \nLIBRETA ECOLÓGICA JOLIET   CON  IMPRESION   EN SERIGRAFIA   A 1 TINTA  ', '75.00', '3750.00'),
(345, 15, 50, '2018-04-11 16:40:38', 1, 1, 'HL 9050 BE \nLIBRETA KORYAK  CON IM PRESION  EN SERIGRAFIA  A 1 TITNA  ', '55.00', '2750.00'),
(346, 15, 2000, '2018-04-11 17:22:52', 1, 1, 'BOLIGRAFO ECO 010 A CON IMPRESIÓN EN SERIGRAFÍA A UNA TINTA', '4.90', '9800.00'),
(347, 16, 2000, '2018-04-11 17:22:52', 1, 1, 'PULSERAS BORDADA A 4 COLORES ', '6.80', '13600.00'),
(348, 15, 1500, '2018-04-11 17:22:52', 1, 1, 'BOLSA ECOLÓGICA ENVIRONMENT COLOR AZUL CON IMPRESIÓN A UNA TINTA   SIN 230\n\n\n\nPROVEEDOR 5022042  RFC  AEVG11106M59		\n\n\n', '16.00', '24000.00'),
(349, 15, 4000, '2018-04-11 17:32:50', 1, 1, 'STICKER  EN GOTA  DE  RESINA  MEDIDA  3  X 3  CM. LOGOS CASA DE LA TIERRA (DISEÑO ANTERIOR)', '5.70', '22800.00'),
(350, 15, 1500, '2018-04-11 17:32:50', 1, 1, ' ANFORAS ANF 005 CON IMPRESIÓN DE SERIGRAFÍA A UNA TINTA\n\n\n\n\nPROVEEDOR 5022042  RFC  AEVG11106M59		\n', '18.00', '27000.00'),
(351, 17, 47, '2018-04-11 18:14:27', 1, 1, '1.	Impresión de Vinil Microperforado  de 2.00 m x 0.87 m. (47) MICROPERFORADO VENTANAS DE 2 M X 87 CM  YA CON INSTALACION . ', '980.00', '46060.00'),
(352, 17, 2, '2018-04-11 18:14:27', 1, 1, '2.	Impresión de Vinil Microperforado de 0.76 m x 0.62 m. MICROPERFORADO DE LA PUERTA         CON  INSTALACION. ', '350.00', '700.00'),
(353, 17, 2, '2018-04-11 18:14:27', 1, 1, 'Impresión de Vinil Microperforado de 0.76 m x 0.80 m. MICROPERFORADO DE LA PUERTA CON INSTALACION.', '370.00', '740.00'),
(354, 17, 2, '2018-04-11 18:14:27', 1, 1, 'Impresión de Vinil Microperforado de 0.76 m x 0.70 m. MICROPERFORADO DE LA PUERTA CON INSTALACION 		  .PROVEEDOR 5022042  RFC  AEVG11106M59', '370.00', '740.00'),
(355, 17, 1, '2018-04-11 18:53:37', 1, 1, 'DESROTULACION. \nCASA DE LA TIERRA - VICTORIA\n\nPROVEEDOR 5022042  RFC  AEVG11106M59		\n\n\n\n\n\n', '11000.00', '11000.00'),
(356, 14, 500, '2018-04-11 19:13:25', 1, 1, 'Flyer de 19 x 10 cm Impreso por ambos lados a selección  de   color en , Papel  Couche  de  130   grs.  ', '2.90', '1450.00'),
(357, 14, 1000, '2018-04-11 19:13:25', 1, 1, 'Flyer de 19 x 10 cm Impreso por ambos lados a selección  de   color en , Papel  Couche  de  130   grs.  ', '1.50', '1500.00'),
(358, 17, 50, '2018-04-11 22:21:59', 1, 1, 'LONA IMPRESION DIGITAL .90 X 1.50 CON BASTIULLA Y OJILLOS', '88.00', '4400.00'),
(359, 17, 1000, '2018-04-11 22:21:59', 1, 1, 'MICROPERFORADOS MEDIDA 60 X 30 CM', '27.00', '27000.00'),
(360, 15, 1000, '2018-04-11 22:21:59', 1, 1, 'GORRA BLANCA IMPRESA 1 TINTA 1 POSICION', '21.00', '21000.00'),
(361, 15, 1000, '2018-04-11 22:21:59', 1, 1, 'PLAYERAS CUELLO REDONDO BLANCA UNITALLA 140 GRAMOS (ECONOMICA)', '22.00', '22000.00'),
(362, 15, 200, '2018-04-11 22:21:59', 1, 1, 'PLAYERAS CUELLO REDONDO MORADA 160 GRAMOS IMPRESAS 1 TINTA', '38.00', '7600.00'),
(363, 14, 10000, '2018-04-11 22:21:59', 1, 1, 'VOLANTES IMPRESOS SELECCION COLOR 1 LADOS MEDIA CARTA', '0.35', '3500.00'),
(364, 14, 10, '2018-04-11 23:28:21', 1, 1, 'CARTELES EN TAMAÑO DOBLE CARTA IMPRESOS A  COLOR POR 1 LADO EN PAPEL CARTULINA OPALINA CON LAMINADO', '25.00', '250.00'),
(365, 15, 100, '2018-04-12 18:03:56', 1, 1, 'PORTALAPTOP DANUVIO IMPRESO 1 TINTA SIN 136 AZUL ', '190.00', '19000.00'),
(366, 15, 5000, '2018-04-13 17:32:08', 1, 1, 'PLAYERAS CUELLO REDONDO IMPRESAS FRENTE 4 TINTAS 160 GRAMOS MARCA GILDAN', '35.00', '175000.00'),
(367, 15, 5000, '2018-04-13 17:32:08', 1, 1, 'PLAYERAS CUELLO REDONDO IMPRESAS 2 TINTAS FRENTE  160 GRAMOS MARCA GILDAN', '30.00', '150000.00'),
(368, 15, 2000, '2018-04-13 17:32:08', 1, 1, 'BOLSAS TOLEDO MEDIDA 30 X 34', '16.00', '32000.00'),
(369, 17, 5000, '2018-04-13 17:32:08', 1, 1, 'MICROPERFORADOS IMPRESOS A COLOR 60 X 30 CM', '21.00', '105000.00'),
(370, 17, 5000, '2018-04-13 17:32:08', 1, 1, 'CALCAS EN VINIL HD 10 X 30 CM', '1.90', '9500.00'),
(371, 17, 500, '2018-04-13 17:32:08', 1, 1, 'LONAS IMPRESAS 30 X 60 CM CON OJILLOS', '16.50', '8250.00'),
(372, 17, 300, '2018-04-13 17:32:08', 1, 1, 'LONAS IMPRESION DIGITAL MEDIDA 1.00 X1.50 MTS CON OJILLOS', '99.00', '29700.00'),
(373, NULL, 150, '2018-04-13 17:32:08', 1, 1, 'BANDERAS 70 X 50 CM A COLOR CON ASTA DE MADERA', '95.00', '14250.00'),
(374, 17, 100, '2018-04-13 17:32:08', 1, 1, 'BANDERAS 70 X 30 CM A COLOR CON ASTA DE MADERA', '133.00', '13300.00'),
(375, 15, 3000, '2018-04-13 17:32:08', 1, 1, 'GORRAS ECONOMICAS IMPRESAS 1 TINTA', '22.00', '66000.00'),
(376, 15, 1000, '2018-04-13 17:32:08', 1, 1, 'PARAGUAS PROMOCIONAL IMPRESOS 1 TINTA 4 GAJOS', '77.00', '77000.00'),
(377, 14, 30000, '2018-04-13 18:33:13', 1, 1, 'TRIPTICOS IMPRESOS SELECCION COLOR AMBOS LADOS PAPEL COUCHE DE 130 GRAMOS', '0.90', '27000.00'),
(378, 14, 10000, '2018-04-13 18:33:13', 1, 1, 'ABANICOS DE MANO EN CARTON SENCILLO CON PALITO DE MADERA', '2.30', '23000.00'),
(379, 14, 30000, '2018-04-13 18:33:13', 1, 1, 'VOLANTES IMPRESION DIGITAL MEDIA CARTA SELECCION COLOR UN LADO', '0.40', '12000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionitempaquete`
--

CREATE TABLE `cotizacionitempaquete` (
  `id` int(11) NOT NULL,
  `id_combinacion` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionitempaqueteproducto`
--

CREATE TABLE `cotizacionitempaqueteproducto` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacionitempaquete_paqueteproducto`
--

CREATE TABLE `cotizacionitempaquete_paqueteproducto` (
  `id_cotizacionitempaquete` int(11) NOT NULL,
  `id_paqueteproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_item`
--

CREATE TABLE `cotizacion_item` (
  `id_cotizacion` int(11) NOT NULL,
  `id_cotizacionitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cotizacion_item`
--

INSERT INTO `cotizacion_item` (`id_cotizacion`, `id_cotizacionitem`) VALUES
(26, 39),
(27, 40),
(28, 41),
(29, 42),
(30, 43),
(31, 44),
(32, 45),
(32, 46),
(32, 47),
(32, 48),
(33, 49),
(34, 50),
(35, 51),
(36, 52),
(37, 53),
(38, 54),
(39, 55),
(40, 56),
(40, 57),
(41, 58),
(41, 59),
(41, 60),
(41, 61),
(41, 62),
(42, 63),
(42, 64),
(43, 65),
(44, 66),
(45, 67),
(46, 68),
(46, 69),
(47, 70),
(48, 71),
(50, 73),
(50, 74),
(50, 75),
(50, 76),
(51, 77),
(52, 78),
(53, 79),
(54, 80),
(55, 81),
(55, 82),
(55, 84),
(55, 220),
(56, 85),
(57, 86),
(57, 87),
(57, 88),
(57, 89),
(58, 90),
(58, 91),
(58, 92),
(59, 93),
(60, 94),
(61, 95),
(61, 96),
(61, 97),
(61, 98),
(61, 99),
(61, 100),
(61, 101),
(61, 102),
(61, 103),
(61, 104),
(61, 105),
(61, 106),
(61, 107),
(61, 108),
(61, 109),
(61, 110),
(61, 111),
(61, 112),
(61, 113),
(61, 114),
(62, 115),
(63, 116),
(63, 117),
(63, 118),
(63, 119),
(63, 120),
(64, 121),
(65, 122),
(65, 123),
(65, 124),
(66, 125),
(66, 126),
(66, 127),
(67, 128),
(67, 129),
(68, 130),
(69, 131),
(70, 132),
(71, 133),
(72, 134),
(72, 135),
(73, 136),
(73, 137),
(73, 138),
(74, 139),
(79, 144),
(79, 145),
(80, 146),
(80, 147),
(80, 148),
(81, 149),
(82, 150),
(82, 151),
(82, 152),
(82, 153),
(82, 154),
(82, 155),
(82, 156),
(82, 157),
(82, 159),
(82, 160),
(82, 161),
(82, 162),
(82, 163),
(82, 164),
(82, 165),
(82, 166),
(82, 259),
(82, 260),
(83, 167),
(83, 168),
(84, 169),
(85, 170),
(86, 171),
(87, 172),
(88, 173),
(89, 174),
(89, 175),
(89, 176),
(90, 177),
(91, 178),
(92, 179),
(93, 180),
(94, 181),
(94, 182),
(94, 183),
(94, 184),
(95, 185),
(96, 186),
(96, 187),
(96, 188),
(96, 189),
(96, 190),
(97, 191),
(98, 192),
(98, 193),
(98, 194),
(99, 195),
(99, 196),
(100, 197),
(100, 198),
(100, 199),
(101, 200),
(101, 201),
(102, 202),
(102, 203),
(102, 204),
(102, 205),
(103, 206),
(103, 207),
(104, 208),
(104, 209),
(105, 210),
(106, 211),
(106, 212),
(106, 213),
(106, 214),
(106, 215),
(107, 216),
(108, 217),
(108, 218),
(109, 219),
(110, 221),
(110, 222),
(110, 223),
(110, 224),
(111, 225),
(112, 226),
(113, 227),
(114, 228),
(115, 229),
(116, 230),
(117, 231),
(118, 232),
(119, 233),
(120, 234),
(120, 235),
(121, 236),
(122, 237),
(122, 238),
(122, 239),
(123, 240),
(123, 241),
(123, 242),
(124, 243),
(125, 244),
(126, 245),
(127, 246),
(127, 247),
(127, 248),
(127, 249),
(127, 250),
(128, 251),
(129, 252),
(129, 253),
(130, 254),
(130, 255),
(130, 256),
(130, 257),
(130, 258),
(131, 261),
(131, 262),
(132, 263),
(133, 264),
(134, 265),
(134, 266),
(135, 267),
(135, 268),
(136, 269),
(136, 270),
(137, 271),
(137, 272),
(137, 273),
(137, 274),
(138, 275),
(139, 276),
(140, 277),
(141, 278),
(141, 279),
(141, 280),
(141, 281),
(142, 282),
(143, 283),
(144, 284),
(145, 285),
(146, 286),
(147, 287),
(148, 288),
(148, 289),
(148, 290),
(148, 291),
(148, 292),
(148, 293),
(148, 294),
(149, 295),
(149, 296),
(149, 297),
(150, 298),
(151, 299),
(151, 300),
(151, 301),
(151, 302),
(152, 303),
(152, 307),
(152, 308),
(152, 309),
(153, 304),
(153, 305),
(153, 306),
(154, 310),
(154, 311),
(154, 312),
(154, 313),
(154, 314),
(154, 315),
(154, 316),
(154, 317),
(154, 318),
(154, 319),
(154, 320),
(154, 321),
(154, 322),
(155, 323),
(156, 324),
(157, 325),
(157, 326),
(158, 327),
(158, 328),
(158, 329),
(158, 330),
(159, 331),
(159, 364),
(160, 332),
(160, 333),
(161, 334),
(162, 335),
(163, 336),
(164, 337),
(164, 340),
(164, 341),
(164, 344),
(164, 345),
(165, 338),
(165, 339),
(166, 342),
(167, 343),
(168, 346),
(168, 347),
(168, 348),
(169, 349),
(169, 350),
(170, 351),
(170, 352),
(170, 353),
(170, 354),
(171, 355),
(172, 356),
(172, 357),
(173, 358),
(173, 359),
(173, 360),
(173, 361),
(173, 362),
(173, 363),
(174, 365),
(175, 366),
(175, 367),
(175, 368),
(175, 369),
(175, 370),
(175, 371),
(175, 372),
(175, 373),
(175, 374),
(175, 375),
(175, 376),
(175, 377),
(175, 378),
(175, 379);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_itempaquete`
--

CREATE TABLE `cotizacion_itempaquete` (
  `id_cotizacion` int(11) NOT NULL,
  `id_cotizacionitempaquete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `calle` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `colonia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numext` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numint` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id`, `id_tipo`, `id_estado`, `calle`, `cp`, `municipio`, `colonia`, `numext`, `numint`, `localidad`) VALUES
(17, 1, 27, '0000000', '00000', 'VICTORIA', '000', '000', '000', 'VICTORIA'),
(18, 1, 27, 'OLIVOS', '87049', 'VICTORIA', 'HACIENDAS DEL BOSQUE', '601', NULL, 'VICTORIA'),
(19, 1, 27, 'CARRETERA FEDERAL LIBRE VIC-MAT', '87000', 'VICTORIA', 'GRANJAS CAMPESTRE', 'KM 5.1', NULL, 'VICTORIA'),
(21, 1, 27, 'CALZADAGENERAL LUIS CABALLERO', '87060', 'VICTORIA', 'TAMATAN', '297', NULL, 'VICTORIA'),
(22, 1, 27, 'LIBRAMIENTO NACIONES UNIDAS', '87086', 'VICTORIA', 'AZTECA', 'S/N', NULL, 'VICTOTRIA'),
(23, 1, 27, 'CARRERA TORRES', '87000', 'VICTORIA', 'ZONA CENTRO', '302', NULL, 'VICTORIA'),
(24, 1, 27, 'MATAMOROS', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(25, 1, 27, 'PALACIO DE GOBIERNO PISO 1', '87', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(26, 1, 27, 'EGIDIO TORRE REPETO ESQUINA CON CRISTOBAL COLON', '87027', 'VICTORIA', 'VILLA JARDIN', '3545', 'S/N', 'VICTORIA'),
(27, 1, 27, 'HIDALGO OTE', '87000', 'VICTORIA', 'S/N', '301', NULL, 'VICTORIA'),
(29, 1, 27, 'SIN DIRECCION', '00000', 'VICTORIA', 'SIN COLONIA', 'S/N', NULL, 'VICTORIA'),
(30, 1, 27, 'AVENIDA NUEVAS TECNOLOGIAS', '87138', 'VICTORIA', 'PARQUE CIENTIFICO Y TECNOLOGICO DETAMAULIPAS', '5902', NULL, 'VICTORIA'),
(31, 1, 27, 'RAFAEL BALANDRANO', '87020', 'VICTORIA', 'VALLE DE AGUAYO', '822', NULL, 'VICTORIA'),
(32, 1, 27, 'MARIO PANI', '05348', 'DEL. CUAJIMALPA DE MORELOS', 'SANTA FE CUAJIMALPA', '200', 'S/N', 'VICTORIA'),
(33, 1, 27, 'HIDALGO ORIENTE', '87000', 'VICTORIA', 'ZONA CENTRO', '813', NULL, 'VICTORIA'),
(34, 1, 27, 'BOULEVARD PRAXEDIS BALBOA', '87090', 'VICTORIA', 'MIGUEL HIDALGO', 'S/N}', NULL, 'VICTORIA'),
(35, 1, 27, 'AV. NORBERTO TREVIÑO ZAPATA', '87020', 'VICTORIA', 'NORBERTO TREVIÑO ZAPARA', '2735', NULL, 'VICTORIA'),
(36, 1, 27, 'LEY AGRARIA', '87070', 'VICTORIA', 'AMERICO VILLARREAL GUERRA', '138', NULL, 'VICTORIA'),
(37, 1, 27, 'JALISCO', '87040', 'VICTORIA', 'SAN JOSE', '523', NULL, 'VICTORIA'),
(38, 1, 27, 'CARRERA TORRES', '87099', 'VICTORIA', 'DOS MIL', '2315', NULL, 'VICTORIA'),
(39, 1, 27, 'HERMANOS VAZQUEZ GOMEZ', '87050', 'VICTORIA', 'MORELOS', '1042', NULL, 'VICTORIA'),
(40, 1, 27, 'BLVD. TAMAULIPAS', '87040', 'VICTORIA', 'FRACC. SAN JOSE', '800', NULL, 'VICTORIA'),
(41, 1, 27, 'LIBRAMIENTO NACIONES UNIDAS', '87027', 'VICTORIA', 'FRAC. LA SALLE', '1029', NULL, 'VICTORIA'),
(42, 1, 27, 'CARRERA TORRES OTE', '87000', 'VICTORIA', 'ZONA CENTRO', '910', NULL, 'VICTORIA'),
(43, 1, 27, '0 Y 1 BERRIOZABAL', '87050', 'VICTORIA', 'MORELOS', '1738', NULL, 'VICTORIA'),
(44, 1, 27, 'CALZADA GRAL. LUIS CABALLERO', '87060', 'VICTORIA', 'TAMATAN', 'S/N', NULL, 'VICTORIA'),
(45, 1, 27, 'PALACIO DE GOBIERNO', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', 'PISO 1', 'VICTORIA'),
(46, 1, 27, '14 NUEVO LEON VERACRUZ', '87050', 'VICTORIA', 'SAN FRANCISCO', '1610', NULL, 'VICTORIA'),
(47, 1, 27, 'NORBERTO TREVIÑO ZAPATA', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(48, 1, 27, 'BELISARIO DOMINGUEZ', '87040', 'VICTORIA', 'ASENCION GOMEZ', '1358', NULL, 'VICTORIA'),
(49, 1, 7, 'TEHUANTEPEC', '06760', 'MEXICO DF', 'ROMA SUR', '155', NULL, 'MEXICO'),
(50, 1, 27, 'XXXX', '87000', 'VICTORIA', 'XXX', 'XX', NULL, 'VICTORIA'),
(51, 1, 27, 'BLVD. FIDEL VELAZQUEZ', '87050', 'VICTORIA', 'FRACC. LAS PALMAS', '1334', NULL, 'VICTORIA'),
(52, 1, 27, 'CONRADO CASTILLO', '87050', 'VICTORIA', 'FRACC. SIERRA GORDA', '612', NULL, 'VICTORIA'),
(53, 1, 27, 'Palacio de Gobierno', '87000', 'VICTORIA', 'ZONA CENTRO', 'PISO 1', NULL, 'VICTORIA'),
(54, 1, 27, 'PALACIO DE GOBIERNO PISO 1', '87000', 'VICTORIA', 'ZONA CENTRO', 'X', NULL, 'VICTORIA'),
(55, 1, 27, 'Plan de Ayutla', '87370', 'VICTORIA', 'EUZKADI', '713', NULL, 'VICTORIA'),
(56, 1, 27, 'CAMARGO', '87018', 'VICTORIA', 'FRACC.  INDUSTRIAL', '207', 'SIN NUMERO', 'VICTORIA'),
(57, 1, 27, 'PALACIO DE  GOBIERNO PISO 1', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', 'S/N', 'VICTORIA'),
(59, 1, 27, 'CANALES', '87100', 'VICTORIA', 'GUADALUPE MAINERO', '215', NULL, 'VICTORIA'),
(60, 1, 27, 'FELIPE BERRIOSABAL', '87048', 'VICTORIA', 'PEDRO JOSE MENDEZ', '442', NULL, 'VICTORIA'),
(61, 1, 27, 'CARRETERA NACIONAL KILOMETRO 22.7', '87180', 'VICTORIA', 'LAS BRISAS', 'S/N', NULL, 'VICTORIA'),
(62, 1, 27, 'CENTRO DE VILLA DE CASAS', 'X', 'VILLA  DE CASAS', 'CENTRO', 'X', 'X', 'VILLA  DE CASA'),
(63, 1, 27, 'CRISTOBAL COLON NTE.  ENTRE GUERRERO Y BRAVO', '87000', 'VICTORIA', 'ZONA CENTRO', '443', NULL, 'VICTORIA'),
(64, 1, 27, 'PALACIO DE  GOBIERNO PISO 1', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(65, 1, 27, 'S/ NOMBRE', '87200', 'LLERA', 'EJIDO 2 DE OCTUBRE', 'S/N', NULL, 'LLERA'),
(66, 1, 27, 'JOVITA LEAL DE AGUILERA', '87089', 'VICTORIA', 'FRACC. LA PAZ', '110', NULL, 'VICTORIA'),
(67, 1, 27, 'AVENIDA LAZRO CARDENAS  ESQUINA CON ALDAMA', '87040', 'VICTORIA', 'INFONAVID ALDAMA', '719', NULL, 'VICTORIA'),
(68, 1, 27, 'PALACIO DE GOBIERNO', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', 'PISO 1', 'VICTORIA'),
(69, 1, 27, 'PALACIO DE GOBIERNO', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', 'PISO 1', 'VICTORIA'),
(70, 1, 27, 'FRANCISCO I MADERO', '87010', 'TAMAULIPAS', 'ENRIQUE CARDENAS GZL', '150', NULL, 'TAMAULIPAS'),
(71, 1, 27, 'MATAMOROS  ENTRE  9 Y 10', '87000', 'VICTORIA', 'ZONA CENTRO', '850', NULL, 'VICTORIA'),
(72, 1, 27, 'PRAXEDIS BALBOA', '87083', 'VICTORIA', 'PARQUE BICENTENARIO', '3100', '3100', 'VICTORIA'),
(73, 1, 27, 'BLVD. TAMAULIPAS', '87040', 'VICTORIA', 'FRACC. SAN JOSE', '800', NULL, 'VICTORIA'),
(74, 1, 27, 'ABASOLO OTE ESQ. PORFIRIO DIAZ', '87000', 'VICTORIA', 'ZONA CENTRO', '1102', NULL, 'VICTORIA'),
(75, 1, 27, 'DIEZ MIRON', '87000', 'VICTORIA', 'MIGUEL HIDALGO', '305', NULL, 'VICTORIA'),
(76, 1, 27, 'COAHUILA LOCAL 4', '87040', 'VICTORIA', 'SAN JOSE', '996', NULL, 'VICTORIA'),
(77, 1, 27, 'RAFAEL TEJEDA', '87026', 'VICTORIA', 'MAGISTERIAL', '251', NULL, 'VICTORIA'),
(78, 1, 27, 'NORBERTO TREVIÑO ZAPATA NTE.', '87050', 'VICTORIA', 'SAN FRANCISCO', '1145', '1145', 'VICTORIA'),
(80, 1, 27, 'CALZADA  TAMATAN', '87000', 'VICTORIA', 'TAMATAN', 'S/N', NULL, 'VICTORIA'),
(81, 1, 27, 'BERRIOZABAL', '87030', 'VICTORIA', 'LAZARO CARDENAS', '1230', NULL, 'VICTORIA'),
(82, 1, 27, 'BLVD TAMAULIPAS', '87040', 'VICTORIA', 'SAN JOSE', '1622', NULL, 'VICTORIA'),
(83, 1, 27, 'AV LAURELES', '87029', 'VICTORIA', 'RESIDENCIAL CAMPESTRE', '1161', NULL, 'VICTORIA'),
(84, 1, 14, 'PERIFERICO PONIENTE', '45019', 'DEL.ZAPOPAN', 'SAN JUAN DE OCOTAN', '5360', NULL, 'MEXICO'),
(85, 1, 27, 'BLVD. FIDEL VELAZQUEZ', '87050', 'VICTORIA', 'FRACC. LAS PALMAS', '1334', NULL, 'VICTORIA'),
(86, 1, 27, 'LAURO RENDON ENTRE ALLENDE Y ABASOLO', '87030', 'VICTORIA', 'HEROE DE NACOZARI', '632', NULL, 'VICTORIA'),
(87, 1, 27, 'JOSE MA. MORELOS  Y PAVON', '87000', 'VICTORIA', 'ZONA  CENTRO', '310', NULL, 'VICTORIA'),
(88, 1, 27, 'BERRIOSABAL', '87050', 'VICTORIA', 'MORELOS', '1738', NULL, 'VICTORIA'),
(89, 1, 27, 'FRANSISCO I. MADERO SUR', '87000', 'VICTORIA', 'ZONA CENTRO', '903', NULL, 'VICTORIA'),
(90, 1, 27, 'OLIVIA RAMIREZ', '87050', 'VICTORIA', 'SIERRA  GORDA', '621', NULL, 'VICTORIA'),
(91, 1, 7, 'ARCOS DE BELEN', '06010', 'DEL. CUAUHTEMOC', 'CENTRO', '79', 'PISO 2', 'MEXICO'),
(92, 1, 27, 'JUAN B  TIJERINA  NTE.', '87050', 'VICTORIA', 'RECIDENCIAL LAS PALMAS', '20', '20', 'VICTORIA'),
(93, 1, 27, 'AV. DEL SOFTWARE MANZANA Z', '87138', 'VICTORIA', 'PARQUE CIENTIFICO  Y TECNOLOGICO DE TAMAULIPAS', 'S/N', NULL, 'VICTORIA'),
(94, 1, 27, 'CARRETERA ESTATAL  LIBRE INTREJIDAL', '87019', 'VICTORIA', 'MONTE ALTO', 'KM. 600', NULL, 'VICTORIA'),
(95, 1, 27, '20 Y 21 BRAVO', '87000', 'VICTORIA', 'ZONA CENTRO', '430-B', NULL, 'VICTORIA'),
(96, 1, 27, 'PINO SUAREZ', '87020', 'VICTORIA', 'NORBERTO TREVIÑO ZAPATA', '136', NULL, 'VICTORIA'),
(97, 1, 27, '12 JUAREZ CONDOMINIO CASA VIEJA', '87000', 'VICTORIA', 'ZONA CENTRO', '516', '104', 'VICTORIA'),
(99, 1, 31, 'ZACATEZAS', '99092', 'ZACATECAS', '1111', '111', NULL, 'ZACATECAS'),
(100, 1, 27, 'AVDFS', '12345', 'VICTORIA', 'ACSVDFD', 'ADVSFBVB', NULL, 'VICTORIA'),
(101, 1, 27, 'SIN DIRECCION', '87020', 'VICTORIA', 'S/C', 'S/N', NULL, 'VICTORIA'),
(102, 1, 27, 'CALZADA GENERAL LUIS CABALLERO', '87000', 'VICTORIA', 'TAMATAN', 'S/N', NULL, 'V'),
(103, 1, 27, '20 Y 21 BRAVO', '87000', 'VICTORIA', 'ZONA CENTRO', '430-B', NULL, 'TAMAULIPAS'),
(104, 1, 27, 'EBANO', '87078', 'VICTORIA', 'FRACC.LAS FLORES', '561', NULL, 'VICTORIA'),
(105, 1, 27, 'SAN JOSE', '87014', 'VICTORIA', 'EL MIRADOR', '1023', NULL, 'CD. VICTORIA'),
(106, 1, 27, 'MANTE', '87018', 'VICTORIA', 'INDUSTRIAL', '478', NULL, 'VICTORIA'),
(107, 1, 27, 'OLIVIA RAMIREZ ENTRE MANUEL GONZALEZ JR. Y AVENIDA 5 DE MAYO', '87050', 'VICTORIA', 'COLONIA SAN FRANCISCO', '245', NULL, 'VICTORIA'),
(108, 1, 27, 'BLVD. PRAXEDIS BALBOA', '87090', 'VICTORIA', 'MIGUEL HIDALGO', '2207', NULL, 'VICTORIA'),
(109, 1, 27, 'MARIANO MATAMOROS', '87000', 'VICTORIA', 'CENTRO', '525', NULL, 'VICTORIA'),
(110, 1, 27, 'HERMANOS VAZQUEZ GOMEZ', '87100', 'VICTORIA', 'GUADALUPE MAINERO', '448', NULL, 'VICTORIA'),
(111, 1, 27, 'CARRERA TORRES ENTRE ASCENCION GOMEZ Y JUAN C. DORIA', '87000', 'VICTORIA', 'ZONA CENTRO', '1389', NULL, 'VICTORIA'),
(112, 1, 27, 'BOSQUES CAMPESTRE', '87025', 'VICTORIA', 'FRACC. BOSQUES CAMPESTRE', '15 B', NULL, 'VICTORIA'),
(113, 1, 27, 'PALACIO DE GOBIENO PISO 1', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(114, 1, 27, 'HOSPITAL GENERAL', '87024', 'VICTORIA', 'REVOLUCION VERDE', 'SN', NULL, 'VICTORIA'),
(115, 1, 27, '20 Y 21 MORELOS', '87000', 'VICTORIA', 'ZONA CENTRO', '406', NULL, 'VICTORIA'),
(116, 1, 27, 'ARTURO OLIVARES', '87027', 'VICTORIA', 'VILLA JARDIN', '203', NULL, 'VICTORIA'),
(117, 1, 27, 'AVE. FIDEL VELAZQUEZ', '87070', 'VICTORIA', 'LUIS QUINTERO GUZMAN', '1048', '1048', 'VICTORIA'),
(118, 1, 27, 'NORBERTO TREVIÑO ZAPATA', '87029', 'VICTORIA', 'MAGISTERIAL', '1', NULL, 'VICTORIA'),
(119, 1, 27, 'ASBSC', '29382', 'VICTORIA', 'CANDSFJ', '23', NULL, 'VICTORIA'),
(120, 1, 27, 'ANDADOR LAUREL', '87027', 'VICTORIA', 'FRACC. VILLAJARDIN', '113', NULL, 'VICTORIA'),
(121, 1, 27, 'TECNOLOGICO', '87000', 'VICTORIA', 'FRAC. TECNOLOGICO', 'S/N', NULL, 'VICTORIA'),
(122, 1, 27, 'BERRIOZABAL', '87099', 'VICTORIA', 'FRACC. COMERCIAL 2000', '2304', NULL, 'VICTORIA'),
(123, 1, 27, 'CALZADA DE LA ALEGRIA', '87028', 'VICTORIA', 'MISION SAN AGUSTIN', '5367', NULL, 'VICTORIA'),
(124, 1, 27, 'AVENIDA TAMAULIPAS', '87050', 'VICTORIA', 'FRAC. SAN JOSE', '890', NULL, 'VICTORIA'),
(125, 1, 27, '11 Y 12 CARRERA TORRES', 'XXX', 'CD.VICTORIA', 'CENTRO', 'XXX', NULL, 'CD.VICTORIA'),
(126, 1, 1, 'Blvd. A Zacatecas', '20140', 'AGUASCALIENTES', 'Las Hadas', '117', NULL, 'AGUASCALIENTES'),
(127, 1, 27, '3 Y 4 HIDALGO', '87780', 'PADILLA', 'ZONA CENTRO', 'S/N', NULL, 'PADILLA'),
(128, 1, 27, 'CD. VICTORIA', '87000', 'VICTORIA', 'CENTRO', 'S/N', NULL, 'VICTORIA'),
(129, 1, 7, 'AV NEXTENGO', '02770', 'ATAYUCA', 'SANTA CRUZ', '78', NULL, 'ATZCAPOTZALCO'),
(130, 1, 27, '5 DE MAYO', '87040', 'VICTORIA', 'VIVIENDA  POPULARES', '2020', '3', 'VICTORIA'),
(131, 1, 27, 'klzxcjv', '12344', 'VICTORIA', 'ASDMC ,SNV', '12', NULL, 'VICTORIA'),
(132, 1, 27, 'OSEVDIGF|', '22334', 'VICTORIA', 'LAISCLIAN', 'FAESDFG', NULL, 'VICTORIA'),
(133, 1, 27, 'AV. FAJA DE ORO', '89110', 'TAMPICO', 'COL. PETROLERA', '307', NULL, 'TAMPICO'),
(135, 1, 27, 'LIB. EMILIO PORTES GIL', '87030', 'VICTORIA', 'MIGUEL ALEMAN', '200', NULL, 'VICTORIA'),
(136, 1, 27, 'SIERRA DE CASAS ENTRE AVENIDA NORBERTO TREVIÑO ZAPATA Y PINO SUAREZ', '87027', 'VICTORIA', 'FRACC. VILLARREAL', '125', NULL, 'VICTORIA'),
(137, 1, 27, 'MISION DE LOS SANTOS', '87183', 'VICTORIA', 'MISION DEL PALMAR', '3030', NULL, 'VICTORIA'),
(138, 1, 27, 'NO', '12345', 'VICTORIA', 'NO', 'NO', NULL, 'VICTORIA'),
(139, 1, 27, 'ABASOLO', '87000', 'VICTORIA', 'ZONA CENTRO', '1002', NULL, 'VICTORIA'),
(140, 1, 27, 'AVENIDA TRANSFORMACION', '87130', 'VICTORIA', 'PARQUE INDUSTRIAL NUEVO SANTANDER', '101', NULL, 'VICTORIA'),
(141, 1, 27, 'CARR. EST. MANUEL SOTO LA MARINA KM. 35 EJ. LA COLMENA JUNTO A LA UNION GANADERA REG. DE TAMPS. ALDAMA TAMAULIPAS', '89670', 'ALDAMA', 'EJ. LA COLMENA', 'S/N', NULL, 'ALDAMA'),
(142, 1, 27, 'JUAREZ', '87000', 'VICTORIA', 'ZONA CENTRO', '324', NULL, 'VICTORIA'),
(143, 1, 27, 'FRANCISCO I MADERO', '87000', 'VICTORIA', 'ZONA CENTRO', '414', NULL, 'VICTORIA'),
(144, 1, 27, 'BOULEVARD ADOLFO LOPEZ MATEOS', '87020', 'VICTORIA', 'VALLE DE AGUAYO', '2339', NULL, 'VICTORIA'),
(145, 1, 27, 'ZACATECAS', '87049', 'VICTORIA', 'FRACC. LOS ALMENDROS', '811', 'F', 'VICTORIA'),
(146, 1, 27, 'CARR. VICTORIA MONTERREY KM 19.5', '87231', 'GUEMEZ', 'EJIDO SUBIDA ALTA', 'S/N', NULL, 'GUEMEZ'),
(147, 1, 27, 'PRESA LAS ADJUNTAS', '87025', 'VICTORIA', 'FRACC. LAS ALAZANAS', '1742', NULL, 'VICTORIA'),
(148, 1, 27, 'AMPLIACION PRAXEDIS BALBOA PISO 7', '87083', 'VICTORIA', 'PARQUE BICENTENARIO', 'S/N', NULL, 'VICTORIA'),
(149, 1, 27, 'JOSE DE ESCANDON', '87600', 'SAN FERNANDO', 'CENTRO', '103', NULL, 'SAN FERNANDO'),
(150, 1, 7, 'INSURGENTES SUR', '01000', 'DELEGACION ALVARO OBREGON', 'SAN ANGEL', '2417', NULL, 'DELEGACION ALVARO OBREGON'),
(151, 1, 27, 'PEDRO CARDENAS', '87396', 'MATAMAROS', 'AMADO NERVO', '5113', NULL, 'MATAMOROS'),
(152, 1, 27, '11 BERRIOZABAL', '87000', 'VICTORIA', 'ZONA CENTRO', '117', NULL, 'VICTORIA'),
(153, 1, 27, 'BOULEVARD PRAXEDIS BALBOA', '87090', 'VICTORIA', 'MIGUEL HIDALGO', '1300', NULL, 'VICTORIA'),
(154, 1, 27, 'ALDAMA PTE', '87048', 'VICTORIA', 'PEDRO JOSE MENDEZ', '355', NULL, 'VICTORIA'),
(155, 1, 27, '2 Y 3 CARRERA TORRES', '87000', 'VICTORIA', 'ZONA CENTRO', '1509', NULL, 'VICTORIA'),
(156, 1, 27, 'MANUEL MIER Y TERAN NORTE', '87040', 'VICTORIA', 'DEL PERIODISTA', '2010', NULL, 'VICTORIA'),
(157, 1, 27, 'CALZADA GENERAL LUIS CABALLERO', '87060', 'VICTORIA', 'TAMATAN', 'S/N', NULL, 'VICTORIA'),
(158, 1, 27, '16 MICHOACAN ESQ. ALTOS', '87020', 'VICTORIA', 'NORBERTO TREVIÑO ZAPATA', '2979-3', NULL, 'VICTORIA'),
(159, 1, 27, '8 Y 9 HIDALGO ORIENTE', '87000', 'VICTORIA', 'CENTRO', '950 4 PISO INT 1', NULL, 'VICTORIA'),
(160, 1, 27, 'SIN DOM', 'S/CP', 'VICTORIA', 'S/C', 'S/N', NULL, 'VICTORIA'),
(161, 1, 27, 'ZARAGOZA  ENTRE M.GONZALEZ Y 5 DE MAYO', '87000', 'VICTORIA', 'ZONA CENTRO', '210', NULL, 'VICTORIA'),
(162, 1, 27, 'ZARAGOZA  ENTRE M.GONZALEZ Y 5 DE MAYO', '8700', 'VICTORIA', 'ZONA CENTRO', '210', NULL, 'VICTORIA'),
(163, 1, 27, 'FELIPE DE LA GARZA ENTRE FELIPE BERRIOZABAL Y ANAYA', '87050', 'VICTORIA', 'MORELOS', '1701', 'A', 'VICTORIA'),
(164, 1, 27, 'FRANCISCO I. MADERO', '87000', 'VICTORIA', 'ZONA CENTRO', '102', NULL, 'VICTORIA'),
(165, 1, 27, 'PRIVADA LOS ALMENDROS', '87049', 'VICTORIA', 'FRACC. LOS ALMENDROS', '2318', NULL, 'VICTORIA'),
(166, 1, 27, 'PALACIO DE GOBIERNO PISO 1', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(167, 1, 27, 'ADOLFO LOPEZ MATEOS', '87020', 'VICTORIA', 'NORBERTO TREVIÑO ZAPATA', '131', NULL, 'VICTORIA'),
(168, 1, 27, '11 ABASOLO', '87000', 'VICTORIA', 'ZONA CENTRO', 'S/N', NULL, 'VICTORIA'),
(169, 1, 27, '11 Y 13 EPIGMENIO  GARCIA', '87020', 'VICTORIA', 'VALLE DE AGUAYO', '545', NULL, 'VICTORIA'),
(170, 1, 27, '8 OLIVIA RAMIREZ', '87050', 'VICTORIA', 'SIERRA GORDA', '1248', NULL, 'VICTORIA'),
(171, 1, 27, 'JUAN B TIJERINA', '87040', 'VICTORIA', 'FRACCIONAMIENTO LOS ARCOS', '2033', NULL, 'VICTORIA'),
(172, 1, 27, 'XXX', '87120', 'VICTORIA', 'SOSA', 'S/N', NULL, 'VICTORIA'),
(173, 1, 27, 'LAURO AGUIRRE NTE.', '87000', 'VICTORIA', 'ZONA CENTRO', '214', NULL, 'VICTORIA'),
(174, 1, 27, 'RAUL GARCIA', '87024', 'VICTORIA', 'FRACC. SANTA MARIA', '602', NULL, 'VICTORIA'),
(175, 1, 27, 'MATAMOROS OTE.', '87000', 'VICTORIA', 'ZONA CENTRO', '614', NULL, 'VICTORIA'),
(176, 1, 27, 'ZEFERINO FAJARDO LUNA', '87018', 'VICTORIA', 'FRACC. COLINAS DEL VALLE', '409', NULL, 'VICTORIA'),
(177, 1, 27, '14 Y 16 RAFAEL TEJEDA', '87026', 'VICTORIA', 'MAGISTERIAL', '254', NULL, 'VICTORIA'),
(178, 1, 27, 'CALLE UNAM ESQ, CON CBTIS 119', '87040', 'VICTORIA', 'AMPLIACION LOPEZ MATEOS', 'M-9 L-1', NULL, 'VICTORIA'),
(179, 1, 27, 'MATAMOROS', '87090', 'VICTORIA', 'OBRERA', '2038', NULL, 'VICTORIA'),
(180, 1, 27, 'ALLENDE', '87000', 'VICTORIA', 'CENTRO', '313', NULL, 'VICTORIA'),
(181, 1, 27, 'SIERRA LEONA', '87027', 'VICTORIA', 'FRACC. VILLARREAL', '240', NULL, 'VICTORIA'),
(182, 1, 27, 'HERMANOS VAZQUEZ GOMEZ', '87000', 'VICTORIA', 'ZONA CENTRO', '338', NULL, 'VICTORIA'),
(183, 1, 27, '8 CARRERA TORRES', '87000', 'VICTORIA', 'CENTRO', 's/n', NULL, 'VICTORIA'),
(184, 1, 27, 'EXPROPIACION PETROLERA', '87030', 'VICTORIA', 'LAZARO CARDENAS', '1035', NULL, 'VICTORIA'),
(185, 1, 27, 'Ave. del Valle', '87025', 'VICTORIA', 'Fracc. del Valle', '1110', NULL, 'VICTORIA'),
(186, 1, 27, 'BLVD TAMAULIPAS', '87040', 'VICTORIA', 'ZONA CENTRO', '1465', NULL, 'VICTORIA'),
(187, 1, 27, 'Boulevard José López Portillo', '87100', 'VICTORIA', 'Guadalupe Mainero', '1016', NULL, 'VICTORIA'),
(188, 1, 27, 'CARRERA TORRES', '87099', 'VICTORIA', 'DOS MIL', '2315', NULL, 'VICTORIA'),
(189, 1, 27, 'CARRETERA NACIONALMEXICO-LAREDO KM. 700', '87029', 'VICTORIA', 'FRACC. CAMPESTRE', 'S/N', NULL, 'VICTORIA'),
(190, 1, 27, 'CARRETERA VICTORIA-TULA KM 110.5', '87930', 'JAUMAVE', 'ZONA CENTRO', 'S/N', NULL, 'JAUMAVE'),
(191, 1, 27, 'CERRO PEÑA NEVADA', '88740', 'REYNOSA', 'FUENTES SECC. LOMAS', '266', NULL, 'TAMAULIPAS'),
(192, 1, 27, 'ADOLFO LOPEZ MATEOS', '87020', 'VICTORIA', 'VALLE DE AGUAYO', '909', NULL, 'VICTORIA'),
(193, 1, 27, 'VENUSTIANO CARRANZA', '87000', 'VICTORIA', 'ZONA CENTRO', '557', 'INT. 1', 'VICTORIA'),
(194, 1, 27, 'CARRETERA A MANTE', '87000', 'VICTORIA', 'FRACC LAS NORIAS', '605', NULL, 'VICTORIA'),
(195, 1, 27, 'NACIONES UNIDAS PISO 16', '87083', 'VICTORIA', 'PARQUE BICENTENARIO', 'S/N', NULL, 'VICTORIA'),
(196, 1, 27, 'XXX', '88888', 'OCAMPO', 'XX', 'XX', NULL, 'OCAMPO'),
(197, 1, 27, '13 ALLENDE OTE', '87000', 'VICTORIA', 'ZONA CENTRO', '501', NULL, 'VICTORIA'),
(198, 1, 27, 'X', 'X', 'VICTORIA', 'X', 'X', NULL, 'VICTORIA'),
(199, 1, 27, 'CALLE CAMINO DEL PUEBO', '87160', 'VICTORIA', 'CASAS BLANCAS', '482', NULL, 'VICTORIA'),
(200, 1, 27, 'MARIANO MATAMOROS', '87000', 'VICTORIA', 'ZONA CENTRO', '526', NULL, 'VICTORIA'),
(201, 1, 27, '14 VERACRUZ', '87026', 'VICTORIA', 'SAN FRANSISCO', 'S/N', NULL, 'VICTORIA'),
(202, 1, 27, 'PALMILLAS', 'XXXXX', 'PALMILLAS', 'PALMILLAS', 'S/N', NULL, 'PALMILLAS'),
(204, 1, 27, 'LIBRAMIENTO GUADALUPE VICTORIA', '87087', 'VICTORIA', 'AREA PAJARITOS', 'S/N', NULL, 'VICTORIA'),
(205, 1, 27, 'ESTEFANIA CASTAÑEDA', '87026', 'VICTORIA', 'MAGISTERIAL', '146', NULL, 'VICTORIA'),
(206, 1, 27, 'Francisco I. Madero', '87000', 'VICTORIA', 'ZONA CENTRO', '225', NULL, 'VICTORIA'),
(207, 1, 27, 'CONOCIDO', '0', 'VICTORIA', '.', 'S/N', NULL, 'VICTORIA'),
(208, 1, 27, 'Torre Bicentenario Piso 15, 4, ext 43631,', '87026', 'VICTORIA', 'PARQUE  BICENTENARIO', '4363', NULL, 'VICTORIA'),
(209, 1, 27, 'CHIHUAHUA', '87040', 'VICTORIA', 'FRACC SAN JOSE', '957', 'LOCAL D', 'VICTORIA'),
(210, 1, 27, 'CARRERA TORRES', '87099', 'VICTORIA', 'DOS MIL', '2315', NULL, 'VICTORIA'),
(211, 1, 27, 'CANELO', '87078', 'VICTORIA', 'FRACC. LAS FLORES', '207', NULL, 'VICTORIA'),
(212, 1, 27, 'XX', 'XX', 'VICTORIA', 'XX', 'XX', NULL, 'VICTORIA'),
(214, 1, 27, 'ARTICULO 123', '87049', 'VICTORIA', 'FIDEL VELAZQUEZ SANCHEZ INFONAVIT', '189', NULL, 'VICTORIA'),
(215, 1, 27, 'PALACIO DE GOBIERNO', '87000', 'VICTORIA', 'CENTRO', 'S/N', NULL, 'VICTORIA'),
(216, 1, 27, '18 ALEJANDRO PRIETO Y CONRADO CASTILLO', '87150', 'VICTORIA', 'ZONA CENTRO', '1431-A', NULL, 'VICTORIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domiciliotipo`
--

CREATE TABLE `domiciliotipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `domiciliotipo`
--

INSERT INTO `domiciliotipo` (`id`, `nombre`) VALUES
(2, 'Fiscal'),
(1, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `id_rfc` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_logo` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `id_rfc`, `id_tipo`, `id_logo`, `nombre`, `alias`, `telefono`, `email`, `activo`) VALUES
(1, NULL, 1, NULL, 'Publicarte', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresatipo`
--

CREATE TABLE `empresatipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresatipo`
--

INSERT INTO `empresatipo` (`id`, `nombre`) VALUES
(1, 'Comercio'),
(2, 'Restaurante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esquemapago`
--

CREATE TABLE `esquemapago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `esquemapago`
--

INSERT INTO `esquemapago` (`id`, `nombre`, `activo`) VALUES
(1, 'Contado', 1),
(2, 'Crédito', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`, `activo`) VALUES
(1, 'Aguascalientes', 1),
(2, 'Baja California', 1),
(3, 'Baja California Sur', 1),
(4, 'Campeche', 1),
(5, 'Chiapas', 1),
(6, 'Chihuahua', 1),
(7, 'Ciudad de México', 1),
(8, 'Coahuila', 1),
(9, 'Colima', 1),
(10, 'Durango', 1),
(11, 'Guanajuato', 1),
(12, 'Guerrero', 1),
(13, 'Hidalgo', 1),
(14, 'Jalisco', 1),
(15, 'Michoacán', 1),
(16, 'Morelos', 1),
(17, 'Nayarit', 1),
(18, 'Nuevo León', 1),
(19, 'Oaxaca', 1),
(20, 'Puebla', 1),
(21, 'Querétaro', 1),
(22, 'Quintana Roo', 1),
(23, 'San Luis Potosí', 1),
(24, 'Sinaloa', 1),
(25, 'Sonora', 1),
(26, 'Tabasco', 1),
(27, 'Tamaulipas', 1),
(28, 'Tlaxcala', 1),
(29, 'Veracruz', 1),
(30, 'Yucatán', 1),
(31, 'Zacatecas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `id_facturaestado` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `folio` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `xmlsello` longtext COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturaestado`
--

CREATE TABLE `facturaestado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `facturaestado`
--

INSERT INTO `facturaestado` (`id`, `nombre`, `activo`) VALUES
(1, 'No cobrada', 1),
(2, 'Cobrada', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nombrearchivo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `titulo`, `descripcion`, `path`, `nombrearchivo`, `activo`) VALUES
(3, NULL, NULL, '/var/www/html/pospublicarte/repositorio/imagenes/firma/96e7bb0e17e3f10a84b7fd6d554931ec.jpg', '96e7bb0e17e3f10a84b7fd6d554931ec.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresionopcion`
--

CREATE TABLE `impresionopcion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `impresionopcion`
--

INSERT INTO `impresionopcion` (`id`, `nombre`, `activo`) VALUES
(1, 'Pegado', 1),
(2, 'Grapado', 1),
(3, 'Pleca de corte', 1),
(4, 'Hotmelt', 1),
(5, 'Doblado', 1),
(6, 'Suaje', 1),
(7, 'Barniz UV', 1),
(8, 'Plastificado Mate', 1),
(9, 'Plastificado Brillante', 1),
(10, 'Inicial', 1),
(11, 'Intermedio 1', 1),
(12, 'Intermedio 2', 1),
(13, 'Intermedio 3', 1),
(14, 'Final', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`id`, `nombre`, `activo`) VALUES
(1, 'GTO', 1),
(2, 'QUICK', 1),
(3, 'SID', 1),
(4, 'HD', 1),
(5, 'PLOTTER', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopago`
--

CREATE TABLE `mediopago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `satclave` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_metodopago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mediopago`
--

INSERT INTO `mediopago` (`id`, `nombre`, `satclave`, `activo`, `id_metodopago`) VALUES
(1, '01 - Efectivo', '01', 1, 1),
(2, '02 - Cheque', '02', 1, 1),
(3, '03 - Transferencia', '03', 1, 1),
(4, 'Por definir', '99', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` decimal(12,2) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`id`, `nombre`, `activo`) VALUES
(1, 'PUE', 1),
(2, 'PPD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `simbolo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `satclave` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`id`, `nombre`, `simbolo`, `satclave`, `activo`) VALUES
(1, 'Pesos', 'MXN', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_contacto` int(11) DEFAULT NULL,
  `id_moneda` int(11) NOT NULL,
  `id_ordenestado` int(11) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `motivocancelacion` longtext COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL,
  `fechaentrega` datetime NOT NULL,
  `fecharecepcion` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `block` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medidaimpresion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `papel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cotizacion` int(11) DEFAULT NULL,
  `foliofactura` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `especial` tinyint(1) NOT NULL DEFAULT '0',
  `id_usocfdi` int(11) DEFAULT NULL,
  `id_metodopago` int(11) DEFAULT NULL,
  `id_mediopago` int(11) DEFAULT NULL,
  `folio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observaciones` longtext COLLATE utf8_unicode_ci,
  `id_tipo` int(11) DEFAULT NULL,
  `id_maquina` int(11) DEFAULT NULL,
  `colorcfb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colorcf` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colorinicial` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id`, `id_usuario`, `id_empresa`, `id_sucursal`, `id_seccion`, `id_cliente`, `id_contacto`, `id_moneda`, `id_ordenestado`, `subtotal`, `iva`, `total`, `motivocancelacion`, `fecha`, `fechaentrega`, `fecharecepcion`, `activo`, `block`, `medidaimpresion`, `papel`, `id_cotizacion`, `foliofactura`, `especial`, `id_usocfdi`, `id_metodopago`, `id_mediopago`, `folio`, `observaciones`, `id_tipo`, `id_maquina`, `colorcfb`, `colorcf`, `colorinicial`) VALUES
(39, 3, 1, 1, NULL, 21, 20, 1, 10, '5950.00', '952.00', '6902.00', NULL, '2018-02-24 18:01:16', '2018-02-27 00:00:00', '2018-02-24 18:01:16', 1, NULL, NULL, NULL, NULL, '9837', 0, 2, 2, 4, NULL, 'SE ROTULARAN LAS BANCAS DEL ESTADIO, EVENTO ES EN LA TARDE A LAS 7:00 EL PARTIDO Y DEBEN DE ESTAR LISTAS.', 2, 5, NULL, NULL, NULL),
(40, 3, 1, 1, NULL, 23, 21, 1, 10, '5700.00', '912.00', '6612.00', NULL, '2018-02-24 18:48:05', '2018-02-26 00:00:00', '2018-02-24 18:48:05', 1, NULL, NULL, NULL, NULL, '9701', 0, 2, 2, 4, NULL, 'EVENTO DE REYNOSA.....ENTREGAR EN ROLLO Y CON CARTON.', 2, 5, NULL, NULL, NULL),
(41, 3, 1, 1, NULL, 23, 21, 1, 10, '5700.00', '912.00', '6612.00', NULL, '2018-02-24 18:49:46', '2018-02-26 00:00:00', '2018-02-24 18:49:46', 1, NULL, NULL, NULL, NULL, '9702', 0, 2, 2, 4, NULL, 'EVENTO MATAMOROS....SE ENTREGA EN DIF TAMATAN CON CARTON LA LONA.', 2, 5, NULL, NULL, NULL),
(42, 3, 1, 1, NULL, 24, 22, 1, 8, '400.00', '64.00', '464.00', NULL, '2018-02-24 19:07:42', '2018-02-24 00:00:00', '2018-02-24 19:07:42', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LONA BASTILLA Y OJILLOS......2 PIEZAS DEL MISMO DISEÑO.', 2, 5, NULL, NULL, NULL),
(43, 3, 1, 1, NULL, 23, 21, 1, 10, '600.00', '96.00', '696.00', NULL, '2018-02-26 03:29:24', '2018-03-08 00:00:00', '2018-02-26 03:29:24', 1, NULL, '70X30', 'VINIL HD COROPLAST', NULL, '9759', 0, 2, 2, 4, NULL, 'DISEÑO ABRASANDO FAMILIAS', 2, 4, NULL, NULL, NULL),
(44, 3, 1, 1, NULL, 23, 21, 1, 10, '12900.00', '2064.00', '14964.00', NULL, '2018-02-26 03:31:10', '2018-03-08 00:00:00', '2018-02-26 03:31:10', 1, NULL, '10 X 10 CM', 'ALUMINIO SUBLIMADO', NULL, '9679', 0, 2, 2, 4, NULL, 'LOGO DIF TAMAULIPAS', 2, 5, NULL, NULL, NULL),
(45, 3, 1, 1, NULL, 23, 21, 1, 10, '10800.00', '1728.00', '12528.00', NULL, '2018-02-26 03:33:34', '2018-02-26 00:00:00', '2018-02-26 03:33:34', 1, NULL, '6 X 6 CM', 'ALUMINIO SUBLIMADO', NULL, '9678', 0, 2, 2, 4, NULL, 'LOGO DIF TAMAULIPAS', 2, 5, NULL, NULL, NULL),
(46, 3, 1, 1, NULL, 23, 21, 1, 10, '117000.00', '18720.00', '135720.00', NULL, '2018-02-26 03:37:19', '2018-02-26 00:00:00', '2018-02-26 03:37:19', 1, NULL, NULL, NULL, NULL, '9936', 0, 2, 2, 4, NULL, 'LOGO DIF TAMAULIPAS LO MAS GRANDE POSIBLE', 1, NULL, NULL, NULL, NULL),
(47, 3, 1, 1, NULL, 23, 21, 1, 10, '58500.00', '9360.00', '67860.00', NULL, '2018-02-26 03:45:58', '2018-02-28 00:00:00', '2018-02-26 03:45:58', 1, NULL, NULL, NULL, NULL, '9934', 0, 2, 2, 4, NULL, 'LOGO DIF TAMAULIPAS', 1, NULL, NULL, NULL, NULL),
(48, 3, 1, 1, NULL, 23, 21, 1, 10, '79000.00', '12640.00', '91640.00', NULL, '2018-02-26 03:47:44', '2018-02-27 00:00:00', '2018-02-26 03:47:44', 1, NULL, NULL, NULL, NULL, '9760', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(49, 3, 1, 1, NULL, 23, 21, 1, 10, '209000.00', '33440.00', '242440.00', NULL, '2018-02-26 03:50:19', '2018-03-15 00:00:00', '2018-02-26 03:50:19', 1, NULL, '15 X 18|', 'CARTULINA SULFATADA 18 PTS', NULL, '9761', 0, 2, 2, 4, NULL, 'SE PONDRA CARTULINA DOBLE PARA QUE SE OCULTE EL PALITO DE MADERA', 4, 1, NULL, NULL, NULL),
(50, 3, 1, 1, NULL, 23, 21, 1, 10, '69500.00', '11120.00', '80620.00', NULL, '2018-02-26 03:55:26', '2018-03-08 00:00:00', '2018-02-26 03:55:26', 1, NULL, NULL, 'TABLA Y BARAJAS CARTULINA SULFATADA DE 14 PTS', NULL, '9777', 0, 2, 2, 4, NULL, 'SE ENTREGARAN EN BOLSAS DE PLASTICO CADA PAQUETE CON LA PORTADILLA GRAPADA', 4, 1, NULL, NULL, NULL),
(51, 3, 1, 1, NULL, 23, 21, 1, 10, '3000.00', '480.00', '3480.00', NULL, '2018-02-26 03:58:10', '2018-02-26 00:00:00', '2018-02-26 03:58:10', 1, NULL, NULL, NULL, NULL, '9896', 0, 2, 2, 4, NULL, 'DISEÑO RECONSTRUYENDO ESPERANZAS', 2, 4, NULL, NULL, NULL),
(52, 3, 1, 1, NULL, 23, 21, 1, 10, '12345.00', '1975.20', '14320.20', NULL, '2018-02-26 04:00:42', '2018-03-08 00:00:00', '2018-02-26 04:00:42', 1, NULL, NULL, NULL, NULL, '9982', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(53, 3, 1, 1, NULL, 23, 21, 1, 10, '700.00', '112.00', '812.00', NULL, '2018-02-26 04:03:51', '2018-03-08 00:00:00', '2018-02-26 04:03:51', 1, NULL, NULL, NULL, NULL, '9762', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(54, 3, 1, 1, NULL, 23, 21, 1, 10, '550.00', '88.00', '638.00', NULL, '2018-02-26 04:05:49', '2018-03-08 00:00:00', '2018-02-26 04:05:49', 1, NULL, NULL, NULL, NULL, '9932', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(55, 3, 1, 1, NULL, 23, 21, 1, 10, '750.00', '120.00', '870.00', NULL, '2018-02-26 04:07:21', '2018-03-01 00:00:00', '2018-02-26 04:07:21', 1, NULL, NULL, NULL, NULL, '9895', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(56, 3, 1, 1, NULL, 23, 21, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-02-26 04:09:13', '2018-03-01 00:00:00', '2018-02-26 04:09:13', 1, NULL, NULL, NULL, NULL, '9894', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(57, 3, 1, 1, NULL, 26, 23, 1, 10, '30700.00', '4912.00', '35612.00', NULL, '2018-02-26 16:41:54', '2018-03-02 00:00:00', '2018-02-26 16:41:54', 1, NULL, NULL, NULL, NULL, '9714', 0, 2, 2, 4, NULL, 'ENTREGAR EN ALMACEN DE LA UAT 8 Y 9 BLVD PRAXEDIS BALBOA 905A', 1, NULL, NULL, NULL, NULL),
(58, 3, 1, 1, NULL, 28, 25, 1, 10, '144.00', '23.04', '167.04', NULL, '2018-02-26 19:04:41', '2018-03-08 00:00:00', '2018-02-26 19:04:41', 1, NULL, '1.20 x 1', NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS.', 2, 3, NULL, NULL, NULL),
(59, 3, 1, 1, NULL, 31, 26, 1, 11, '240.00', '38.40', '278.40', NULL, '2018-02-26 19:16:36', '2018-02-27 00:00:00', '2018-02-26 19:16:36', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'LONA QUE SE OCUPA MAÑANA MARTES 9:00 A.M.', 2, 5, NULL, NULL, NULL),
(60, 3, 1, 1, NULL, 29, 29, 1, 10, '13400.00', '2144.00', '15544.00', NULL, '2018-02-26 22:42:38', '2018-02-27 00:00:00', '2018-02-26 22:42:38', 1, NULL, NULL, NULL, NULL, '9754', 0, 2, 2, 4, NULL, 'SE INSTALARAN EN SUS SUCURSALES', 2, 3, NULL, NULL, NULL),
(61, 3, 1, 1, NULL, 27, 24, 1, 8, '15200.00', '2432.00', '17632.00', NULL, '2018-02-26 22:55:49', '2018-02-28 00:00:00', '2018-02-26 22:55:49', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE INSTALA EL 28 DE FEBRERO EN ESCUELA CLUB DE LEONES..... CONTACTO MARCO 8341674060\r\nOFICIO 139', 2, 3, NULL, NULL, NULL),
(62, 3, 1, 1, NULL, 27, 24, 1, 8, '26100.00', '4176.00', '30276.00', NULL, '2018-02-26 23:06:07', '2018-02-28 00:00:00', '2018-02-26 23:06:07', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 142', 2, 4, NULL, NULL, NULL),
(63, 3, 1, 1, NULL, 27, 24, 1, 8, '3120.00', '499.20', '3619.20', NULL, '2018-02-26 23:13:43', '2018-02-28 00:00:00', '2018-02-26 23:13:43', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 168\r\nSE ENTREGARA EN ESCUELA CLUB DE LEONES.EL DIA 28 DE FEBRERO', 2, 3, NULL, NULL, NULL),
(64, 3, 1, 1, NULL, 23, 21, 1, 10, '30500.00', '4880.00', '35380.00', NULL, '2018-02-26 23:37:23', '2018-02-28 00:00:00', '2018-02-26 23:37:23', 1, NULL, NULL, NULL, NULL, '9790 y 9791', 0, 2, 2, 4, NULL, 'SE ENTREGARA A LAS 9:00 A.M.', 2, 3, NULL, NULL, NULL),
(65, 3, 1, 1, NULL, 27, 24, 1, 8, '9730.00', '1556.80', '11286.80', NULL, '2018-02-27 00:08:02', '2018-02-28 00:00:00', '2018-02-27 00:08:02', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LOS ACRILICOS LOS MANDAN DE MTY, AQUI SUBLIMAMOS LA LAMINA.', 5, NULL, NULL, NULL, NULL),
(66, 3, 1, 1, NULL, 37, 33, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-02-27 04:43:23', '2018-02-23 00:00:00', '2018-02-27 04:43:23', 1, NULL, NULL, NULL, NULL, '9743', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(67, 3, 1, 1, NULL, 38, 34, 1, 11, '2737.00', '437.92', '3174.92', NULL, '2018-02-27 04:49:20', '2018-03-09 00:00:00', '2018-02-27 04:49:20', 1, NULL, NULL, NULL, NULL, '9697, 9698', 0, 2, 2, 4, NULL, 'MISMO DISEÑO DE ANIVERSARIO.', 1, NULL, NULL, NULL, NULL),
(68, 3, 1, 1, NULL, 39, 35, 1, 10, '3800.00', '608.00', '4408.00', NULL, '2018-02-27 04:55:36', '2018-02-26 00:00:00', '2018-02-27 04:55:36', 1, NULL, NULL, NULL, NULL, '9748', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(69, 3, 1, 1, NULL, 40, 39, 1, 10, '1350.00', '216.00', '1566.00', NULL, '2018-02-27 05:11:44', '2018-02-22 00:00:00', '2018-02-27 05:11:44', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130 GRAMOS', NULL, '9744', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(70, 3, 1, 1, NULL, 29, 40, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-02-27 05:16:59', '2018-02-22 00:00:00', '2018-02-27 05:16:59', 1, NULL, 'CARTA', 'PAPEL OPALINA', NULL, '9754', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(71, 3, 1, 1, NULL, 29, 40, 1, 10, '2800.00', '448.00', '3248.00', NULL, '2018-02-27 05:19:12', '2018-02-22 00:00:00', '2018-02-27 05:19:12', 1, NULL, 'CARTA', 'PAPEL OPALINA', NULL, '9754', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(72, 3, 1, 1, NULL, 40, 37, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-02-27 05:21:05', '2018-02-22 00:00:00', '2018-02-27 05:21:05', 1, NULL, 'DOBLE CARTA', 'COUCHE DE 130 GRAMOS', NULL, '9745', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(73, 3, 1, 1, NULL, 20, 19, 1, 10, '1660.00', '265.60', '1925.60', NULL, '2018-02-27 05:25:03', '2018-03-02 00:00:00', '2018-02-27 05:25:03', 1, '100', '1/2 CARTA', 'AUTOCOPIA', NULL, '9536', 0, 1, 2, 4, '19,001-21,000', 'MISMO DISEÑO YA AUTORIAZADO', 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(74, 3, 1, 1, NULL, 20, 19, 1, 10, '1890.00', '302.40', '2192.40', NULL, '2018-02-27 05:27:49', '2018-03-02 00:00:00', '2018-02-27 05:27:49', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9536', 0, 1, 2, 4, '13,001.16,000', 'MISMO DISEÑO', 4, 2, NULL, 'ROSA', 'BLANCO'),
(75, 3, 1, 1, NULL, 20, 19, 1, 10, '1260.00', '201.60', '1461.60', NULL, '2018-02-27 05:30:07', '2018-03-02 00:00:00', '2018-02-27 05:30:07', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9536', 0, 1, 2, 4, '13,001 AL 15,000', 'MISMO DISEÑO YA AUTORIZADO', 4, 2, NULL, 'ROSA', 'BLANCO'),
(76, 3, 1, 1, NULL, 20, 19, 1, 10, '15000.00', '2400.00', '17400.00', NULL, '2018-02-27 05:36:32', '2018-03-05 00:00:00', '2018-02-27 05:36:32', 1, NULL, '47X18 MM', NULL, NULL, '9897', 0, 1, 2, 4, NULL, 'DISEÑO PENDIENTE DE ENTREGAR SR EDUARDO....NOMBRES DE DOCTORES', 2, NULL, NULL, NULL, NULL),
(77, 3, 1, 1, NULL, 41, 42, 1, 10, '2100.00', '336.00', '2436.00', NULL, '2018-02-27 16:05:50', '2018-02-23 00:00:00', '2018-02-27 16:05:50', 1, NULL, '3.00 X .25', 'VINIL BLANCO', 27, '9859', 0, 2, 2, 4, NULL, 'SE DEBERA ENTREGAR EN ROLLO', 2, 4, NULL, NULL, NULL),
(78, 3, 1, 1, NULL, 40, 37, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-02-27 17:26:14', '2018-02-26 00:00:00', '2018-02-27 17:26:14', 1, NULL, 'CUARTO DE CARTA', 'COUCHE DE 130 G', NULL, '9746', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(79, 3, 1, 1, NULL, 40, 44, 1, 11, '6480.00', '1036.80', '7516.80', NULL, '2018-02-27 18:03:48', '2018-02-27 00:00:00', '2018-02-27 18:03:48', 1, NULL, NULL, NULL, NULL, '9690', 0, 2, 2, 4, NULL, 'ORDEN DE COMPRA TRANSPAIS 14458', 3, NULL, NULL, NULL, NULL),
(80, 3, 1, 1, NULL, 29, 40, 1, 10, '3750.00', '600.00', '4350.00', NULL, '2018-02-27 18:46:42', '2018-02-27 00:00:00', '2018-02-27 18:46:42', 1, NULL, 'CARTA', 'BOND 75 GRAMOS', NULL, '9754', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(81, 3, 1, 1, NULL, 40, 37, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-02-27 18:48:16', '2018-02-28 00:00:00', '2018-02-27 18:48:16', 1, NULL, 'CUARTO DE CARTA', 'COUCHE DE 130 G', NULL, '9747', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(82, 3, 1, 1, NULL, 35, 32, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-02-27 20:33:45', '2018-03-01 00:00:00', '2018-02-27 20:33:45', 1, NULL, '10 X 14 CM', 'BRISTOL', NULL, '9757', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(83, 3, 1, 1, NULL, 35, 32, 1, 10, '6000.00', '960.00', '6960.00', NULL, '2018-02-27 20:37:12', '2018-03-09 00:00:00', '2018-02-27 20:37:12', 1, NULL, '14 X 20 CM', 'BRISTOL', NULL, '9757', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(84, 3, 1, 1, NULL, 35, 32, 1, 10, '1350.00', '216.00', '1566.00', NULL, '2018-02-28 15:12:33', '2018-03-01 00:00:00', '2018-02-28 15:12:33', 1, NULL, '28 X 8 CM', 'ADESIVO MATE', NULL, '9757', 0, 2, 2, 4, NULL, 'CABE 2 PIEZAS POR HOJA TAMAÑO CARTA', 2, 1, NULL, NULL, NULL),
(85, 3, 1, 1, NULL, 35, 32, 1, 10, '9450.00', '1512.00', '10962.00', NULL, '2018-02-28 15:22:22', '2018-03-02 00:00:00', '2018-02-28 15:22:22', 1, NULL, NULL, NULL, NULL, '9757', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(86, 3, 1, 1, NULL, 19, 49, 1, 10, '3034.46', '485.51', '3519.97', NULL, '2018-02-28 17:41:25', '2018-02-28 00:00:00', '2018-02-28 17:41:25', 1, NULL, NULL, NULL, NULL, NULL, 1, 3, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(87, 3, 1, 1, NULL, 49, 51, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-02-28 17:51:23', '2018-02-28 00:00:00', '2018-02-28 17:51:23', 1, NULL, NULL, NULL, NULL, 'ZP 332', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(88, 3, 1, 1, NULL, 50, 53, 1, 11, '1558.60', '249.38', '1807.98', NULL, '2018-02-28 18:00:27', '2018-02-28 00:00:00', '2018-02-28 18:00:27', 1, NULL, NULL, NULL, NULL, '9700', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(89, 3, 1, 1, NULL, 51, 54, 1, 11, '540.00', '86.40', '626.40', NULL, '2018-02-28 18:05:40', '2018-02-27 00:00:00', '2018-02-28 18:05:40', 1, NULL, NULL, NULL, NULL, '9703', 0, 2, 1, 1, NULL, NULL, 2, 3, NULL, NULL, NULL),
(90, 3, 1, 1, NULL, 52, 55, 1, 11, '1800.00', '288.00', '2088.00', NULL, '2018-02-28 18:12:34', '2018-02-28 00:00:00', '2018-02-28 18:12:34', 1, NULL, NULL, NULL, NULL, '9695', 0, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(91, 3, 1, 1, NULL, 54, 56, 1, 10, '8360.70', '1337.71', '9698.41', NULL, '2018-02-28 18:23:40', '2018-02-28 00:00:00', '2018-02-28 18:23:40', 1, NULL, NULL, NULL, NULL, '9694', 0, 1, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(92, 3, 1, 1, NULL, 55, 57, 1, 8, '2490.00', '398.40', '2888.40', NULL, '2018-02-28 18:27:11', '2018-03-07 00:00:00', '2018-02-28 18:27:11', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'MISMO DISEÑO TE LO ENVIE AL CORREO.', 1, NULL, NULL, NULL, NULL),
(93, 3, 1, 1, NULL, 57, 61, 1, 8, '63000.00', '10080.00', '73080.00', NULL, '2018-02-28 19:23:26', '2018-03-02 00:00:00', '2018-02-28 19:23:26', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130 GRAMOS', NULL, NULL, 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(94, 3, 1, 1, NULL, 35, 32, 1, 10, '3600.00', '576.00', '4176.00', NULL, '2018-02-28 19:28:34', '2018-03-02 00:00:00', '2018-02-28 19:28:34', 1, NULL, 'CARTA', 'COUCHE 250', NULL, '9757', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(95, 7, 1, 1, NULL, 58, NULL, 1, 10, '1140.00', '182.40', '1322.40', NULL, '2018-02-28 19:55:39', '2018-03-10 00:00:00', '2018-02-28 19:55:39', 1, NULL, NULL, NULL, NULL, '9693', 0, 2, 1, 3, NULL, NULL, 2, 5, NULL, NULL, NULL),
(96, 10, 1, 1, NULL, 34, 31, 1, 10, '8500.00', '1360.00', '9860.00', NULL, '2018-02-28 21:38:30', '2018-03-05 00:00:00', '2018-02-28 21:38:30', 1, NULL, NULL, NULL, 31, '9922', 0, NULL, NULL, NULL, NULL, 'SE RENTA DEL DIA 5 DE MARZO AL 11 DE MARZO DEL 2018', NULL, NULL, NULL, NULL, NULL),
(97, 10, 1, 1, NULL, 34, 31, 1, 10, '9900.00', '1584.00', '11484.00', NULL, '2018-02-28 21:40:56', '2018-03-01 00:00:00', '2018-02-28 21:40:56', 1, NULL, NULL, NULL, 33, '1 vinil 9921, 1 vinil 9922', 0, 2, 2, 4, NULL, 'SE INTALARAN EN LOS VIDRIOS DE LA TIENDA.', 2, 4, NULL, NULL, NULL),
(98, 3, 1, 1, NULL, 23, 62, 1, 10, '37550.00', '6008.00', '43558.00', NULL, '2018-02-28 21:58:13', '2018-03-08 00:00:00', '2018-02-28 21:58:13', 1, NULL, NULL, NULL, NULL, '9959', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(99, 3, 1, 1, NULL, 48, 52, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-02-28 22:02:38', '2018-03-07 00:00:00', '2018-02-28 22:02:38', 1, '50', '1/4 DE CARTA', 'AUTOCOPIA', NULL, '9753', 0, 2, 2, 4, '4,001-6,000', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(100, 3, 1, 1, NULL, 50, 53, 1, 11, '1700.00', '272.00', '1972.00', NULL, '2018-02-28 23:58:17', '2018-03-01 00:00:00', '2018-02-28 23:58:17', 1, NULL, 'MEDIA CARTA', 'SELECCION COLOR', NULL, '9733', 0, 1, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(101, 3, 1, 1, NULL, 50, 53, 1, 11, '1800.00', '288.00', '2088.00', NULL, '2018-03-01 00:06:39', '2018-03-01 00:00:00', '2018-03-01 00:06:39', 1, NULL, 'CARTA', 'COUCHE 130 G', NULL, '9732', 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(103, 3, 1, 1, NULL, 27, 24, 1, 10, '14800.00', '2368.00', '17168.00', NULL, '2018-03-01 17:03:42', '2018-03-01 00:00:00', '2018-03-01 17:03:42', 1, NULL, 'CARTA FINAL', 'COUCHE DE 300 GRAMOS', NULL, '344', 0, 2, 2, 4, NULL, 'OFICIO 523', 1, NULL, NULL, NULL, NULL),
(104, 3, 1, 1, NULL, 24, 22, 1, 8, '550.00', '88.00', '638.00', NULL, '2018-03-01 17:15:19', '2018-03-03 00:00:00', '2018-03-01 17:15:19', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS.', 2, 3, NULL, NULL, NULL),
(105, 3, 1, 1, NULL, 62, 64, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-01 17:21:39', '2018-03-01 00:00:00', '2018-03-01 17:21:39', 1, NULL, 'CARTA', 'BOND 75 G', NULL, '9786', 0, 1, 2, 4, NULL, 'SE ENTREGAN HOY..... SIN DOBLAR.', 4, 1, NULL, NULL, NULL),
(106, 3, 1, 1, NULL, 27, 24, 1, 10, '35400.00', '5664.00', '41064.00', NULL, '2018-03-01 17:26:32', '2018-03-01 00:00:00', '2018-03-01 17:26:32', 1, NULL, NULL, NULL, NULL, '347', 0, 2, 2, 4, NULL, 'OFICIO 521', 5, NULL, NULL, NULL, NULL),
(107, 3, 1, 1, NULL, 27, 63, 1, 10, '6500.00', '1040.00', '7540.00', NULL, '2018-03-01 17:28:34', '2018-03-01 00:00:00', '2018-03-01 17:28:34', 1, NULL, NULL, NULL, NULL, '361', 0, 2, 2, 4, NULL, 'OFICIO 425\r\nCONCURSO BANDA DE GUERRA', 2, 3, NULL, NULL, NULL),
(108, 3, 1, 1, NULL, 27, 24, 1, 8, '3900.00', '624.00', '4524.00', NULL, '2018-03-01 17:33:18', '2018-02-23 00:00:00', '2018-03-01 17:33:18', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 345\r\nCONCURSO DE ORATORIA SENTIMIENTO....', 2, 3, NULL, NULL, NULL),
(109, 3, 1, 1, NULL, 27, 24, 1, 10, '7800.00', '1248.00', '9048.00', NULL, '2018-03-01 17:34:42', '2018-02-23 00:00:00', '2018-03-01 17:34:42', 1, NULL, NULL, NULL, NULL, '343', 0, 2, 2, 4, NULL, 'OFICIO 039\r\nCONCURSO DE ORATORIA SENTIMIENTO...', 2, 3, NULL, NULL, NULL),
(110, 7, 1, 1, NULL, 64, NULL, 1, 8, '560.00', '89.60', '649.60', NULL, '2018-03-01 17:45:41', '2018-03-01 00:00:00', '2018-03-01 17:45:41', 1, NULL, NULL, NULL, NULL, NULL, 0, 3, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(111, 3, 1, 1, NULL, 27, 63, 1, 10, '8570.00', '1371.20', '9941.20', NULL, '2018-03-01 17:52:39', '2018-02-20 00:00:00', '2018-03-01 17:52:39', 1, NULL, NULL, NULL, NULL, '350', 0, 2, 2, 4, NULL, 'OFICIO 145', 2, 3, NULL, NULL, NULL),
(112, 3, 1, 1, NULL, 27, 24, 1, 10, '1380.00', '220.80', '1600.80', NULL, '2018-03-01 17:59:16', '2018-02-21 00:00:00', '2018-03-01 17:59:16', 1, NULL, NULL, NULL, NULL, '349', 0, 2, 2, 4, NULL, 'OFICIO 455', 2, 3, NULL, NULL, NULL),
(113, 10, 1, 1, NULL, 63, NULL, 1, 10, '9600.00', '1536.00', '11136.00', NULL, '2018-03-01 18:00:47', '2018-03-11 00:00:00', '2018-03-01 18:00:47', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 GRAMOS', NULL, '9793', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(114, 3, 1, 1, NULL, 27, 63, 1, 10, '3900.00', '624.00', '4524.00', NULL, '2018-03-01 18:01:21', '2018-02-15 00:00:00', '2018-03-01 18:01:21', 1, NULL, NULL, NULL, NULL, '343', 0, 2, 2, 4, NULL, 'OFICIO 032', 2, 3, NULL, NULL, NULL),
(115, 3, 1, 1, NULL, 27, 63, 1, 10, '1380.00', '220.80', '1600.80', NULL, '2018-03-01 18:07:24', '2018-02-13 00:00:00', '2018-03-01 18:07:24', 1, NULL, NULL, NULL, NULL, '348', 0, 2, 2, 4, NULL, 'OFICIO 070', 2, 3, NULL, NULL, NULL),
(116, 3, 1, 1, NULL, 27, 63, 1, 10, '6500.00', '1040.00', '7540.00', NULL, '2018-03-01 18:08:34', '2018-02-15 00:00:00', '2018-03-01 18:08:34', 1, NULL, NULL, NULL, NULL, '363', 0, 2, 2, 4, NULL, 'OFICIO 035', 2, 3, NULL, NULL, NULL),
(117, 3, 1, 1, NULL, 27, 63, 1, 10, '2470.00', '395.20', '2865.20', NULL, '2018-03-01 18:10:36', '2018-02-15 00:00:00', '2018-03-01 18:10:36', 1, NULL, NULL, NULL, NULL, '352', 0, 2, 2, 4, NULL, 'FOLIO 375', 2, 4, NULL, NULL, NULL),
(118, 10, 1, 1, NULL, 63, NULL, 1, 10, '695.00', '111.20', '806.20', NULL, '2018-03-01 18:10:54', '2018-03-11 00:00:00', '2018-03-01 18:10:54', 1, 'C/50', '1/2 CARTA', 'AUTOCOPIA', NULL, '9793', 0, 2, 2, 4, '2,501 AL 3,000', NULL, 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(119, 3, 1, 1, NULL, 27, 63, 1, 10, '3900.00', '624.00', '4524.00', NULL, '2018-03-01 18:12:42', '2018-02-10 00:00:00', '2018-03-01 18:12:42', 1, NULL, NULL, NULL, NULL, '345', 0, 2, 2, 4, NULL, 'FOLIO 316', 2, 3, NULL, NULL, NULL),
(120, 3, 1, 1, NULL, 27, 66, 1, 8, '4800.00', '768.00', '5568.00', NULL, '2018-03-01 18:21:06', '2018-02-14 00:00:00', '2018-03-01 18:21:06', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 316', 2, 3, NULL, NULL, NULL),
(121, 10, 1, 1, NULL, 63, NULL, 1, 10, '2780.00', '444.80', '3224.80', NULL, '2018-03-01 18:21:46', '2018-03-11 00:00:00', '2018-03-01 18:21:46', 1, '50', '1/2 CARTA', 'AUTOCOPIA', NULL, '9793', 0, 2, 2, 4, '9,001 AL 11,000', NULL, 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(122, 7, 1, 1, NULL, 64, NULL, 1, 7, '2750.00', '440.00', '3190.00', NULL, '2018-03-01 18:24:36', '2018-03-02 00:00:00', '2018-03-01 18:24:36', 1, NULL, NULL, NULL, NULL, NULL, 0, 3, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(123, 3, 1, 1, NULL, 27, 63, 1, 10, '6500.00', '1040.00', '7540.00', NULL, '2018-03-01 18:27:57', '2018-02-16 00:00:00', '2018-03-01 18:27:57', 1, NULL, NULL, NULL, NULL, '341', 0, 2, 2, 4, NULL, 'OFICIO 12', 2, 3, NULL, NULL, NULL),
(124, 3, 1, 1, NULL, 27, 66, 1, 8, '1280.00', '204.80', '1484.80', NULL, '2018-03-01 18:30:23', '2018-02-21 00:00:00', '2018-03-01 18:30:23', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(125, 7, 1, 1, NULL, 64, NULL, 1, 8, '450.00', '72.00', '522.00', NULL, '2018-03-01 18:36:56', '2018-03-02 00:00:00', '2018-03-01 18:36:56', 1, NULL, NULL, NULL, NULL, NULL, 0, 3, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(126, 10, 1, 1, NULL, 63, NULL, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-01 18:42:40', '2018-03-11 00:00:00', '2018-03-01 18:42:40', 1, '50C/U', '1/2 CARTA', 'BRISTOL', NULL, '9793', 0, 2, 2, 4, '29,801 AL 31,800', NULL, 4, 2, NULL, NULL, NULL),
(127, 14, 1, 1, NULL, 65, NULL, 1, 11, '379.30', '60.69', '439.99', NULL, '2018-03-01 19:04:28', '2018-03-11 00:00:00', '2018-03-01 19:04:28', 1, NULL, NULL, NULL, NULL, '9765', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(128, 7, 1, 1, NULL, 67, NULL, 1, 10, '4500.00', '720.00', '5220.00', NULL, '2018-03-01 19:41:45', '2018-03-31 00:00:00', '2018-03-01 19:41:45', 1, NULL, NULL, NULL, 42, '9974', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 10, 1, 1, NULL, 61, NULL, 1, 10, '6465.00', '1034.40', '7499.40', NULL, '2018-03-01 20:16:21', '2018-03-31 00:00:00', '2018-03-01 20:16:21', 1, NULL, NULL, NULL, 40, '9711', 0, 1, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(130, 10, 1, 1, NULL, 63, NULL, 1, 10, '2085.00', '333.60', '2418.60', NULL, '2018-03-01 22:40:08', '2018-03-11 00:00:00', '2018-03-01 22:40:08', 1, 'C/50', '1/3 CARTA', 'AUTOCOPIA', NULL, '9995', 0, 2, 2, 4, '3,001 AL 4,500', NULL, 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(131, 7, 1, 1, NULL, 68, NULL, 1, 10, '2790.00', '446.40', '3236.40', NULL, '2018-03-01 22:47:35', '2018-03-05 00:00:00', '2018-03-01 22:47:35', 1, NULL, NULL, NULL, NULL, '9627', 0, 1, 1, 2, NULL, NULL, 2, 4, NULL, NULL, NULL),
(132, 3, 1, 1, NULL, 27, 63, 1, 8, '8900.00', '1424.00', '10324.00', NULL, '2018-03-02 04:11:24', '2018-01-19 00:00:00', '2018-03-02 04:11:24', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 08', 2, 3, NULL, NULL, NULL),
(133, 3, 1, 1, NULL, 27, 63, 1, 8, '3500.00', '560.00', '4060.00', NULL, '2018-03-02 04:16:30', '2018-01-10 00:00:00', '2018-03-02 04:16:30', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIOP 5495', 4, 1, NULL, NULL, NULL),
(134, 3, 1, 1, NULL, 27, 63, 1, 8, '1200.00', '192.00', '1392.00', NULL, '2018-03-02 04:19:40', '2017-12-19 00:00:00', '2018-03-02 04:19:40', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO BECAS', 4, 3, NULL, NULL, NULL),
(135, 3, 1, 1, NULL, 27, 63, 1, 8, '21000.00', '3360.00', '24360.00', NULL, '2018-03-02 04:22:52', '2017-12-14 00:00:00', '2018-03-02 04:22:52', 1, NULL, 'CARTA', 'COUCHE 130 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'REIMPRESION', 4, 1, NULL, NULL, NULL),
(136, 3, 1, 1, NULL, 27, 63, 1, 10, '6000.00', '960.00', '6960.00', NULL, '2018-03-02 04:24:54', '2017-12-15 00:00:00', '2018-03-02 04:24:54', 1, NULL, NULL, NULL, NULL, 'ZP 334', 0, 2, 2, 4, NULL, 'OFICIO 2021', 2, 3, NULL, NULL, NULL),
(137, 3, 1, 1, NULL, 27, 66, 1, 10, '4500.00', '720.00', '5220.00', NULL, '2018-03-02 04:26:33', '2017-12-13 00:00:00', '2018-03-02 04:26:33', 1, NULL, 'OFICIO', 'COUCHE 130 GRAMOS', NULL, 'ZP 335', 0, 2, 2, 4, NULL, 'CARRERA ADMINISTRATIVA', 4, 1, NULL, NULL, NULL),
(138, 3, 1, 1, NULL, 27, 63, 1, 10, '26100.00', '4176.00', '30276.00', NULL, '2018-03-02 04:28:45', '2017-12-08 00:00:00', '2018-03-02 04:28:45', 1, NULL, NULL, NULL, NULL, 'ZP 333', 0, 2, 2, 4, NULL, 'SEP VIDIROS NAVIDAD', 2, 4, NULL, NULL, NULL),
(139, 3, 1, 1, NULL, 27, 63, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-02 04:30:23', '2017-12-11 00:00:00', '2018-03-02 04:30:23', 1, NULL, 'CARTA', 'CARTULINA OPALINA', NULL, 'ZP 336', 0, 2, 2, 4, NULL, 'FOLIO 5468', 4, 1, NULL, NULL, NULL),
(140, 3, 1, 1, NULL, 27, 63, 1, 8, '3800.00', '608.00', '4408.00', NULL, '2018-03-02 04:33:48', '2017-12-12 00:00:00', '2018-03-02 04:33:48', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 5467', 2, 4, NULL, NULL, NULL),
(141, 3, 1, 1, NULL, 27, 66, 1, 8, '5940.00', '950.40', '6890.40', NULL, '2018-03-02 04:39:02', '2017-11-17 00:00:00', '2018-03-02 04:39:02', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 5118...FIETAS PATRR', 4, 3, NULL, NULL, NULL),
(142, 3, 1, 1, NULL, 27, 63, 1, 8, '2700.00', '432.00', '3132.00', NULL, '2018-03-02 04:44:26', '2017-09-23 00:00:00', '2018-03-02 04:44:26', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'RELACION DE TRABAJO 113', 3, NULL, NULL, NULL, NULL),
(143, 3, 1, 1, NULL, 27, 66, 1, 8, '3250.00', '520.00', '3770.00', NULL, '2018-03-02 04:46:24', '2017-09-26 00:00:00', '2018-03-02 04:46:24', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'CENTRO DE ACOPIO', 2, 3, NULL, NULL, NULL),
(144, 3, 1, 1, NULL, 27, 63, 1, 8, '8500.00', '1360.00', '9860.00', NULL, '2018-03-02 04:49:16', '2017-08-18 00:00:00', '2018-03-02 04:49:16', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'NO TENGO NUMERO DE OFICIO', 2, 3, NULL, NULL, NULL),
(145, 3, 1, 1, NULL, 27, 63, 1, 8, '9800.00', '1568.00', '11368.00', NULL, '2018-03-02 04:50:59', '2017-07-19 00:00:00', '2018-03-02 04:50:59', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'ARRANQUE DE ESCUELAS DE VERANO TAM 2017', 2, 3, NULL, NULL, NULL),
(146, 3, 1, 1, NULL, 47, 60, 1, 8, '6930.00', '1108.80', '8038.80', NULL, '2018-03-02 04:55:25', '2017-12-18 00:00:00', '2018-03-02 04:55:25', 1, NULL, 'CARTA', 'COUCHE DE 300', NULL, NULL, 0, 2, 2, 4, NULL, 'SE ENTREGARON EN LASSER POR QUE LAS OTRAS SE HICIERON SIN FORMA POR QUE ASI LO DIJO LA SUB.', 4, 1, NULL, NULL, NULL),
(147, 3, 1, 1, NULL, 47, 60, 1, 8, '2500.00', '400.00', '2900.00', NULL, '2018-03-02 04:57:12', '2017-12-06 00:00:00', '2018-03-02 04:57:12', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(148, 3, 1, 1, NULL, 71, 67, 1, 8, '67130.00', '10740.80', '77870.80', NULL, '2018-03-02 05:10:19', '2018-02-16 00:00:00', '2018-03-02 05:10:19', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(149, 3, 1, 1, NULL, 71, 67, 1, 8, '34500.00', '5520.00', '40020.00', NULL, '2018-03-02 05:12:04', '2018-01-23 00:00:00', '2018-03-02 05:12:04', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(150, 3, 1, 1, NULL, 71, 67, 1, 8, '37500.00', '6000.00', '43500.00', NULL, '2018-03-02 05:13:44', '2018-01-17 00:00:00', '2018-03-02 05:13:44', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(151, 3, 1, 1, NULL, 71, 67, 1, 10, '57500.00', '9200.00', '66700.00', NULL, '2018-03-02 05:14:55', '2017-12-22 00:00:00', '2018-03-02 05:14:55', 1, NULL, NULL, NULL, NULL, '9723', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(152, 3, 1, 1, NULL, 71, 67, 1, 10, '57500.00', '9200.00', '66700.00', NULL, '2018-03-02 05:16:40', '2017-12-20 00:00:00', '2018-03-02 05:16:40', 1, NULL, NULL, NULL, NULL, '9723', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(153, 3, 1, 1, NULL, 72, 68, 1, 11, '1000.00', '160.00', '1160.00', NULL, '2018-03-02 15:10:41', '2018-03-02 00:00:00', '2018-03-02 15:10:41', 1, NULL, NULL, NULL, NULL, '9755', 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(154, 3, 1, 1, NULL, 23, 21, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-02 16:21:52', '2018-03-02 00:00:00', '2018-03-02 16:21:52', 1, NULL, NULL, NULL, NULL, '9933', 0, 2, 2, 4, NULL, 'LAS LONAS SE ENTREGARAN EL DIA DE HOY EN LA TARDE SINO HAY ALMACEN CON EL GUARDIA EN CALZA TAMATAN', 2, 3, NULL, NULL, NULL),
(155, 3, 1, 1, NULL, 24, 22, 1, 8, '1750.00', '280.00', '2030.00', NULL, '2018-03-02 16:27:51', '2018-03-05 00:00:00', '2018-03-02 16:27:51', 1, NULL, 'DOBLE CARTA', 'COUCHE DE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(156, 3, 1, 1, NULL, 35, 32, 1, 10, '14000.00', '2240.00', '16240.00', NULL, '2018-03-02 16:34:50', '2018-03-08 00:00:00', '2018-03-02 16:34:50', 1, NULL, NULL, NULL, NULL, '9917', 0, 2, 2, 4, NULL, 'SE INSTALA EN PLAZA CAMPESTRE EL DIA 8 YA SE HABLO CON JUAN CARLOS (HERRERO)', 2, 3, NULL, NULL, NULL),
(157, 7, 1, 1, NULL, 73, NULL, 1, 11, '120.00', '19.20', '139.20', NULL, '2018-03-02 16:42:44', '2018-03-12 00:00:00', '2018-03-02 16:42:44', 1, NULL, NULL, NULL, NULL, '9738', 0, 2, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(158, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-02 16:53:45', '2018-03-02 00:00:00', '2018-03-02 16:53:45', 1, NULL, 'DOBLE CARTA', 'BOND 75 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'CLIENTE TRAJO PAPEL', 4, 1, NULL, NULL, NULL),
(159, 10, 1, 1, NULL, 29, 40, 1, 10, '4500.00', '720.00', '5220.00', NULL, '2018-03-02 17:11:18', '2018-03-12 00:00:00', '2018-03-02 17:11:18', 1, '50C/U', '1/3 CARTA', 'AUTOCOPIA', NULL, '10000', 0, 2, 2, 4, '69,001 AL 74,000', NULL, 4, 2, 'CELESTE', 'VERDE', 'BLANCO'),
(160, 10, 1, 1, NULL, 29, 40, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-03-02 17:16:46', '2018-03-12 00:00:00', '2018-03-02 17:16:46', 1, NULL, NULL, NULL, NULL, '9817', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(161, 3, 1, 1, NULL, 27, 24, 1, 10, '3804.00', '608.64', '4412.64', NULL, '2018-03-02 18:03:36', '2018-03-02 00:00:00', '2018-03-02 18:03:36', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 GRAMOS', NULL, '360', 0, 2, 2, 4, NULL, 'OFICIO 456.... VA EN 3 ORDENES DE TRABAJO', 4, 1, NULL, NULL, NULL),
(162, 3, 1, 1, NULL, 35, 32, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-02 21:03:24', '2018-03-05 00:00:00', '2018-03-02 21:03:24', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130 G', NULL, '9758', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(163, 3, 1, 1, NULL, 27, 24, 1, 10, '3108.00', '497.28', '3605.28', NULL, '2018-03-02 21:06:07', '2018-03-02 00:00:00', '2018-03-02 21:06:07', 1, NULL, 'CARTA', 'COUCHE DE 130 G', NULL, '360', 0, 2, 2, 4, NULL, 'OFICIO 456...VA EN 3 ORDENES', 4, 1, NULL, NULL, NULL),
(164, 3, 1, 1, NULL, 48, 52, 1, 10, '5938.50', '950.16', '6888.66', NULL, '2018-03-02 21:09:44', '2018-03-03 00:00:00', '2018-03-02 21:09:44', 1, NULL, NULL, NULL, NULL, '9988, 9989, 9990, 9991', 0, 2, 2, 4, NULL, 'NIÑO CH50, G20\r\nJUVENIL CH30, G30\r\nADULTO CH20', 1, NULL, NULL, NULL, NULL),
(165, 3, 1, 1, NULL, 19, 70, 1, 11, '870.00', '139.20', '1009.20', NULL, '2018-03-02 21:16:52', '2018-03-03 00:00:00', '2018-03-02 21:16:52', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, 'SE ENTREGAN ANTES DE LAS 11:30', 2, 4, NULL, NULL, NULL),
(166, 10, 1, 1, NULL, 50, 53, 1, 11, '10400.00', '1664.00', '12064.00', NULL, '2018-03-02 22:58:33', '2018-03-12 00:00:00', '2018-03-02 22:58:33', 1, NULL, 'MEDIA CARTA', 'COUCHE 130 GRAMOS', NULL, '9734, 9735, 9736, 9737', 0, 1, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(167, 10, 1, 1, NULL, 50, 53, 1, 11, '1300.00', '208.00', '1508.00', NULL, '2018-03-02 23:04:14', '2018-03-12 00:00:00', '2018-03-02 23:04:14', 1, NULL, 'MEDIA CARTA', 'COUCHE 130 GRAMOS', NULL, '9731', 0, 1, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(168, 3, 1, 1, NULL, 31, 26, 1, 10, '240.00', '38.40', '278.40', NULL, '2018-03-02 23:30:19', '2018-03-03 00:00:00', '2018-03-02 23:30:19', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'LA OCUPAN A LAS 9 DE LA MAÑANA', 2, 3, NULL, NULL, NULL),
(169, 3, 1, 1, NULL, 62, 64, 1, 10, '4400.00', '704.00', '5104.00', NULL, '2018-03-02 23:37:14', '2018-03-03 00:00:00', '2018-03-02 23:37:14', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130', NULL, '9786', 0, 1, 2, 4, NULL, 'DISEÑO DE ALITAS', 4, 1, NULL, NULL, NULL),
(170, 3, 1, 1, NULL, 26, 71, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-03-02 23:42:56', '2018-02-23 00:00:00', '2018-03-02 23:42:56', 1, NULL, 'CARTA', 'BOND Y SEGURIDAD', NULL, '9751', 0, 2, 2, 4, NULL, 'SE ENTREGARAN SIN INTERCALAR', 4, 1, 'SEGURIDAD VERDE', 'SEGURIDAD AMARILLO', 'BOND BLANCO'),
(171, 3, 1, 1, NULL, 26, 71, 1, 10, '370.00', '59.20', '429.20', NULL, '2018-03-02 23:47:48', '2018-02-23 00:00:00', '2018-03-02 23:47:48', 1, NULL, 'CARTA', 'MANILA FOLDER', NULL, '9751', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(172, 3, 1, 1, NULL, 26, 71, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-03-02 23:50:32', '2018-03-08 00:00:00', '2018-03-02 23:50:32', 1, NULL, 'CARTA', 'BOND 75 G', NULL, '9751', 0, 2, 2, 4, NULL, 'MISMO DISEÑO DE LAS HOJAS MEMBRETADAS CON PAPEL SEGURIDAD', 4, 1, NULL, NULL, NULL),
(173, 8, 1, 1, NULL, 74, 69, 1, 6, '700.00', '112.00', '812.00', NULL, '2018-03-03 01:02:30', '2018-03-05 00:00:00', '2018-03-03 01:02:30', 1, 'en cajitas', '5 x 9 cm.', 'cartulina opalina blanca', NULL, NULL, 0, 2, 2, 4, 'sin folio', 'la impresion de las 2 tintas es realzada', 4, 2, NULL, NULL, NULL),
(174, 3, 1, 1, NULL, 19, 72, 1, 11, '2410.00', '385.60', '2795.60', NULL, '2018-03-03 05:35:33', '2018-03-02 00:00:00', '2018-03-03 05:35:33', 1, NULL, 'CARTA', 'COUCHE DE 300 G', NULL, NULL, 1, 2, 1, 1, NULL, 'BARNIZ UV FRENTE', 4, 1, NULL, NULL, NULL),
(175, 10, 1, 1, NULL, 76, NULL, 1, 11, '23400.00', '3744.00', '27144.00', NULL, '2018-03-05 16:25:14', '2018-03-10 00:00:00', '2018-03-05 16:25:14', 1, NULL, NULL, NULL, NULL, '9766, 9767, 9768', 0, 2, 1, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(176, 3, 1, 1, NULL, 29, 74, 1, 10, '1350.00', '216.00', '1566.00', NULL, '2018-03-05 17:05:03', '2018-03-06 00:00:00', '2018-03-05 17:05:03', 1, NULL, '1.20X1.56', 'VINIL HD', NULL, '9817', 0, 2, 2, 4, NULL, 'SE INSTALARAN EN MATRIZ.... PRESENTARSE CON EL LIC SIDDARTHA ABREGO.', 2, 4, NULL, NULL, NULL),
(177, 3, 1, 1, NULL, 24, 22, 1, 8, '550.00', '88.00', '638.00', NULL, '2018-03-05 17:08:46', '2018-03-06 00:00:00', '2018-03-05 17:08:46', 1, NULL, '2.26 X 2.26', 'LONA', NULL, NULL, 0, 2, 2, 4, NULL, 'LA OCUPAN MAÑANA MUY TEMPRANO....CICLO DE CONFERENCIA DANIEL.', 2, 3, NULL, NULL, NULL),
(178, 3, 1, 1, NULL, 35, 32, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-03-05 17:19:30', '2018-03-08 00:00:00', '2018-03-05 17:19:30', 1, NULL, '14 X 20 CM', 'BRISTOL 58 KG', NULL, '9757', 0, 2, 2, 4, NULL, 'DISEÑO OUTLET', 4, 1, NULL, NULL, NULL),
(179, 7, 1, 1, NULL, 59, NULL, 1, 10, '3400.00', '544.00', '3944.00', NULL, '2018-03-05 18:15:37', '2018-03-08 00:00:00', '2018-03-05 18:15:37', 1, NULL, NULL, NULL, 48, '9888', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(180, 10, 1, 1, NULL, 78, NULL, 1, 11, '1200.00', '192.00', '1392.00', NULL, '2018-03-05 18:24:31', '2018-03-15 00:00:00', '2018-03-05 18:24:31', 1, '100 C/U', '11.02 X 10.07', 'BOND 75 GRAMOS', NULL, '9769', 0, 2, 1, 1, '0001 AL 12,000', NULL, 4, 2, NULL, NULL, NULL),
(181, 3, 1, 1, NULL, 55, 57, 1, 10, '2413.79', '386.21', '2800.00', NULL, '2018-03-05 18:33:46', '2018-03-01 00:00:00', '2018-03-05 18:33:46', 1, NULL, NULL, NULL, NULL, '9726', 0, 2, 2, 4, NULL, 'SE ENTREGO EL TRABAJO EN  SEPTIEMBRE DEL AÑO PASADO.\r\nSE HICIERON 500 TARJETAS DE PRESENTACION Y QUEDABA UN SALDO DE 823.60\r\nY TAMBIEN LAS LONAS DE LOS SOLDADOS QUE ERA 2,041.60', 2, 3, NULL, NULL, NULL),
(182, 3, 1, 1, NULL, 55, 57, 1, 10, '5280.00', '844.80', '6124.80', NULL, '2018-03-05 18:36:00', '2018-03-09 00:00:00', '2018-03-05 18:36:00', 1, NULL, NULL, NULL, NULL, '9725', 0, 2, 2, 4, NULL, 'ORDEN DE GOBIERNO 4560278123', 2, 5, NULL, NULL, NULL),
(183, 3, 1, 1, NULL, 55, 57, 1, 10, '5320.00', '851.20', '6171.20', NULL, '2018-03-05 18:39:41', '2018-03-09 00:00:00', '2018-03-05 18:39:41', 1, NULL, NULL, NULL, NULL, '9724', 0, 2, 2, 4, NULL, 'ORDEN DE GOBIERNO 4560278127', 2, 5, NULL, NULL, NULL),
(185, 3, 1, 1, NULL, 71, 67, 1, 8, '252565.00', '40410.40', '292975.40', NULL, '2018-03-05 19:51:44', '2018-04-04 00:00:00', '2018-03-05 19:51:44', 1, NULL, NULL, NULL, 50, NULL, 0, NULL, NULL, NULL, NULL, 'SOLO SE HARAN AQUI EN TALLER BORDADO .... LAS GORRAS EN SUBLIMADO Y BORDADAS.', NULL, NULL, NULL, NULL, NULL),
(187, 8, 1, 1, NULL, 80, 75, 1, 11, '1547.00', '247.52', '1794.52', NULL, '2018-03-05 20:08:17', '2018-03-15 00:00:00', '2018-03-05 20:08:17', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(191, 7, 1, 1, NULL, 19, 213, 1, 10, '2380.00', '380.80', '2760.80', NULL, '2018-03-05 20:44:25', '2018-03-08 00:00:00', '2018-03-05 20:44:25', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(192, 3, 1, 1, NULL, 35, 32, 1, 10, '25000.00', '4000.00', '29000.00', NULL, '2018-03-05 20:52:07', '2018-03-09 00:00:00', '2018-03-05 20:52:07', 1, NULL, '50 X 34 CM', 'COUCHE DE 115 G', NULL, '9917', 0, 2, 2, 4, NULL, 'SE ENTREGAN DOBLADOS.', 4, 1, NULL, NULL, NULL),
(193, 3, 1, 1, NULL, 24, 22, 1, 8, '550.00', '88.00', '638.00', NULL, '2018-03-05 22:40:55', '2018-03-06 00:00:00', '2018-03-05 22:40:55', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, '12 OJILLOS ALREDEDOR DE TODA LA LONA.....DISEÑO AEROSHOW', 2, 3, NULL, NULL, NULL),
(194, 3, 1, 1, NULL, 84, 78, 1, 10, '1320.00', '211.20', '1531.20', NULL, '2018-03-05 23:16:57', '2018-03-08 00:00:00', '2018-03-05 23:16:57', 1, NULL, '1/4 DE CARTA', 'BOND', NULL, '9820', 0, 2, 2, 4, '001-6000', NULL, 4, 2, NULL, NULL, NULL),
(195, 3, 1, 1, NULL, 85, 79, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-03-05 23:26:21', '2018-03-09 00:00:00', '2018-03-05 23:26:21', 1, '100', '1/4 DE CARTA ESPECIAL', 'BOND', NULL, '9857', 0, 2, 2, 4, 'Z 7001 A  Z 11,000', NULL, 4, 1, NULL, NULL, 'BOND'),
(196, 3, 1, 1, NULL, 85, 79, 1, 10, '14175.00', '2268.00', '16443.00', NULL, '2018-03-05 23:33:09', '2018-03-09 00:00:00', '2018-03-05 23:33:09', 1, '50', '10X25', 'AUTOCOPIA', NULL, '9857', 0, 2, 2, 4, 'M 9,501- M 20,000', NULL, 4, 1, 'VERDE', 'AMARILLO', 'BLANCO'),
(197, 3, 1, 1, NULL, 85, 79, 1, 10, '2100.00', '336.00', '2436.00', NULL, '2018-03-05 23:35:38', '2018-03-09 00:00:00', '2018-03-05 23:35:38', 1, '100', 'CARTA', 'BOND', NULL, '9857', 0, 2, 2, 4, 'M 2001 AL M 4000', NULL, 4, 1, NULL, NULL, 'BOND'),
(198, 11, 1, 1, NULL, 19, 80, 1, 11, '310.34', '49.65', '359.99', NULL, '2018-03-06 00:33:14', '2018-03-05 00:00:00', '2018-03-06 00:33:14', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(199, 11, 1, 1, NULL, 40, 44, 1, 10, '3432.00', '549.12', '3981.12', NULL, '2018-03-06 15:58:48', '2018-02-28 00:00:00', '2018-03-06 15:58:48', 1, NULL, NULL, NULL, NULL, '9728', 0, 2, 2, 4, NULL, 'NO LLEVA BORDADO', 3, NULL, NULL, NULL, NULL),
(201, 3, 1, 1, NULL, 19, 83, 1, 10, '1000.00', '160.00', '1160.00', NULL, '2018-03-06 17:36:41', '2018-03-09 00:00:00', '2018-03-06 17:36:41', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(202, 3, 1, 1, NULL, 20, 19, 1, 10, '1160.00', '185.60', '1345.60', NULL, '2018-03-06 17:43:02', '2018-03-09 00:00:00', '2018-03-06 17:43:02', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9897', 0, 1, 2, 4, '13,001 AL 15,000', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(203, 3, 1, 1, NULL, 19, 84, 1, 3, '250.00', '40.00', '290.00', NULL, '2018-03-06 17:49:52', '2018-03-10 00:00:00', '2018-03-06 17:49:52', 1, NULL, 'VINIL TRANSPARENTE', '7 X 2.5', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(205, 3, 1, 1, NULL, 27, 63, 1, 10, '3900.00', '624.00', '4524.00', NULL, '2018-03-06 18:17:30', '2018-03-12 00:00:00', '2018-03-06 18:17:30', 1, NULL, NULL, NULL, NULL, '340', 0, 2, 2, 4, NULL, 'EVENTO EL DIA 13 DE MARZO.....HABLAR CON JORGE RODRIGUEZ\r\nPARA VER DONDE SE VA A INSTALAR\r\n\r\nFOLIO 347', 2, 3, NULL, NULL, NULL),
(206, 3, 1, 1, NULL, 19, 86, 1, 11, '17200.00', '2752.00', '19952.00', NULL, '2018-03-06 18:29:28', '2018-03-09 00:00:00', '2018-03-06 18:29:28', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'LAS PULSERAS SE HICIERON EN  MTY.', 1, NULL, NULL, NULL, NULL),
(207, 3, 1, 1, NULL, 47, 60, 1, 10, '660.00', '105.60', '765.60', NULL, '2018-03-06 18:39:02', '2018-03-09 00:00:00', '2018-03-06 18:39:02', 1, NULL, NULL, NULL, NULL, '9740', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(208, 3, 1, 1, NULL, 47, 60, 1, 10, '660.00', '105.60', '765.60', NULL, '2018-03-06 18:41:01', '2018-03-09 00:00:00', '2018-03-06 18:41:01', 1, NULL, NULL, NULL, NULL, '9741', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(209, 3, 1, 1, NULL, 47, 60, 1, 10, '460.00', '73.60', '533.60', NULL, '2018-03-06 18:41:52', '2018-03-09 00:00:00', '2018-03-06 18:41:52', 1, NULL, NULL, NULL, NULL, '9742', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(210, 3, 1, 1, NULL, 27, 24, 1, 8, '3000.00', '480.00', '3480.00', NULL, '2018-03-06 20:03:55', '2018-03-07 00:00:00', '2018-03-06 20:03:55', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 037 FOLIO 664\r\nEVENTO MIERCOLES7 DE MARZO....SENTIMIENTO JUARISTA', 1, NULL, NULL, NULL, NULL),
(211, 3, 1, 1, NULL, 27, 24, 1, 8, '3000.00', '480.00', '3480.00', NULL, '2018-03-06 20:05:29', '2018-03-07 00:00:00', '2018-03-06 20:05:29', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 37 FOLIO 665\r\nEVENTO SENTIMIENTO JUARISTA', 1, NULL, NULL, NULL, NULL),
(212, 14, 1, 1, NULL, 105, 99, 1, 10, '603.48', '96.56', '700.04', NULL, '2018-03-06 22:59:30', '2018-03-16 00:00:00', '2018-03-06 22:59:30', 1, NULL, NULL, NULL, NULL, '9828', 0, 3, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(213, 3, 1, 1, NULL, 72, 68, 1, 11, '900.00', '144.00', '1044.00', NULL, '2018-03-06 23:31:52', '2018-03-07 00:00:00', '2018-03-06 23:31:52', 1, NULL, 'OFICIO', 'BOND', NULL, '9755', 0, 1, 2, 4, NULL, 'FRENTE Y REVERSO LLEVA REGISTRO.....', 4, 1, NULL, NULL, NULL),
(214, 8, 1, 1, NULL, 98, 93, 1, 10, '600.00', '96.00', '696.00', NULL, '2018-03-07 00:22:06', '2018-03-10 00:00:00', '2018-03-07 00:22:06', 1, NULL, NULL, NULL, NULL, '9845', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(215, 11, 1, 1, NULL, 99, 94, 1, 10, '5000.00', '800.00', '5800.00', NULL, '2018-03-07 00:27:18', '2018-03-06 00:00:00', '2018-03-07 00:27:18', 1, NULL, NULL, NULL, NULL, '9749', 0, 2, 1, 2, NULL, NULL, 4, 1, NULL, NULL, NULL),
(216, 3, 1, 1, NULL, 101, 95, 1, 11, '14350.00', '2296.00', '16646.00', NULL, '2018-03-07 03:58:48', '2018-03-09 00:00:00', '2018-03-07 03:58:48', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'SE ENTREGAN EL VIERNES POR LA MAÑANA POR QUE SE LAS LLEVAN A ZACATECAS', 1, NULL, NULL, NULL, NULL),
(217, 3, 1, 1, NULL, 102, NULL, 1, 11, '2030.00', '324.80', '2354.80', NULL, '2018-03-07 04:44:47', '2018-03-09 00:00:00', '2018-03-07 04:44:47', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(218, 7, 1, 1, NULL, 93, 89, 1, 3, '36750.00', '5880.00', '42630.00', NULL, '2018-03-07 16:18:42', '2018-03-21 00:00:00', '2018-03-07 16:18:42', 1, 'CORTADOS', '12 X 5.5 CM.', 'VINIL', 60, NULL, 0, 2, 1, 3, NULL, NULL, 2, 5, NULL, NULL, NULL),
(219, 7, 1, 1, NULL, 93, 89, 1, 8, '3980.00', '636.80', '4616.80', NULL, '2018-03-07 16:19:07', '2018-04-16 00:00:00', '2018-03-07 16:19:07', 1, NULL, 'CARTA', 'SEGURIDAD', 59, NULL, 0, 2, 1, 3, NULL, 'SE IMPRIMIRA EN MARCA DE AGUA..... CUIDAR SEGUN LA MUESTRA', 4, 1, NULL, NULL, NULL),
(220, 3, 1, 1, NULL, 40, 37, 1, 10, '70.00', '11.20', '81.20', NULL, '2018-03-07 17:03:31', '2018-03-09 00:00:00', '2018-03-07 17:03:31', 1, NULL, 'CARTA', 'OPALINA', NULL, '9840', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(221, 3, 1, 1, NULL, 103, NULL, 1, 10, '7600.00', '1216.00', '8816.00', NULL, '2018-03-07 17:22:48', '2018-03-13 00:00:00', '2018-03-07 17:22:48', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(222, 3, 1, 1, NULL, 27, 24, 1, 8, '9260.00', '1481.60', '10741.60', NULL, '2018-03-07 17:53:35', '2018-03-08 00:00:00', '2018-03-07 17:53:35', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE INSTAL EN EL SALON POLIVALENTE DE LA TORRE BOULEVARD.\r\nOFICIO 822', 2, 3, NULL, NULL, NULL),
(223, 3, 1, 1, NULL, 27, 24, 1, 8, '39655.00', '6344.80', '45999.80', NULL, '2018-03-07 17:55:38', '2018-03-08 00:00:00', '2018-03-07 17:55:38', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 599\r\nLAS PLUMAS NO LLEVARAN IMPRESION POR ESTA VEZ', 4, 1, NULL, NULL, NULL),
(224, 10, 1, 1, NULL, 34, 31, 1, 8, '1000.00', '160.00', '1160.00', NULL, '2018-03-07 18:44:36', '2018-03-08 00:00:00', '2018-03-07 18:44:36', 1, '-', '3.60 X 2.00 METROS', 'VINIL', NULL, NULL, 0, 2, 2, 4, '-', 'INSTALACION MAÑANA 8 DE MARZO ANTES DE LAS 11 AM', 2, 4, NULL, NULL, NULL),
(225, 3, 1, 1, NULL, 108, 102, 1, 10, '792.00', '126.72', '918.72', NULL, '2018-03-07 21:07:10', '2018-03-09 00:00:00', '2018-03-07 21:07:10', 1, NULL, NULL, NULL, NULL, '9826', 0, 1, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(226, 3, 1, 1, NULL, 27, 24, 1, 8, '3500.00', '560.00', '4060.00', NULL, '2018-03-07 21:16:36', '2018-03-08 00:00:00', '2018-03-07 21:16:36', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 167  \r\nSE ENTREGAN SOLO LAS LONAS', 2, 3, NULL, NULL, NULL),
(227, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-07 23:34:47', '2018-03-15 00:00:00', '2018-03-07 23:34:47', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(228, 3, 1, 1, NULL, 57, 61, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-03-07 23:35:38', '2018-03-15 00:00:00', '2018-03-07 23:35:38', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(229, 10, 1, 1, NULL, 86, 81, 1, 10, '4500.00', '720.00', '5220.00', NULL, '2018-03-07 23:37:50', '2018-03-08 00:00:00', '2018-03-07 23:37:50', 1, NULL, '4 X 2 METROS', 'LONA', NULL, '9752', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(230, 8, 1, 1, NULL, 109, 103, 1, 6, '1500.00', '240.00', '1740.00', NULL, '2018-03-08 01:13:28', '2018-03-18 00:00:00', '2018-03-08 01:13:28', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(232, 3, 1, 1, NULL, 72, 68, 1, 11, '3360.00', '537.60', '3897.60', NULL, '2018-03-08 14:42:49', '2018-03-18 00:00:00', '2018-03-08 14:42:49', 1, NULL, 'CARTA', 'AUTOCOPIA', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(233, 3, 1, 1, NULL, 72, 68, 1, 11, '1180.00', '188.80', '1368.80', NULL, '2018-03-08 14:44:50', '2018-03-18 00:00:00', '2018-03-08 14:44:50', 1, NULL, 'CARTA', '´BOND 75G', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(234, 7, 1, 1, NULL, 72, 68, 1, 11, '1480.00', '236.80', '1716.80', NULL, '2018-03-08 14:56:07', '2018-03-18 00:00:00', '2018-03-08 14:56:07', 1, '50', 'oficio', 'BOND', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(235, 7, 1, 1, NULL, 72, 68, 1, 11, '3360.00', '537.60', '3897.60', NULL, '2018-03-08 15:03:47', '2018-03-18 00:00:00', '2018-03-08 15:03:47', 1, '50', 'CARTA', 'AUTO', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(236, 7, 1, 1, NULL, 72, 68, 1, 11, '5860.00', '937.60', '6797.60', NULL, '2018-03-08 15:09:43', '2018-03-18 00:00:00', '2018-03-08 15:09:43', 1, NULL, 'CARTA', 'BOND', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(237, 7, 1, 1, NULL, 72, 68, 1, 11, '2000.00', '320.00', '2320.00', NULL, '2018-03-08 15:14:02', '2018-03-18 00:00:00', '2018-03-08 15:14:02', 1, '100', 'CARTA', 'BOND', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(238, 7, 1, 1, NULL, 72, 68, 1, 11, '2310.00', '369.60', '2679.60', NULL, '2018-03-08 15:17:37', '2018-03-18 00:00:00', '2018-03-08 15:17:37', 1, 'SUELTO', 'OFICIO', 'BOND 90', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(239, 7, 1, 1, NULL, 72, 68, 1, 11, '1200.00', '192.00', '1392.00', NULL, '2018-03-08 15:20:00', '2018-03-18 00:00:00', '2018-03-08 15:20:00', 1, NULL, '12X12', 'COUCHE 2,09.', NULL, '9755', 0, 1, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(240, 7, 1, 1, NULL, 72, 68, 1, 11, '2400.00', '384.00', '2784.00', NULL, '2018-03-08 15:22:17', '2018-03-18 00:00:00', '2018-03-08 15:22:17', 1, '50', 'CARTA', 'AUTO', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(241, 7, 1, 1, NULL, 72, 68, 1, 11, '2400.00', '384.00', '2784.00', NULL, '2018-03-08 15:26:14', '2018-03-18 00:00:00', '2018-03-08 15:26:14', 1, '50', 'CARTA', 'AUTO', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(242, 7, 1, 1, NULL, 72, 68, 1, 11, '3660.00', '585.60', '4245.60', NULL, '2018-03-08 15:31:09', '2018-03-18 00:00:00', '2018-03-08 15:31:09', 1, '50', 'CARTA', 'AUTO', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(243, 7, 1, 1, NULL, 72, 68, 1, 11, '3660.00', '585.60', '4245.60', NULL, '2018-03-08 15:37:51', '2018-03-18 00:00:00', '2018-03-08 15:37:51', 1, '50', 'CARTA', 'AUTO', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL);
INSERT INTO `orden` (`id`, `id_usuario`, `id_empresa`, `id_sucursal`, `id_seccion`, `id_cliente`, `id_contacto`, `id_moneda`, `id_ordenestado`, `subtotal`, `iva`, `total`, `motivocancelacion`, `fecha`, `fechaentrega`, `fecharecepcion`, `activo`, `block`, `medidaimpresion`, `papel`, `id_cotizacion`, `foliofactura`, `especial`, `id_usocfdi`, `id_metodopago`, `id_mediopago`, `folio`, `observaciones`, `id_tipo`, `id_maquina`, `colorcfb`, `colorcf`, `colorinicial`) VALUES
(244, 7, 1, 1, NULL, 72, 68, 1, 11, '4165.00', '666.40', '4831.40', NULL, '2018-03-08 15:42:38', '2018-03-18 00:00:00', '2018-03-08 15:42:38', 1, NULL, 'CARTA', 'BOND 90G', NULL, '9755', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(245, 7, 1, 1, NULL, 72, 68, 1, 11, '1000.00', '160.00', '1160.00', NULL, '2018-03-08 15:48:15', '2018-03-18 00:00:00', '2018-03-08 15:48:15', 1, NULL, NULL, NULL, NULL, '9755', 0, 1, 1, 3, NULL, NULL, 2, 3, NULL, NULL, NULL),
(246, 11, 1, 1, NULL, 75, 73, 1, 10, '11635.00', '1861.60', '13496.60', NULL, '2018-03-08 15:55:17', '2018-03-13 00:00:00', '2018-03-08 15:55:17', 1, NULL, NULL, NULL, NULL, '9794', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(247, 3, 1, 1, NULL, 72, 68, 1, 11, '620.68', '99.31', '719.99', NULL, '2018-03-08 17:07:37', '2018-03-18 00:00:00', '2018-03-08 17:07:37', 1, NULL, NULL, NULL, NULL, '9755', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(248, 14, 1, 1, NULL, 105, 99, 1, 10, '1508.70', '241.39', '1750.09', NULL, '2018-03-08 17:14:53', '2018-03-18 00:00:00', '2018-03-08 17:14:53', 1, NULL, NULL, NULL, NULL, '9829', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(249, 14, 1, 1, NULL, 107, 101, 1, 10, '120.69', '19.31', '140.00', NULL, '2018-03-08 17:17:43', '2018-03-18 00:00:00', '2018-03-08 17:17:43', 1, NULL, NULL, NULL, NULL, '9750', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(250, 8, 1, 1, NULL, 110, 104, 1, 10, '117.50', '18.80', '136.30', NULL, '2018-03-08 17:39:37', '2018-03-09 00:00:00', '2018-03-08 17:39:37', 1, NULL, NULL, NULL, NULL, '9771', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(251, 3, 1, 1, NULL, 111, 105, 1, 10, '700.00', '112.00', '812.00', NULL, '2018-03-08 17:43:54', '2018-03-08 00:00:00', '2018-03-08 17:43:54', 1, NULL, '3.5 X 2.5', NULL, NULL, '9824', 0, 1, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(252, 3, 1, 1, NULL, 111, 105, 1, 10, '3600.00', '576.00', '4176.00', NULL, '2018-03-08 17:46:38', '2018-03-14 00:00:00', '2018-03-08 17:46:38', 1, '50', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9822', 0, 1, 2, 4, '106,001 AL 116,000', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(253, 3, 1, 1, NULL, 50, 53, 1, 10, '10200.00', '1632.00', '11832.00', NULL, '2018-03-08 17:53:53', '2018-03-12 00:00:00', '2018-03-08 17:53:53', 1, NULL, 'CARTA', 'COUCHE DE 130 GRAMOS', NULL, '9774', 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(254, 14, 1, 1, NULL, 112, 106, 1, 10, '120.69', '19.31', '140.00', NULL, '2018-03-08 18:02:33', '2018-03-18 00:00:00', '2018-03-08 18:02:33', 1, NULL, NULL, NULL, NULL, '9739', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(255, 8, 1, 1, NULL, 113, 107, 1, 10, '1508.62', '241.38', '1750.00', NULL, '2018-03-08 19:08:36', '2018-03-02 00:00:00', '2018-03-08 19:08:36', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(256, 7, 1, 1, NULL, 19, 108, 1, 10, '740.00', '118.40', '858.40', NULL, '2018-03-08 19:11:55', '2018-03-18 00:00:00', '2018-03-08 19:11:55', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(258, 3, 1, 1, NULL, 27, 24, 1, 8, '6300.00', '1008.00', '7308.00', NULL, '2018-03-08 19:19:52', '2018-02-21 00:00:00', '2018-03-08 19:19:52', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 524\r\nSE INSTALO EN EL HOTEL ISTAY SALON TAMAULIPAS', 2, 3, NULL, NULL, NULL),
(259, 7, 1, 1, NULL, 19, 109, 1, 10, '646.00', '103.36', '749.36', NULL, '2018-03-08 19:36:42', '2018-03-18 00:00:00', '2018-03-08 19:36:42', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(260, 3, 1, 1, NULL, 27, 63, 1, 8, '4800.00', '768.00', '5568.00', NULL, '2018-03-08 19:41:20', '2018-03-08 00:00:00', '2018-03-08 19:41:20', 1, NULL, 'CUARTO DE CARTA', 'CARTULINA OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(261, 3, 1, 1, NULL, 40, 37, 1, 10, '1300.00', '208.00', '1508.00', NULL, '2018-03-08 19:50:57', '2018-03-18 00:00:00', '2018-03-08 19:50:57', 1, NULL, 'CUARTO DE CARTA', 'CUCHE DE 130 G', NULL, '9841', 0, 2, 2, 4, NULL, '1,000 VOLANTES DE CADA DISEÑO', 4, 1, NULL, NULL, NULL),
(262, 3, 1, 1, NULL, 50, 53, 1, 10, '400.00', '64.00', '464.00', NULL, '2018-03-08 20:16:16', '2018-03-10 00:00:00', '2018-03-08 20:16:16', 1, NULL, NULL, NULL, NULL, '9774', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(263, 3, 1, 1, NULL, 23, 21, 1, 10, '400.00', '64.00', '464.00', NULL, '2018-03-08 20:21:47', '2018-03-18 00:00:00', '2018-03-08 20:21:47', 1, NULL, '8X5CM', 'COUCHE DE 300 G', NULL, '9961', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(264, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-08 20:54:50', '2018-03-18 00:00:00', '2018-03-08 20:54:50', 1, NULL, '12 POR CUADRO', 'HOOPS', NULL, NULL, 0, 2, 2, 4, NULL, 'PENDIENTE FOLIO Y GASOLINERA', 4, 1, NULL, NULL, NULL),
(265, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-08 20:56:26', '2018-03-18 00:00:00', '2018-03-08 20:56:26', 1, NULL, '12 POR CUADRO', 'HOOPS', NULL, NULL, 0, 1, 2, 4, '001-42,000', NULL, 4, 1, NULL, NULL, NULL),
(266, 3, 1, 1, NULL, 35, 32, 1, 10, '770.00', '123.20', '893.20', NULL, '2018-03-08 21:04:02', '2018-03-10 00:00:00', '2018-03-08 21:04:02', 1, NULL, NULL, NULL, NULL, '9917', 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS CADA 30 CM', 2, 3, NULL, NULL, NULL),
(267, 3, 1, 1, NULL, 31, 26, 1, 10, '360.00', '57.60', '417.60', NULL, '2018-03-08 21:16:00', '2018-03-08 00:00:00', '2018-03-08 21:16:00', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(268, 8, 1, 1, NULL, 110, 104, 1, 10, '247.50', '39.60', '287.10', NULL, '2018-03-08 22:51:22', '2018-03-09 00:00:00', '2018-03-08 22:51:22', 1, NULL, NULL, NULL, NULL, '9771', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(269, 8, 1, 1, NULL, 110, 104, 1, 10, '7200.00', '1152.00', '8352.00', NULL, '2018-03-08 23:20:51', '2018-03-18 00:00:00', '2018-03-08 23:20:51', 1, NULL, NULL, NULL, NULL, '9756', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(270, 11, 1, 1, NULL, 114, 110, 1, 11, '900.00', '144.00', '1044.00', NULL, '2018-03-08 23:42:42', '2018-03-15 00:00:00', '2018-03-08 23:42:42', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, 'TALLA 6 NIÑO NUMERO 05\r\nTALLA CH DAMA NUMERO 04\r\nTALLA G    DAMA NUMERO 02 Y 03\r\nTALLA G CABALLERO NUMERO 01', 1, NULL, NULL, NULL, NULL),
(271, 10, 1, 1, NULL, 37, NULL, 1, 10, '27594.00', '4415.04', '32009.04', NULL, '2018-03-09 00:22:27', '2018-03-09 00:00:00', '2018-03-09 00:22:27', 1, NULL, NULL, NULL, NULL, '9773', 0, 2, 1, 2, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(272, 10, 1, 1, NULL, 19, NULL, 1, 10, '120.00', '19.20', '139.20', NULL, '2018-03-09 00:38:51', '2018-03-12 00:00:00', '2018-03-09 00:38:51', 1, NULL, '1 X .65 CM', 'LONA', NULL, NULL, 1, 2, 1, 1, NULL, NULL, 2, 3, NULL, NULL, NULL),
(273, 10, 1, 1, NULL, 108, 102, 1, 10, '64.00', '10.24', '74.24', NULL, '2018-03-09 00:46:05', '2018-03-09 00:00:00', '2018-03-09 00:46:05', 1, NULL, NULL, NULL, NULL, '9826', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(274, 7, 1, 1, NULL, 115, 111, 1, 8, '3650.00', '584.00', '4234.00', NULL, '2018-03-09 00:50:14', '2018-03-09 00:00:00', '2018-03-09 00:50:14', 1, NULL, NULL, NULL, 72, NULL, 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(275, 7, 1, 1, NULL, 115, 111, 1, 10, '34400.00', '5504.00', '39904.00', NULL, '2018-03-09 01:14:50', '2018-03-09 00:00:00', '2018-03-09 01:14:50', 1, NULL, NULL, NULL, 74, 'c- 337', 0, 2, 1, 3, NULL, NULL, 2, 5, NULL, NULL, NULL),
(276, 10, 1, 1, NULL, 116, 112, 1, 11, '1600.00', '256.00', '1856.00', NULL, '2018-03-09 15:59:36', '2018-03-13 00:00:00', '2018-03-09 15:59:36', 1, '100 C/U', '6.5 X 13 CM', 'BOND 75 GRAMOS', NULL, NULL, 1, 2, 1, 1, '001 AL 1000', NULL, 4, 1, NULL, NULL, NULL),
(277, 10, 1, 1, NULL, 34, 31, 1, 8, '1180.00', '188.80', '1368.80', NULL, '2018-03-09 16:30:55', '2018-03-09 00:00:00', '2018-03-09 16:30:55', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(279, 3, 1, 1, NULL, 118, 114, 1, 11, '150.00', '24.00', '174.00', NULL, '2018-03-09 17:03:55', '2018-03-09 00:00:00', '2018-03-09 17:03:55', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 2, 1, NULL, NULL, NULL),
(280, 8, 1, 1, NULL, 117, 113, 1, 10, '650.00', '104.00', '754.00', NULL, '2018-03-09 17:06:17', '2018-03-19 00:00:00', '2018-03-09 17:06:17', 1, 'ENVUELTAS O EMPACADAS EN PAPEL', 'CARTA', 'BOND 75 KGS.', NULL, '9796', 0, 2, 2, 4, 'sin folio', NULL, 4, 2, NULL, NULL, NULL),
(281, 14, 1, 1, NULL, 62, NULL, 1, 11, '189.65', '30.34', '219.99', NULL, '2018-03-09 17:37:16', '2018-03-19 00:00:00', '2018-03-09 17:37:16', 1, NULL, NULL, NULL, NULL, '9764', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(282, 14, 1, 1, NULL, 106, NULL, 1, 11, '500.00', '80.00', '580.00', NULL, '2018-03-09 17:56:00', '2018-03-19 00:00:00', '2018-03-09 17:56:00', 1, NULL, NULL, NULL, NULL, '10009', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(283, 14, 1, 1, NULL, 65, NULL, 1, 11, '189.65', '30.34', '219.99', NULL, '2018-03-09 18:16:42', '2018-03-19 00:00:00', '2018-03-09 18:16:42', 1, NULL, NULL, NULL, NULL, '9765', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(284, 7, 1, 1, NULL, 115, 111, 1, 10, '34400.00', '5504.00', '39904.00', NULL, '2018-03-09 18:42:21', '2018-03-19 00:00:00', '2018-03-09 18:42:21', 1, NULL, NULL, NULL, NULL, '9882', 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(285, 7, 1, 1, NULL, 66, NULL, 1, 8, '7275.00', '1164.00', '8439.00', NULL, '2018-03-09 20:37:18', '2018-03-14 00:00:00', '2018-03-09 20:37:18', 1, NULL, NULL, NULL, 41, NULL, 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(286, 7, 1, 1, NULL, 66, NULL, 1, 8, '1460.00', '233.60', '1693.60', NULL, '2018-03-09 20:56:43', '2018-03-14 00:00:00', '2018-03-09 20:56:43', 1, NULL, NULL, NULL, 41, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(287, 3, 1, 1, NULL, 55, 57, 1, 8, '400.00', '64.00', '464.00', NULL, '2018-03-09 23:11:07', '2018-03-11 00:00:00', '2018-03-09 23:11:07', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'UN SELLO DE REGISTRO CIVIL Y TRANSPORTE PUBLICO.\r\nSE ENTREGA EN LA MAÑANA TEMPRANO', 2, 5, NULL, NULL, NULL),
(288, 8, 1, 1, NULL, 119, 115, 1, 10, '5800.00', '928.00', '6728.00', NULL, '2018-03-09 23:17:05', '2018-03-19 00:00:00', '2018-03-09 23:17:05', 1, '200 BLOCK CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '9838', 0, 2, 2, 4, '42001 AL 52000', 'ESTE FORMATO ES ORDEN DE TRABAJO PARA KM. 4 NO LLEVA ESQUELETO O IMPRESION AL CENTRO,ELLOS LO LLENAN.', 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(290, 3, 1, 1, NULL, 120, 116, 1, 11, '120.00', '19.20', '139.20', NULL, '2018-03-09 23:34:24', '2018-03-11 00:00:00', '2018-03-09 23:34:24', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(291, 3, 1, 1, NULL, 29, 74, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-03-09 23:43:52', '2018-03-11 00:00:00', '2018-03-09 23:43:52', 1, NULL, NULL, NULL, NULL, '9817', 0, 2, 2, 4, NULL, 'SE INSTALARAN EN SAN AGUSTIN Y BODEGA\r\n1 DE CADA DISEÑO EN CADA SUCURSAL.', 2, 3, NULL, NULL, NULL),
(292, 3, 1, 1, NULL, 121, NULL, 1, 8, '35500.00', '5680.00', '41180.00', NULL, '2018-03-09 23:55:29', '2018-03-19 00:00:00', '2018-03-09 23:55:29', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(293, 3, 1, 1, NULL, 29, 74, 1, 10, '3500.00', '560.00', '4060.00', NULL, '2018-03-10 00:05:45', '2018-03-11 00:00:00', '2018-03-10 00:05:45', 1, NULL, NULL, NULL, NULL, '9817', 0, 2, 2, 4, NULL, 'LONA PARA MATAMOROS... LEVAR A SUC BODEGA\r\nBASTILLA Y OJILLOS.', 2, 3, NULL, NULL, NULL),
(294, 8, 1, 1, NULL, 119, 115, 1, 10, '2250.00', '360.00', '2610.00', NULL, '2018-03-10 00:30:42', '2018-03-19 00:00:00', '2018-03-10 00:30:42', 1, '60 BLOCKS CON 50 C/U', '1/2 CARTA', 'AUTOCOPIA', NULL, NULL, 1, 2, 2, 4, '8001 AL 11000', NULL, 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(295, 14, 1, 1, NULL, 105, NULL, 1, 10, '1508.70', '241.39', '1750.09', NULL, '2018-03-10 01:28:27', '2018-03-20 00:00:00', '2018-03-10 01:28:27', 1, NULL, NULL, NULL, NULL, '9830', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(296, 3, 1, 1, NULL, 111, 105, 1, 10, '9450.00', '1512.00', '10962.00', NULL, '2018-03-10 16:27:13', '2018-03-22 00:00:00', '2018-03-10 16:27:13', 1, NULL, NULL, NULL, NULL, '10002', 0, 1, 2, 4, NULL, 'REVISAR BIEN CON CHUY QUE SI SEA ESOS LOS COLORES DE TINTA.', 1, NULL, NULL, NULL, NULL),
(297, 3, 1, 1, NULL, 122, 117, 1, 10, '1650.00', '264.00', '1914.00', NULL, '2018-03-10 16:58:07', '2018-03-13 00:00:00', '2018-03-10 16:58:07', 1, NULL, NULL, NULL, NULL, '9792', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(298, 3, 1, 1, NULL, 23, 21, 1, 10, '5985.00', '957.60', '6942.60', NULL, '2018-03-10 17:05:02', '2018-03-20 00:00:00', '2018-03-10 17:05:02', 1, NULL, NULL, 'ADESIVO DIMASA', NULL, '9961', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(299, 10, 1, 1, NULL, 125, 118, 1, 11, '2103.00', '336.48', '2439.48', NULL, '2018-03-10 17:28:21', '2018-03-15 00:00:00', '2018-03-10 17:28:21', 1, NULL, '2.44 X 4.88 METROS', 'VINIL', NULL, '9780, 9781', 0, 2, 1, 1, NULL, NULL, 2, 4, NULL, NULL, NULL),
(300, 3, 1, 1, NULL, 126, NULL, 1, 10, '300.00', '48.00', '348.00', NULL, '2018-03-10 17:30:18', '2018-03-13 00:00:00', '2018-03-10 17:30:18', 1, NULL, NULL, NULL, NULL, '9212', 0, 2, 2, 4, NULL, NULL, 4, 4, NULL, NULL, NULL),
(301, 14, 1, 1, NULL, 50, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-03-10 17:47:26', '2018-03-20 00:00:00', '2018-03-10 17:47:26', 1, NULL, NULL, NULL, NULL, '9779', 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(302, 9, 1, 1, NULL, 127, 121, 1, 10, '1464.00', '234.24', '1698.24', NULL, '2018-03-10 18:21:30', '2018-03-12 00:00:00', '2018-03-10 18:21:30', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(303, 7, 1, 1, NULL, 123, NULL, 1, 11, '2016.00', '322.56', '2338.56', NULL, '2018-03-10 18:49:00', '2018-03-16 00:00:00', '2018-03-10 18:49:00', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(304, 8, 1, 1, NULL, 124, 122, 1, 10, '350.00', '56.00', '406.00', NULL, '2018-03-10 18:55:28', '2018-03-20 00:00:00', '2018-03-10 18:55:28', 1, '10 BLCKS. CON 100 C/U', '1/4 CARTA', 'BOND BLANCO 75 KGS.', NULL, '9875', 0, 2, 2, 4, '60,001 AL 61,000', NULL, 4, 2, NULL, NULL, NULL),
(305, 10, 1, 1, NULL, 29, 120, 1, 10, '850.00', '136.00', '986.00', NULL, '2018-03-10 18:57:48', '2018-03-15 00:00:00', '2018-03-10 18:57:48', 1, 'C/100', '15.2 X 11 CM', 'BOND 90 GRAMOS', NULL, '9817', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(306, 7, 1, 1, NULL, 43, 46, 1, 10, '1040.00', '166.40', '1206.40', NULL, '2018-03-10 19:02:49', '2018-03-20 00:00:00', '2018-03-10 19:02:49', 1, NULL, '5X9', 'OPALINA CARTULINA', NULL, '9814', 0, 2, 1, 2, NULL, NULL, 4, 1, NULL, NULL, NULL),
(307, 7, 1, 1, NULL, 43, 46, 1, 10, '650.00', '104.00', '754.00', NULL, '2018-03-10 19:13:53', '2018-03-20 00:00:00', '2018-03-10 19:13:53', 1, NULL, 'CARTA', 'BOND', NULL, '9816', 0, 2, 1, 2, NULL, NULL, 4, 1, NULL, NULL, NULL),
(308, 7, 1, 1, NULL, 36, 125, 1, 10, '6500.00', '1040.00', '7540.00', NULL, '2018-03-10 19:25:44', '2018-03-20 00:00:00', '2018-03-10 19:25:44', 1, NULL, NULL, NULL, NULL, '9916', 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(309, 7, 1, 1, NULL, 36, 125, 1, 10, '3000.00', '480.00', '3480.00', NULL, '2018-03-10 19:28:53', '2018-03-20 00:00:00', '2018-03-10 19:28:53', 1, NULL, NULL, NULL, NULL, '9916', 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(310, 8, 1, 1, NULL, 109, 103, 1, 6, '4500.00', '720.00', '5220.00', NULL, '2018-03-10 19:42:15', '2018-03-20 00:00:00', '2018-03-10 19:42:15', 1, 'plantilla para desprender', '3 x 5.3 cm.', 'vinil blanco ( corte )', NULL, NULL, 0, 2, 2, 4, 'sin folio', 'esta etiqueta se pasa a vinil corte para el suajado y se imprime en serigrafia', 1, NULL, NULL, NULL, NULL),
(311, 7, 1, 1, NULL, 128, 129, 1, 10, '180.00', '28.80', '208.80', NULL, '2018-03-10 19:47:35', '2018-03-20 00:00:00', '2018-03-10 19:47:35', 1, NULL, '5X9', 'CARTULINA OPALINA BLANCA', NULL, '9819', 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(312, 3, 1, 1, NULL, 54, 56, 1, 10, '1000.00', '160.00', '1160.00', NULL, '2018-03-10 20:36:18', '2018-03-10 00:00:00', '2018-03-10 20:36:18', 1, NULL, NULL, NULL, NULL, '9994', 0, 1, 2, 4, NULL, 'SEGUNDA CAMIONETA DE POLLO FELIZ', 2, 3, NULL, NULL, NULL),
(313, 7, 1, 1, NULL, 129, 130, 1, 10, '880.00', '140.80', '1020.80', NULL, '2018-03-12 14:58:19', '2018-03-22 00:00:00', '2018-03-12 14:58:19', 1, 'C/50', '1/2 CARTA', 'AUTOCOPIA', NULL, '9833', 0, 2, 1, 3, '1501-2000', NULL, 4, 1, NULL, NULL, NULL),
(314, 7, 1, 1, NULL, 25, 131, 1, 10, '450.00', '72.00', '522.00', NULL, '2018-03-12 15:05:58', '2018-03-22 00:00:00', '2018-03-12 15:05:58', 1, NULL, NULL, NULL, NULL, '9864', 0, 2, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(315, 7, 1, 1, NULL, 48, 52, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-03-12 15:08:44', '2018-03-22 00:00:00', '2018-03-12 15:08:44', 1, NULL, NULL, NULL, NULL, '9802, 9803', 0, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(316, 7, 1, 1, NULL, 75, 73, 1, 10, '2500.00', '400.00', '2900.00', NULL, '2018-03-12 15:13:44', '2018-03-22 00:00:00', '2018-03-12 15:13:44', 1, NULL, '5X9', 'COUCHE 300GR', NULL, '9813', 0, 2, 1, 2, NULL, NULL, 4, 1, NULL, NULL, NULL),
(317, 7, 1, 1, NULL, 40, 39, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-12 15:19:16', '2018-03-22 00:00:00', '2018-03-12 15:19:16', 1, NULL, '5X9', 'CARTULINA OPALINA', NULL, '9842', 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(318, 7, 1, 1, NULL, 24, 132, 1, 8, '9874.00', '1579.84', '11453.84', NULL, '2018-03-12 15:36:02', '2018-03-22 00:00:00', '2018-03-12 15:36:02', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, NULL, 2, 1, NULL, NULL, NULL),
(319, 11, 1, 1, NULL, 130, 133, 1, 10, '2920.00', '467.20', '3387.20', NULL, '2018-03-12 16:29:36', '2018-03-22 00:00:00', '2018-03-12 16:29:36', 1, NULL, NULL, NULL, NULL, '9957', 0, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(320, 3, 1, 1, NULL, 131, 134, 1, 11, '370.00', '59.20', '429.20', NULL, '2018-03-12 17:05:35', '2018-03-13 00:00:00', '2018-03-12 17:05:35', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(321, 3, 1, 1, NULL, 120, 116, 1, 10, '575.00', '92.00', '667.00', NULL, '2018-03-12 17:15:46', '2018-03-14 00:00:00', '2018-03-12 17:15:46', 1, NULL, NULL, NULL, NULL, '9795', 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(322, 3, 1, 1, NULL, 40, 37, 1, 10, '1300.00', '208.00', '1508.00', NULL, '2018-03-12 17:19:15', '2018-03-22 00:00:00', '2018-03-12 17:19:15', 1, NULL, 'CUARTO DE CARTA', 'COUCHE DE 130 G', NULL, '9839', 0, 2, 2, 4, NULL, '2 DISEÑOS.....1,000 DE CADA UNO', 4, 1, NULL, NULL, NULL),
(323, 7, 1, 1, NULL, 132, 135, 1, 10, '16220.00', '2595.20', '18815.20', NULL, '2018-03-12 18:07:00', '2018-03-22 00:00:00', '2018-03-12 18:07:00', 1, NULL, NULL, NULL, NULL, '9918', 0, 2, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(324, 8, 1, 1, NULL, 119, 115, 1, 10, '2600.00', '416.00', '3016.00', NULL, '2018-03-12 18:09:29', '2018-03-22 00:00:00', '2018-03-12 18:09:29', 1, '80 BLOCKS CON 50 JGOS. C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '9843', 0, 2, 2, 4, '42001 AL 46000', 'ESTE FORMATO ES EL QUE LLEVA CONCEPTOS COMO : OPERADOR,NUM.ECONOMICO Y FECHA', 4, 2, 'AZUL', 'ROSA', 'BLANCO'),
(325, 7, 1, 1, NULL, 132, 135, 1, 10, '14440.00', '2310.40', '16750.40', NULL, '2018-03-12 18:24:46', '2018-03-22 00:00:00', '2018-03-12 18:24:46', 1, NULL, NULL, NULL, NULL, '9775', 0, 2, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(326, 8, 1, 1, NULL, 117, 113, 1, 10, '1300.00', '208.00', '1508.00', NULL, '2018-03-12 18:35:33', '2018-03-22 00:00:00', '2018-03-12 18:35:33', 1, 'EMPACADAS POR SEPARADO ( 1000 Y 1000 )', 'CARTA', 'BOND 75 KGS.', NULL, '9796', 0, 2, 2, 4, 'SIN FOLIO', 'SE EMPACARAN POR SEPARADA 1000 DE CADA DELEGACION', 4, 2, NULL, NULL, NULL),
(327, 7, 1, 1, NULL, 24, 132, 1, 8, '250.00', '40.00', '290.00', NULL, '2018-03-12 18:41:36', '2018-03-22 00:00:00', '2018-03-12 18:41:36', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(328, 7, 1, 1, NULL, 24, 132, 1, 8, '3100.00', '496.00', '3596.00', NULL, '2018-03-12 18:46:52', '2018-03-22 00:00:00', '2018-03-12 18:46:52', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(329, 8, 1, 1, NULL, 117, 113, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-12 18:50:17', '2018-03-22 00:00:00', '2018-03-12 18:50:17', 1, '20 BLOCKS CON 50 JGS. C/U', 'CARTA', 'BOND TODO ORIGINAL', NULL, '9844', 0, 2, 2, 4, 'SIN FOLIO', 'TODO EL PAPEL SERA ORIGINAL INCLUYENDO LAS COPIAS DE COLOR', 4, 2, 'AZUL', 'ROSA', 'BLANCO'),
(330, 7, 1, 1, NULL, 24, 132, 1, 8, '3100.00', '496.00', '3596.00', NULL, '2018-03-12 18:50:22', '2018-03-22 00:00:00', '2018-03-12 18:50:22', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(331, 7, 1, 1, NULL, 24, 132, 1, 8, '3100.00', '496.00', '3596.00', NULL, '2018-03-12 18:54:14', '2018-03-22 00:00:00', '2018-03-12 18:54:14', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(332, 7, 1, 1, NULL, 115, 128, 1, 8, '480.00', '76.80', '556.80', NULL, '2018-03-12 19:01:05', '2018-03-12 00:00:00', '2018-03-12 19:01:05', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(333, 14, 1, 1, NULL, 65, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-03-12 20:42:23', '2018-03-22 00:00:00', '2018-03-12 20:42:23', 1, NULL, NULL, NULL, NULL, '9787', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(334, 3, 1, 1, NULL, 107, 101, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-12 23:24:03', '2018-03-13 00:00:00', '2018-03-12 23:24:03', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130 G', NULL, '9778', 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(335, 3, 1, 1, NULL, 26, 71, 1, 10, '2000.00', '320.00', '2320.00', NULL, '2018-03-12 23:27:14', '2018-03-15 00:00:00', '2018-03-12 23:27:14', 1, NULL, 'MEDIA CARTA', 'CARTULINA OPALINA', NULL, '9821', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(336, 10, 1, 1, NULL, 108, 102, 1, 10, '297.00', '47.52', '344.52', NULL, '2018-03-12 23:29:55', '2018-03-13 00:00:00', '2018-03-12 23:29:55', 1, NULL, NULL, NULL, NULL, '9826', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(337, 10, 1, 1, NULL, 32, 28, 1, 10, '1540.00', '246.40', '1786.40', NULL, '2018-03-12 23:47:21', '2018-03-12 00:00:00', '2018-03-12 23:47:21', 1, NULL, NULL, NULL, NULL, '10001', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(338, 3, 1, 1, NULL, 133, NULL, 1, 8, '301.74', '48.28', '350.02', NULL, '2018-03-13 00:38:09', '2018-03-23 00:00:00', '2018-03-13 00:38:09', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 5, NULL, NULL, NULL),
(339, 3, 1, 1, NULL, 134, NULL, 1, 11, '23630.00', '3780.80', '27410.80', NULL, '2018-03-13 00:53:34', '2018-03-20 00:00:00', '2018-03-13 00:53:34', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(340, 3, 1, 1, NULL, 27, 24, 1, 8, '11120.00', '1779.20', '12899.20', NULL, '2018-03-13 01:03:53', '2018-03-15 00:00:00', '2018-03-13 01:03:53', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'FAVOR DE ENVIARLE A SU CORREO PARA REVISION DE NOMBRES.....\r\nOFICIO 216 FOLIO 1066', 2, 4, NULL, NULL, NULL),
(341, 8, 1, 1, NULL, 117, 113, 1, 10, '650.00', '104.00', '754.00', NULL, '2018-03-13 01:13:34', '2018-03-23 00:00:00', '2018-03-13 01:13:34', 1, 'empacadas 2 paq. de 500', 'carta', 'bond blanco 75 grms.', NULL, '9873', 0, 2, 2, 4, 'sin folio', NULL, 4, 2, NULL, NULL, NULL),
(342, 11, 1, 1, NULL, 122, 117, 1, 10, '3000.00', '480.00', '3480.00', NULL, '2018-03-13 17:10:26', '2018-02-28 00:00:00', '2018-03-13 17:10:26', 1, NULL, NULL, NULL, NULL, '9772', 0, 1, 1, 3, NULL, 'SE INSTALA DIF VICTORIA', 2, 3, NULL, NULL, NULL),
(343, 8, 1, 1, NULL, 140, 138, 1, 10, '4000.00', '640.00', '4640.00', NULL, '2018-03-13 17:15:04', '2018-03-16 00:00:00', '2018-03-13 17:15:04', 1, 'EMPACADOS', 'MEDIA CARTA', 'COUCHE 130 GRMS.', NULL, '9797', 0, 2, 2, 4, 'SIN FOLIO', NULL, 4, 1, NULL, NULL, NULL),
(344, 3, 1, 1, NULL, 121, NULL, 1, 10, '14870.00', '2379.20', '17249.20', NULL, '2018-03-13 18:09:54', '2018-03-19 00:00:00', '2018-03-13 18:09:54', 1, NULL, 'CARTA', 'COUCHE DE 300 GRAMOS', NULL, NULL, 1, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(345, 3, 1, 1, NULL, 121, NULL, 1, 10, '4792.00', '766.72', '5558.72', NULL, '2018-03-13 18:10:50', '2018-03-19 00:00:00', '2018-03-13 18:10:50', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(346, 8, 1, 1, NULL, 142, 139, 1, 10, '4000.00', '640.00', '4640.00', NULL, '2018-03-13 18:15:09', '2018-03-20 00:00:00', '2018-03-13 18:15:09', 1, 'EMPACADOS', 'MEDIA CARTA', 'TELA BANDERA', NULL, '9818', 0, 2, 2, 4, '001 AL 500', 'LOS NUMEROS INCLUYEN LOS SEGURITOS PARA SUJETARLOS ....HAY QUE CONSEGUIRLOS POR FAVOR .  GRACIAS', 2, 3, NULL, NULL, NULL),
(347, 10, 1, 1, NULL, 108, 102, 1, 10, '66.00', '10.56', '76.56', NULL, '2018-03-13 18:43:01', '2018-03-23 00:00:00', '2018-03-13 18:43:01', 1, NULL, NULL, NULL, NULL, '9826', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(348, 8, 1, 1, NULL, 143, 140, 1, 10, '750.00', '120.00', '870.00', NULL, '2018-03-13 18:49:21', '2018-03-23 00:00:00', '2018-03-13 18:49:21', 1, '10 BLOCKS CON 50 C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9834', 0, 2, 2, 4, '2,851 AL 3,350', NULL, 4, 2, NULL, 'ROSA', 'BLANCA'),
(349, 3, 1, 1, NULL, 144, 141, 1, 10, '6500.00', '1040.00', '7540.00', NULL, '2018-03-13 18:49:54', '2018-03-15 00:00:00', '2018-03-13 18:49:54', 1, NULL, NULL, NULL, NULL, '9811', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(350, 7, 1, 1, NULL, 132, 135, 1, 6, '6500.00', '1040.00', '7540.00', NULL, '2018-03-13 18:52:54', '2018-03-20 00:00:00', '2018-03-13 18:52:54', 1, NULL, NULL, NULL, 83, NULL, 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(351, 3, 1, 1, NULL, 144, 141, 1, 10, '2648.50', '423.76', '3072.26', NULL, '2018-03-13 18:54:33', '2018-03-15 00:00:00', '2018-03-13 18:54:33', 1, NULL, NULL, NULL, NULL, '9811', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(352, 3, 1, 1, NULL, 144, 141, 1, 10, '1720.00', '275.20', '1995.20', NULL, '2018-03-13 18:55:43', '2018-03-15 00:00:00', '2018-03-13 18:55:43', 1, NULL, 'MEDIA CARTA', 'COUCHE 130 G', NULL, '9811', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(353, 3, 1, 1, NULL, 145, 142, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-13 19:19:50', '2018-03-15 00:00:00', '2018-03-13 19:19:50', 1, NULL, 'DOBLE CARTA', 'COUCHE DE 130 G', NULL, NULL, 1, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(354, 7, 1, 1, NULL, 109, 143, 1, 10, '12355.00', '1976.80', '14331.80', NULL, '2018-03-13 20:01:58', '2018-03-23 00:00:00', '2018-03-13 20:01:58', 1, NULL, NULL, NULL, NULL, '9835', 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(355, 14, 1, 1, NULL, 50, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-03-13 22:38:24', '2018-03-23 00:00:00', '2018-03-13 22:38:24', 1, NULL, NULL, NULL, NULL, '9779', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(356, 3, 1, 1, NULL, 27, 24, 1, 8, '690.00', '110.40', '800.40', NULL, '2018-03-13 22:52:32', '2018-03-13 00:00:00', '2018-03-13 22:52:32', 1, NULL, '1.6 X .60', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 848.....FOLIO 1067', 2, 3, NULL, NULL, NULL),
(357, 3, 1, 1, NULL, 27, 24, 1, 10, '6195.00', '991.20', '7186.20', NULL, '2018-03-13 23:10:39', '2018-03-15 00:00:00', '2018-03-13 23:10:39', 1, NULL, NULL, NULL, NULL, '351', 0, 2, 2, 4, NULL, 'FOLIO 506', 5, NULL, NULL, NULL, NULL),
(358, 3, 1, 1, NULL, 27, 63, 1, 8, '1200.00', '192.00', '1392.00', NULL, '2018-03-13 23:13:34', '2018-03-16 00:00:00', '2018-03-13 23:13:34', 1, NULL, NULL, 'CARTULINA OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 1043\r\nINCLUIR EL PORTAGAFETE.', 4, 1, NULL, NULL, NULL),
(359, 3, 1, 1, NULL, 27, 63, 1, 8, '450.00', '72.00', '522.00', NULL, '2018-03-13 23:17:22', '2018-03-16 00:00:00', '2018-03-13 23:17:22', 1, NULL, 'CARTA', 'CARTULINA OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 1018', 4, 1, NULL, NULL, NULL),
(360, 10, 1, 1, NULL, 108, 102, 1, 10, '468.00', '74.88', '542.88', NULL, '2018-03-14 00:30:13', '2018-03-14 00:00:00', '2018-03-14 00:30:13', 1, NULL, NULL, NULL, NULL, '9826', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(361, 8, 1, 1, NULL, 148, 147, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-03-14 15:31:43', '2018-03-24 00:00:00', '2018-03-14 15:31:43', 1, 'EN SU CAJA', 'AREA IMPR. 1 X 4.6 CM.', 'BOLIGRAFOS', NULL, '9805', 0, 2, 2, 4, 'SIN FOLIO', NULL, 1, NULL, NULL, NULL, NULL),
(362, 11, 1, 1, NULL, 75, 73, 1, 10, '3500.00', '560.00', '4060.00', NULL, '2018-03-14 16:12:14', '2018-04-13 00:00:00', '2018-03-14 16:12:14', 1, NULL, NULL, NULL, 47, '9872', 0, NULL, NULL, NULL, NULL, 'DISEÑO TAMPICO', NULL, NULL, NULL, NULL, NULL),
(363, 10, 1, 1, NULL, 19, NULL, 1, 10, '345.00', '55.20', '400.20', NULL, '2018-03-14 18:26:09', '2018-03-14 00:00:00', '2018-03-14 18:26:09', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(364, 10, 1, 1, NULL, 19, NULL, 1, 11, '388.00', '62.08', '450.08', NULL, '2018-03-14 18:40:35', '2018-03-14 00:00:00', '2018-03-14 18:40:35', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(365, 7, 1, 1, NULL, 115, 111, 1, 10, '28400.00', '4544.00', '32944.00', NULL, '2018-03-14 19:32:05', '2018-04-13 00:00:00', '2018-03-14 19:32:05', 1, NULL, NULL, NULL, 73, '9880', 0, 2, 1, 3, NULL, NULL, 2, 5, NULL, NULL, NULL),
(366, 7, 1, 1, NULL, 96, 91, 1, 8, '13740.00', '2198.40', '15938.40', NULL, '2018-03-14 19:46:42', '2018-03-14 00:00:00', '2018-03-14 19:46:42', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, NULL, 2, 5, NULL, NULL, NULL),
(367, 10, 1, 1, NULL, 19, NULL, 1, 10, '388.00', '62.08', '450.08', NULL, '2018-03-14 22:15:54', '2018-03-14 00:00:00', '2018-03-14 22:15:54', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(368, 3, 1, 1, NULL, 150, 149, 1, 8, '25850.00', '4136.00', '29986.00', NULL, '2018-03-15 00:12:27', '2018-03-25 00:00:00', '2018-03-15 00:12:27', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(369, 3, 1, 1, NULL, 111, 105, 1, 10, '1656.00', '264.96', '1920.96', NULL, '2018-03-15 00:27:20', '2018-03-21 00:00:00', '2018-03-15 00:27:20', 1, NULL, NULL, NULL, NULL, '9647', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(370, 3, 1, 1, NULL, 151, 150, 1, 7, '4040.00', '646.40', '4686.40', NULL, '2018-03-15 01:01:42', '2018-03-20 00:00:00', '2018-03-15 01:01:42', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(371, 3, 1, 1, NULL, 151, 150, 1, 3, '9500.00', '1520.00', '11020.00', NULL, '2018-03-15 01:05:57', '2018-03-21 00:00:00', '2018-03-15 01:05:57', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'PENDIENTE POR COTIZAR DESROTULACION', 2, 3, NULL, NULL, NULL),
(372, 8, 1, 1, NULL, 148, 147, 1, 10, '13200.00', '2112.00', '15312.00', NULL, '2018-03-15 01:28:57', '2018-03-25 00:00:00', '2018-03-15 01:28:57', 1, 'EMPACADOS SEPARADOS CADA COLOR', '1/3 OFICIO', 'BOND BLANCO 75 GRMS.', NULL, '9805', 0, 2, 2, 4, 'SIN FOLIOS', NULL, 4, 2, NULL, NULL, NULL),
(375, 8, 1, 1, NULL, 152, 152, 1, 10, '3125.00', '500.00', '3625.00', NULL, '2018-03-15 18:03:01', '2018-03-19 00:00:00', '2018-03-15 18:03:01', 1, NULL, NULL, NULL, NULL, '9871', 0, 2, 2, 4, NULL, 'LA PLUMA ,EL ANFORA Y LA BOLSA EN COLOR AZUL', 1, NULL, NULL, NULL, NULL),
(376, 11, 1, 1, NULL, 147, 146, 1, 10, '4350.00', '696.00', '5046.00', NULL, '2018-03-15 18:18:27', '2018-03-20 00:00:00', '2018-03-15 18:18:27', 1, NULL, NULL, NULL, NULL, '9810', 0, 3, 2, 4, NULL, 'SOLO LLEVAN UN NUMERO DE 3 O 4 CARACTERES: 3695, 3541, 3443, 3199, 2982, 2973, 2642, 2442, 2273, 830, 764, 763, 724, 662, 480', 2, 5, NULL, NULL, NULL),
(377, 11, 1, 1, NULL, 147, 146, 1, 10, '4100.00', '656.00', '4756.00', NULL, '2018-03-15 18:43:51', '2018-03-15 00:00:00', '2018-03-15 18:43:51', 1, NULL, 'MEDIA CARTA', 'BOND 90 GRS', NULL, '9809', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(378, 7, 1, 1, NULL, 92, 153, 1, 10, '4860.00', '777.60', '5637.60', NULL, '2018-03-15 19:40:03', '2018-03-17 00:00:00', '2018-03-15 19:40:03', 1, NULL, NULL, NULL, 98, '9870', 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(380, 8, 1, 1, NULL, 152, 152, 1, 10, '675.00', '108.00', '783.00', NULL, '2018-03-15 19:43:38', '2018-03-17 00:00:00', '2018-03-15 19:43:38', 1, NULL, '1.50 x 3 mts.', 'lona', NULL, '9871', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(381, 3, 1, 1, NULL, 23, 21, 1, 10, '47000.00', '7520.00', '54520.00', NULL, '2018-03-15 22:31:39', '2018-04-17 00:00:00', '2018-03-15 22:31:39', 1, NULL, '22 X 17 CM', 'INTERIOR EN BOND', 95, '9893', 0, 2, 2, 4, NULL, 'PORTADA EN GTO \r\nINTERIOR EN QUICK', 4, 2, NULL, NULL, NULL),
(382, 3, 1, 1, NULL, 27, 24, 1, 8, '4148.00', '663.68', '4811.68', NULL, '2018-03-15 22:38:00', '2018-03-25 00:00:00', '2018-03-15 22:38:00', 1, NULL, 'DOBLE CARTA', 'COUCHE DE 300 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'OFICIO 217', 4, 1, NULL, NULL, NULL),
(383, 3, 1, 1, NULL, 27, 24, 1, 8, '1380.00', '220.80', '1600.80', NULL, '2018-03-16 00:42:00', '2018-03-21 00:00:00', '2018-03-16 00:42:00', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 1088', 2, 3, NULL, NULL, NULL),
(384, 8, 1, 1, NULL, 154, 157, 1, 6, '1600.00', '256.00', '1856.00', NULL, '2018-03-16 00:46:58', '2018-03-26 00:00:00', '2018-03-16 00:46:58', 1, '10 BLOCKS CON 50 C/U', 'CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '001 AL 500', 'LA ORDEN DE TRABAJO ES UNA SOLA POR 300 TARJETAS DE PRESENTACION Y 500 REPORTES DE SERVICIO EL REPORTE DE SERVICIO SE IMPRIME EN OFFSET Y LAS TARJETAS EN LA IMPRESORA LASER', 4, 2, NULL, 'ROSA', 'BLANCO'),
(385, 10, 1, 1, NULL, 108, 102, 1, 10, '561.00', '89.76', '650.76', NULL, '2018-03-16 00:59:30', '2018-03-15 00:00:00', '2018-03-16 00:59:30', 1, NULL, NULL, NULL, NULL, '9826', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(386, 7, 1, 1, NULL, 92, NULL, 1, 10, '6545.00', '1047.20', '7592.20', NULL, '2018-03-16 01:01:08', '2018-03-26 00:00:00', '2018-03-16 01:01:08', 1, NULL, NULL, NULL, NULL, '9915', 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(387, 3, 1, 1, NULL, 19, NULL, 1, 11, '680.00', '108.80', '788.80', NULL, '2018-03-16 01:04:15', '2018-03-15 00:00:00', '2018-03-16 01:04:15', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(388, 7, 1, 1, NULL, 68, NULL, 1, 10, '8200.00', '1312.00', '9512.00', NULL, '2018-03-16 01:09:04', '2018-03-26 00:00:00', '2018-03-16 01:09:04', 1, NULL, NULL, NULL, NULL, '9908, 9909, 9910, 9911, 9912, 9913, 9914', 0, 2, 1, 2, NULL, NULL, 2, 4, NULL, NULL, NULL),
(389, 7, 1, 1, NULL, 68, NULL, 1, 10, '3591.00', '574.56', '4165.56', NULL, '2018-03-16 01:16:38', '2018-03-26 00:00:00', '2018-03-16 01:16:38', 1, NULL, NULL, NULL, NULL, '9907', 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(390, 7, 1, 1, NULL, 68, NULL, 1, 10, '1804.00', '288.64', '2092.64', NULL, '2018-03-16 01:22:02', '2018-03-26 00:00:00', '2018-03-16 01:22:02', 1, NULL, NULL, NULL, NULL, '9906', 0, 2, 1, 2, NULL, NULL, 2, 4, NULL, NULL, NULL),
(391, 8, 1, 1, NULL, 155, 158, 1, 10, '885.00', '141.60', '1026.60', NULL, '2018-03-16 02:11:13', '2018-03-26 00:00:00', '2018-03-16 02:11:13', 1, NULL, NULL, NULL, NULL, '9782', 0, 2, 2, 4, NULL, 'LOS BALONES SE MAQUILAN SE FABRICAN Y NOS LLEGAN YA IMPRESOS', 1, NULL, NULL, NULL, NULL),
(392, 8, 1, 1, NULL, 155, 158, 1, 10, '1792.46', '286.79', '2079.25', NULL, '2018-03-16 02:53:11', '2018-03-26 00:00:00', '2018-03-16 02:53:11', 1, NULL, NULL, NULL, NULL, '9783', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(393, 8, 1, 1, NULL, 155, 158, 1, 10, '9517.40', '1522.78', '11040.18', NULL, '2018-03-16 16:58:24', '2018-03-26 00:00:00', '2018-03-16 16:58:24', 1, NULL, NULL, NULL, NULL, '9784', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(394, 8, 1, 1, NULL, 155, 158, 1, 10, '1732.50', '277.20', '2009.70', NULL, '2018-03-16 17:15:43', '2018-03-26 00:00:00', '2018-03-16 17:15:43', 1, NULL, NULL, NULL, NULL, '9785', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(395, 3, 1, 1, NULL, 111, 105, 1, 10, '37359.92', '5977.59', '43337.51', NULL, '2018-03-16 17:36:59', '2018-03-23 00:00:00', '2018-03-16 17:36:59', 1, NULL, NULL, NULL, NULL, '10004', 0, 1, 2, 4, NULL, 'AUTORIZACION DE DISEÑOS CON CHUY V.', 1, NULL, NULL, NULL, NULL),
(396, 3, 1, 1, NULL, 40, 37, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-03-16 17:55:10', '2018-03-21 00:00:00', '2018-03-16 17:55:10', 1, NULL, 'CUARTO DE CARTA', 'COUCHE DE 130 G', NULL, '9856', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(397, 3, 1, 1, NULL, 62, 64, 1, 10, '9600.00', '1536.00', '11136.00', NULL, '2018-03-16 18:28:17', '2018-03-21 00:00:00', '2018-03-16 18:28:17', 1, NULL, 'CARTA', 'BOND 75 G', NULL, '9869', 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(398, 3, 1, 1, NULL, 156, 159, 1, 10, '3500.00', '560.00', '4060.00', NULL, '2018-03-16 19:02:53', '2018-03-17 00:00:00', '2018-03-16 19:02:53', 1, NULL, NULL, NULL, NULL, '9935', 0, 2, 2, 4, NULL, 'SOLO CAMBIAR LOGO DE INTEGRA A SIN LIMITES', 2, 5, NULL, NULL, NULL),
(399, 11, 1, 1, NULL, 40, 44, 1, 10, '630.00', '100.80', '730.80', NULL, '2018-03-16 19:46:15', '2018-03-15 00:00:00', '2018-03-16 19:46:15', 1, NULL, NULL, NULL, NULL, '9788', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(400, 3, 1, 1, NULL, 120, 116, 1, 10, '480.00', '76.80', '556.80', NULL, '2018-03-16 20:06:25', '2018-03-17 00:00:00', '2018-03-16 20:06:25', 1, NULL, NULL, NULL, NULL, '9795', 0, 1, 2, 4, NULL, '1 DE CADA DISEÑO.', 2, 4, NULL, NULL, NULL),
(401, 3, 1, 1, NULL, 108, 102, 1, 10, '849.00', '135.84', '984.84', NULL, '2018-03-16 20:11:46', '2018-04-15 00:00:00', '2018-03-16 20:11:46', 1, NULL, NULL, NULL, 102, '9826', 0, 1, 2, 4, NULL, 'ORDENES NARANJAS', 3, NULL, NULL, NULL, NULL),
(402, 14, 1, 1, NULL, 105, NULL, 1, 10, '1508.70', '241.39', '1750.09', NULL, '2018-03-17 00:09:58', '2018-03-27 00:00:00', '2018-03-17 00:09:58', 1, NULL, NULL, NULL, NULL, '9831', 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(403, 8, 1, 1, NULL, 157, 161, 1, 8, '13145.00', '2103.20', '15248.20', NULL, '2018-03-17 00:26:06', '2018-03-26 00:00:00', '2018-03-17 00:26:06', 1, 'CONSEGUIR BOLSAS PARA ENTREGARLOS', '6 MED. DIF.', 'SELLOS CON BASE MADERA', NULL, NULL, 0, 2, 2, 4, 'SIN FOLIO', 'CADA SELLO TIENE SU MEDIDA  ( LA ORDEN DE COMPRA ES LA NUM. 102 )', 2, NULL, NULL, NULL, NULL),
(404, 8, 1, 1, NULL, 159, 163, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-17 01:11:47', '2018-03-20 00:00:00', '2018-03-17 01:11:47', 1, 'EMPACADOS', 'MEDIA CARTA', 'BOND BLANCO 75 GRMS.', NULL, '9807', 0, 2, 2, 4, 'SIN FOLIO', NULL, 4, 2, NULL, NULL, NULL),
(405, 8, 1, 1, NULL, 98, 93, 1, 10, '300.00', '48.00', '348.00', NULL, '2018-03-17 01:49:40', '2018-03-27 00:00:00', '2018-03-17 01:49:40', 1, NULL, '.90 X .50 CM.', 'VINILBLANCO', NULL, '9846', 0, 2, 2, 4, 'SIN FOLIO', 'ESTE MATERIAL YA SE ENTREGO', 2, 4, NULL, NULL, NULL),
(406, 8, 1, 1, NULL, 98, 93, 1, 8, '300.00', '48.00', '348.00', NULL, '2018-03-17 01:49:40', '2018-03-27 00:00:00', '2018-03-17 01:49:40', 1, NULL, '.90 X .50 CM.', 'VINILBLANCO', NULL, NULL, 0, 2, 2, 4, 'SIN FOLIO', 'ESTE MATERIAL YA SE ENTREGO', 2, 4, NULL, NULL, NULL),
(407, 3, 1, 1, NULL, 57, 61, 1, 8, '47500.00', '7600.00', '55100.00', NULL, '2018-03-17 14:55:10', '2018-03-27 00:00:00', '2018-03-17 14:55:10', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, 'VOLANTES DEL PAN', 4, 1, NULL, NULL, NULL),
(408, 8, 1, 1, NULL, 157, 161, 1, 10, '1050.00', '168.00', '1218.00', NULL, '2018-03-17 17:00:00', '2018-03-20 00:00:00', '2018-03-17 17:00:00', 1, NULL, 'TOMOS TAMAÑO OFICIO', NULL, NULL, '9980', 0, 3, 2, 4, NULL, 'ESTOS 2 LIBROS SON DE LA JUDICATURA Y REQUIEREN DE FAVOR QUE SE LOS ENTREGUEMOS EL MARTES 20 DE MARZO ..!!', 1, NULL, NULL, NULL, NULL),
(409, 3, 1, 1, NULL, 72, 68, 1, 10, '900.00', '144.00', '1044.00', NULL, '2018-03-17 17:17:13', '2018-03-27 00:00:00', '2018-03-17 17:17:13', 1, NULL, 'OFICIO', 'BOND 90 G', NULL, '9868', 0, 1, 2, 4, NULL, 'TIENE CABEZA EL REVERSO.\r\nSE VA A METER A IMPRESORA.', 4, 1, NULL, NULL, NULL),
(410, 10, 1, 1, NULL, 59, 97, 1, 10, '4830.00', '772.80', '5602.80', NULL, '2018-03-17 17:57:27', '2018-04-03 00:00:00', '2018-03-17 17:57:27', 1, NULL, NULL, NULL, NULL, '9887', 0, 2, 2, 4, NULL, 'ESTA PENDIENTE ENVIAR EL DISEÑO DE LOS PENDONES \r\nLOS  7 PORTABANNER YA SE ENTREGARON EL DIA 14 03/18', 2, 3, NULL, NULL, NULL),
(411, 8, 1, 1, NULL, 160, 164, 1, 10, '4600.00', '736.00', '5336.00', NULL, '2018-03-17 18:43:57', '2018-03-27 00:00:00', '2018-03-17 18:43:57', 1, '20 PAQUETES CON 500 C/U', 'CARTA', 'BOND BLANCO 75 GRMS.', NULL, '9963', 0, 2, 2, 4, 'SIN FOLIOS', 'ESTE TRABAJO ES EN PAQUETES DE 500 C/U  ( 20 PAQ. )', 4, 2, NULL, NULL, NULL),
(412, 8, 1, 1, NULL, 160, 164, 1, 10, '850.00', '136.00', '986.00', NULL, '2018-03-17 19:23:27', '2018-03-27 00:00:00', '2018-03-17 19:23:27', 1, '10 BLOCKS CON 50 C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, NULL, 'SE MANEJA COMO UNIDAD EL BLOCK EN ESTE CASO 10 BLOCKS.', 4, 2, NULL, 'ROSA', 'BLANCO'),
(413, 8, 1, 1, NULL, 110, 104, 1, 10, '117.50', '18.80', '136.30', NULL, '2018-03-17 19:49:39', '2018-03-21 00:00:00', '2018-03-17 19:49:39', 1, NULL, 'SELLO : 5.5 X 5.5 CM.', NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'ES UN SOLO SELLO PARA LOS 3 DISTRITOS JUDICIALES :  4,11 Y 14 DE MATAMOROS TAMAULIPAS', 2, NULL, NULL, NULL, NULL),
(414, 3, 1, 1, NULL, 85, 79, 1, 10, '1120.00', '179.20', '1299.20', NULL, '2018-03-20 15:55:26', '2018-03-27 00:00:00', '2018-03-20 15:55:26', 1, NULL, '5 X 9 CM', 'CARTULINA OPALINA', NULL, '9857', 0, 2, 2, 4, NULL, '100 POR 7 PERSONAS', 4, 1, NULL, NULL, NULL),
(415, 3, 1, 1, NULL, 19, NULL, 1, 10, '8020.00', '1283.20', '9303.20', NULL, '2018-03-20 16:18:16', '2017-12-29 00:00:00', '2018-03-20 16:18:16', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'CESAR CHAVIRA....', 4, 2, NULL, NULL, NULL),
(416, 10, 1, 1, NULL, 108, 102, 1, 10, '55.00', '8.80', '63.80', NULL, '2018-03-20 16:41:27', '2018-03-20 00:00:00', '2018-03-20 16:41:27', 1, NULL, NULL, NULL, NULL, '9964', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(417, 7, 1, 1, NULL, 82, 77, 1, 10, '7000.00', '1120.00', '8120.00', NULL, '2018-03-20 16:45:48', '2018-03-24 00:00:00', '2018-03-20 16:45:48', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(418, 3, 1, 1, NULL, 20, 19, 1, 10, '3320.00', '531.20', '3851.20', NULL, '2018-03-20 17:34:14', '2018-03-02 00:00:00', '2018-02-27 05:25:03', 1, '100', '1/2 CARTA', 'AUTOCOPIA', NULL, '9889', 0, 1, 2, 4, '21,001-25,000', 'MISMO DISEÑO YA AUTORIAZADO', 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(419, 3, 1, 1, NULL, 20, 19, 1, 10, '1260.00', '201.60', '1461.60', NULL, '2018-03-20 17:45:06', '2018-03-02 00:00:00', '2018-02-27 05:27:49', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9889', 0, 1, 2, 4, '16,001.18,000', 'MISMO DISEÑO', 4, 2, NULL, 'ROSA', 'BLANCO'),
(420, 3, 1, 1, NULL, 20, 19, 1, 10, '1260.00', '201.60', '1461.60', NULL, '2018-03-20 17:47:05', '2018-03-02 00:00:00', '2018-02-27 05:30:07', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9889', 0, 1, 2, 4, '15,001 AL 17,000', 'MISMO DISEÑO YA AUTORIZADO', 4, 2, NULL, 'ROSA', 'BLANCO'),
(422, 7, 1, 1, NULL, 162, 165, 1, 10, '1350.00', '216.00', '1566.00', NULL, '2018-03-20 18:35:34', '2018-03-30 00:00:00', '2018-03-20 18:35:34', 1, NULL, 'CARTA', 'BOND 90G', NULL, '9855', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(423, 7, 1, 1, NULL, 164, 167, 1, 10, '3750.00', '600.00', '4350.00', NULL, '2018-03-20 19:32:21', '2018-03-30 00:00:00', '2018-03-20 19:32:21', 1, NULL, NULL, NULL, NULL, '9862', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(424, 7, 1, 1, NULL, 21, 168, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-20 19:39:48', '2018-03-30 00:00:00', '2018-03-20 19:39:48', 1, '50 C/BLOCK', '1/2 CARTA', 'AUTO COPIA', NULL, '9851', 0, 2, 2, 4, '3001 AL 4000', NULL, 4, 1, NULL, NULL, NULL),
(425, 7, 1, 1, NULL, 161, NULL, 1, 10, '3190.00', '510.40', '3700.40', NULL, '2018-03-20 19:56:01', '2018-03-30 00:00:00', '2018-03-20 19:56:01', 1, NULL, '1/6 CARTA', 'BOND', NULL, '9849', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(426, 3, 1, 1, NULL, 57, 61, 1, 8, '7500.00', '1200.00', '8700.00', NULL, '2018-03-20 20:09:26', '2018-03-22 00:00:00', '2018-03-20 20:09:26', 1, NULL, 'CARTA', 'COUCHE DE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, 'PROCURADURIA BULLYNG', 4, 1, NULL, NULL, NULL),
(427, 3, 1, 1, NULL, 19, NULL, 1, 8, '80.00', '12.80', '92.80', NULL, '2018-03-20 21:50:24', '2018-03-30 00:00:00', '2018-03-20 21:50:24', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'ORDEN DE ARTURO NIÑO', 2, 3, NULL, NULL, NULL),
(428, 3, 1, 1, NULL, 35, 32, 1, 10, '3200.00', '512.00', '3712.00', NULL, '2018-03-20 22:10:01', '2018-03-23 00:00:00', '2018-03-20 22:10:01', 1, NULL, '1.80 X .75', 'LONA', NULL, '9917', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(429, 3, 1, 1, NULL, 129, 170, 1, 10, '16250.00', '2600.00', '18850.00', NULL, '2018-03-20 23:11:59', '2018-03-30 00:00:00', '2018-03-20 23:11:59', 1, NULL, NULL, NULL, NULL, '9904', 0, 2, 2, 4, NULL, 'CALCAS VINIL BLANCO IMPRESAS EN SERIGRAFIA.\r\nCALCAS LATIENDO POR TAMAULIPAS EN CORTE POR COMPUTADORA', 2, 5, NULL, NULL, NULL),
(430, 14, 1, 1, NULL, 105, NULL, 1, 10, '603.48', '96.56', '700.04', NULL, '2018-03-20 23:29:14', '2018-03-30 00:00:00', '2018-03-20 23:29:14', 1, NULL, NULL, NULL, NULL, '9832', 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(431, 3, 1, 1, NULL, 161, NULL, 1, 10, '1120.00', '179.20', '1299.20', NULL, '2018-03-20 23:50:22', '2018-03-22 00:00:00', '2018-03-20 23:50:22', 1, NULL, 'CARTA', 'AUTOCOPIA', NULL, '9890', 0, 1, 2, 4, '4,501 AL 5,500', 'DISEÑO DE PANTERA ROSA', 4, 2, NULL, 'ROSA', 'BLANCO'),
(432, 3, 1, 1, NULL, 40, 39, 1, 10, '4030.00', '644.80', '4674.80', NULL, '2018-03-20 23:52:43', '2018-03-30 00:00:00', '2018-03-20 23:52:43', 1, NULL, NULL, NULL, NULL, '9968', 0, 2, 2, 4, NULL, 'LOGO TRANSPAIS TURISMO...ENVIAR FOTOMONTAJE A VICTOR.', 1, NULL, NULL, NULL, NULL),
(433, 3, 1, 1, NULL, 166, 180, 1, 10, '16000.00', '2560.00', '18560.00', NULL, '2018-03-21 00:17:30', '2018-03-23 00:00:00', '2018-03-21 00:17:30', 1, NULL, NULL, NULL, NULL, '9853', 0, NULL, 2, 4, NULL, 'LOGO DIA MUNDIAL DEL AGUA', 1, NULL, NULL, NULL, NULL),
(434, 8, 1, 1, NULL, 165, 169, 1, 8, '5560.50', '889.68', '6450.18', NULL, '2018-03-21 00:33:49', '2018-03-30 00:00:00', '2018-03-21 00:33:49', 1, NULL, '2.40 X 2.55 MTS.', 'MICROPERFORADO', NULL, NULL, 0, 2, 2, 4, NULL, 'EN ESTA ORDEN SON : 6.12 MTS. CUADRADOS Y 6.66 MTS. CUADRADOS DE MICROPERFORADO Y 4.35 MTS. DE VINIL', 2, 4, NULL, NULL, NULL),
(435, 3, 1, 1, NULL, 27, 63, 1, 8, '6500.00', '1040.00', '7540.00', NULL, '2018-03-21 15:28:38', '2018-03-21 00:00:00', '2018-03-21 15:28:38', 1, NULL, '5.50 X 2.40', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE INSTALARA EN LA ESCUELA JOSE VASCONCELOS.....\r\nFOLIO 1102', 2, 3, NULL, NULL, NULL),
(436, 7, 1, 1, NULL, 43, 46, 1, 10, '780.00', '124.80', '904.80', NULL, '2018-03-21 15:31:20', '2018-03-31 00:00:00', '2018-03-21 15:31:20', 1, NULL, NULL, NULL, NULL, '9815', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(437, 3, 1, 1, NULL, 40, 39, 1, 10, '2450.00', '392.00', '2842.00', NULL, '2018-03-21 15:31:39', '2018-03-24 00:00:00', '2018-03-21 15:31:39', 1, NULL, NULL, NULL, NULL, '10035', 0, 2, 2, 4, NULL, '1 DISEÑO DE CADA UNO.', 2, 5, NULL, NULL, NULL),
(438, 3, 1, 1, NULL, 167, 171, 1, 11, '360.00', '57.60', '417.60', NULL, '2018-03-21 15:55:21', '2018-03-22 00:00:00', '2018-03-21 15:55:21', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'BASTILLA Y  OJILLOS', 2, 3, NULL, NULL, NULL),
(439, 7, 1, 1, NULL, 168, 172, 1, 10, '150.00', '24.00', '174.00', NULL, '2018-03-21 16:35:14', '2018-03-31 00:00:00', '2018-03-21 16:35:14', 1, NULL, NULL, NULL, NULL, '10021', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(440, 10, 1, 1, NULL, 108, 102, 1, 10, '650.00', '104.00', '754.00', NULL, '2018-03-21 16:37:27', '2018-03-31 00:00:00', '2018-03-21 16:37:27', 1, NULL, NULL, NULL, NULL, '9964', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(441, 7, 1, 1, NULL, 115, 128, 1, 8, '8980.00', '1436.80', '10416.80', NULL, '2018-03-21 17:18:43', '2018-03-22 00:00:00', '2018-03-21 17:18:43', 1, NULL, NULL, NULL, 103, NULL, 0, 2, 1, 3, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(442, 14, 1, 1, NULL, 170, NULL, 1, 10, '379.30', '60.69', '439.99', NULL, '2018-03-21 17:43:47', '2018-03-31 00:00:00', '2018-03-21 17:43:47', 1, NULL, NULL, NULL, NULL, '9823', 0, NULL, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(443, 3, 1, 1, NULL, 118, 114, 1, 11, '150.00', '24.00', '174.00', NULL, '2018-03-21 17:46:49', '2018-03-21 00:00:00', '2018-03-21 17:46:49', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(444, 3, 1, 1, NULL, 27, 63, 1, 8, '150.00', '24.00', '174.00', NULL, '2018-03-21 17:59:01', '2018-03-21 00:00:00', '2018-03-21 17:59:01', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(445, 3, 1, 1, NULL, 171, 175, 1, 10, '1950.00', '312.00', '2262.00', NULL, '2018-03-21 18:07:23', '2018-03-21 00:00:00', '2018-03-21 18:07:23', 1, NULL, '3 X 2 MTS', NULL, NULL, '9985', 0, 2, 2, 4, NULL, 'DISEÑO DE ALBERCAZO', 2, 3, NULL, NULL, NULL),
(446, 3, 1, 1, NULL, 41, 41, 1, 10, '3050.00', '488.00', '3538.00', NULL, '2018-03-21 18:11:42', '2018-03-22 00:00:00', '2018-03-21 18:11:42', 1, NULL, NULL, NULL, NULL, '9867', 0, 1, 2, 4, NULL, 'SE ENTREGA MAÑANA A LAS 11 AM', 2, 3, NULL, NULL, NULL);
INSERT INTO `orden` (`id`, `id_usuario`, `id_empresa`, `id_sucursal`, `id_seccion`, `id_cliente`, `id_contacto`, `id_moneda`, `id_ordenestado`, `subtotal`, `iva`, `total`, `motivocancelacion`, `fecha`, `fechaentrega`, `fecharecepcion`, `activo`, `block`, `medidaimpresion`, `papel`, `id_cotizacion`, `foliofactura`, `especial`, `id_usocfdi`, `id_metodopago`, `id_mediopago`, `folio`, `observaciones`, `id_tipo`, `id_maquina`, `colorcfb`, `colorcf`, `colorinicial`) VALUES
(447, 10, 1, 1, NULL, 37, 173, 1, 10, '3000.00', '480.00', '3480.00', NULL, '2018-03-21 18:25:50', '2018-03-26 00:00:00', '2018-03-21 18:25:50', 1, NULL, NULL, NULL, NULL, '9905', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(448, 3, 1, 1, NULL, 40, 176, 1, 6, '3900.00', '624.00', '4524.00', NULL, '2018-03-21 18:32:01', '2018-03-31 00:00:00', '2018-03-21 18:32:01', 1, NULL, '5 X 9 CM', 'COUCHE DE 300 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'TARJETAS DE IN BOX PLASTIFICADO MATE AMBOS LADOS\r\nENVIAR DISEÑO A VERONICA COMPEAN PARA AUTORIZACION', 4, 1, NULL, NULL, NULL),
(449, 8, 1, 1, NULL, 157, 161, 1, 10, '2550.00', '408.00', '2958.00', NULL, '2018-03-21 18:35:10', '2018-03-22 00:00:00', '2018-03-21 18:35:10', 1, NULL, '2.10 x 4.10', 'lona impresa a color', NULL, '9898', 0, 2, 2, 4, NULL, 'se instalara en la mampara o base de madera que ya tienen puesta en la pared ....alrrededor sobre el marco de la mampara .', 2, 3, NULL, NULL, NULL),
(450, 8, 1, 1, NULL, 172, 177, 1, 10, '750.00', '120.00', '870.00', NULL, '2018-03-21 19:50:48', '2018-03-23 00:00:00', '2018-03-21 19:50:48', 1, NULL, 'TARJETA 5 X 9 CM.', 'CARTULINA COUCHE 300 KGS.', NULL, '9992', 0, 2, 2, 4, NULL, 'SE IMPRIMIRAN EN LA IMPRESORA LASER', 4, NULL, NULL, NULL, NULL),
(452, 3, 1, 1, NULL, 23, 21, 1, 10, '480.00', '76.80', '556.80', NULL, '2018-03-21 22:58:40', '2018-03-21 00:00:00', '2018-03-21 22:58:40', 1, NULL, NULL, NULL, NULL, '9931', 0, 2, 1, 3, NULL, 'LOGOS DIF TAM Y UNIDOS POR REYNOSA', 2, 3, NULL, NULL, NULL),
(453, 3, 1, 1, NULL, 25, 131, 1, 10, '250.00', '40.00', '290.00', NULL, '2018-03-21 23:02:54', '2018-03-23 00:00:00', '2018-03-21 23:02:54', 1, NULL, NULL, NULL, NULL, '9866', 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(454, 8, 1, 1, NULL, 172, 177, 1, 10, '400.00', '64.00', '464.00', NULL, '2018-03-21 23:45:35', '2018-03-23 00:00:00', '2018-03-21 23:45:35', 1, 'LONA CON BASTILLA Y OJILLOS', '.80 X 1.50 MTS.', 'lona impresa a color', NULL, '9992', 0, 2, 2, 4, NULL, '2 LONAS MISMA MEDIDA PERO UNA HORIZONTAL Y UNA VERTICAL', 2, 3, NULL, NULL, NULL),
(455, 3, 1, 1, NULL, 118, 114, 1, 11, '27.00', '4.32', '31.32', NULL, '2018-03-21 23:55:59', '2018-03-22 00:00:00', '2018-03-21 23:55:59', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 4, 4, NULL, NULL, NULL),
(456, 10, 1, 1, NULL, 26, 82, 1, 10, '5876.00', '940.16', '6816.16', NULL, '2018-03-22 00:00:50', '2018-04-03 00:00:00', '2018-03-22 00:00:50', 1, NULL, NULL, NULL, 55, '9987', 0, 3, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(457, 10, 1, 1, NULL, 26, 82, 1, 10, '1950.00', '312.00', '2262.00', NULL, '2018-03-22 00:06:01', '2018-04-21 00:00:00', '2018-03-22 00:06:01', 1, NULL, NULL, NULL, 55, '9987', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 8, 1, 1, NULL, 109, 103, 1, 6, '5900.00', '944.00', '6844.00', NULL, '2018-03-22 01:32:11', '2018-04-01 00:00:00', '2018-03-22 01:32:11', 1, 'plantilla para desprender', '4 X 7.2 CM.', 'vinil blanco ( corte )', NULL, NULL, 0, 2, 2, 4, NULL, 'ESTA ETIQUETA SE PASA A VINIL CORTE PARA EL SUAJADO Y SE IMPRIME EN SERIGRAFIA TINTA ORO.', 2, 5, NULL, NULL, NULL),
(459, 3, 1, 1, NULL, 129, 170, 1, 10, '7150.00', '1144.00', '8294.00', NULL, '2018-03-22 04:43:31', '2018-03-23 00:00:00', '2018-03-22 04:43:31', 1, NULL, NULL, NULL, NULL, '9904', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(460, 7, 1, 1, NULL, 111, 105, 1, 10, '1050.00', '168.00', '1218.00', NULL, '2018-03-22 16:19:39', '2018-04-01 00:00:00', '2018-03-22 16:19:39', 1, NULL, NULL, NULL, NULL, '9848', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(461, 3, 1, 1, NULL, 55, 57, 1, 8, '3750.00', '600.00', '4350.00', NULL, '2018-03-22 17:05:27', '2018-03-22 00:00:00', '2018-03-22 17:05:27', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(462, 3, 1, 1, NULL, 173, 178, 1, 6, '490.00', '78.40', '568.40', NULL, '2018-03-22 17:38:35', '2018-03-27 00:00:00', '2018-03-22 17:38:35', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(463, 3, 1, 1, NULL, 174, 179, 1, 10, '1400.00', '224.00', '1624.00', NULL, '2018-03-22 18:32:53', '2018-03-22 00:00:00', '2018-03-22 18:32:53', 1, NULL, NULL, NULL, NULL, '9850', 0, 1, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(464, 7, 1, 1, NULL, 48, 52, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-03-22 18:32:59', '2018-03-22 00:00:00', '2018-03-12 15:08:44', 1, NULL, NULL, NULL, NULL, '10019 Y 10020', 0, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(465, 14, 1, 1, NULL, 65, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-03-22 19:14:40', '2018-04-01 00:00:00', '2018-03-22 19:14:40', 1, NULL, NULL, NULL, NULL, '9854', 0, 1, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(466, 8, 1, 1, NULL, 157, 161, 1, 10, '450.00', '72.00', '522.00', NULL, '2018-03-22 19:43:14', '2018-03-22 00:00:00', '2018-03-22 19:43:14', 1, NULL, '.45 X 2.30 MTS.', 'VINIL NEGRO', NULL, '9898', 0, 2, 2, 4, NULL, 'ESTE TEXTO SE PEGARA EN LA LONA DE LA JUDICATURA FEDERAL ....POR FAVOR SE TIENE QUE IR A INSTALAR HOY MISMO JUEVES 22...GRACIAS !', 2, 5, NULL, NULL, NULL),
(467, 3, 1, 1, NULL, 41, 41, 1, 10, '180.00', '28.80', '208.80', NULL, '2018-03-22 23:23:11', '2018-03-22 00:00:00', '2018-03-22 23:23:11', 1, NULL, NULL, NULL, NULL, '9860', 0, 1, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(468, 8, 1, 1, NULL, 124, 122, 1, 10, '2000.00', '320.00', '2320.00', NULL, '2018-03-22 23:48:28', '2018-04-01 00:00:00', '2018-03-22 23:48:28', 1, '100 BLOCKS CON 100 BOLETOS C/U', '1/4 CARTA', 'BOND ORIGINAL AZUL', NULL, '9944', 0, 2, 2, 4, '465,001-475,00', 'SON EN BLOCKS DE 100 BOLETOS CADA UNO Y SOLO PEGADOS SIN GRAPAR..!', 4, 2, NULL, NULL, NULL),
(469, 8, 1, 1, NULL, 119, 115, 1, 10, '2600.00', '416.00', '3016.00', NULL, '2018-03-23 00:17:52', '2018-03-30 00:00:00', '2018-03-23 00:17:52', 1, '80 BLOCKS CON 50 JGOS. C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '9899', 0, 2, 2, 4, '46,001 AL 50,000', NULL, 4, 2, 'AZUL', 'AMARILLO', 'BLANCO'),
(470, 3, 1, 1, NULL, 57, 61, 1, 8, '3500.00', '560.00', '4060.00', NULL, '2018-03-23 15:17:09', '2018-03-24 00:00:00', '2018-03-23 15:17:09', 1, NULL, 'CARTA', 'COUCHE 115 G', NULL, NULL, 0, 1, 2, 4, NULL, 'TRIPTICOS DE MATAMOROS.', 4, 1, NULL, NULL, NULL),
(471, 7, 1, 1, NULL, 163, 166, 1, 10, '250.00', '40.00', '290.00', NULL, '2018-03-23 15:36:46', '2018-04-02 00:00:00', '2018-03-23 15:36:46', 1, NULL, NULL, NULL, NULL, '9877', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(472, 7, 1, 1, NULL, 24, 132, 1, 10, '870.00', '139.20', '1009.20', NULL, '2018-03-23 15:47:02', '2018-04-02 00:00:00', '2018-03-23 15:47:02', 1, NULL, NULL, NULL, NULL, '9876', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(473, 7, 1, 1, NULL, 41, 42, 1, 10, '230.00', '36.80', '266.80', NULL, '2018-03-23 15:54:57', '2018-04-02 00:00:00', '2018-03-23 15:54:57', 1, NULL, NULL, NULL, NULL, '9858', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(474, 10, 1, 1, NULL, 175, 181, 1, 11, '880.00', '140.80', '1020.80', NULL, '2018-03-23 18:12:27', '2018-04-02 00:00:00', '2018-03-23 18:12:27', 1, '100 C/U', '1/8', 'BOND', NULL, NULL, 1, 2, 1, 1, '001 AL 8000', NULL, 4, 2, NULL, NULL, NULL),
(475, 3, 1, 1, NULL, 150, 149, 1, 8, '10450.00', '1672.00', '12122.00', NULL, '2018-03-23 18:13:17', '2018-03-26 00:00:00', '2018-03-23 18:13:17', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(476, 3, 1, 1, NULL, 23, 21, 1, 10, '50000.00', '8000.00', '58000.00', NULL, '2018-03-23 18:22:42', '2018-04-22 00:00:00', '2018-03-23 18:22:42', 1, NULL, NULL, NULL, 120, '10027', 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(477, 10, 1, 1, NULL, 176, NULL, 1, 6, '6000.00', '960.00', '6960.00', NULL, '2018-03-23 18:39:21', '2018-04-02 00:00:00', '2018-03-23 18:39:21', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(478, 10, 1, 1, NULL, 176, NULL, 1, 6, '2450.00', '392.00', '2842.00', NULL, '2018-03-23 18:52:05', '2018-04-02 00:00:00', '2018-03-23 18:52:05', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'EN LOS LENTES QUE SON DE COLOR BLANCO LA TINTA SERA DE COLOR NEGRA', 1, NULL, NULL, NULL, NULL),
(479, 8, 1, 1, NULL, 159, 163, 1, 8, '550.00', '88.00', '638.00', NULL, '2018-03-23 19:15:53', '2018-04-02 00:00:00', '2018-03-23 19:15:53', 1, NULL, 'ALMITA LE DA LA MEDIDA', 'SELLOS CON BASE MADERA', NULL, NULL, 0, 2, 2, 4, NULL, 'EL FECHADOR NO ES AUTOENTINTABLE Y LOS OTROS 2 SON CON BASE DE MADERA ...', 2, NULL, NULL, NULL, NULL),
(480, 11, 1, 1, NULL, 177, 183, 1, 6, '1070.00', '171.20', '1241.20', NULL, '2018-03-23 20:11:07', '2018-03-28 00:00:00', '2018-03-23 20:11:07', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(481, 3, 1, 1, NULL, 178, 184, 1, 11, '150.00', '24.00', '174.00', NULL, '2018-03-23 21:01:22', '2018-03-27 00:00:00', '2018-03-23 21:01:22', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(482, 3, 1, 1, NULL, 129, 170, 1, 10, '2400.00', '384.00', '2784.00', NULL, '2018-03-23 23:37:15', '2018-03-23 00:00:00', '2018-03-23 23:37:15', 1, NULL, NULL, NULL, NULL, '9904', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(483, 3, 1, 1, NULL, 59, 97, 1, 10, '500.00', '80.00', '580.00', NULL, '2018-03-24 00:10:53', '2018-04-03 00:00:00', '2018-03-24 00:10:53', 1, NULL, NULL, NULL, NULL, '9903', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(484, 7, 1, 1, NULL, 115, 111, 1, 8, '3276.00', '524.16', '3800.16', NULL, '2018-03-24 00:20:45', '2018-04-03 00:00:00', '2018-03-24 00:20:45', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(485, 14, 1, 1, NULL, 105, NULL, 1, 10, '1508.70', '241.39', '1750.09', NULL, '2018-03-24 01:12:42', '2018-04-03 00:00:00', '2018-03-24 01:12:42', 1, NULL, NULL, NULL, NULL, '9891', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(486, 7, 1, 1, NULL, 19, 108, 1, 8, '129.00', '20.64', '149.64', NULL, '2018-03-24 17:31:53', '2018-04-03 00:00:00', '2018-03-24 17:31:53', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 2, NULL, NULL, 2, 3, NULL, NULL, NULL),
(487, 11, 1, 1, NULL, 179, 185, 1, 8, '750.00', '120.00', '870.00', NULL, '2018-03-24 19:02:42', '2018-04-07 00:00:00', '2018-03-24 19:02:42', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, 'LLEVAN PERSONALIZADO ABAJO DEL DISEÑO TALLA CHICA CABALLERO CARLOS XV AÑOS, CABALLERO TALLA 2XL PAPA, DAMA TALLA XL MAMA, DAMA TALLA M HERMANA, JUVENIL TALLA 14 HERMANO', 1, NULL, NULL, NULL, NULL),
(488, 8, 1, 1, NULL, 98, 93, 1, 10, '2520.00', '403.20', '2923.20', NULL, '2018-03-24 22:11:36', '2018-03-29 00:00:00', '2018-03-24 22:11:36', 1, 'EMPACADOS POR SEPARADO SON 2 DIFERENTES', 'MEDIA CARTA', 'COUCHE 130 GRMS.', NULL, '9943', 0, 2, 2, 4, NULL, 'ESTOS VOLANTES SON 4000 PERO SON 2 DISEÑOS DIFERENTES DE 2000 CADA UNO ...', 4, 1, NULL, NULL, NULL),
(489, 3, 1, 1, NULL, 40, 160, 1, 10, '2550.00', '408.00', '2958.00', NULL, '2018-03-26 14:50:05', '2018-03-28 00:00:00', '2018-03-26 14:50:05', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 300 GR', 101, '9967', 0, NULL, NULL, NULL, NULL, 'PLASTIFICADO BRILLANTE', NULL, NULL, NULL, NULL, NULL),
(490, 7, 1, 1, NULL, 55, 57, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-03-26 15:39:19', '2018-04-05 00:00:00', '2018-03-26 15:39:19', 1, NULL, '5X9', 'COUCHE 300GR', NULL, '9939', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(491, 7, 1, 1, NULL, 55, 57, 1, 8, '410.00', '65.60', '475.60', NULL, '2018-03-26 16:06:37', '2018-04-05 00:00:00', '2018-03-26 16:06:37', 1, NULL, '6X4 CM', NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(492, 7, 1, 1, NULL, 55, 57, 1, 8, '420.00', '67.20', '487.20', NULL, '2018-03-26 16:11:47', '2018-04-05 00:00:00', '2018-03-26 16:11:47', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(493, 7, 1, 1, NULL, 55, 57, 1, 8, '820.00', '131.20', '951.20', NULL, '2018-03-26 16:31:20', '2018-04-05 00:00:00', '2018-03-26 16:31:20', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(494, 7, 1, 1, NULL, 55, 57, 1, 8, '500.00', '80.00', '580.00', NULL, '2018-03-26 16:38:21', '2018-04-05 00:00:00', '2018-03-26 16:38:21', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(495, 7, 1, 1, NULL, 55, 57, 1, 8, '1380.00', '220.80', '1600.80', NULL, '2018-03-26 16:41:21', '2018-04-05 00:00:00', '2018-03-26 16:41:21', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(496, 7, 1, 1, NULL, 55, 57, 1, 10, '1600.00', '256.00', '1856.00', NULL, '2018-03-26 16:45:30', '2018-04-05 00:00:00', '2018-03-26 16:45:30', 1, NULL, NULL, 'COUCHE 300GR', NULL, '9937', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(497, 7, 1, 1, NULL, 55, 57, 1, 10, '900.00', '144.00', '1044.00', NULL, '2018-03-26 16:48:05', '2018-04-05 00:00:00', '2018-03-26 16:48:05', 1, NULL, NULL, NULL, NULL, '9938', 0, 2, 2, NULL, NULL, NULL, 2, 5, NULL, NULL, NULL),
(498, 7, 1, 1, NULL, 55, 57, 1, 8, '200.00', '32.00', '232.00', NULL, '2018-03-26 16:51:32', '2018-04-05 00:00:00', '2018-03-26 16:51:32', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(499, 7, 1, 1, NULL, 55, 57, 1, 8, '9000.00', '1440.00', '10440.00', NULL, '2018-03-26 16:57:07', '2018-04-05 00:00:00', '2018-03-26 16:57:07', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(500, 7, 1, 1, NULL, 55, 57, 1, 8, '3588.00', '574.08', '4162.08', NULL, '2018-03-26 16:59:48', '2018-04-05 00:00:00', '2018-03-26 16:59:48', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(501, 7, 1, 1, NULL, 55, 57, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-03-26 17:02:49', '2018-04-05 00:00:00', '2018-03-26 17:02:49', 1, NULL, NULL, NULL, NULL, '9939', 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(502, 7, 1, 1, NULL, 55, 57, 1, 8, '36620.00', '5859.20', '42479.20', NULL, '2018-03-26 17:21:49', '2018-04-05 00:00:00', '2018-03-26 17:21:49', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(503, 7, 1, 1, NULL, 55, 57, 1, 8, '2500.00', '400.00', '2900.00', NULL, '2018-03-26 17:27:26', '2018-04-05 00:00:00', '2018-03-26 17:27:26', 1, NULL, NULL, NULL, NULL, NULL, 0, 3, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(504, 7, 1, 1, NULL, 55, 57, 1, 8, '590.00', '94.40', '684.40', NULL, '2018-03-26 17:31:19', '2018-04-05 00:00:00', '2018-03-26 17:31:19', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(505, 11, 1, 1, NULL, 181, 187, 1, 8, '1100.00', '176.00', '1276.00', NULL, '2018-03-26 17:38:24', '2018-04-12 00:00:00', '2018-03-26 17:38:24', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(506, 14, 1, 1, NULL, 50, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-03-26 17:40:17', '2018-04-05 00:00:00', '2018-03-26 17:40:17', 1, NULL, NULL, NULL, NULL, '9878', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(507, 7, 1, 1, NULL, 59, 97, 1, 10, '7500.00', '1200.00', '8700.00', NULL, '2018-03-26 17:43:31', '2018-04-05 00:00:00', '2018-03-26 17:43:31', 1, NULL, NULL, NULL, NULL, '9879', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(508, 8, 1, 1, NULL, 180, 188, 1, 10, '3150.00', '504.00', '3654.00', NULL, '2018-03-26 17:54:36', '2018-04-05 00:00:00', '2018-03-26 17:54:36', 1, 'EMPACADAS DE 500', 'CARTA', 'FACIA BOND BLANCO', NULL, '10029', 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(509, 8, 1, 1, NULL, 183, 190, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-26 18:45:22', '2018-03-31 00:00:00', '2018-03-26 18:45:22', 1, '20 BLOCKS CON 50 JGS. C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9942', 0, 2, 2, 4, '1001 AL 2000', NULL, 4, 2, 'AZUL', 'ROSA', 'BLANCO'),
(510, 8, 1, 1, NULL, 119, 115, 1, 10, '2250.00', '360.00', '2610.00', NULL, '2018-03-26 19:55:20', '2018-03-19 00:00:00', '2018-03-10 00:30:42', 1, '60 BLOCKS CON 50 C/U', '1/2 CARTA', 'AUTOCOPIA', NULL, NULL, 1, 2, 2, 4, '8001 AL 11000', NULL, 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(511, 8, 1, 1, NULL, 119, 115, 1, 10, '2250.00', '360.00', '2610.00', NULL, '2018-03-26 20:42:07', '2018-03-19 00:00:00', '2018-03-10 00:30:42', 1, '60 BLOCKS CON 50 C/U', '1/2 CARTA', 'AUTOCOPIA', NULL, NULL, 1, 2, 2, 4, '8001 AL 11000', NULL, 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(512, 3, 1, 1, NULL, 120, 116, 1, 11, '215.00', '34.40', '249.40', NULL, '2018-03-26 20:56:39', '2018-03-27 00:00:00', '2018-03-26 20:56:39', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(513, 7, 1, 1, NULL, 119, 115, 1, 10, '2250.00', '360.00', '2610.00', NULL, '2018-03-26 20:58:03', '2018-04-05 00:00:00', '2018-03-26 20:58:03', 1, '60 BLOCKS CON 50 C/U', '1/2 CARTA', 'AUTOCOPIA', NULL, '9874', 0, 2, 2, 4, '8001 AL 11000', NULL, 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(514, 3, 1, 1, NULL, 111, 105, 1, 10, '7514.50', '1202.32', '8716.82', NULL, '2018-03-26 21:57:19', '2018-04-03 00:00:00', '2018-03-26 21:57:19', 1, NULL, NULL, NULL, NULL, '10004', 0, 1, 2, 4, NULL, 'DISEÑO DE CUMPLEAÑOS!!!!', 1, NULL, NULL, NULL, NULL),
(515, 3, 1, 1, NULL, 57, 61, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-03-26 22:02:44', '2018-03-28 00:00:00', '2018-03-26 22:02:44', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, 'DISEÑO DE TURISMO', 1, NULL, NULL, NULL, NULL),
(516, 10, 1, 1, NULL, 184, NULL, 1, 11, '827.52', '132.40', '959.92', NULL, '2018-03-26 23:39:41', '2018-04-05 00:00:00', '2018-03-26 23:39:41', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'CLIENTE TRAJO LAS GORRAS', 2, NULL, NULL, NULL, NULL),
(517, 3, 1, 1, NULL, 35, 32, 1, 3, '41000.00', '6560.00', '47560.00', NULL, '2018-03-27 00:24:50', '2018-04-26 00:00:00', '2018-03-27 00:24:50', 1, NULL, NULL, NULL, 44, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 3, 1, 1, NULL, 103, NULL, 1, 10, '2580.00', '412.80', '2992.80', NULL, '2018-03-27 01:02:52', '2018-04-06 00:00:00', '2018-03-27 01:02:52', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'CAMISAS DIF', 3, NULL, NULL, NULL, NULL),
(519, 3, 1, 1, NULL, 103, NULL, 1, 10, '1806.00', '288.96', '2094.96', NULL, '2018-03-27 01:12:28', '2018-04-06 00:00:00', '2018-03-27 01:12:28', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'CELESTE 2G, 1M,  1 XXL (DAMA)\r\nBLANCA 1 XXL, 1XL (DAMA) , 1 XXL (HOMBRE)', 3, NULL, NULL, NULL, NULL),
(520, 3, 1, 1, NULL, 20, 19, 1, 10, '1160.00', '185.60', '1345.60', NULL, '2018-03-27 15:50:13', '2018-03-09 00:00:00', '2018-03-06 17:43:02', 1, '100', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9897', 0, 1, 2, 4, '15,001 AL 17,000', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(521, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-27 16:41:40', '2018-04-06 00:00:00', '2018-03-27 16:41:40', 1, NULL, 'OFICIO ESPECIAL', 'COUCHE 130', NULL, NULL, 0, 1, 2, 4, NULL, 'SE IMPRIMIERON EN DOS JUEGOS DE PLACAS POR QUE NO SE PODIA DAR VUELTA. COMO TRIPTICO NORMAL.\r\nSE HICIERON 10 MIL TIROS DE UN LADO Y 10 MIL DEL OTRO LADO.....SE FUE A IMPRIMIR A LA MAQUINA DE MARIO LA VUELTA POR QUE SE DESCOMPUSO LA MIA, LLEVANDO TINTAS, ESTOPA, ETC...\r\nDISEÑO TURISMO', 4, 1, NULL, NULL, NULL),
(522, 3, 1, 1, NULL, 186, 191, 1, 11, '520.00', '83.20', '603.20', NULL, '2018-03-27 16:56:50', '2018-03-27 00:00:00', '2018-03-27 16:56:50', 1, NULL, '8 X 21', 'VINIL HD', NULL, NULL, 1, 2, 2, 4, NULL, 'se pago un toner de 720 pesos quedandole uin saldo a favor de 100 pesos a servitoner', 2, 4, NULL, NULL, NULL),
(523, 3, 1, 1, NULL, 35, 32, 1, 10, '3600.00', '576.00', '4176.00', NULL, '2018-03-27 16:59:59', '2018-04-02 00:00:00', '2018-03-27 16:59:59', 1, NULL, '14 X 20', 'BRISTOL', NULL, '9971', 0, 2, 2, 4, NULL, 'DISEÑO DE MUEBLEMANIA', 4, 1, NULL, NULL, NULL),
(524, 3, 1, 1, NULL, 35, 32, 1, 10, '2400.00', '384.00', '2784.00', NULL, '2018-03-27 17:00:52', '2018-04-02 00:00:00', '2018-03-27 17:00:52', 1, NULL, '14 X 20', 'BRISTOL', NULL, '9971', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(525, 3, 1, 1, NULL, 35, 32, 1, 10, '2400.00', '384.00', '2784.00', NULL, '2018-03-27 17:01:37', '2018-04-02 00:00:00', '2018-03-27 17:01:37', 1, NULL, 'CARTA', 'COUCHE DE 250 G', NULL, '9971', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(526, 3, 1, 1, NULL, 35, 32, 1, 10, '1200.00', '192.00', '1392.00', NULL, '2018-03-27 17:02:33', '2018-04-02 00:00:00', '2018-03-27 17:02:33', 1, NULL, '10 X 14', 'BRISTOL', NULL, '9971', 0, 2, 2, 4, NULL, 'VENTA REFRESCANTE', 4, 1, NULL, NULL, NULL),
(527, 3, 1, 1, NULL, 54, 56, 1, 10, '1000.00', '160.00', '1160.00', NULL, '2018-03-27 17:20:18', '2018-03-27 00:00:00', '2018-03-27 17:20:18', 1, NULL, NULL, NULL, NULL, '9902', 0, 1, 2, 4, NULL, 'SEGUNDA CAMIONETA POLLO FELIZ', 2, 5, NULL, NULL, NULL),
(528, 10, 1, 1, NULL, 185, NULL, 1, 6, '14952.96', '2392.47', '17345.43', NULL, '2018-03-27 17:30:17', '2018-04-13 00:00:00', '2018-03-27 17:30:17', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, 'SE ANEXA LISTA DE TALLAS Y  A QUIEN PERTENECEN POR PARROQUIA', 1, NULL, NULL, NULL, NULL),
(529, 3, 1, 1, NULL, 187, 192, 1, 11, '760.00', '121.60', '881.60', NULL, '2018-03-27 17:38:38', '2018-03-27 00:00:00', '2018-03-27 17:38:38', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'PECHO IZQ LOGO ENCUENTRO SOCIAL\r\nPECHO DERECHO REYNA GARZA /CANDIDATA A DIPUTADA V DISTRITO  (HILO MORADO NOMBRE / CANDIDATA HILO NEGRO)\r\nESPALDA JUNTOS HAREMOS HISTORIA (HILO NEGRO)', 3, NULL, NULL, NULL, NULL),
(530, 3, 1, 1, NULL, 187, 192, 1, 10, '270.00', '43.20', '313.20', NULL, '2018-03-27 18:42:15', '2018-03-28 00:00:00', '2018-03-27 18:42:15', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'LOGO ENCUENTRO SOCIAL....JUNTOS HAREMOS HISTORIA', 2, 4, NULL, NULL, NULL),
(531, 8, 1, 1, NULL, 160, 164, 1, 10, '950.00', '152.00', '1102.00', NULL, '2018-03-27 19:22:58', '2018-04-06 00:00:00', '2018-03-27 19:22:58', 1, '50', 'CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, '3151-3650', NULL, 4, 2, NULL, 'VERDE', 'BLANCO'),
(532, 3, 1, 1, NULL, 191, 196, 1, 11, '900.00', '144.00', '1044.00', NULL, '2018-03-27 19:59:21', '2018-03-28 00:00:00', '2018-03-27 19:59:21', 1, NULL, NULL, NULL, NULL, '9923', 0, 1, 2, 4, NULL, 'URGE LA ENTTEGA LO MAS TEMPRANO SON PARA FORANEOS', 1, NULL, NULL, NULL, NULL),
(533, 3, 1, 1, NULL, 111, 105, 1, 10, '960.00', '153.60', '1113.60', NULL, '2018-03-27 20:00:47', '2018-04-06 00:00:00', '2018-03-27 20:00:47', 1, NULL, NULL, NULL, NULL, '9979', 0, 1, 2, 4, NULL, 'INSTALACION DE LONA EN POLLO FELIZ. VALLA', 2, 3, NULL, NULL, NULL),
(534, 8, 1, 1, NULL, 160, 164, 1, 10, '2400.00', '384.00', '2784.00', NULL, '2018-03-27 20:09:45', '2018-04-06 00:00:00', '2018-03-27 20:09:45', 1, '30 BLOCKS CON 50 JGOS. C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, 'SIN FOLIO', NULL, 4, 2, 'AZUL', 'VERDE', 'BLANCO'),
(535, 3, 1, 1, NULL, 48, 52, 1, 10, '1900.00', '304.00', '2204.00', NULL, '2018-03-27 20:12:57', '2018-04-02 00:00:00', '2018-03-27 20:12:57', 1, NULL, NULL, NULL, NULL, '9984', 0, 2, 2, 4, NULL, 'LOGO RS STUDIO', 1, NULL, NULL, NULL, NULL),
(536, 11, 1, 1, NULL, 190, 195, 1, 10, '10040.00', '1606.40', '11646.40', NULL, '2018-03-27 20:28:35', '2018-04-04 00:00:00', '2018-03-27 20:28:35', 1, NULL, NULL, NULL, NULL, '10012', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(537, 3, 1, 1, NULL, 129, 170, 1, 10, '720.00', '115.20', '835.20', NULL, '2018-03-27 21:13:32', '2018-03-28 00:00:00', '2018-03-27 21:13:32', 1, NULL, '6 X 1 MTS', NULL, NULL, '9978', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(540, 8, 1, 1, NULL, 160, NULL, 1, 10, '985.00', '157.60', '1142.60', NULL, '2018-03-27 21:23:27', '2018-04-06 00:00:00', '2018-03-27 21:23:27', 1, '10 BLOCKS CON 50 C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, 'SIN FOLIO', 'ES PARA EL DEPTO. DE SERVICIOS GENERALES', 4, 2, 'AZUL', 'AMARILLO', 'BLANCO'),
(541, 7, 1, 1, NULL, 57, 61, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-03-27 21:27:19', '2018-04-06 00:00:00', '2018-03-27 21:27:19', 1, NULL, 'CARTA', 'COUCHE 130 G', NULL, NULL, 0, 1, 2, 4, NULL, '5,000 DE CADA CANDIDATO\r\nSON 45,000 INTERIORES IGUAL\r\n9 CANDIDATOS', 4, 1, NULL, NULL, NULL),
(542, 8, 1, 1, NULL, 160, 164, 1, 10, '1245.00', '199.20', '1444.20', NULL, '2018-03-27 21:37:04', '2018-04-06 00:00:00', '2018-03-27 21:37:04', 1, '10 BLOCKS CON 50 C/U', 'CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, 'SIN FOLIO', NULL, 4, 2, 'AZUL', 'AMARILLO', 'BLANCO'),
(543, 8, 1, 1, NULL, 160, 164, 1, 10, '550.00', '88.00', '638.00', NULL, '2018-03-27 22:04:13', '2018-04-06 00:00:00', '2018-03-27 22:04:13', 1, '10 BLOCKS CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, '2751 AL 3250', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(544, 7, 1, 1, NULL, 56, 59, 1, 8, '10400.00', '1664.00', '12064.00', NULL, '2018-03-27 22:08:48', '2018-04-06 00:00:00', '2018-03-27 22:08:48', 1, NULL, NULL, 'COUCHE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(545, 8, 1, 1, NULL, 160, 164, 1, 10, '550.00', '88.00', '638.00', NULL, '2018-03-27 22:15:21', '2018-04-06 00:00:00', '2018-03-27 22:15:21', 1, '10 BLOCKS CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '9963', 0, 2, 2, 4, '2751 AL 3250', 'SON DOS FORMATOS CASI IGUALES PERO UNO ES PARA AGUA TRATADA Y OTRO PARA AGUA POTABLE .', 4, 2, NULL, 'ROSA', 'BLANCO'),
(546, 8, 1, 1, NULL, 160, 164, 1, 10, '2300.00', '368.00', '2668.00', NULL, '2018-03-27 22:30:45', '2018-04-06 00:00:00', '2018-03-27 22:30:45', 1, '5 PAQUETES CON 500 C/U', 'CARTA', 'BOND BLANCO 90 GRMS.', NULL, '9963', 0, 2, 2, 4, 'SIN FOLIO', 'ESTAS HOJAS SON PARA EL SINDICATO DE COMAPA .', 4, 1, NULL, NULL, NULL),
(547, 10, 1, 1, NULL, 176, NULL, 1, 10, '450.00', '72.00', '522.00', NULL, '2018-03-27 22:44:15', '2018-04-06 00:00:00', '2018-03-27 22:44:15', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(548, 14, 1, 1, NULL, 105, NULL, 1, 10, '905.22', '144.84', '1050.06', NULL, '2018-03-27 22:49:11', '2018-04-06 00:00:00', '2018-03-27 22:49:11', 1, NULL, NULL, NULL, NULL, '9966', 0, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(549, 3, 1, 1, NULL, 72, 68, 1, 10, '800.00', '128.00', '928.00', NULL, '2018-03-27 23:35:39', '2018-03-28 00:00:00', '2018-03-27 23:35:39', 1, NULL, NULL, NULL, NULL, '9924', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(550, 3, 1, 1, NULL, 43, 46, 1, 10, '3200.00', '512.00', '3712.00', NULL, '2018-03-28 00:22:09', '2018-04-07 00:00:00', '2018-03-28 00:22:09', 1, NULL, NULL, NULL, NULL, '9919', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(551, 3, 1, 1, NULL, 191, NULL, 1, 10, '2000.00', '320.00', '2320.00', NULL, '2018-03-28 16:37:38', '2018-03-30 00:00:00', '2018-03-28 16:37:38', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130', NULL, '9927, 9928', 0, 1, 2, 4, NULL, 'DISEÑO DE CABLE 2 DISEÑOS\r\n2,000 DE CADA DISEÑO', 4, 1, NULL, NULL, NULL),
(552, 3, 1, 1, NULL, 120, 116, 1, 11, '80.00', '12.80', '92.80', NULL, '2018-03-28 16:42:51', '2018-03-28 00:00:00', '2018-03-28 16:42:51', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(553, 3, 1, 1, NULL, 40, 37, 1, 10, '415.00', '66.40', '481.40', NULL, '2018-03-28 16:46:36', '2018-03-30 00:00:00', '2018-03-28 16:46:36', 1, NULL, NULL, NULL, NULL, '9970', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(554, 8, 1, 1, NULL, 160, 164, 1, 8, '6850.00', '1096.00', '7946.00', NULL, '2018-03-28 17:15:49', '2018-04-07 00:00:00', '2018-03-28 17:15:49', 1, 'PAQUETES CON 500 C/U', 'CARTA', 'BOND BLANCO 90 GRMS.', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(555, 8, 1, 1, NULL, 160, 164, 1, 10, '195000.00', '31200.00', '226200.00', NULL, '2018-03-28 17:36:33', '2018-04-07 00:00:00', '2018-03-28 17:36:33', 1, 'RECIBO INDIVIDUAL CAJA CON 10,000', 'MEDIO OFICIO', 'BOND BLANCO 90 GRMS.', NULL, '9253', 0, 2, 2, 4, 'SIN FOLIO', NULL, 4, 2, NULL, NULL, NULL),
(556, 3, 1, 1, NULL, 193, 198, 1, 10, '450.00', '72.00', '522.00', NULL, '2018-03-28 18:00:04', '2018-04-07 00:00:00', '2018-03-28 18:00:04', 1, NULL, NULL, NULL, NULL, '9975', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(557, 11, 1, 1, NULL, 79, 200, 1, 8, '45.00', '7.20', '52.20', NULL, '2018-03-28 18:41:58', '2018-03-28 00:00:00', '2018-03-28 18:41:58', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(558, 3, 1, 1, NULL, 130, 133, 1, 11, '4827.55', '772.41', '5599.96', NULL, '2018-03-28 19:03:59', '2018-03-28 00:00:00', '2018-03-28 19:03:59', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(559, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-03-28 21:29:37', '2018-03-29 00:00:00', '2018-03-28 21:29:37', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(560, 3, 1, 1, NULL, 72, 68, 1, 10, '880.00', '140.80', '1020.80', NULL, '2018-03-28 21:40:28', '2018-04-07 00:00:00', '2018-03-28 21:40:28', 1, NULL, 'MEDIA CARTA', 'VINIL HD', NULL, '9925', 0, 1, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(561, 3, 1, 1, NULL, 72, 68, 1, 10, '900.00', '144.00', '1044.00', NULL, '2018-03-28 21:42:19', '2018-03-27 00:00:00', '2018-03-17 17:17:13', 1, NULL, 'OFICIO', 'BOND 90 G', NULL, '9926', 0, 1, 2, 4, NULL, 'TIENE CABEZA EL REVERSO.\r\nSE VA A METER A IMPRESORA.', 4, 1, NULL, NULL, NULL),
(562, 3, 1, 1, NULL, 194, 199, 1, 3, '360.00', '57.60', '417.60', NULL, '2018-03-28 23:08:32', '2018-04-03 00:00:00', '2018-03-28 23:08:32', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(563, 3, 1, 1, NULL, 195, 201, 1, 10, '408.00', '65.28', '473.28', NULL, '2018-03-28 23:24:49', '2018-04-02 00:00:00', '2018-03-28 23:24:49', 1, NULL, NULL, NULL, NULL, '9969', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(564, 8, 1, 1, NULL, 117, 113, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-03-29 00:49:48', '2018-04-08 00:00:00', '2018-03-29 00:49:48', 1, '20 BLOCKS CON 50 JGS. C/U', 'CARTA HORIZONTAL', 'BOND TODO ORIGINAL', NULL, '9977', 0, 2, 2, 4, 'SIN FOLIO', 'EL PAPEL PARA ESTE TRABAJO SERA TODO ORIGINAL INCLUYENDO LAS COPIAS DE COLOR', 4, 2, NULL, NULL, NULL),
(565, 3, 1, 1, NULL, 78, NULL, 1, 6, '48000.00', '7680.00', '55680.00', NULL, '2018-03-29 16:49:58', '2018-04-08 00:00:00', '2018-03-29 16:49:58', 1, NULL, '31.25 X 30 CM', 'CARTULINA SULFATADA 18 PTS', NULL, NULL, 0, 2, 2, 4, NULL, 'SE MANDARA HACER NUEVO SUAJE POR QUE SE ESTA ROMPIENDO.', 4, 1, NULL, NULL, NULL),
(566, 8, 1, 1, NULL, 196, 202, 1, 10, '3350.00', '536.00', '3886.00', NULL, '2018-03-29 19:30:21', '2018-04-08 00:00:00', '2018-03-29 19:30:21', 1, '200 BLOCK CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, '10005', 0, 2, 2, 4, '472,001 AL 482,000', 'SON 10,000 COMANDAS', 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(567, 8, 1, 1, NULL, 196, 202, 1, 10, '17300.00', '2768.00', '20068.00', NULL, '2018-03-29 19:42:58', '2018-04-08 00:00:00', '2018-03-29 19:42:58', 1, '200 BLOCK CON 50 C/U', 'CARTA', 'AUTOCOPIA', NULL, '10024', 0, 2, 2, 4, '75,001 AL 85,000 SERIE \"F\"', 'RECIBO DE PAGO SERIE  \" F \"', 4, 2, 'AMARILLO', 'VERDE', 'BLANCO'),
(569, 8, 1, 1, NULL, 188, 193, 1, 10, '900.00', '144.00', '1044.00', NULL, '2018-03-29 20:42:15', '2018-04-08 00:00:00', '2018-03-29 20:42:15', 1, '20 BLOCKS CON 50 JGS. C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '9976', 0, 2, 2, 4, '5,001 AL 6,000', 'PARA LA TINTA EL PANTONE ES : 2935', 4, 2, NULL, 'AMARILLO', 'BLANCO'),
(570, 8, 1, 1, NULL, 188, 193, 1, 8, '1400.00', '224.00', '1624.00', NULL, '2018-03-29 22:55:53', '2018-04-08 00:00:00', '2018-03-29 22:55:53', 1, '20 BLOCKS CON 50 JGS. C/U', 'MEDIA CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '001 AL 1000', 'A ESTE FORMATO SE LE HARAN MODIFICACIONES AL REDISEÑAR LAS CUALES SE MARCAN EN EL BORRADOR O COPIA ANEXA', 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(571, 8, 1, 1, NULL, 188, 193, 1, 8, '3500.00', '560.00', '4060.00', NULL, '2018-03-29 23:54:02', '2018-04-08 00:00:00', '2018-03-29 23:54:02', 1, '100 BLOCKS CON 50 JGOS. C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '2,001 AL 7,000', 'ESTAS BOLETAS DE ACARREO SON PARA :  \" OBRA \"', 4, 2, NULL, 'VERDE', 'BLANCO'),
(572, 8, 1, 1, NULL, 188, 193, 1, 8, '3150.00', '504.00', '3654.00', NULL, '2018-03-30 00:07:23', '2018-04-09 00:00:00', '2018-03-30 00:07:23', 1, '60 BLOCKS CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '4001 AL 7000', 'ESTA BOLETA DE ACARREOS ES PARA :  \" CLIENTE \"', 4, 2, 'SON 2 INTERMEDIAS AZUL Y AMARILLA', 'ROSA', 'BLANCO'),
(573, 3, 1, 1, NULL, 35, 32, 1, 10, '14000.00', '2240.00', '16240.00', NULL, '2018-04-02 15:28:29', '2018-04-06 00:00:00', '2018-03-02 16:34:50', 1, NULL, NULL, NULL, NULL, '10007', 0, 2, 2, 4, NULL, 'SE INSTALA EN PLAZA CAMPESTRE EL DIA 6  DE ABRIL ....YA SE HABLO CON JUAN CARLOS (HERRERO)', 2, 3, NULL, NULL, NULL),
(574, 3, 1, 1, NULL, 163, 166, 1, 10, '2520.00', '403.20', '2923.20', NULL, '2018-04-02 15:58:54', '2018-04-06 00:00:00', '2018-04-02 15:58:54', 1, NULL, '1/4 DE CARTA', 'ADESIVO', NULL, '9981', 0, 2, 2, 4, NULL, 'SON 4 DISEÑOS.....1,000 DE CADA UNO', 4, 1, NULL, NULL, NULL),
(575, 3, 1, 1, NULL, 145, NULL, 1, 10, '2360.00', '377.60', '2737.60', NULL, '2018-04-02 16:27:55', '2018-04-12 00:00:00', '2018-04-02 16:27:55', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'TRIPTICOS CBTIS 236', 4, 1, NULL, NULL, NULL),
(576, 3, 1, 1, NULL, 120, 116, 1, 11, '168.00', '26.88', '194.88', NULL, '2018-04-02 16:33:48', '2018-04-03 00:00:00', '2018-04-02 16:33:48', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, 4, NULL, 'ABIERTO 1 PZ\r\nALBERCA 2 PZ', 2, 3, NULL, NULL, NULL),
(577, 3, 1, 1, NULL, 197, 204, 1, 10, '6900.00', '1104.00', '8004.00', NULL, '2018-04-02 16:44:58', '2018-04-03 00:00:00', '2018-04-02 16:44:58', 1, NULL, '18 X 12 CM', NULL, NULL, '9940', 0, 2, 2, 4, NULL, '3 DISEÑOS....1000 DE CADA DISEÑO', 2, 4, NULL, NULL, NULL),
(578, 14, 1, 1, NULL, 189, NULL, 1, 10, '310.34', '49.65', '359.99', NULL, '2018-04-02 16:59:14', '2018-04-12 00:00:00', '2018-04-02 16:59:14', 1, NULL, NULL, NULL, NULL, '9945', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(579, 10, 1, 1, NULL, 55, 57, 1, 8, '260.00', '41.60', '301.60', NULL, '2018-04-02 17:01:57', '2018-04-03 00:00:00', '2018-04-02 17:01:57', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE ANEXA DISEÑO', 2, NULL, NULL, NULL, NULL),
(580, 3, 1, 1, NULL, 40, 176, 1, 10, '3430.00', '548.80', '3978.80', NULL, '2018-04-02 17:14:52', '2018-04-05 00:00:00', '2018-04-02 17:14:52', 1, NULL, NULL, NULL, NULL, '10033', 0, 2, 2, 4, NULL, '7 DISEÑOS CAMBIO DE CIUDAD.', 2, 5, NULL, NULL, NULL),
(581, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-04-02 17:20:59', '2018-04-03 00:00:00', '2018-04-02 17:20:59', 1, NULL, '1/5 DE CARTA', 'HOOPS SEGURIDAD', NULL, NULL, 0, 1, 2, 4, '001-5000', 'CAMBIO DE DOMICILIO\r\nGASOLINERA Y SERVICIOS OROZCO SA DE CV\r\nTE ENVIE A TU CORREO ARTURO', 4, 1, NULL, NULL, NULL),
(582, 3, 1, 1, NULL, 84, 78, 1, 10, '750.00', '120.00', '870.00', NULL, '2018-04-02 17:24:05', '2018-04-05 00:00:00', '2018-04-02 17:24:05', 1, NULL, '5 X 9 CM', 'CARTULINA OPALINA', NULL, '9998', 0, 2, 2, 4, NULL, '100 DE BOOM\r\n200 DE EL CEDRO', 4, 1, NULL, NULL, NULL),
(583, 10, 1, 1, NULL, 198, 205, 1, 11, '720.00', '115.20', '835.20', NULL, '2018-04-02 18:34:15', '2018-04-03 00:00:00', '2018-04-02 18:34:15', 1, NULL, NULL, NULL, NULL, '9960', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(584, 10, 1, 1, NULL, 108, 102, 1, 10, '378.00', '60.48', '438.48', NULL, '2018-04-02 18:47:00', '2018-04-12 00:00:00', '2018-04-02 18:47:00', 1, NULL, NULL, NULL, NULL, '9964', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(585, 10, 1, 1, NULL, 55, 57, 1, 10, '7360.00', '1177.60', '8537.60', NULL, '2018-04-03 15:19:02', '2018-04-10 00:00:00', '2018-04-03 15:19:02', 1, NULL, NULL, NULL, NULL, '9962', 0, 2, 2, 4, NULL, 'SE ANEXA MUESTRA Y  LISTA DE LOS MUNICIPIOS', 2, NULL, NULL, NULL, NULL),
(587, 14, 1, 1, NULL, 50, NULL, 1, 10, '1137.90', '182.06', '1319.96', NULL, '2018-04-03 15:49:39', '2018-04-13 00:00:00', '2018-04-03 15:49:39', 1, NULL, NULL, NULL, NULL, '9941', 0, 2, 1, 2, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(588, 10, 1, 1, NULL, 59, 96, 1, 10, '3000.00', '480.00', '3480.00', NULL, '2018-04-03 15:50:46', '2018-04-06 00:00:00', '2018-04-03 15:50:46', 1, NULL, '48 X 16 CM', 'COUCHE DE 250 GRAMOS', NULL, '9956', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(589, 3, 1, 1, NULL, 35, 32, 1, 10, '1350.00', '216.00', '1566.00', NULL, '2018-04-03 15:54:04', '2018-04-06 00:00:00', '2018-02-28 15:12:33', 1, NULL, '28 X 8 CM', 'ADESIVO MATE', NULL, '9993', 0, 2, 2, 4, NULL, 'CABE 2 PIEZAS POR HOJA TAMAÑO CARTA', 2, 1, NULL, NULL, NULL),
(590, 3, 1, 1, NULL, 43, 46, 1, 10, '1300.00', '208.00', '1508.00', NULL, '2018-04-03 16:02:45', '2018-04-07 00:00:00', '2018-04-03 16:02:45', 1, NULL, 'CARTA', 'AUTOCOPIA', 134, '10006', 0, NULL, NULL, NULL, 'SIN FOLIO', '....ENTREGAR SIN PEGAR.....', NULL, NULL, NULL, 'ROSA', 'BLANCO'),
(591, 3, 1, 1, NULL, 43, 46, 1, 10, '800.00', '128.00', '928.00', NULL, '2018-04-03 16:30:19', '2018-04-07 00:00:00', '2018-04-03 16:30:19', 1, NULL, 'CARTA', 'BOND', 134, '10006', 0, NULL, NULL, NULL, 'SIN FOLIO', NULL, NULL, NULL, NULL, NULL, NULL),
(592, 10, 1, 1, NULL, 75, 73, 1, 6, '1890.00', '302.40', '2192.40', NULL, '2018-04-03 17:23:20', '2018-04-20 00:00:00', '2018-04-03 17:23:20', 1, NULL, NULL, NULL, 81, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(593, 3, 1, 1, NULL, 75, 73, 1, 6, '9450.00', '1512.00', '10962.00', NULL, '2018-04-03 17:26:56', '2018-04-20 00:00:00', '2018-04-03 17:26:56', 1, NULL, NULL, NULL, 92, NULL, 0, 2, 2, 4, NULL, '100 PLAYERAS C.R. AMARILLO ADULTO (40 G, 40 M , 20 CH)\r\n110 PLAYERAS C.R. AMARILLO NIÑOS (6-15PZ/XS JUVEN-15PZ/ CH JUV 40PZ/ M JUV 40PZ)', 1, NULL, NULL, NULL, NULL),
(594, 10, 1, 1, NULL, 59, 96, 1, 10, '30900.00', '4944.00', '35844.00', NULL, '2018-04-03 17:41:12', '2018-04-06 00:00:00', '2018-04-03 17:41:12', 1, NULL, NULL, NULL, NULL, '9955', 0, 2, 2, 4, NULL, 'SE ENVIO DISEÑO POR CORREO', 1, NULL, NULL, NULL, NULL),
(595, 10, 1, 1, NULL, 115, 111, 1, 6, '760.00', '121.60', '881.60', NULL, '2018-04-03 18:43:31', '2018-04-03 00:00:00', '2018-04-03 18:43:31', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(596, 8, 1, 1, NULL, 157, 161, 1, 11, '450.00', '72.00', '522.00', NULL, '2018-04-03 22:42:42', '2018-04-03 00:00:00', '2018-03-22 19:43:14', 1, NULL, '.45 X 2.30 MTS.', 'VINIL NEGRO', NULL, NULL, 1, 2, 2, 4, NULL, 'ESTE TEXTO SE PEGARA EN LA LONA DE LA JUDICATURA FEDERAL ....POR FAVOR SE TIENE QUE IR A INSTALAR HOY MISMO JUEVES 22...GRACIAS !', 2, 5, NULL, NULL, NULL),
(597, 3, 1, 1, NULL, 120, 116, 1, 10, '56.00', '8.96', '64.96', NULL, '2018-04-03 23:10:13', '2018-04-05 00:00:00', '2018-04-02 16:33:48', 1, NULL, NULL, NULL, NULL, '9996', 0, 2, 2, 4, NULL, 'ABIERTO 1 PZ\r\nALBERCA 2 PZ', 2, 3, NULL, NULL, NULL),
(598, 3, 1, 1, NULL, 199, 206, 1, 10, '5300.00', '848.00', '6148.00', NULL, '2018-04-04 14:10:27', '2018-04-09 00:00:00', '2018-04-04 14:10:27', 1, NULL, NULL, NULL, 137, '10030', 0, 2, 2, 4, NULL, 'EL MATERIAL DEL PRIMER RENGLON LLEGARA DE EXPOMEX.', 2, 4, NULL, NULL, NULL),
(599, 3, 1, 1, NULL, 199, 206, 1, 10, '3400.00', '544.00', '3944.00', NULL, '2018-04-04 14:15:31', '2018-05-09 00:00:00', '2018-04-04 14:15:31', 1, NULL, 'CARTA', 'COUCHE DE 250 G', 137, '10030', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(600, 7, 1, 1, NULL, 95, 90, 1, 8, '1790.00', '286.40', '2076.40', NULL, '2018-04-04 14:35:13', '2018-04-10 00:00:00', '2018-04-04 14:35:13', 1, NULL, NULL, NULL, 88, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(601, 7, 1, 1, NULL, 92, 154, 1, 8, '15000.00', '2400.00', '17400.00', NULL, '2018-04-04 15:38:46', '2018-04-07 00:00:00', '2018-04-04 15:38:46', 1, NULL, NULL, NULL, 131, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(602, 3, 1, 1, NULL, 120, 116, 1, 10, '112.00', '17.92', '129.92', NULL, '2018-04-04 17:11:06', '2018-04-05 00:00:00', '2018-04-04 17:11:06', 1, NULL, NULL, NULL, NULL, '9983', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(603, 10, 1, 1, NULL, 29, 120, 1, 10, '900.00', '144.00', '1044.00', NULL, '2018-04-04 18:10:28', '2018-04-12 00:00:00', '2018-04-04 18:10:28', 1, NULL, '1/4 CARTA', 'SEGURIDAD AMARILLO', NULL, '10031', 0, 2, 2, 4, NULL, 'LLEVA UNOS CIRCULOS EN COLOR GRIS ANEXO MUESTRA', 4, 2, NULL, NULL, NULL),
(604, 10, 1, 1, NULL, 29, 120, 1, 10, '550.00', '88.00', '638.00', NULL, '2018-04-04 18:20:31', '2018-04-12 00:00:00', '2018-04-04 18:20:31', 1, NULL, 'TAMAÑO CARTA', NULL, NULL, '10031', 0, 2, 2, 4, NULL, 'LLEVA UNOS CIRCULOS  ANEXO MUESTRA', 4, 2, NULL, NULL, NULL),
(605, 3, 1, 1, NULL, 40, 37, 1, 6, '777.00', '124.32', '901.32', NULL, '2018-04-04 23:07:34', '2018-04-14 00:00:00', '2018-04-04 23:07:34', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(606, 3, 1, 1, NULL, 111, 105, 1, 10, '2400.00', '384.00', '2784.00', NULL, '2018-04-04 23:11:35', '2018-05-04 00:00:00', '2018-04-04 23:11:35', 1, '100', 'MEDIA CARTA', 'BOND', 117, '10003', 0, 2, 2, 4, '118,001 AL 128,000', NULL, 4, 2, NULL, NULL, NULL),
(607, 3, 1, 1, NULL, 111, 105, 1, 10, '720.00', '115.20', '835.20', NULL, '2018-04-04 23:16:33', '2018-03-14 00:00:00', '2018-03-08 17:46:38', 1, '50', 'MEDIA CARTA', 'AUTOCOPIA', NULL, '10017', 0, 1, 2, 4, '116,001 AL 118,000', NULL, 4, 2, NULL, 'ROSA', 'BLANCO'),
(608, 3, 1, 1, NULL, 111, 105, 1, 3, '5600.00', '896.00', '6496.00', NULL, '2018-04-04 23:31:27', '2018-04-09 00:00:00', '2018-04-04 23:31:27', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, 'MEDID A DE TOTAM...\r\nMEDIDA DE UNA CARA......1.80 X 50\r\nMEDIDA TODO JUNTO.......1.80 X 1.50 (MAS SOBRANTE)\r\nME COMENTA MARTIN QUE VIENE TODO COMPLETO.', 2, 4, NULL, NULL, NULL),
(609, 8, 1, 1, NULL, 157, 161, 1, 6, '525.00', '84.00', '609.00', NULL, '2018-04-04 23:33:32', '2018-04-14 00:00:00', '2018-04-04 23:33:32', 1, NULL, 'LIBRO TAMAÑO OFICIO', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LAS ENCUADERNACIONES DE LA JUDICATURA FEDERAL SERAN COCIDOS  ( NO SOLO PEGADOS ) Y USAR RESISTOL BLANCO PREFERENTEMENTE ) SI ACASO SE USA RESISTOL 5000 DEBERA HACERSE CON MUCHO CUIDADO PARA QUE QUEDE UNIFORME LA PEGADA Y QUE NO SE VAYAN A MANCHAR ....POR FAVOR', 1, NULL, NULL, NULL, NULL),
(610, 3, 1, 1, NULL, 44, NULL, 1, 10, '1876.00', '300.16', '2176.16', NULL, '2018-04-04 23:46:18', '2018-04-14 00:00:00', '2018-04-04 23:46:18', 1, NULL, NULL, NULL, NULL, '9965', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(611, 8, 1, 1, NULL, 157, 161, 1, 6, '2100.00', '336.00', '2436.00', NULL, '2018-04-05 00:00:04', '2018-04-14 00:00:00', '2018-04-05 00:00:04', 1, 'ENCUADERNADO', 'TAMAÑO OFICIO', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LAS ENCUADERNACIONES DE LA JUDICATURA FEDERAL SERAN COCIDOS,( NO SOLO PEGADOS ) Y USAR RESISTOL BLANCO PREFERENTEMENTE Y SI ACASO SE USA RESISTOL 5000 DEBERA HACERSE CON MUCHO CUIDADO PARA QUE QUEDE UNIFORME LA PEGADA Y QUE NO SE VAYAN A MANCHAR ....POR FAVOR', 1, NULL, NULL, NULL, NULL),
(612, 10, 1, 1, NULL, 108, 102, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-05 00:18:37', '2018-04-05 00:00:00', '2018-04-05 00:18:37', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(613, 3, 1, 1, NULL, 201, NULL, 1, 11, '2160.00', '345.60', '2505.60', NULL, '2018-04-05 13:35:06', '2018-04-07 00:00:00', '2018-04-05 13:35:06', 1, NULL, '20 X 20', 'VINIL HD', NULL, NULL, 1, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(614, 3, 1, 1, NULL, 20, 19, 1, 3, '4000.00', '640.00', '4640.00', NULL, '2018-04-05 16:12:57', '2018-04-09 00:00:00', '2018-04-05 16:12:57', 1, '100', 'CARTA', 'BOND', NULL, NULL, 0, NULL, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(615, 3, 1, 1, NULL, 20, 19, 1, 3, '1230.00', '196.80', '1426.80', NULL, '2018-04-05 16:18:10', '2018-04-10 00:00:00', '2018-04-05 16:18:10', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(616, 3, 1, 1, NULL, 57, 61, 1, 8, '0.00', '0.00', '0.00', NULL, '2018-04-05 16:31:57', '2018-04-06 00:00:00', '2018-03-27 16:41:40', 1, NULL, 'OFICIO ESPECIAL', 'COUCHE 130', NULL, NULL, 0, 1, 2, 4, NULL, 'SE IMPRIMIERON EN DOS JUEGOS DE PLACAS POR QUE NO SE PODIA DAR VUELTA. COMO TRIPTICO NORMAL.\r\nSE HICIERON 10 MIL TIROS (5 Y 5 POR LA VUELTA)\r\nDISEÑO TURISMO LO ENVIO POR CORREO EL 5/04/18', 4, 1, NULL, NULL, NULL),
(617, 10, 1, 1, NULL, 116, NULL, 1, 11, '430.00', '68.80', '498.80', NULL, '2018-04-05 16:32:39', '2018-04-12 00:00:00', '2018-04-05 16:32:39', 1, NULL, NULL, 'CARTULINA OPALINA BLANCA', NULL, NULL, 1, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(618, 7, 1, 1, NULL, 187, 192, 1, 8, '3500.00', '560.00', '4060.00', NULL, '2018-04-05 18:01:36', '2018-04-06 00:00:00', '2018-04-05 18:01:36', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(619, 3, 1, 1, NULL, 203, NULL, 1, 8, '5400.00', '864.00', '6264.00', NULL, '2018-04-05 18:02:40', '2018-04-06 00:00:00', '2018-04-05 18:02:40', 1, NULL, '72 X 50', 'TELIXCON', NULL, NULL, 0, 2, 2, 4, NULL, 'SE VA A FACTURAR CON OTRO CONCEPTO.', 2, 4, NULL, NULL, NULL),
(620, 7, 1, 1, NULL, 115, 128, 1, 10, '3510.00', '561.60', '4071.60', NULL, '2018-04-05 18:44:22', '2018-04-15 00:00:00', '2018-04-05 18:44:22', 1, NULL, NULL, NULL, NULL, '9973', 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(621, 11, 1, 1, NULL, 63, 209, 1, 6, '7215.00', '1154.40', '8369.40', NULL, '2018-04-05 21:51:40', '2018-05-05 00:00:00', '2018-04-05 21:51:40', 1, NULL, NULL, NULL, 145, NULL, 0, NULL, NULL, NULL, NULL, 'TALLAS  (CABALLERO) 9 CH,12 M, 12 GDE Y 6 EXTGDE\r\nHACER DOS FACTURAS UNA FACTURA CON 26 PLAYERAS Y EN OTRA 13 PLAYERAS', NULL, NULL, NULL, NULL, NULL),
(622, 10, 1, 1, NULL, 108, 102, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-05 22:49:55', '2018-04-06 00:00:00', '2018-04-05 22:49:55', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(623, 8, 1, 1, NULL, 117, 113, 1, 8, '1800.00', '288.00', '2088.00', NULL, '2018-04-05 23:31:28', '2018-04-06 00:00:00', '2018-04-05 23:31:28', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, '1 LONA ES DE BIENVENIDA AL DR. VALLEJO Y 1 LONA ES DE BIENVENIDA A CONSEJISTAS .', 2, 3, NULL, NULL, NULL),
(624, 3, 1, 1, NULL, 57, 61, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-06 13:44:43', '2018-04-16 00:00:00', '2018-04-06 13:44:43', 1, NULL, 'MEDIA CARTA', 'BRISTOL 65 KG', NULL, NULL, 0, 1, 2, 4, NULL, 'SE ENTREGARA MEDIA CARTA, CON PLECA DE CORTE AL CENTRO.', 4, 1, NULL, NULL, NULL),
(625, 14, 1, 1, NULL, 65, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-04-06 15:40:39', '2018-04-16 00:00:00', '2018-04-06 15:40:39', 1, NULL, NULL, NULL, NULL, '9986', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(626, 3, 1, 1, NULL, 84, 78, 1, 10, '500.00', '80.00', '580.00', NULL, '2018-04-06 16:00:25', '2018-04-05 00:00:00', '2018-04-02 17:24:05', 1, NULL, '5 X 9 CM', 'CARTULINA OPALINA', NULL, '9998', 0, 2, 2, 4, NULL, 'DISEÑO DEL PAPA SR. JOSE ASSAD MONTELONGO', 4, 1, NULL, NULL, NULL),
(627, 3, 1, 1, NULL, 204, 210, 1, 6, '750.00', '120.00', '870.00', NULL, '2018-04-06 16:06:37', '2018-04-16 00:00:00', '2018-04-06 16:06:37', 1, NULL, 'CARTA', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'TENER CUIDADO CON LA IMPRESION Y LA CANTIDAD DE AGUA EN LA MAQUINA.', 4, 2, NULL, NULL, NULL),
(628, 3, 1, 1, NULL, 35, 32, 1, 8, '7500.00', '1200.00', '8700.00', NULL, '2018-04-06 16:11:28', '2018-04-10 00:00:00', '2018-04-06 16:11:28', 1, NULL, '1.80 X 1.00 M', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'ANEXO LISTA DE INSTALACIONES Y DE COMO SE VA A DISTRIBUIR.', 2, 4, NULL, NULL, NULL),
(629, 3, 1, 1, NULL, 23, 21, 1, 10, '9000.00', '1440.00', '10440.00', NULL, '2018-04-06 17:17:01', '2018-04-10 00:00:00', '2018-04-06 17:17:01', 1, NULL, NULL, NULL, 149, '10028', 0, 2, 2, 4, NULL, 'LOGO EN CILINDRO EN BLANCO\r\nLOGO EN MOCHILA Y GORRA HACER PROPUESTA EN COLOR Y CON HILO BLANCO', 3, NULL, NULL, NULL, NULL),
(630, 7, 1, 1, NULL, 19, 108, 1, 6, '2240.00', '358.40', '2598.40', NULL, '2018-04-06 17:22:34', '2018-04-09 00:00:00', '2018-04-06 17:22:34', 1, NULL, NULL, NULL, NULL, NULL, 0, 3, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(631, 8, 1, 1, NULL, 188, 193, 1, 8, '1400.00', '224.00', '1624.00', NULL, '2018-04-06 17:49:29', '2018-04-16 00:00:00', '2018-04-06 17:49:29', 1, 'EMPACADAS DE 500', 'CARTA', 'FACIA BOND BLANCO !!', NULL, NULL, 0, 2, 2, 4, NULL, 'SE ANEXA HOJA DE MUESTRA PARA QUE SE IMPRIMAN IGUALES ....POR FAVOR', 4, 2, NULL, NULL, NULL),
(632, 3, 1, 1, NULL, 111, 105, 1, 10, '3407.50', '545.20', '3952.70', NULL, '2018-04-06 17:52:19', '2018-03-23 00:00:00', '2018-03-16 17:36:59', 1, NULL, NULL, NULL, NULL, '10004', 0, 1, 2, 4, NULL, 'AUTORIZACION DE DISEÑOS CON CHUY V.', 1, NULL, NULL, NULL, NULL),
(633, 14, 1, 1, NULL, 205, NULL, 1, 11, '482.76', '77.24', '560.00', NULL, '2018-04-06 18:35:04', '2018-04-16 00:00:00', '2018-04-06 18:35:04', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(634, 8, 1, 1, NULL, 206, 211, 1, 6, '7100.00', '1136.00', '8236.00', NULL, '2018-04-06 19:02:03', '2018-04-12 00:00:00', '2018-04-06 19:02:03', 1, 'EMPACADOS DE 500', 'OFICIO', 'PAPEL OPALINA BLANCO', NULL, NULL, 0, 2, 2, 4, NULL, 'ESTE FORMATO ES T/OFICIO Y LLEVA UNA PLECA DE CORTE VERTICAL EN LADO IZQUIERDO VIENDOLO DE FRENTE.', 4, 1, NULL, NULL, NULL),
(635, 7, 1, 1, NULL, 132, 135, 1, 8, '1960.00', '313.60', '2273.60', NULL, '2018-04-06 19:42:11', '2018-04-09 00:00:00', '2018-04-06 19:42:11', 1, NULL, NULL, NULL, 84, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(636, 8, 1, 1, NULL, 207, 212, 1, 6, '600.00', '96.00', '696.00', NULL, '2018-04-06 20:31:16', '2018-04-16 00:00:00', '2018-04-06 20:31:16', 1, '10 BLOCKS CON 50 C/U', '1/4 CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '001 AL 500', NULL, 4, 2, NULL, 'EL QUE TENGAMOS CF', 'BLANCO');
INSERT INTO `orden` (`id`, `id_usuario`, `id_empresa`, `id_sucursal`, `id_seccion`, `id_cliente`, `id_contacto`, `id_moneda`, `id_ordenestado`, `subtotal`, `iva`, `total`, `motivocancelacion`, `fecha`, `fechaentrega`, `fecharecepcion`, `activo`, `block`, `medidaimpresion`, `papel`, `id_cotizacion`, `foliofactura`, `especial`, `id_usocfdi`, `id_metodopago`, `id_mediopago`, `folio`, `observaciones`, `id_tipo`, `id_maquina`, `colorcfb`, `colorcf`, `colorinicial`) VALUES
(638, 7, 1, 1, NULL, 32, 215, 1, 10, '6138.00', '982.08', '7120.08', NULL, '2018-04-06 21:14:51', '2018-04-09 00:00:00', '2018-04-06 21:14:51', 1, NULL, NULL, NULL, 151, '10038', 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(639, 7, 1, 1, NULL, 208, 216, 1, 6, '900.00', '144.00', '1044.00', NULL, '2018-04-06 22:10:50', '2018-04-12 00:00:00', '2018-04-06 22:10:50', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(640, 14, 1, 1, NULL, 112, NULL, 1, 10, '120.69', '19.31', '140.00', NULL, '2018-04-06 22:32:04', '2018-04-16 00:00:00', '2018-04-06 22:32:04', 1, NULL, NULL, NULL, NULL, '9997', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(641, 10, 1, 1, NULL, 176, NULL, 1, 6, '1200.00', '192.00', '1392.00', NULL, '2018-04-06 22:39:18', '2018-04-14 00:00:00', '2018-04-06 22:39:18', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(642, 7, 1, 1, NULL, 209, 218, 1, 8, '327.50', '52.40', '379.90', NULL, '2018-04-06 22:45:40', '2018-04-16 00:00:00', '2018-04-06 22:45:40', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(644, 3, 1, 1, NULL, 40, 38, 1, 3, '35649.00', '5703.84', '41352.84', NULL, '2018-04-06 23:10:17', '2018-04-13 00:00:00', '2018-04-06 23:10:17', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'REVISAR CON FOTOMONTAJE COMO NORMALMENTE SE HACE.', 1, NULL, NULL, NULL, NULL),
(645, 10, 1, 1, NULL, 147, 146, 1, 10, '3400.00', '544.00', '3944.00', NULL, '2018-04-06 23:18:49', '2018-04-11 00:00:00', '2018-04-06 23:18:49', 1, 'C/50', 'CARTA', 'AUTOCOPIA', NULL, '10026', 0, 2, 2, 4, 'S/F', NULL, 4, 2, 'ROSA', NULL, 'BLANCO'),
(646, 10, 1, 1, NULL, 147, 146, 1, 10, '1800.00', '288.00', '2088.00', NULL, '2018-04-06 23:26:04', '2018-04-11 00:00:00', '2018-04-06 23:26:04', 1, 'C/100', 'CARTA', 'BOND', NULL, '10026', 0, 2, 2, 4, 'S/F', NULL, 4, 2, NULL, NULL, NULL),
(647, 10, 1, 1, NULL, 147, 146, 1, 10, '1000.00', '160.00', '1160.00', NULL, '2018-04-06 23:56:58', '2018-04-11 00:00:00', '2018-04-06 23:56:58', 1, 'C/100', 'CARTA', 'BOND', NULL, '10026', 0, 2, 2, 4, 'S/F', NULL, 4, 2, NULL, NULL, NULL),
(648, 14, 1, 1, NULL, 105, NULL, 1, 10, '905.22', '144.84', '1050.06', NULL, '2018-04-07 00:48:32', '2018-04-17 00:00:00', '2018-04-07 00:48:32', 1, NULL, NULL, NULL, NULL, '9999', 0, 2, 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(649, 10, 1, 1, NULL, 49, 51, 1, 10, '11560.00', '1849.60', '13409.60', NULL, '2018-04-07 14:48:18', '2018-04-12 00:00:00', '2018-04-07 14:48:18', 1, NULL, '1/2 CARTA', NULL, NULL, '10039', 0, 2, 2, 4, '001 AL 800', 'ANEXO DISEÑO', 5, NULL, NULL, NULL, NULL),
(650, 3, 1, 1, NULL, 23, 21, 1, 10, '490.00', '78.40', '568.40', NULL, '2018-04-07 15:35:13', '2018-04-09 00:00:00', '2018-04-07 15:35:13', 1, NULL, '1.50 X 2.00 M', NULL, NULL, '10010', 0, 2, 2, 4, NULL, 'SE ENTREGA EN DIF TAM, TAMATAN CON FOTO.', 2, 3, NULL, NULL, NULL),
(651, 7, 1, 1, NULL, 64, NULL, 1, 6, '80.00', '12.80', '92.80', NULL, '2018-04-07 15:47:04', '2018-04-17 00:00:00', '2018-04-07 15:47:04', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(652, 3, 1, 1, NULL, 29, 29, 1, 10, '1100.00', '176.00', '1276.00', NULL, '2018-04-07 16:49:30', '2018-04-10 00:00:00', '2018-02-26 22:42:38', 1, NULL, NULL, NULL, NULL, '10036', 0, 2, 2, 4, NULL, 'SE INSTALARAN EN MATRIZ', 2, 3, NULL, NULL, NULL),
(653, 3, 1, 1, NULL, 19, 220, 1, 3, '344.00', '55.04', '399.04', NULL, '2018-04-07 16:56:52', '2018-04-17 00:00:00', '2018-04-07 16:56:52', 1, NULL, '1/4 DE CARTA', 'BOND', NULL, NULL, 0, 2, 2, 4, '00-99', 'ENVIAR PARA AUTORIZACION', 4, 5, NULL, NULL, NULL),
(654, 14, 1, 1, NULL, 205, NULL, 1, 11, '482.76', '77.24', '560.00', NULL, '2018-04-07 17:55:46', '2018-04-17 00:00:00', '2018-04-07 17:55:46', 1, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(655, 3, 1, 1, NULL, 40, 37, 1, 10, '75.00', '12.00', '87.00', NULL, '2018-04-07 17:58:27', '2018-04-10 00:00:00', '2018-04-07 17:58:27', 1, NULL, 'DOBLE CARTA', 'BRISTOL O PAPEL OPALINA', NULL, '10034', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(656, 14, 1, 1, NULL, 106, NULL, 1, 11, '500.00', '80.00', '580.00', NULL, '2018-04-07 18:42:29', '2018-04-09 00:00:00', '2018-03-09 17:56:00', 1, NULL, NULL, NULL, NULL, '10009', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(657, 3, 1, 1, NULL, 212, 222, 1, 11, '120.00', '19.20', '139.20', NULL, '2018-04-07 19:02:22', '2018-04-17 00:00:00', '2018-04-07 19:02:22', 1, NULL, NULL, NULL, NULL, '10014', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(658, 3, 1, 1, NULL, 129, 170, 1, 10, '4950.00', '792.00', '5742.00', NULL, '2018-04-09 14:25:39', '2018-04-09 00:00:00', '2018-04-09 14:25:39', 1, NULL, NULL, NULL, NULL, '10037', 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(659, 3, 1, 1, NULL, 40, 37, 1, 6, '300.00', '48.00', '348.00', NULL, '2018-04-09 14:28:47', '2018-04-19 00:00:00', '2018-04-09 14:28:47', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'DISEÑO URBAN', 2, 3, NULL, NULL, NULL),
(660, 3, 1, 1, NULL, 23, 21, 1, 10, '700.00', '112.00', '812.00', NULL, '2018-04-09 15:29:31', '2018-04-10 00:00:00', '2018-04-09 15:29:31', 1, NULL, NULL, NULL, 157, '10011', 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(661, 3, 1, 1, NULL, 36, 125, 1, 8, '7750.00', '1240.00', '8990.00', NULL, '2018-04-09 15:44:20', '2018-04-10 00:00:00', '2018-04-09 15:44:20', 1, NULL, 'CARTA', 'COUCHE 130 GRAMOS', 109, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(663, 10, 1, 1, NULL, 34, 31, 1, 6, '7500.00', '1200.00', '8700.00', NULL, '2018-04-09 17:35:05', '2018-04-10 00:00:00', '2018-04-09 17:35:05', 1, NULL, '3.88 X 2.72 METROS', 'LONA', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(664, 8, 1, 1, NULL, 117, 113, 1, 8, '3000.00', '480.00', '3480.00', NULL, '2018-04-09 17:53:05', '2018-04-09 00:00:00', '2018-04-09 17:53:05', 1, NULL, '5 X 6 MTS.', 'lona impresa a color', NULL, NULL, 0, 2, 2, 4, NULL, 'POR FAVOR SI SE PUEDE HOY MISMO PARA QUE SE IMPRIMA !!', 2, 3, NULL, NULL, NULL),
(665, 3, 1, 1, NULL, 35, 32, 1, 6, '20000.00', '3200.00', '23200.00', NULL, '2018-04-09 17:58:13', '2018-04-13 00:00:00', '2018-03-05 20:52:07', 1, NULL, '50 X 34 CM', 'COUCHE DE 115 G', NULL, NULL, 0, 2, 2, 4, NULL, 'SE ENTREGAN DOBLADOS.', 4, 1, NULL, NULL, NULL),
(666, 8, 1, 1, NULL, 109, 103, 1, 6, '500.00', '80.00', '580.00', NULL, '2018-04-09 18:28:08', '2018-04-19 00:00:00', '2018-04-09 18:28:08', 1, 'EMPACADAS', 'MEDIDA DE LAS BOLSAS : 29.5 X 31 CM.', NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(667, 3, 1, 1, NULL, 35, 32, 1, 8, '7350.00', '1176.00', '8526.00', NULL, '2018-04-09 18:52:59', '2018-04-12 00:00:00', '2018-02-28 15:22:22', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(668, 10, 1, 1, NULL, 107, 101, 1, 10, '2600.00', '416.00', '3016.00', NULL, '2018-04-09 22:08:26', '2018-04-10 00:00:00', '2018-04-09 22:08:26', 1, NULL, 'TAMAÑO OFICIO', 'COUCHE DE 130 GRAMOS', NULL, '10023', 0, 2, 2, 4, NULL, 'SON 3,000 TRIPTICOS', 4, 1, NULL, NULL, NULL),
(669, 14, 1, 1, NULL, 65, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-04-09 22:23:33', '2018-04-19 00:00:00', '2018-04-09 22:23:33', 1, NULL, NULL, NULL, NULL, '10015', 0, 2, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(670, 10, 1, 1, NULL, 108, 102, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-09 22:30:31', '2018-04-10 00:00:00', '2018-04-09 22:30:31', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(671, 3, 1, 1, NULL, 174, 179, 1, 10, '1000.00', '160.00', '1160.00', NULL, '2018-04-09 22:33:25', '2018-04-09 00:00:00', '2018-04-09 22:33:25', 1, NULL, NULL, NULL, NULL, '10008', 0, 1, 2, 4, NULL, 'SE ENTREGAN SIN ACABADOS..... CON REBASE.\r\n1 DE CADA DISEÑO.', 2, 3, NULL, NULL, NULL),
(672, 7, 1, 1, NULL, 40, 39, 1, 6, '1300.00', '208.00', '1508.00', NULL, '2018-04-10 00:17:23', '2018-04-13 00:00:00', '2018-03-12 15:19:16', 1, NULL, '5X9', 'CARTULINA OPALINA', NULL, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(673, 3, 1, 1, NULL, 57, 61, 1, 3, '0.00', '0.00', '0.00', NULL, '2018-04-10 16:06:11', '2018-04-20 00:00:00', '2018-04-10 16:06:11', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 1, 2, 4, NULL, 'SE ENVIARA POR PAQUETERIA A MATAMOROS\r\nCLIENTE TRAJO PLACAS Y YO PUSE IMPRESION Y PAPEL', 4, 1, NULL, NULL, NULL),
(674, 3, 1, 1, NULL, 43, 46, 1, 3, '300.00', '48.00', '348.00', NULL, '2018-04-10 16:10:48', '2018-04-20 00:00:00', '2018-04-10 16:10:48', 1, NULL, '5 X 9 CM', 'CARTULINA OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, 'NUEVA PERSONA DE MARKETING', 4, 1, NULL, NULL, NULL),
(675, 3, 1, 1, NULL, 54, 56, 1, 6, '1400.00', '224.00', '1624.00', NULL, '2018-04-10 16:14:26', '2018-04-13 00:00:00', '2018-04-10 16:14:26', 1, NULL, '14 X 21,5', 'couche 250 g', NULL, NULL, 0, 1, 2, 4, NULL, 'MISMO DISEÑO FRENTE Y REVERSO.', 4, 1, NULL, NULL, NULL),
(676, 14, 1, 1, NULL, 50, NULL, 1, 10, '189.65', '30.34', '219.99', NULL, '2018-04-10 16:45:45', '2018-04-20 00:00:00', '2018-04-10 16:45:45', 1, NULL, NULL, NULL, NULL, '10016', 0, 2, 1, 1, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(677, 3, 1, 1, NULL, 72, 68, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-10 17:30:24', '2018-04-20 00:00:00', '2018-04-10 17:30:24', 1, NULL, 'FINAL CARTA', 'COUCHE DE 300 GR', NULL, NULL, 0, 1, 2, 4, NULL, 'CON SOLAPA SIN PEGAR.', 4, 1, NULL, NULL, NULL),
(678, 7, 1, 1, NULL, 93, 89, 1, 3, '160.00', '25.60', '185.60', NULL, '2018-04-10 17:42:24', '2018-04-20 00:00:00', '2018-04-10 17:42:24', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 2, NULL, NULL, 2, 3, NULL, NULL, NULL),
(679, 3, 1, 1, NULL, 57, 61, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-10 18:11:47', '2018-04-13 00:00:00', '2018-04-10 18:11:47', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, '2 PLIEGOS DE 5,000 TIROS DOBLE CARTA\r\nSELECCION COLOR AMBOS LADOS.\r\nUNIVERSIDAD DE MATAMOROS', 4, 1, NULL, NULL, NULL),
(680, 3, 1, 1, NULL, 35, 32, 1, 8, '1200.00', '192.00', '1392.00', NULL, '2018-04-10 18:56:34', '2018-04-12 00:00:00', '2018-03-27 17:00:52', 1, NULL, '14 X 20', 'BRISTOL', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(681, 3, 1, 1, NULL, 35, 32, 1, 6, '7600.00', '1216.00', '8816.00', NULL, '2018-04-10 19:58:43', '2018-04-20 00:00:00', '2018-04-10 19:58:43', 1, NULL, '10 X 6 CM', 'COUCHE DE 300 GR', NULL, NULL, 0, 2, 2, 4, NULL, 'PLASTIFICADO MATE 1 LADO', 4, 1, NULL, NULL, NULL),
(682, 3, 1, 1, NULL, 47, 60, 1, 6, '2700.00', '432.00', '3132.00', NULL, '2018-04-10 20:12:03', '2018-04-20 00:00:00', '2018-04-10 20:12:03', 1, NULL, 'CARTA FINAL', 'COUCHE DE 300 G', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(683, 3, 1, 1, NULL, 47, 60, 1, 8, '5900.00', '944.00', '6844.00', NULL, '2018-04-10 20:13:43', '2018-04-11 00:00:00', '2018-04-10 20:13:43', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'INSTALACION EN EL AUDITORIA DEL ICEST BLVD FIDEL VELAZQUEZ...INSTALARSE EL DIA 11 DE ABRIL', 2, 3, NULL, NULL, NULL),
(684, 10, 1, 1, NULL, 116, NULL, 1, 3, '1600.00', '256.00', '1856.00', NULL, '2018-04-10 22:01:38', '2018-04-13 00:00:00', '2018-04-10 22:01:38', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'ANEXO MUESTRA PERO CON OTRO DISEÑO', 4, 1, NULL, NULL, NULL),
(685, 10, 1, 1, NULL, 116, NULL, 1, 3, '1500.00', '240.00', '1740.00', NULL, '2018-04-10 22:09:28', '2018-04-13 00:00:00', '2018-04-10 22:09:28', 1, NULL, 'CARTA', 'COUCHE DE 250 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'DISEÑO LO TIENE SAYRA', 4, 1, NULL, NULL, NULL),
(686, 14, 1, 1, NULL, 105, NULL, 1, 10, '603.48', '96.56', '700.04', NULL, '2018-04-10 22:22:54', '2018-04-20 00:00:00', '2018-04-10 22:22:54', 1, NULL, NULL, NULL, NULL, '10018', 0, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(687, 10, 1, 1, NULL, 107, NULL, 1, 6, '1400.00', '224.00', '1624.00', NULL, '2018-04-10 22:24:37', '2018-04-13 00:00:00', '2018-04-10 22:24:37', 1, NULL, 'MEDIDA FINAL CARTA', 'COUCHE DE 150 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'DISEÑO LO TIENE ARTURO', 4, 1, NULL, NULL, NULL),
(688, 3, 1, 1, NULL, 40, 39, 1, 6, '2100.00', '336.00', '2436.00', NULL, '2018-04-10 22:32:18', '2018-04-13 00:00:00', '2018-04-10 22:32:18', 1, NULL, 'CARTA', 'COUCHE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(689, 3, 1, 1, NULL, 216, 228, 1, 6, '1100.00', '176.00', '1276.00', NULL, '2018-04-10 22:37:03', '2018-04-20 00:00:00', '2018-04-10 22:37:03', 1, NULL, 'ESPECIAL', 'COUCHE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(690, 3, 1, 1, NULL, 217, 229, 1, 6, '1800.00', '288.00', '2088.00', NULL, '2018-04-10 22:49:27', '2018-05-10 00:00:00', '2018-04-10 22:49:27', 1, NULL, 'MEDIA OFICIO', 'COUCHE 150  G', 160, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(691, 3, 1, 1, NULL, 43, 227, 1, 3, '11400.00', '1824.00', '13224.00', NULL, '2018-04-10 23:32:20', '2018-04-24 00:00:00', '2018-04-10 23:32:20', 1, NULL, '11 X 3.60 M', NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LO INSTALARA JUAN CARLOS HERRERO.', 2, 3, NULL, NULL, NULL),
(692, 8, 1, 1, NULL, 148, 147, 1, 6, '6000.00', '960.00', '6960.00', NULL, '2018-04-10 23:48:14', '2018-03-25 00:00:00', '2018-03-15 01:28:57', 1, 'EMPACADOS SEPARADOS CADA COLOR', '1/3 OFICIO', 'BOND BLANCO 75 GRMS.', NULL, NULL, 0, 2, 2, 4, 'SIN FOLIOS', NULL, 4, 2, NULL, NULL, NULL),
(693, 3, 1, 1, NULL, 111, 105, 1, 6, '12000.00', '1920.00', '13920.00', NULL, '2018-04-10 23:58:52', '2018-04-14 00:00:00', '2018-04-10 23:58:52', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, '40   CH\r\n60    M\r\n100  G\r\n100  XL\r\n\r\nEL VERDE LIMA SE TOMARA DE LA PLAYERA.', 1, NULL, NULL, NULL, NULL),
(694, 3, 1, 1, NULL, 111, 105, 1, 3, '3000.00', '480.00', '3480.00', NULL, '2018-04-11 00:20:20', '2018-04-16 00:00:00', '2018-04-11 00:20:20', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, '10 M\r\n15 G\r\n15 XL', 3, NULL, NULL, NULL, NULL),
(695, 3, 1, 1, NULL, 111, 105, 1, 3, '8200.00', '1312.00', '9512.00', NULL, '2018-04-11 00:24:25', '2018-04-17 00:00:00', '2018-04-11 00:24:25', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(696, 11, 1, 1, NULL, 218, 230, 1, 6, '9240.00', '1478.40', '10718.40', NULL, '2018-04-11 15:39:41', '2018-04-17 00:00:00', '2018-04-11 15:39:41', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 3, NULL, 'TALLAS CH-30, M-30, XL - 6 TODAS SON DE CABALLERO', 3, NULL, NULL, NULL, NULL),
(697, 3, 1, 1, NULL, 50, 53, 1, 5, '15000.00', '2400.00', '17400.00', NULL, '2018-04-11 16:09:50', '2018-04-21 00:00:00', '2018-04-11 16:09:50', 1, NULL, '45.5X 30.5', 'COUCHE 300 G', NULL, NULL, 0, 1, 2, 4, NULL, '10 COLORES DE FRANJA.\r\nCELESTE,  AMARILLO , NEGRO, CAFE, MORADO, VERDE, ROJO, NARANJA, ROSA Y VERDE LIMA', 4, 1, NULL, NULL, NULL),
(698, 3, 1, 1, NULL, 50, 53, 1, 5, '10800.00', '1728.00', '12528.00', NULL, '2018-04-11 16:14:28', '2018-04-21 00:00:00', '2018-04-11 16:14:28', 1, NULL, '1/2 CARTA', 'PORTADA COUCHE 300 INTERIOR PAPEL OPALINA', NULL, NULL, 0, 1, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(699, 7, 1, 1, NULL, 92, 154, 1, 4, '4320.00', '691.20', '5011.20', NULL, '2018-04-11 16:19:51', '2018-04-13 00:00:00', '2018-04-11 16:19:51', 1, NULL, NULL, NULL, 161, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(700, 3, 1, 1, NULL, 111, 105, 1, 6, '3680.00', '588.80', '4268.80', NULL, '2018-04-11 17:30:08', '2018-04-14 00:00:00', '2018-04-11 17:30:08', 1, NULL, '10 X 57 CM', 'VINIL HD', NULL, NULL, 0, 1, 2, 4, NULL, 'AGREGAR EN LA PARTE DE ABAJO LOGO KEMET EN BLANCO', 2, 4, NULL, NULL, NULL),
(701, 3, 1, 1, NULL, 111, 105, 1, 6, '5250.00', '840.00', '6090.00', NULL, '2018-04-11 17:35:02', '2018-04-19 00:00:00', '2018-04-11 17:35:02', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, 'HACER PORPUESTA DE DISEÑO LOGO EN BLANCO Y LOGO BLANCO CON ROJO.\r\nDAMA\r\nCH 10, M 17, G 18, XL 14\r\nCABALLERO\r\nM 2 , G 5, XL 4', 3, NULL, NULL, NULL, NULL),
(702, 3, 1, 1, NULL, 40, 38, 1, 6, '1920.00', '307.20', '2227.20', NULL, '2018-04-11 17:55:09', '2018-04-14 00:00:00', '2018-04-11 17:55:09', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(703, 3, 1, 1, NULL, 40, 37, 1, 3, '425.00', '68.00', '493.00', NULL, '2018-04-11 18:12:31', '2018-04-16 00:00:00', '2018-04-11 18:12:31', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 4, NULL, NULL, NULL),
(704, 8, 1, 1, NULL, 117, 113, 1, 4, '1500.00', '240.00', '1740.00', NULL, '2018-04-11 18:18:00', '2018-04-21 00:00:00', '2018-04-11 18:18:00', 1, 'EMPACADOS', 'DOBLE OFICIO', 'CARTULINA COCUHE DE 300 GRMS', NULL, NULL, 0, 2, 2, 4, NULL, '100 POSTERS TAMAÑO DOBLE OFICIO A COLOR EN CARTULINA COUCHE 300 GRMS.', 4, 1, NULL, NULL, NULL),
(705, 7, 1, 1, NULL, 215, 226, 1, 6, '880.00', '140.80', '1020.80', NULL, '2018-04-11 18:33:06', '2018-05-11 00:00:00', '2018-04-11 18:33:06', 1, NULL, NULL, NULL, 163, NULL, 0, 2, 1, 3, NULL, NULL, 2, 4, NULL, NULL, NULL),
(706, 7, 1, 1, NULL, 96, NULL, 1, 6, '4200.00', '672.00', '4872.00', NULL, '2018-04-11 18:36:50', '2018-05-11 00:00:00', '2018-04-11 18:36:50', 1, NULL, NULL, NULL, 162, NULL, 0, 2, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL),
(707, 3, 1, 1, NULL, 174, 179, 1, 10, '750.00', '120.00', '870.00', NULL, '2018-04-11 18:37:09', '2018-04-11 00:00:00', '2018-04-11 18:37:09', 1, NULL, NULL, NULL, NULL, '10038', 0, 1, 2, 4, NULL, 'SE ENTREGA CON SOBRANTE', 2, 3, NULL, NULL, NULL),
(708, 3, 1, 1, NULL, 27, 24, 1, 6, '7984.00', '1277.44', '9261.44', NULL, '2018-04-11 18:57:01', '2018-04-13 00:00:00', '2018-04-11 18:57:01', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE ENTREGARAN EN EDUCACION \r\n4 DISEÑOS DE CADA CATEGORIA\r\nOFICIO1158', 2, 3, NULL, NULL, NULL),
(709, 3, 1, 1, NULL, 27, 24, 1, 6, '26500.00', '4240.00', '30740.00', NULL, '2018-04-11 19:03:04', '2018-04-13 00:00:00', '2018-04-11 19:03:04', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SE ENTREGAN EN EDUCACION \r\nOFICIO 1155', 2, 3, NULL, NULL, NULL),
(710, 14, 1, 1, NULL, 221, 234, 1, 10, '965.52', '154.48', '1120.00', NULL, '2018-04-11 20:47:42', '2018-04-21 00:00:00', '2018-04-11 20:47:42', 1, NULL, NULL, NULL, NULL, '10041', 0, 2, 2, 4, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(711, 10, 1, 1, NULL, 63, 231, 1, 6, '9600.00', '1536.00', '11136.00', NULL, '2018-04-11 22:29:21', '2018-04-16 00:00:00', '2018-04-11 22:29:21', 1, NULL, 'DOBLE CARTA', 'COUCHE 130 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(712, 3, 1, 1, NULL, 40, 232, 1, 3, '700.00', '112.00', '812.00', NULL, '2018-04-11 22:39:56', '2018-04-17 00:00:00', '2018-04-11 22:39:56', 1, '100', 'CARTA', 'BOND', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 2, NULL, NULL, NULL),
(713, 3, 1, 1, NULL, 40, 232, 1, 3, '900.00', '144.00', '1044.00', NULL, '2018-04-11 22:40:58', '2018-04-17 00:00:00', '2018-04-11 22:40:58', 1, '100', 'CARTA', 'BOND', NULL, NULL, 0, 2, 2, 4, '0001-1000', NULL, 4, 2, NULL, NULL, NULL),
(714, 10, 1, 1, NULL, 63, 231, 1, 6, '2800.00', '448.00', '3248.00', NULL, '2018-04-11 22:46:49', '2018-04-16 00:00:00', '2018-04-11 22:46:49', 1, 'C/100', NULL, 'BRISTOL BLANCO', NULL, NULL, 0, 2, 2, 4, '1001  AL 5000', NULL, 4, 2, NULL, NULL, NULL),
(715, 3, 1, 1, NULL, 40, 37, 1, 8, '1540.00', '246.40', '1786.40', NULL, '2018-04-11 22:47:21', '2018-04-13 00:00:00', '2018-04-11 22:47:21', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'LONAS CON SOBRANTE. SE ENTREGAN CON ISRAEL EN EL DEPARTAMENTO DE MONICA', 2, 3, NULL, NULL, NULL),
(716, 10, 1, 1, NULL, 63, 231, 1, 6, '1056.00', '168.96', '1224.96', NULL, '2018-04-11 22:56:17', '2018-04-16 00:00:00', '2018-04-11 22:56:17', 1, '50C/U', '1/4 OFICIO', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '1,501 AL 2,100', NULL, 4, 2, 'ROSA', 'AMARILLO', 'BLANCO'),
(717, 10, 1, 1, NULL, 63, 231, 1, 6, '4740.00', '758.40', '5498.40', NULL, '2018-04-11 23:08:04', '2018-04-16 00:00:00', '2018-04-11 23:08:04', 1, NULL, 'ESPECIAL', 'COUCHE 130 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(718, 10, 1, 1, NULL, 63, 231, 1, 6, '825.00', '132.00', '957.00', NULL, '2018-04-11 23:15:40', '2018-04-16 00:00:00', '2018-04-11 23:15:40', 1, 'C/50', 'CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 2, 'AMARILLO', 'ROSA', 'BLANCO'),
(719, 3, 1, 1, NULL, 29, 40, 1, 6, '2800.00', '448.00', '3248.00', NULL, '2018-04-11 23:26:49', '2018-04-14 00:00:00', '2018-02-27 05:19:12', 1, NULL, 'CARTA', 'PAPEL OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(720, 3, 1, 1, NULL, 29, 40, 1, 6, '1400.00', '224.00', '1624.00', NULL, '2018-04-11 23:27:08', '2018-04-14 00:00:00', '2018-02-27 05:16:59', 1, NULL, 'CARTA', 'PAPEL OPALINA', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(721, 3, 1, 1, NULL, 27, 24, 1, 6, '3600.00', '576.00', '4176.00', NULL, '2018-04-11 23:32:43', '2018-04-14 00:00:00', '2018-04-11 23:32:43', 1, NULL, 'CARTA', 'COUCHE DE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, 'FOLIO 1384', 4, 1, NULL, NULL, NULL),
(722, 3, 1, 1, NULL, 187, NULL, 1, 6, '14000.00', '2240.00', '16240.00', NULL, '2018-04-11 23:34:36', '2018-04-12 00:00:00', '2018-04-11 23:34:36', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130 G', NULL, NULL, 0, 2, 2, 4, NULL, 'PAQUETES DE 200 PIEZAS....', 4, 1, NULL, NULL, NULL),
(723, 3, 1, 1, NULL, 29, 74, 1, 6, '3750.00', '600.00', '4350.00', NULL, '2018-04-11 23:43:25', '2018-04-17 00:00:00', '2018-04-11 23:43:25', 1, NULL, '50 X 34 CM', 'COUCHE DE 115 G', NULL, NULL, 0, 2, 2, 4, NULL, 'SE ENTREGAN EN ALMACEN CON KAREN.', 4, 1, NULL, NULL, NULL),
(724, 3, 1, 1, NULL, 27, 24, 1, 6, '35760.00', '5721.60', '41481.60', NULL, '2018-04-11 23:58:05', '2018-04-18 00:00:00', '2018-04-11 23:58:05', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'PEDIDO 4560279768', 5, NULL, NULL, NULL, NULL),
(725, 10, 1, 1, NULL, 194, NULL, 1, 6, '720.00', '115.20', '835.20', NULL, '2018-04-12 00:18:17', '2018-04-13 00:00:00', '2018-04-12 00:18:17', 1, 'C/100', '1/6 CARTA', 'BOND', NULL, NULL, 0, 2, 2, 4, '30,001 AL 34,000', NULL, 4, 2, NULL, NULL, NULL),
(726, 3, 1, 1, NULL, 111, 105, 1, 3, '3900.00', '624.00', '4524.00', NULL, '2018-04-12 15:04:27', '2018-04-16 00:00:00', '2018-04-04 23:31:27', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, 'LA FOTO DEL CIO HACERLA MAS GRANDE.....', 2, 4, NULL, NULL, NULL),
(727, 3, 1, 1, NULL, 216, 228, 1, 6, '4185.00', '669.60', '4854.60', NULL, '2018-04-12 17:16:56', '2018-04-16 00:00:00', '2018-04-12 17:16:56', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'G-15\r\nM-3\r\nCH-9', 3, NULL, NULL, NULL, NULL),
(728, 3, 1, 1, NULL, 26, 82, 1, 3, '19000.00', '3040.00', '22040.00', NULL, '2018-04-12 18:01:04', '2018-04-16 00:00:00', '2018-04-12 18:01:04', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(729, 10, 1, 1, NULL, 29, 120, 1, 3, '8750.00', '1400.00', '10150.00', NULL, '2018-04-12 20:43:28', '2018-04-17 00:00:00', '2018-04-12 20:43:28', 1, NULL, 'TAMAÑO OFICIO', 'AUTOCOPIA', 142, NULL, 0, 2, 2, 4, NULL, 'PLECA DE CORTE EN LA PARTE INFERIOR', 4, 2, 'ROSA', 'AMARILLO', 'BL'),
(730, 10, 1, 1, NULL, 79, 200, 1, 6, '0.00', '0.00', '0.00', NULL, '2018-04-12 20:53:40', '2018-04-12 00:00:00', '2018-04-12 20:53:40', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(731, 10, 1, 1, NULL, 107, 101, 1, 6, '1000.00', '160.00', '1160.00', NULL, '2018-04-12 22:34:53', '2018-04-14 00:00:00', '2018-04-12 22:34:53', 1, NULL, '1/2 CARTA', 'COUCHE DE 150 GRAMOS', NULL, NULL, 0, 2, 2, 4, NULL, 'CLIENTE TRAE EL PAPEL', 4, 1, NULL, NULL, NULL),
(732, 3, 1, 1, NULL, 40, 37, 1, 6, '900.00', '144.00', '1044.00', NULL, '2018-04-13 14:19:39', '2018-04-16 00:00:00', '2018-04-13 14:19:39', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'BASTILLA Y OJILLOS', 2, 3, NULL, NULL, NULL),
(733, 3, 1, 1, NULL, 218, 230, 1, 4, '2800.00', '448.00', '3248.00', NULL, '2018-04-13 14:32:23', '2018-04-18 00:00:00', '2018-04-13 14:32:23', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'SON SOBRANTE PARA RESTIRAR....\r\nVINO A SOLICITAR CINTHIA MEDINA.', 2, 3, NULL, NULL, NULL),
(734, 11, 1, 1, NULL, 222, 235, 1, 6, '1750.00', '280.00', '2030.00', NULL, '2018-04-13 15:47:56', '2018-04-17 00:00:00', '2018-04-13 15:47:56', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 1, NULL, NULL, 2, 3, NULL, NULL, NULL),
(735, 4, 1, 1, NULL, 27, 24, 1, 10, '8700.00', '1392.00', '10092.00', NULL, '2018-04-13 16:13:44', '2018-04-23 00:00:00', '2018-04-13 16:13:44', 1, NULL, NULL, NULL, NULL, '365', 0, 3, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(736, 10, 1, 1, NULL, 223, 236, 1, 6, '700.00', '112.00', '812.00', NULL, '2018-04-13 16:20:00', '2018-04-18 00:00:00', '2018-04-13 16:20:00', 1, '50C/U', '1/6 CARTA', 'AUTOCOPIA', NULL, NULL, 0, 2, 2, 4, '2,001-3,000', NULL, 4, 2, 'ROSA', NULL, 'BLANCO'),
(737, 10, 1, 1, NULL, 49, 51, 1, 1, '1880.00', '300.80', '2180.80', NULL, '2018-04-13 16:40:30', '2018-04-19 00:00:00', '2018-04-13 16:40:30', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(738, 4, 1, 1, NULL, 27, 24, 1, 10, '7800.00', '1248.00', '9048.00', NULL, '2018-04-13 17:07:44', '2018-04-23 00:00:00', '2018-04-13 17:07:44', 1, NULL, NULL, NULL, NULL, '359', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(739, 4, 1, 1, NULL, 27, 24, 1, 8, '12500.00', '2000.00', '14500.00', NULL, '2018-04-13 17:11:39', '2018-04-23 00:00:00', '2018-04-13 17:11:39', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(740, 4, 1, 1, NULL, 27, 24, 1, 10, '1500.00', '240.00', '1740.00', NULL, '2018-04-13 17:15:08', '2018-04-23 00:00:00', '2018-04-13 17:15:08', 1, NULL, NULL, NULL, NULL, '354', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(741, 4, 1, 1, NULL, 27, 24, 1, 10, '1380.00', '220.80', '1600.80', NULL, '2018-04-13 17:24:32', '2018-04-23 00:00:00', '2018-04-13 17:24:32', 1, NULL, NULL, NULL, NULL, '362', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(742, 4, 1, 1, NULL, 27, 24, 1, 10, '4500.00', '720.00', '5220.00', NULL, '2018-04-13 17:28:42', '2018-04-23 00:00:00', '2018-04-13 17:28:42', 1, NULL, NULL, NULL, NULL, '355', 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(743, 10, 1, 1, NULL, 37, 173, 1, 10, '825.00', '132.00', '957.00', NULL, '2018-04-13 17:31:13', '2018-04-13 00:00:00', '2018-04-13 17:31:13', 1, NULL, NULL, NULL, NULL, '10040', 0, 2, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(744, 4, 1, 1, NULL, 27, 24, 1, 10, '21200.00', '3392.00', '24592.00', NULL, '2018-04-13 17:36:43', '2018-04-23 00:00:00', '2018-04-13 17:36:43', 1, NULL, NULL, NULL, NULL, '357', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(745, 3, 1, 1, NULL, 44, 237, 1, 6, '1900.00', '304.00', '2204.00', NULL, '2018-04-13 17:40:04', '2018-04-17 00:00:00', '2018-04-13 17:40:04', 1, NULL, 'MEDIA CARTA', 'COUCHE DE 130', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(746, 4, 1, 1, NULL, 27, 24, 1, 10, '6000.00', '960.00', '6960.00', NULL, '2018-04-13 17:43:14', '2018-04-23 00:00:00', '2018-04-13 17:43:14', 1, NULL, NULL, NULL, NULL, '358', 0, 2, 2, 4, NULL, NULL, 2, 5, NULL, NULL, NULL),
(747, 3, 1, 1, NULL, 72, 68, 1, 6, '320.00', '51.20', '371.20', NULL, '2018-04-13 17:44:00', '2018-04-13 00:00:00', '2018-04-13 17:44:00', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 4, NULL, NULL, 2, 3, NULL, NULL, NULL),
(748, 3, 1, 1, NULL, 27, 24, 1, 8, '16100.00', '2576.00', '18676.00', NULL, '2018-04-13 18:11:04', '2018-04-13 00:00:00', '2018-04-13 18:11:04', 1, NULL, 'CARTA', 'BOND', NULL, NULL, 0, 2, 2, 4, NULL, NULL, 4, 1, NULL, NULL, NULL),
(749, 3, 1, 1, NULL, 144, 141, 1, 8, '1488.00', '238.08', '1726.08', NULL, '2018-04-13 18:26:31', '2018-04-13 00:00:00', '2018-04-13 18:26:31', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'revisar si se va a factirar al cliente o a idcreativo', 3, NULL, NULL, NULL, NULL),
(750, 3, 1, 1, NULL, 40, 238, 1, 3, '8073.00', '1291.68', '9364.68', NULL, '2018-04-13 18:49:39', '2018-04-19 00:00:00', '2018-04-13 18:49:39', 1, NULL, NULL, NULL, NULL, NULL, 0, 2, 2, 4, NULL, 'Las facturas por favor puedes elaborarlas de la siguiente manera:\r\n    43 piezas a Transpais Unico S.A. de C.V. \r\n    43 piezas a Transpais San Luis S.A. de C.V.\r\n    31 piezas a Transpais Unico S.A. de C.V.\r\nEn la elaboración de facturas, considerar lo siguiente:\r\n\r\nForma de pago 99\r\nMétodo de pago: ppd\r\nUso de CFDI: G03\r\nDescripción: Obsequios para colaboradoras de Transpais.', 1, NULL, NULL, NULL, NULL),
(751, 10, 1, 1, NULL, 78, NULL, 1, 6, '1200.00', '192.00', '1392.00', NULL, '2018-04-13 19:11:36', '2018-04-16 00:00:00', '2018-03-05 18:24:31', 1, '100 C/U', '11.02 X 10.07', 'BOND 75 GRAMOS', NULL, NULL, 0, 2, 1, 1, '0001 AL 12,000', NULL, 4, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenestado`
--

CREATE TABLE `ordenestado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ordenestado`
--

INSERT INTO `ordenestado` (`id`, `nombre`, `activo`) VALUES
(1, 'Inicial', 1),
(2, 'Trabajando', 1),
(3, 'Diseño Sayra', 1),
(4, 'Diseño Alma', 1),
(5, 'Diseño Arturo', 1),
(6, 'Producción', 1),
(7, 'Acabado', 1),
(8, 'Terminado', 1),
(9, 'Salida', 1),
(10, 'No Pagado', 1),
(11, 'Pagado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenitem`
--

CREATE TABLE `ordenitem` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_moneda` int(11) NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `codigo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinta` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ordenitem`
--

INSERT INTO `ordenitem` (`id`, `id_producto`, `id_moneda`, `descripcion`, `precio`, `cantidad`, `total`, `fecha`, `activo`, `codigo`, `tinta`) VALUES
(66, 17, 1, 'ROTULACION DE VINIL MEDIDA 3.14 X 6.09 (IZQUIERDA)', '2500.00', 1, '2500.00', '2018-02-24 18:01:16', 1, '', ''),
(67, 17, 1, 'ROTULACION DE VINIL MEDIDA 3.14 X 6.09 (DERECHA)', '2500.00', 1, '2500.00', '2018-02-24 18:01:16', 1, '', ''),
(68, 17, 1, 'ROTULACION DE VINIL MEDIDA 1.60 X 3.20 (IZQUIERDA)', '950.00', 1, '950.00', '2018-02-24 18:01:16', 1, '', ''),
(69, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 9.76 X 3.05 MTS CON SOBRANTE', '5700.00', 1, '5700.00', '2018-02-24 18:48:05', 1, '', ''),
(70, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 9.76 X 3.05 MTS CON SOBRANTE', '5700.00', 1, '5700.00', '2018-02-24 18:49:46', 1, '', ''),
(71, 17, 1, 'LONA IMPRESION DIGITAL 1.75 X .75 BASTILLA Y OJILLOS', '200.00', 2, '400.00', '2018-02-24 19:07:42', 1, '', ''),
(72, 17, 1, 'VALES SIMBOLICOS EN VINIL HD CON COROPLAST MEDIDA 70 X 30 CM', '150.00', 4, '600.00', '2018-02-26 03:29:24', 1, '', ''),
(73, 17, 1, 'PLACAS DE ALUMINIO SUBLIMADO A COLOR MEDIDA 10 X 10 CM CON CINTA DOBLE CARA AL TAMAÑO DE LA PLACA', '43.00', 300, '12900.00', '2018-02-26 03:31:10', 1, '', ''),
(74, 17, 1, 'PLACAS DE ALUMINIO SUBLIMADO MEDIDA 6 X 6 CM CON CINTA DOBLE CARA DEL TAMAÑO DE LA PLACA', '27.00', 400, '10800.00', '2018-02-26 03:33:34', 1, '', ''),
(75, 15, 1, 'PAPALOTES AZULES Y VERDES IMPRESOS 1 TINTA', '39.00', 3000, '117000.00', '2018-02-26 03:37:19', 1, 'GM 005', 'BLANCA'),
(76, 15, 1, 'TORTILLEROS DE TELA CAPITONIADA AMBOS LADOS Y TELA AZUL REY AMBOS LADOS. IMPRESA FRENTE', '19.50', 3000, '58500.00', '2018-02-26 03:45:58', 1, '', 'BLANCA'),
(77, 15, 1, 'PARAGUAS IMPRESOS 1 TINTA 4 GAJOS', '79.00', 1000, '79000.00', '2018-02-26 03:47:44', 1, 'PAR 016', 'BLANCA'),
(78, 14, 1, 'ABANICOS DE MANO CARTULINA SULFATADA SELECCION COLOR AMBOS LADOS,CON PALITO DE MADERA', '2.65', 75000, '198750.00', '2018-02-26 03:50:19', 1, '', 'SELECCION COLOR '),
(79, 14, 1, 'PAQUETES DE LOTERIA INCLUYE:\n50 TABLAS TAMAÑO OFICIO SELECCION COLOR FRENTE (DISEÑO DIFERENTE) REVERSO SELECCION COLOR (MISMO DISEÑO) \n54 BARAJAS 9.5 X 6 CM SELECCION COLOR FRENTE (DISEÑO DIFERENTE) REVERSO SELECCION COLOR (MISMO DISEÑO) \nPORTADA PARA EMBOLSAR SELECCION COLOR COUCHE DE 130 GRAMOS', '347.50', 200, '69500.00', '2018-02-26 03:55:26', 1, '', 'SELECCION'),
(80, 17, 1, 'VALES SIMBOLICOS DE VINIL HD EN COROPLAST MEDIDA 70 X 30 CM', '150.00', 20, '3000.00', '2018-02-26 03:58:10', 1, '', ''),
(81, 17, 1, 'ANUNCIOS DE TROVISEL 6MM CON VINIL HD MEDIDA 45 X 20 CM ', '105.00', 73, '7665.00', '2018-02-26 04:00:42', 1, '', ''),
(82, 17, 1, 'ANUNCIOS DE TROVISEL 6MM CON VINIL HD MEDIDA 20 X 20 CM ', '65.00', 72, '4680.00', '2018-02-26 04:00:42', 1, '', ''),
(83, 15, 1, 'ROLLO DE 50 METROS DE LISTON DE 6CM DE ANCHO TELA AZUL REY', '700.00', 1, '700.00', '2018-02-26 04:03:51', 1, '', 'BLANCA'),
(84, 17, 1, 'PENDON IMPRESION DIGITAL MEDIDA 1.50 X 2.00 BASTILLA Y OJILLOS', '550.00', 1, '550.00', '2018-02-26 04:05:49', 1, '', ''),
(85, 17, 1, 'CHEQUES SIMBOLICOS IMPRESOS EN VINIL HD CON COROPLAST MEDIDA 70 X 30 CM', '150.00', 5, '750.00', '2018-02-26 04:07:21', 1, '', ''),
(86, 17, 1, 'VALES SIMBOLICOS EN VINIL HD CON COROPLAST MEDIDA 70 X 30 CM', '150.00', 10, '1500.00', '2018-02-26 04:09:13', 1, '', ''),
(87, 15, 1, 'ANFORAS SINKER (500 AZUL Y 500 NARANJAS) IMPRESAS 1 TINTA', '11.50', 1000, '11500.00', '2018-02-26 16:41:54', 1, 'ANF 009', 'BLANCA'),
(88, 15, 1, 'BOLIGRAFO SHADOW IMPRESO 1 TINTA (3,000 NARANJAS Y 3,000 AZUL)', '3.20', 6000, '19200.00', '2018-02-26 16:41:54', 1, 'SH 1415', 'BLANCA'),
(89, 14, 1, 'ABANICOS DE MANO CARTULINA SULFATADA SELECCION COLOR AMBOS LADOS,CON PALITO DE MADERA', '2.05', 5000, '10250.00', '2018-02-26 16:49:54', 1, '', ''),
(90, 17, 1, 'LONA IMPRESION DIGITAL 1.20 X 1.0 BASTILLA Y OJILLOS', '144.00', 1, '144.00', '2018-02-26 19:04:41', 1, '', ''),
(91, 17, 1, 'LONA IMPRESION DIGITAL 2.00 X 1.50 BASTILLA Y OJILLOS', '240.00', 1, '240.00', '2018-02-26 19:16:36', 1, '', ''),
(92, 17, 1, 'LONA IMPRESION DIGITAL 5.00 X 3.50 CON SOBRANTE (HEB)', '2300.00', 1, '2300.00', '2018-02-26 22:42:38', 1, '', ''),
(93, 17, 1, 'LONA IMPRESION DIGITAL 3.00 X 4.40 CON BASTILLA (MATAMOROS)', '1350.00', 2, '2700.00', '2018-02-26 22:42:38', 1, '', ''),
(94, 17, 1, 'LONA IMPRESION DIGITAL 3.08 X 2.55 M CON SOBRANTE (MATRIZ)', '1100.00', 1, '1100.00', '2018-02-26 22:42:38', 1, '', ''),
(95, 17, 1, 'LONA IMPRESION DIGITAL 4 X 3 CON SOBRANTE (SAN AGUSTIN)', '1600.00', 1, '1600.00', '2018-02-26 22:42:38', 1, '', ''),
(96, 17, 1, 'LONA IMPRESION DIGITAL 2.30 X 3.90 CON SOBRANTE (TOTEMS)', '1200.00', 2, '2400.00', '2018-02-26 22:42:38', 1, '', ''),
(97, 17, 1, 'LONA IMPRESION DIGITAL 4 X 2.40 CON SOBRANTE (CARERA)', '1200.00', 1, '1200.00', '2018-02-26 22:42:38', 1, '', ''),
(98, 17, 1, 'LONA IMPRESION DIGITAL 4 X 4 CON BASTILLA (BODEGA)', '2100.00', 1, '2100.00', '2018-02-26 22:42:38', 1, '', ''),
(99, 17, 1, 'MAMPARA 5.50 X 2.40 CON BASTIDOR DE MADERA CON BASE', '6500.00', 1, '6500.00', '2018-02-26 22:55:49', 1, '', ''),
(100, 17, 1, 'MAMPARA 7.32 X 3.05 CON BASTIDOR DE MADERA  PARA HONORES A LA BANDERA', '8700.00', 1, '8700.00', '2018-02-26 22:55:49', 1, '', ''),
(101, 17, 1, 'MICROPERFORADO PARA CAFETERIA 3.59 X 1.20 M INCLUYE INSTALACION', '2400.00', 1, '2400.00', '2018-02-26 23:06:07', 1, '', ''),
(102, 17, 1, 'MICROPERFORADO PARA VIDRIO EXPLANADA 9.44 X 2.02 M INCLUYE INSTALACION', '10800.00', 1, '10800.00', '2018-02-26 23:06:07', 1, '', ''),
(103, 17, 1, 'MICROPERFORADO PARA VIDRIOS EXPLANADA 12.20 X 2.02 M INCLUYE INSTALACION', '12900.00', 1, '12900.00', '2018-02-26 23:06:07', 1, '', ''),
(104, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 2 X 1 M, CON MADERA ARRIBA Y ABAJO', '390.00', 8, '3120.00', '2018-02-26 23:13:43', 1, '', ''),
(105, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.5 X 3.00 CON MARCO DE MADERA Y PATAS......DISTRIBUCION:  3 COPA DIF 3 DIF TAM 2 SECRETARIA EDUCACION 2 SECRETARIA DE SALUD 2 GOBIERNO DEL ESTADO ', '1650.00', 14, '23100.00', '2018-02-26 23:37:23', 1, '', ''),
(106, 17, 1, 'LETREROS DE VINIL HD CON COROPLAST Y MADERA PARA SOSTENER..... MEDIDA 70X 30 CM', '200.00', 37, '7400.00', '2018-02-26 23:37:23', 1, '', ''),
(107, 17, 1, 'RECONOCIMIENTOS DE ACRILICO DE 10MM CON CANTO PULIDO, LAMINA BRILLANTE Y MATE SUBLIMADA A COLOR', '1390.00', 7, '9730.00', '2018-02-27 00:08:02', 1, '', ''),
(108, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 2.30 X 4.00 MTS. \nCON MADERA ARIBBA Y ABAJO (TIPO PENDON)', '1200.00', 1, '1200.00', '2018-02-27 04:43:23', 1, '', ''),
(109, 15, 1, 'ENCENDEDOR BLANCO IMPRESO 1 TINTA', '9.00', 100, '900.00', '2018-02-27 04:49:20', 1, 'LIG 001', 'NARANJA'),
(110, 15, 1, 'BOLIGRAFO PLANET IMPRESO 1 TINTA', '5.50', 100, '550.00', '2018-02-27 04:49:20', 1, 'ECO 010', 'NARANJA'),
(111, 15, 1, 'TAZA NARANJA IMPRESA 1 TINTA', '39.00', 33, '1287.00', '2018-02-27 04:49:20', 1, 'TAZ 001', 'BLANCA'),
(112, 17, 1, 'ROTULACION DE VIDRIOS EN MICROPERFORADO BLANCO.\n1 MEDIDA 2.65 X 2.25\n2 MEDIDA 1.70 X 2.00\n2 MEDIDA .90 X .60', '3800.00', 1, '3800.00', '2018-02-27 04:55:36', 1, '', ''),
(113, 14, 1, 'VOLANTES IMPRESION 1 TINTA 1 LADO', '1.35', 1000, '1350.00', '2018-02-27 05:11:44', 1, '', 'AZUL'),
(114, 14, 1, 'ETIQUETAS TAMAÑO CARTA DISEÑO 1/6 DE CARTA', '1.40', 1000, '1400.00', '2018-02-27 05:16:59', 1, '', 'SELECCION COLOR'),
(115, 14, 1, 'HOJA TAMAÑO CARTA IMPRESA SELECCION COLOR, DISEÑO 1/4 DE CARTA (4 PZ EN CARTA)', '1.40', 2000, '2800.00', '2018-02-27 05:19:12', 1, '', 'SELECCION COLOR'),
(116, 14, 1, 'POSTER DOBLE CARTA IMPRESION SELECCION COLOR', '15.00', 100, '1500.00', '2018-02-27 05:21:05', 1, '', 'SELECCION COLOR'),
(117, 14, 1, 'PASE DE SERVICIO DENTAL 1 TINTA', '0.83', 2000, '1660.00', '2018-02-27 05:25:03', 1, '', 'NEGRA'),
(118, 14, 1, 'RECIBOS DE TERAPIA INTENSIVA', '0.63', 3000, '1890.00', '2018-02-27 05:27:49', 1, '', 'NEGRA'),
(119, 14, 1, 'RECIBOS DE LACTANTES', '0.63', 2000, '1260.00', '2018-02-27 05:30:07', 1, '', 'NEGRA'),
(120, 17, 1, 'SELLOS AUTOENTINTABLES', '200.00', 75, '15000.00', '2018-02-27 05:36:32', 1, '', ''),
(121, 17, 1, 'VINIL IMPRESION DIGITAL HD MEDIDA 3 X .25', '75.00', 28, '2100.00', '2018-02-27 16:05:50', 1, '', ''),
(122, 14, 1, 'VOLANTES CUARTO DE CARTA SELECCION COLOR 1 LADO.....\n2 DISEÑOS, 1,000 DE CADA UNO', '0.70', 2000, '1400.00', '2018-02-27 17:26:14', 1, '', 'SEL COLOR'),
(123, 16, 1, 'PLAYERAS TIPO POLO GRIS DRIBLEN SIN LOGO BORDADO\nCH 36\nM 36', '90.00', 72, '6480.00', '2018-02-27 18:03:48', 1, '', ''),
(124, 14, 1, 'FORMATOS DE VALIDACION SELECCION COLOR FRENTE\n2,500 DE 2 DISEÑOS....', '0.75', 5000, '3750.00', '2018-02-27 18:46:42', 1, '', 'SEL COLOR'),
(125, 14, 1, 'VOLANTES SELECCION COLOR 1 LADOS \n1/4 DE CARTA', '0.50', 3000, '1500.00', '2018-02-27 18:48:16', 1, '', 'SEL COLOR'),
(126, 14, 1, 'ETIQUETAS CHICAS SELECCION COLOR ', '0.40', 3000, '1200.00', '2018-02-27 20:33:45', 1, '', 'SEL COLOR'),
(127, 14, 1, 'ETIQUETA GRANDE SELECCION COLOR', '0.60', 10000, '6000.00', '2018-02-27 20:37:12', 1, '', 'SEL COLOR'),
(128, 14, 1, 'ETIQUETAS SELECCION COLOR ', '6.75', 200, '1350.00', '2018-02-28 15:12:33', 1, '', 'SEL COLOR'),
(129, 17, 1, 'LONA IMPRESION DIGITAL 1.50 X 13 MTS (MANTE) BASTILLA Y OJILLOS', '1950.00', 1, '1950.00', '2018-02-28 15:22:22', 1, '', ''),
(130, 17, 1, 'LONA IMPRESION DIGITAL 2.68 X 4.00 MTS (VALLES) CON SOLAPA PARA MADERA ARRIBA Y ABAJO.', '1050.00', 2, '2100.00', '2018-02-28 15:22:22', 1, '', ''),
(131, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.80 X 10 MTS (MATAMOROS) BASTILLA Y OJILLOS.', '1800.00', 1, '1800.00', '2018-02-28 15:22:22', 1, '', ''),
(132, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.80 X 3.50 (CARRERA) SOLAPA ARRIBA Y ABAJO PARA MADERA', '750.00', 2, '1500.00', '2018-02-28 15:22:22', 1, '', ''),
(133, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 2.80 X 3.80 MTS (LAREDO) CON SOLAPA ARRIBA Y ABAJO', '1050.00', 2, '2100.00', '2018-02-28 15:22:22', 1, '', ''),
(134, 16, 1, 'PLAYERAS TIPO POLO MORADAS CON UN LOGO BORDADO\nMARCA MAXIMA DEPORTIVA', '137.93', 22, '3034.46', '2018-02-28 17:41:25', 1, '', ''),
(135, NULL, 1, 'CHEQUES SIMBOLICOS PARA PREMIACION DE 1.20 X .65 EN VINIL HD, PEGADO EN COROPLAST', '250.00', 6, '1500.00', '2018-02-28 17:51:23', 1, '', ''),
(136, 17, 1, 'PORTABANNER IMPRESION DIGITAL 1.80 X .80 INLCUYE LONA Y PORTABANER', '400.00', 2, '800.00', '2018-02-28 18:00:27', 1, '', ''),
(137, 19, 1, 'PLACAS 600 X 782', '189.65', 4, '758.60', '2018-02-28 18:02:18', 1, '', ''),
(138, 17, 1, 'lonas impresion digital medida 1.2 x 1\nbastilla y ojillos', '270.00', 2, '540.00', '2018-02-28 18:05:40', 1, '', ''),
(139, 15, 1, 'BOLIGRAFOS CLIP UP NEGRA', '9.00', 100, '900.00', '2018-02-28 18:12:34', 1, 'SH 9010', 'NEGRA'),
(140, 15, 1, 'BOLIGRAFOS ROA NEGRO IMPRESOS 1 TINTA', '9.00', 100, '900.00', '2018-02-28 18:12:34', 1, 'SH 1340', 'PLATA'),
(141, 16, 1, 'PLAYERAS TIPO BLANCAS MAXIMA DEPORTIVA', '89.90', 93, '8360.70', '2018-02-28 18:23:40', 1, '', ''),
(142, 15, 1, 'CARPETAS OXXFORD AZUL REY IMPRESAS 1 TINTA', '24.90', 100, '2490.00', '2018-02-28 18:27:11', 1, '', 'BLANCA'),
(143, 14, 1, 'MAQUILA DE 350,000 VOLANTES SELECCION COLOR UN LADO', '0.18', 350000, '63000.00', '2018-02-28 19:23:26', 1, '', 'SEL COLOR'),
(144, 14, 1, 'VIÑETAS IMPRESION COLOR CARTA', '1.20', 3000, '3600.00', '2018-02-28 19:28:34', 1, '', 'SELECCION COLOR'),
(145, 14, 1, 'playera  marca yazbek color  blanca   con impresion  en vinil  textil ', '95.00', 12, '1140.00', '2018-02-28 19:55:39', 1, '', '2 tintas '),
(146, 17, 1, 'PAQUETE DE PUBLICIDAD MOVIL INCLUYE:\n2 LONAS IMPRESION DIGITAL PARA CAMIONETA\n1 SEMANA DE RENTA DE 4 HORAS FIJAS Y 4 HORAS MOVILES DEL 5 AL 11 DE MARZO.', '8500.00', 1, '8500.00', '2018-02-28 21:38:30', 1, NULL, NULL),
(147, 17, 1, 'VINIL IMPRESOS MEDIDA 5.00 X 6.66  MTS INCLUYE INSTALACION EN VIDRIOS VACACIONES', '4950.00', 2, '9900.00', '2018-02-28 21:40:56', 1, '', ''),
(148, 15, 1, 'ROLLO DE LISTON BLANCO DE 4.5 CM CON SUBLIMADO A COLOR  ', '2350.00', 5, '11750.00', '2018-02-28 21:58:13', 1, '', ''),
(149, 15, 1, 'ROLLO DE LISTON BLANCO DE 3 CM CON SUBLIMADO A COLOR  ', '1990.00', 5, '9950.00', '2018-02-28 21:58:13', 1, '', ''),
(150, 15, 1, 'ROLLO DE LISTON BLANCO DE 2 CM CON SUBLIMADO A COLOR  ', '2990.00', 5, '14950.00', '2018-02-28 21:58:13', 1, '', ''),
(151, 14, 1, 'RECIBOS DE PAGO', '0.70', 2000, '1400.00', '2018-02-28 22:02:38', 1, '', 'NEGRA'),
(152, 14, 1, 'VOLANTES SELECCION COLOR AMBOS LADOS', '1.70', 1000, '1700.00', '2018-02-28 23:58:17', 1, '', 'SELECCION COLOR'),
(153, 14, 1, 'TRIPTICOS SELECCION COLOR AMBOS\n', '3.60', 500, '1800.00', '2018-03-01 00:06:39', 1, '', 'SELECCION COLOR'),
(156, 15, 1, 'BOLIGRAFOS INFINITY IMPRESOS 1 TINTA', '5.90', 1000, '5900.00', '2018-03-01 17:03:42', 1, 'SH 3100', 'BLANCA'),
(157, 14, 1, 'CARPETAS IMPRESAS SELECCION COLOR', '8.90', 1000, '8900.00', '2018-03-01 17:06:18', 1, '', 'SELECCION COLOR'),
(158, 17, 1, 'LONA IMPRESION DIGITAL 2.26 X 2.26 MTS', '550.00', 1, '550.00', '2018-03-01 17:15:19', 1, '', ''),
(159, 14, 1, '2000 TRIPTICOS SELECCION COLOR AMBOS LADOS', '1200.00', 1, '1200.00', '2018-03-01 17:21:39', 1, '', 'SEL COLOR'),
(160, 16, 1, 'PULSERA TEJIDA A COLOR', '5.90', 6000, '35400.00', '2018-03-01 17:26:32', 1, '', 'COLOR'),
(161, 17, 1, 'MAMPARA MEDIDA 2.40 X 5.05 CON PATAS 1MT\nBASTIDOR DE MADERA', '6500.00', 1, '6500.00', '2018-03-01 17:28:34', 1, '', 'COLOR'),
(162, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 3 X 2 MTS', '3900.00', 1, '3900.00', '2018-03-01 17:33:18', 1, '', 'COLOR'),
(163, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 3 X 2 MTS\nEVENTO REYNOSA\nEVENTO MATAMOROS', '3900.00', 2, '7800.00', '2018-03-01 17:34:43', 1, '', 'COLOR'),
(164, 17, 1, 'IMPRESION  DE LONA   DE  1.20 X 3 METROS   CON BASTILLA  Y OJILLOS \n ', '360.00', 1, '360.00', '2018-03-01 17:45:41', 1, '', ''),
(165, 17, 1, 'IMPRESION  DE LONA  DE 1 X 1 CON BASTILLA  Y OJILLOS ', '100.00', 2, '200.00', '2018-03-01 17:45:41', 1, '', ''),
(166, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 5.50 X 2.40', '6500.00', 1, '6500.00', '2018-03-01 17:52:40', 1, '', 'COLOR'),
(167, 17, 1, 'PENDONES 1.80 X .80 CON PORTAPENDON', '690.00', 3, '2070.00', '2018-03-01 17:52:40', 1, '', 'COLOR'),
(168, 17, 1, 'PENDONES 1.60 X .60 CON PORTAPENDONES\nBASTILLA Y OJILLOS', '690.00', 2, '1380.00', '2018-03-01 17:59:16', 1, '', ''),
(169, 14, 1, 'MANTELETAS 2,500 CADA DISEÑO', '1.92', 5000, '9600.00', '2018-03-01 18:00:47', 1, '', 'SELECCION COLOR'),
(170, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 3 X 2 MTS', '3900.00', 1, '3900.00', '2018-03-01 18:01:21', 1, '', 'COLOR'),
(171, 17, 1, 'PENDONES 1.80 X .80 CON PORTAPENDONE', '690.00', 2, '1380.00', '2018-03-01 18:07:24', 1, '', ''),
(172, 17, 1, 'MAMPARA 3 X 1.50 CON BASTIDOR DE MADERA', '6500.00', 1, '6500.00', '2018-03-01 18:08:34', 1, '', 'COLOR'),
(173, 17, 1, 'MICROPERFORADO DE DIRECCION DE COMUNICACION EDUCATIVA .77 X 2.05', '890.00', 1, '890.00', '2018-03-01 18:10:36', 1, '', 'COLOR'),
(174, 17, 1, 'MICROPERFORADO DE COORDINACION DE IMAGEN MEDIDA .625 X 1.755', '790.00', 2, '1580.00', '2018-03-01 18:10:36', 1, '', 'COLOR'),
(175, 14, 1, 'REQUISICIO DE COMPRA', '1.39', 500, '695.00', '2018-03-01 18:10:54', 1, '', 'NEGRA'),
(176, 17, 1, 'MAMPARA 3 X 2 CON BASTIDOR DE MADERA', '3900.00', 1, '3900.00', '2018-03-01 18:12:42', 1, '', 'COLOR'),
(177, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 4 X 1.50', '4800.00', 1, '4800.00', '2018-03-01 18:21:06', 1, '', 'COLOR'),
(178, 14, 1, 'REQUISICION DE ALMACEN', '1.39', 2000, '2780.00', '2018-03-01 18:21:46', 1, '', 'NEGRA'),
(179, 17, 1, 'IMPRESION  DE  CALCAS EN VINIL   DE  18 CM  X  22 CM ', '5.50', 500, '2750.00', '2018-03-01 18:24:36', 1, 'X', 'SELECCION  DE COLOR '),
(180, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 5.50 X 2.40', '6500.00', 1, '6500.00', '2018-03-01 18:27:57', 1, '', 'COLOR'),
(181, 17, 1, 'SEÑALETICA TROVISEL 6MM EN VINIL HD 25 X25 CM', '195.00', 4, '780.00', '2018-03-01 18:30:23', 1, '', ''),
(182, 17, 1, 'SEÑALETICA TROVISEL 6MM EN VINIL HD 25 X 40 CM', '250.00', 2, '500.00', '2018-03-01 18:30:23', 1, '', ''),
(183, 17, 1, 'IMPRESION  DE LONA DE  1. 50  X  3  METROS  CON BASTILLA  Y OJILLOS  ', '450.00', 1, '450.00', '2018-03-01 18:36:56', 1, 'X', 'SELECCCION  DE COLOR '),
(184, 14, 1, 'FICHA DE REGISTRO', '0.75', 2000, '1500.00', '2018-03-01 18:42:41', 1, '', 'AZUL'),
(185, 19, 1, '', '189.65', 2, '379.30', '2018-03-01 19:04:28', 1, '', ''),
(186, 17, 1, 'MAMPARA   DE  2  X 4  METROS   CON BASTIDOR  DE MADERA   ', '2400.00', 1, '2400.00', '2018-03-01 19:41:45', 1, NULL, NULL),
(187, 15, 1, ' TAZAS  SUBLIMADAS  S/ COLOR', '60.00', 35, '2100.00', '2018-03-01 19:41:45', 1, NULL, NULL),
(188, 16, 1, 'CAMISAS MANGA LARGA MARCA DACACHE PARA CABALLERO CON 1 LOGO BORDADO TALLAS XS A LA XL', '375.00', 14, '5250.00', '2018-03-01 20:16:21', 1, NULL, NULL),
(189, 16, 1, 'CAMISAS MANGA LARGA MARCA DACACHE PARA CABALLERO CON 1 LOGO BORDADO TALLAS 3XL', '405.00', 3, '1215.00', '2018-03-01 20:16:21', 1, NULL, NULL),
(190, 14, 1, 'RECIBO DE DEPOSITO PARA HUESPED', '1.39', 1500, '2085.00', '2018-03-01 22:40:08', 1, '', 'NEGRA'),
(191, 17, 1, 'IMPRESION  DE VINIL  DE  1.52  X  3.05', '1395.00', 2, '2790.00', '2018-03-01 22:47:35', 1, '', ''),
(192, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA MEDIDA 6.20 X 2.36 INCLUYE INSTALACION', '8900.00', 1, '8900.00', '2018-03-02 04:11:24', 1, '', 'COLOR'),
(193, 14, 1, 'POSTER SELECCION COLOR', '17.50', 200, '3500.00', '2018-03-02 04:16:30', 1, '', 'SEL COLOR'),
(194, 17, 1, 'LONA 4.50 X .50', '600.00', 2, '1200.00', '2018-03-02 04:19:41', 1, '', ''),
(195, 14, 1, 'LINEAMIETONS DE EJECUCCION DEL SEGURO ESCOLAR\n12 PAGINAS SELECCION COLOR AMBOS LADOS\nTAMAÑO CARTAACABADO GRAPADO\n', '35.00', 600, '21000.00', '2018-03-02 04:22:52', 1, '', 'SEL COLOR'),
(196, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 4 X 1.50 MTS\nINCLUYE INSTALACIONA', '6000.00', 1, '6000.00', '2018-03-02 04:24:54', 1, '', ''),
(197, 14, 1, 'CONVOCATORIA SELECCION COLOR TAMAÑO OFICIO ', '1.80', 2500, '4500.00', '2018-03-02 04:26:33', 1, '', 'SEL COLOR'),
(198, 17, 1, 'VINIL MICROPERFORADO MEDIDA 12 X 2.02 MTS CONCLUYE INSTALACION', '12900.00', 1, '12900.00', '2018-03-02 04:28:45', 1, '', ''),
(199, 17, 1, 'VINIL MICROPERFORADO MEDIDA 9.44 X 2.02 MTS INCLUYE INSTALACION', '10800.00', 1, '10800.00', '2018-03-02 04:28:45', 1, '', ''),
(200, 14, 1, 'INVITACIONES A COLOR AMBOS LADOS', '30.00', 40, '1200.00', '2018-03-02 04:30:23', 1, '', 'COLOR ......LASER'),
(201, 17, 1, 'LONAS 1.40 X .70 BASTILLA Y OJILLOS', '190.00', 10, '1900.00', '2018-03-02 04:33:48', 1, '', 'COLOR'),
(202, 17, 1, 'PENDONES 1.40 X .70 BASTILLA U OJILLOS', '190.00', 10, '1900.00', '2018-03-02 04:33:48', 1, '', ''),
(203, 17, 1, 'PENMDONMES 5 X 1 MTS SOLAPA PARA MADERA ARRIBA Y ABAJO\n DE CADA DISEÑO\n', '990.00', 6, '5940.00', '2018-03-02 04:39:02', 1, '', 'COLORES'),
(204, 16, 1, 'BRAZALETES TEJIDO A COLOR', '2.70', 1000, '2700.00', '2018-03-02 04:44:26', 1, '', ''),
(205, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA MEDIDA 2 X 2MTS INCLUYE INSTALACION', '3250.00', 1, '3250.00', '2018-03-02 04:46:24', 1, '', ''),
(206, 17, 1, 'MAMPARA CON BASHTIDOR DE MADERA MEDIDA 2.40 X 5.50 INCLUYE INSTALACION EN VILLA DE CASAS', '8500.00', 1, '8500.00', '2018-03-02 04:49:16', 1, '', ''),
(207, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 10.98 X 3.00', '9800.00', 1, '9800.00', '2018-03-02 04:50:59', 1, '', ''),
(208, 14, 1, 'CONTANCIAS IMPRESAS A COLOR EN LASEER.,.... CON PERSONALIZADO', '9.00', 770, '6930.00', '2018-03-02 04:55:25', 1, '', 'LASER'),
(209, 17, 1, 'BANDERAS IMPRESAS EN  TELA TELIXCON MEDIDA 78 X 59 CM', '250.00', 10, '2500.00', '2018-03-02 04:57:12', 1, '', 'COLOR'),
(210, 17, 1, 'MEDALLAS TROQUELADAS EN COLOR BRONCE CON ACABADO ANTIGUO CON LISTON TRICOLOR', '55.00', 200, '11000.00', '2018-03-02 05:10:19', 1, '', ''),
(211, 17, 1, 'MEDALLAS TROQUELADAS EN COLOR ORO, PLATA, BRONCE ACABADO BRILLANTE CON LISTON TRICOLOR', '75.00', 30, '2250.00', '2018-03-02 05:10:19', 1, '', ''),
(212, 16, 1, 'PLAYERAS SUBLIMADAS A COLOR TELA DRYFIT SEGUN DISEÑO PROPORCIONADO POR EL CLIENTE\n200 G CABALLERO\n200 G DAM\n400 T12 NIÑOS', '115.00', 400, '46000.00', '2018-03-02 05:10:19', 1, '', 'COLOR'),
(213, 17, 1, 'BALONES DE FUTBOL', '199.00', 20, '3980.00', '2018-03-02 05:10:19', 1, '', ''),
(214, 17, 1, 'BALOMES DE BASQUETBOL', '155.00', 15, '2325.00', '2018-03-02 05:10:19', 1, '', ''),
(215, 17, 1, 'BALONES DE VOLEIBOL', '105.00', 15, '1575.00', '2018-03-02 05:10:19', 1, '', ''),
(216, 15, 1, 'LIBRETA KENTYA AZUL', '115.00', 300, '34500.00', '2018-03-02 05:12:04', 1, 'HL 030', 'PLATA'),
(217, 15, 1, 'TERMO ONELA PLATA', '125.00', 300, '37500.00', '2018-03-02 05:13:44', 1, 'TMPS 52', 'AZUL'),
(218, 15, 1, 'LIBRETA KENTYA AZUL', '115.00', 500, '57500.00', '2018-03-02 05:14:55', 1, 'HL 030', 'PLATA'),
(219, 15, 1, 'LIBREETA KENTYA AZUL', '115.00', 500, '57500.00', '2018-03-02 05:16:40', 1, 'HL 030', 'PLATA'),
(220, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 2.5 X 5.00 M\nBASTILLA Y OJILLOS', '1000.00', 1, '1000.00', '2018-03-02 15:10:41', 1, '', 'COLOR'),
(221, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 3 X 1.50 CON BASTILLA Y OJILLOS CADA METRO.', '750.00', 2, '1500.00', '2018-03-02 16:21:53', 1, '', 'COLOR'),
(222, 14, 1, 'POSTER DOBLE CARTA SELECCION COLOR', '1.75', 1000, '1750.00', '2018-03-02 16:27:51', 1, '', 'SEL COLOR'),
(223, 17, 1, 'ROTULACION DE ESPECTACULAR DE CAMPESTRE MEDIDA 12 X 4.50 MTS\nSE INSTALARA EL DIA 8 DE MARZO.', '14000.00', 1, '14000.00', '2018-03-02 16:34:50', 1, '', 'COLOR'),
(224, 14, 1, 'IMPRESION  DE POSTER  A SELECCION  DE  COLOR   TAMAÑO  DOBLE  CARTA ', '12.00', 10, '120.00', '2018-03-02 16:42:44', 1, '', 'SELECCION  DE  COLOR '),
(225, 14, 1, 'IMPRESION DE ENCUESTAS. (37,500 DOBLES CARTAS)', '0.00', 37500, '0.00', '2018-03-02 16:53:45', 1, '', 'SELECCION COLOR'),
(226, 14, 1, 'RECIBOS DE CAJA SERIE RPD IMPRESION A 2 TINTAS\nPASTA ARRIBA Y ABAJO CON FOLIO EN COLOR ROJO\n ', '0.90', 5000, '4500.00', '2018-03-02 17:11:18', 1, '', 'NEGRA'),
(227, 14, 1, 'SOBRES DE CORESPONDENCIA SIN VENTANA IMPRESION A 1 TINTA', '1.10', 1000, '1100.00', '2018-03-02 17:16:46', 1, '', 'AZUL'),
(228, 14, 1, 'POSTER SELECCION COLOR', '3.17', 1200, '3804.00', '2018-03-02 18:03:36', 1, '', 'SEL COLOR'),
(229, 15, 1, 'ROLLO DE LISTON BLANCO DE 4.5 CM CON IMPRESION 1 TINTA', '900.00', 1, '900.00', '2018-03-02 18:51:15', 1, '', 'BLANCA'),
(230, 14, 1, 'VOLANTES SELECCION COLOR UN LADO', '0.60', 2000, '1200.00', '2018-03-02 21:03:24', 1, '', 'SEL COLOR'),
(231, 14, 1, 'DIAGRAMA DE SEGURO ESCOLAR', '2.59', 1200, '3108.00', '2018-03-02 21:06:07', 1, '', 'SEL COLOR'),
(232, 15, 1, 'PLAYERAS CUELLO REDONDO BLANCAS IMPRESAS 3 TINTAS FRENTE', '39.59', 150, '5938.50', '2018-03-02 21:09:44', 1, '', 'VERDE, ROJO, NEGRO'),
(233, 17, 1, 'VINILES IMPRESION DIGITAL MEDIDA 1.00 X .50\n5 LLAVES DE TAMAULIPAS\n8 CHEQUES SIMBOLICOS', '50.00', 13, '650.00', '2018-03-02 21:16:52', 1, '', 'HD'),
(234, 14, 1, 'VOLANTES IMPRESOS A SELECCION COLOR', '0.26', 40000, '10400.00', '2018-03-02 22:58:33', 1, '', 'SELECCION A COLOR'),
(235, 14, 1, 'VOLANTES IMPRESION A SELECCION COLOR', '0.26', 5000, '1300.00', '2018-03-02 23:04:14', 1, '', 'SELECCION COLOR'),
(236, 17, 1, 'LONA IMPRESION DIGITAL 2.00 X 1.50 BASTILLA Y OJILLOS', '240.00', 1, '240.00', '2018-03-02 23:30:19', 1, '', ''),
(237, 14, 1, 'VOLANTES SELECCION COLOR AMBOS LADOS ', '0.44', 10000, '4400.00', '2018-03-02 23:37:14', 1, '', 'SEL COLOR'),
(238, 14, 1, 'HOJAS MEMBRETADAS SELECCION COLOR', '14.00', 100, '1400.00', '2018-03-02 23:42:56', 1, '', 'SEL COLOR'),
(239, 14, 1, 'CARPETAS MANILAFOLDER', '3.70', 100, '370.00', '2018-03-02 23:47:49', 1, '', 'NEGRA'),
(240, 14, 1, 'HOJAS MEMBRETADAS SELECCION COLOR', '5.50', 200, '1100.00', '2018-03-02 23:50:32', 1, '', 'SELECCION COLOR'),
(241, 14, 1, 'TARJETAS DE PRESENTACION', '3.50', 200, '700.00', '2018-03-03 01:02:30', 1, '', 'NEGRA Y ORO'),
(242, 14, 1, 'CUPONERA SELECCION COLOR AMBOS LADOS  CON BARNIZ UV 1 LADO', '2.41', 1000, '2410.00', '2018-03-03 05:35:33', 1, '', 'SEL COLOR'),
(243, 17, 1, 'LAMINA DE COROPLAS', '220.00', 1, '220.00', '2018-03-03 17:45:27', 1, '', ''),
(244, 15, 1, 'PLAYERAS C/R COLOR AZUL MARINO TALLA G IMPRESION FRENTE Y ESPALDA A 1 TINTA CON DIRECCION DE VICTORIA', '52.00', 150, '7800.00', '2018-03-05 16:25:14', 1, '', 'BLANCA'),
(245, 15, 1, 'PLAYERAS CUELLO REDONDO COLOR AZUL MARINA CON IMPRESION FRENTE Y ESPALDA A 1 TINTA CON DIRECCION DE TAMPICO', '52.00', 200, '10400.00', '2018-03-05 16:25:14', 1, '', 'BLANCA'),
(246, 15, 1, 'PLAYERA CUELLO REDONDO EN COLOR AZUL MARINO CON IMPRESION EN FRENTE Y ESPALDA A 1 TINTA CON DIRECCION DE SALTILLO', '52.00', 100, '5200.00', '2018-03-05 16:25:14', 1, '', 'BLANCA'),
(247, 17, 1, 'VINILES PARA APARADOR CON INSTALACION EN MATRIZ\nMEDIDA 1.20 X 1.56 MTS', '450.00', 3, '1350.00', '2018-03-05 17:05:03', 1, '', ''),
(248, 17, 1, 'LONA IMPRESION DIGITAL 2.26 X 2.26 BASTILLA Y OJILLOS CADA METRO', '550.00', 1, '550.00', '2018-03-05 17:08:46', 1, '', ''),
(249, 14, 1, 'IMPRESION DE ETIQUETAS DE OUTLET', '0.60', 3000, '1800.00', '2018-03-05 17:19:30', 1, '', 'SELECCION COLOR'),
(250, 16, 1, 'playera de color  negro  yazbek  tipo  polo  con  2 logos bordados  al frente  y  espalda 1 ', '170.00', 20, '3400.00', '2018-03-05 18:15:37', 1, '', ''),
(251, 14, 1, 'COMANDAS IMPRESAS A 1 TINTA ', '0.10', 12000, '1200.00', '2018-03-05 18:24:31', 1, '', 'NEGRO'),
(252, NULL, 1, 'LONA IMPRESION DIGITAL ', '2413.79', 1, '2413.79', '2018-03-05 18:33:46', 1, '', ''),
(253, 17, 1, 'SELLOS DE GOMA BASE DE MADERA CON EL DISEÑO DE ESCUDO NACIONAL Y COMISION ESTATAL DE ATENCION A VICTIMAS.', '330.00', 16, '5280.00', '2018-03-05 18:36:00', 1, '', ''),
(254, 17, 1, 'SELLOS DE GOMA BASE DE MADERA ESCUDO NACIONAL MEDIDA 5.5 X 3 CM', '250.00', 2, '500.00', '2018-03-05 18:39:41', 1, '', ''),
(255, 17, 1, 'SELLOS AUTOENTINTABLES FECHADOR....RECIBIDO MEDIDA 7.5 X 3 CM', '460.00', 2, '920.00', '2018-03-05 18:39:41', 1, '', ''),
(256, 17, 1, 'SELLO DE GOMA BASE DE MADERA MEDIDA 8.6 X 3.5 CM CON DISEÑO ESCUDO NACIONAL', '350.00', 2, '700.00', '2018-03-05 18:39:41', 1, '', ''),
(257, 17, 1, 'SELLO GOMA BASE DE MADERA MEDIDA 6.5 X 3.5 CM DISEÑO ESCUDO NACIONAL', '320.00', 10, '3200.00', '2018-03-05 18:39:41', 1, '', ''),
(259, 16, 1, 'GORRAS DE MALLA CON LOGO SUBLIMADO FRENTE, LATERALES LOGOS BORDADOS (2)', '79.00', 1000, '79000.00', '2018-03-05 19:51:44', 1, NULL, NULL),
(260, 15, 1, 'PLAYERAS DRIFYT SUBLIMADAS A COLOR AMBOS LADOS Y MANGAS. VARIAS TALLAS.\n400 TALLA G HOMBRE\n400 TALLA G MUJER\n20 TALLA 12 NIÑOS', '115.00', 1000, '115000.00', '2018-03-05 19:51:44', 1, NULL, NULL),
(261, 15, 1, 'MEDALLAS GRABADAS AMBOS LADOS COLOR PLATA NATURAL ', '53.00', 1000, '53000.00', '2018-03-05 19:51:44', 1, NULL, NULL),
(262, 15, 1, 'MEDALLAS GRABADAS AMBOS LADOS \n35 PRIMER LUGAR  COLOR ORO\n35 SEGUNDO LUGAR  COLOR PLATA\n35 TERCER LUGAR  COLOR BRONCE', '53.00', 105, '5565.00', '2018-03-05 19:51:44', 1, NULL, NULL),
(264, 15, 1, ' ANFORAS SINKER SNF 009 TRANSLUCIDO 20 NARANJA/20 AZUL/20 BLANCO/20 VERDE/25 AMARILLO Y 25 ROJO .', '11.90', 130, '1547.00', '2018-03-05 20:08:17', 1, 'ANF 009', 'BLANCA'),
(271, 16, 1, 'PLAYERA  TIPO POLO  COLOR  NEGRA  CON 2 LOGOS BORDADOS  AL FRENTE    Y 1  EN LA PARTE  DE LA ESPALDA  \n', '170.00', 14, '2380.00', '2018-03-05 20:44:25', 1, '', ''),
(272, 14, 1, 'FOLLETO IMPRESO SELECCION COLOR AMBOS LADOS 4 PAGINAS', '1.00', 25000, '25000.00', '2018-03-05 20:52:07', 1, '', 'SELECCION COLOR '),
(273, 17, 1, 'LONA IMPRESION DIGITAL 2.26 X 2.26 CON 12 OJILLOS AL REDEDOR DE TODA LA LONA.', '550.00', 1, '550.00', '2018-03-05 22:40:55', 1, '', ''),
(274, 14, 1, 'BOLETOS DE RIFA 1 TINTA AMBOS LADOS', '0.22', 6000, '1320.00', '2018-03-05 23:16:57', 1, '', 'AZUL'),
(275, 14, 1, 'TICKET DE RECIBA SERIE \"Z\"', '0.35', 4000, '1400.00', '2018-03-05 23:26:21', 1, '', 'SEL COLOR'),
(276, 14, 1, 'TICKET DE BASCULA SIN COSTO SERIE \"M\"', '1.35', 10500, '14175.00', '2018-03-05 23:33:09', 1, '', 'SEL COLOR'),
(277, 14, 1, 'RECIBO DE DINERO DE COMPRAS', '1.05', 2000, '2100.00', '2018-03-05 23:35:38', 1, '', 'SEL COLOR'),
(278, 16, 1, 'BLUSA GABARDINA BLANCA CON DOS LOGOS BORDADOS UAT NUEVO PECHO IZQ. Y LOGO FACULTAD DE CIENCIAS PECHO DER., BLUSA TALLA XS', '310.34', 1, '310.34', '2018-03-06 00:33:14', 1, '', ''),
(279, 16, 1, 'PANTALON TORINO AZUL MARINO PARA DAMA TALLAS 3, 5, 7, 9, 11, 13', '271.00', 6, '1626.00', '2018-03-06 15:58:48', 1, '', ''),
(280, 16, 1, 'PANTALON TORINO AZUL MARINO PARA DAMA TALLAS 15 Y 17', '301.00', 2, '602.00', '2018-03-06 15:58:48', 1, '', ''),
(281, 16, 1, 'PANTALON TORINO AZUL MARINO TALLA 21', '331.00', 1, '331.00', '2018-03-06 15:58:48', 1, '', ''),
(282, 16, 1, 'PANTALON TORINO KAKI PARA DAMA TALLA 7 Y 9', '271.00', 2, '542.00', '2018-03-06 15:58:48', 1, '', ''),
(283, 16, 1, 'PANTALON TORINO KAKY PARA DAMA TALLA 19', '331.00', 1, '331.00', '2018-03-06 15:58:48', 1, '', ''),
(285, 17, 1, 'LONAS IMPRESION DIGITAL 1 X 1 \n5 DE VENTA\n5 DE RENTA', '100.00', 10, '1000.00', '2018-03-06 17:36:41', 1, '', ''),
(286, 14, 1, 'RECIBOS DE &quot;NEONATOS&quot; ', '0.58', 2000, '1160.00', '2018-03-06 17:43:02', 1, '', 'NEGRA'),
(287, 17, 1, 'METRO CUADRADO DE CALCAS A COLOR EN VINIL TRANSPARENTE', '250.00', 1, '250.00', '2018-03-06 17:49:52', 1, '', 'COLOR'),
(289, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 3 X 2 MTS CON INSTALACION\nSENTIMIENTO JUARISTA', '3900.00', 1, '3900.00', '2018-03-06 18:17:30', 1, '', ''),
(290, 15, 1, 'PULSERAS TEJIDAS A COLOR', '6.00', 1000, '6000.00', '2018-03-06 18:29:28', 1, '', 'COLOR'),
(291, 15, 1, 'GORRA TRUCKER AZUL CON LOGO SUBLIMADO', '95.00', 70, '6650.00', '2018-03-06 18:29:28', 1, '', 'SUBLIMADO'),
(292, 15, 1, 'PLAYERAS CUELLO REDONDO BLANCAS CON IMPRESO A COLOR FRENTE 20 CH 20 M 20 G 5 XG', '70.00', 65, '4550.00', '2018-03-06 18:29:28', 1, '', 'VERDE,NARANJA,AZUL,CELESTE Y AMARILLO'),
(293, 17, 1, 'SELLO DE MADERA 2.6 X 4.5 CM OFICIAL', '200.00', 1, '200.00', '2018-03-06 18:39:02', 1, '', ''),
(294, 17, 1, 'SELLO AUTOENTINTABLE FECHADOR 6 X 4 CM', '460.00', 1, '460.00', '2018-03-06 18:39:02', 1, '', ''),
(295, 17, 1, 'SELLO DE GOMA EN BASE DE MADERA 2.6 X 4.5  LOGO OFICIAL', '200.00', 1, '200.00', '2018-03-06 18:41:01', 1, '', ''),
(296, 17, 1, 'SELLO AUTOENTINTABLE FECHADOR 6 X 4', '460.00', 1, '460.00', '2018-03-06 18:41:01', 1, '', ''),
(297, 17, 1, 'SELLO AUTOENTINTABLE FECHADOR 6 X 4 ', '460.00', 1, '460.00', '2018-03-06 18:41:52', 1, '', ''),
(298, 15, 1, 'CARPETA DE CURPIEL NEGRA IMPRESA 1 TINTA, INCLUYE BOLIGRAFO METALICO CON LASER Y USB 4GB', '1000.00', 3, '3000.00', '2018-03-06 20:03:55', 1, '', 'BLANCA'),
(299, 15, 1, 'CARPETA DE CURPIEL NEGRA IMPRESA 1 TINTA, INCLUYE BOLIGRAFO METALICO CON LASER Y USB 4GB', '1000.00', 3, '3000.00', '2018-03-06 20:05:29', 1, '', 'BLANCA'),
(300, 21, 1, '', '150.87', 4, '603.48', '2018-03-06 22:59:31', 1, '', ''),
(301, 14, 1, 'SOLICITUD DE PRESTAMO COMPLEMENTARIO SELECCION COLOR AMBOS LADOS', '4.50', 200, '900.00', '2018-03-06 23:31:52', 1, '', 'SEL COLOR'),
(302, NULL, 1, '100 globos verde limon impresos 1 tinta con logo de guri', '6.00', 100, '600.00', '2018-03-07 00:22:06', 1, 'globos', 'blanca'),
(303, 14, 1, 'CARPETA TAMAÑO OFICIO SELECCION COLOR  EN \n CARTULINA COUCHE DE 300 GRS', '5.00', 1000, '5000.00', '2018-03-07 00:27:18', 1, '', 'SELECCION COLOR'),
(304, 15, 1, 'PLAYERAS CUELLO REDONDO BLANCAS IIMPRESAS 2 TINTAS FRENTE 2 TINTAS ESPALDA\n100 M    200 L   100 XL    10 XXL', '35.00', 410, '14350.00', '2018-03-07 03:58:48', 1, '', 'TURQUESA Y GRIS'),
(305, 15, 1, 'GORRAS CON LOGO SUBLIMADO O CORTE EN VINIL', '120.00', 7, '840.00', '2018-03-07 04:44:47', 1, '', 'NEGRO'),
(306, 15, 1, 'MANDIL NEGRO TIPO CHEFF CON LOGO EN VINIL TEXTIL', '170.00', 7, '1190.00', '2018-03-07 04:44:47', 1, '', 'BLANCO'),
(307, 17, 1, 'IMPRESION  DE  HOLOGRAMA  A SELECCION  DE COLOR   \nIMPRESO EN REFLEJO  DE  ESPEJO  EN VINIL \n\n MEDIDA   12 cm x 5.5 cm', '10.50', 3500, '36750.00', '2018-03-07 16:18:42', 1, NULL, NULL),
(308, 14, 1, 'IMPRESION DE  FORMATO  CON  LOGO  IMPRESO   EN MARCA  DE AGUA ', '1.99', 2000, '3980.00', '2018-03-07 16:19:07', 1, '', 'VERDE '),
(309, 14, 1, 'IMPRESIONES EN LASER', '7.00', 10, '70.00', '2018-03-07 17:03:31', 1, '', 'LASER'),
(310, 15, 1, 'PLAYERAS CUELLO REDONDO BLANCA \nTALLAS \n60 CH, 70M, 70G', '38.00', 200, '7600.00', '2018-03-07 17:22:48', 1, '', 'NEGRA'),
(311, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.60 X .60 CON PORTAPENDON\n2 DE RECEPCION DE DOCUMENTOS\n1 DE BIENVENIDA\n1 DE RECOMENDACION', '690.00', 4, '2760.00', '2018-03-07 17:53:35', 1, '', 'COLOR'),
(312, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA MEDIDA 2.50 X 5 MTS CON SOPORTE A 30 CM DE ALTURA DE PISO', '6500.00', 1, '6500.00', '2018-03-07 17:53:35', 1, '', ''),
(313, 14, 1, 'CARPETAS SELECCION COLOR', '4.90', 3850, '18865.00', '2018-03-07 17:55:38', 1, '', 'SELECCION COLOR '),
(314, NULL, 1, 'BOLIGRAFOS INFINITY SH 3100 1 TINTA', '5.40', 3850, '20790.00', '2018-03-07 18:27:09', 1, '', 'BLANCA'),
(315, 17, 1, 'VINIL IMPRESO EN HD  INCLUYE INSTALACION  MEDIDA DE 3.60 X 2.00 METROS', '1000.00', 1, '1000.00', '2018-03-07 18:44:36', 1, '', 'HD'),
(316, 16, 1, 'BORDADO LOGO TAM A COLOR PECHO IZQUIERDO', '9.00', 48, '432.00', '2018-03-07 21:07:10', 1, '', ''),
(317, 16, 1, 'BORDADO LOGO CONALEP PECHO DERECHO', '7.50', 48, '360.00', '2018-03-07 21:07:10', 1, '', ''),
(318, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 80 X 1.75 CON BASTILLA Y OJILLOS', '350.00', 10, '3500.00', '2018-03-07 21:16:36', 1, '', ''),
(319, 15, 1, 'ANFORA LAKE COLOR AZUL', '0.00', 1000, '0.00', '2018-03-07 23:34:47', 1, 'ANF 006', 'BLANCA'),
(320, 15, 1, 'ANFORA LAKE TRANSPARENTE', '0.00', 1000, '0.00', '2018-03-07 23:34:47', 1, 'ANF 006', 'VERDE LIMA'),
(321, 15, 1, 'BOLSA ECOLOGICA BLANCA', '0.00', 2500, '0.00', '2018-03-07 23:34:47', 1, 'SIN 043', 'VERDE LINA'),
(322, 15, 1, 'BOLSA ECOLOGICA AZUL', '0.00', 2500, '0.00', '2018-03-07 23:34:47', 1, 'SIN 043', 'BLANCA'),
(323, 15, 1, 'DISCO VOLADOR CONTOUR AZUL', '0.00', 2100, '0.00', '2018-03-07 23:34:47', 1, 'FREE 005', 'BLANCA'),
(324, 15, 1, 'HIELERA KOSTA VERDE', '0.00', 5000, '0.00', '2018-03-07 23:34:47', 1, 'SIN 057', 'BLANCA'),
(325, 15, 1, 'LIBRETA ECOLOGICA CON CENEFA VERDE', '0.00', 5000, '0.00', '2018-03-07 23:34:47', 1, 'HL 2010', 'VERDE LIMA'),
(326, 15, 1, 'ANFORA SINKER TRANSPARENTE', '0.00', 3000, '0.00', '2018-03-07 23:34:47', 1, 'ANF 009', 'VERDE LIMA'),
(327, 15, 1, 'ANFORA SINKER AZUL', '0.00', 3000, '0.00', '2018-03-07 23:34:47', 1, 'ANF 009', 'BLANCA'),
(328, 15, 1, 'CUBETA DE PLAYA AZUL CON ESTIQUETA SEL COLOR', '0.00', 2000, '0.00', '2018-03-07 23:34:47', 1, 'PROMOS GR', 'ETIQUETA COLOR'),
(329, 15, 1, 'PELOTA PLAYERA AZUL CON BLANCO', '0.00', 2000, '0.00', '2018-03-07 23:34:47', 1, '', 'AZUL'),
(330, 16, 1, 'GORRAS DE TRUCKER SUBLIMADAS', '0.00', 5000, '0.00', '2018-03-07 23:35:38', 1, '', ''),
(331, 17, 1, 'LONA CON IMPRESION DIGITAL CON BASTIDOR DE MADERA MEDIDA DE 4 X 2  METROS', '4500.00', 1, '4500.00', '2018-03-07 23:37:50', 1, '', ''),
(332, 15, 1, 'lmpresion en serigrafia en bolsas de papel cafes con asas 2 medidas diferentes:  16 x 20.5  ( 500 ) y 19 x 19 ( 1000 )', '1.00', 1500, '1500.00', '2018-03-08 01:13:28', 1, '', 'CAFE ESPÉCIAL'),
(334, 14, 1, 'SOLICITUD DE INSCRIPCION PARA EL PERSONA', '1.12', 3000, '3360.00', '2018-03-08 14:42:49', 1, '', 'SEL COLOR'),
(335, 14, 1, 'HOJAS MEMBRETADAS', '0.59', 2000, '1180.00', '2018-03-08 14:44:50', 1, '', 'SELECCION COLOR'),
(336, 14, 1, 'SOLICITUD DE PRÉSTAMO DEL PROGRAMA PARA EL PERSONAL CON NOMBRAMIENTO LIMITADO', '0.74', 2000, '1480.00', '2018-03-08 14:56:07', 1, '', 'SELECCIÓN COLOR'),
(337, 14, 1, 'SOLICITUD DE INSCRIPCIÓN AL PROGRAMA CON NOMBRAMIENTO LIMITADO', '1.12', 3000, '3360.00', '2018-03-08 15:03:47', 1, '', 'SELECCIÓN COLOR '),
(338, 14, 1, 'FORMATO DE 5 HIJAS SEL. COLOR 1 LADO', '2.93', 2000, '5860.00', '2018-03-08 15:09:43', 1, '', 'SELECCIÓN COLOR '),
(339, 14, 1, 'SOLICITUD DE ESTUDIO PARA PAGO DE PRÉSTAMO SARTET', '0.50', 4000, '2000.00', '2018-03-08 15:14:02', 1, '', 'SELECCIÓN COLOR '),
(340, 14, 1, 'SOLICITUD DE PRÉSTAMO ', '0.77', 3000, '2310.00', '2018-03-08 15:17:37', 1, '', 'SELECCION COLOR'),
(341, 14, 1, 'PORTADAS DE CD', '0.60', 2000, '1200.00', '2018-03-08 15:20:00', 1, '', 'SELECCIÓN COLOR'),
(342, 14, 1, 'SOLICITUD DE AHORRO 24 QUINCENAS', '1.20', 2000, '2400.00', '2018-03-08 15:22:17', 1, '', 'SELECCIÓN COLOR'),
(343, 14, 1, 'SOLICITUD INSCRIPCION AHORRO/PSSET', '1.20', 2000, '2400.00', '2018-03-08 15:26:14', 1, '', 'SELECCIÓN COLOR'),
(344, 14, 1, 'SOLICITUD DE INSCRIPCIÓN PERSONAL LIMITADO ', '1.22', 3000, '3660.00', '2018-03-08 15:31:09', 1, '', 'SELECCIÓN COLOR '),
(345, 14, 1, 'SOLICITUD DE INSCRIPCIÓN AL ISSTE \nSELECCIÓN COLOR FRENTE\nREVERSO (NEGRO)\n=GTO Y QUICK', '1.22', 3000, '3660.00', '2018-03-08 15:37:51', 1, '', 'SELECCIÓN COLOR '),
(346, 14, 1, 'CARTA AUTORIZACIÓN (HOJA MEMBRETADA)', '0.49', 8500, '4165.00', '2018-03-08 15:42:38', 1, '', 'SELECCIÓN COLOR'),
(347, 17, 1, 'LONA IMPRESIÓN  DIGITAL 5.00 X 2.50\n(RONDALLAS) \n= BASTILLA Y OJILLOS =', '1000.00', 1, '1000.00', '2018-03-08 15:48:15', 1, '', 'SID'),
(348, 16, 1, 'CAMISA BLANCA GABARDINA MANGA LARGA CON LOGO BORDADO PECHO IZQ.', '395.00', 9, '3555.00', '2018-03-08 15:55:17', 1, '', ''),
(349, 16, 1, 'CAMISAS Y/O BLUSAS AZUL CIELO OXFORD MANGA LARGA CON LOGO BORDADO PECHO IZQ.', '395.00', 6, '2370.00', '2018-03-08 15:55:17', 1, '', ''),
(350, 16, 1, 'CAMISA NEGRA GABARDINA MANGA CORTA CON 3 LOGOS BORDADOS 2 EN FRENTE T/ESCUDO Y UNO EN ESPALDA', '395.00', 4, '1580.00', '2018-03-08 15:55:17', 1, '', ''),
(351, 16, 1, 'CAMISA RACING AMARILLA CON 3 LOGOS BORDADOS, 2 EN FRENTE T/ESCUDO, UNO EN ESPALDA', '395.00', 4, '1580.00', '2018-03-08 15:55:17', 1, '', ''),
(352, 16, 1, 'CAMISA BLANCA GABARDINA MANGA LARGA CON LOGO BORDADO PECHO IZQ. TALLA 2XL', '425.00', 2, '850.00', '2018-03-08 15:55:17', 1, '', ''),
(353, 16, 1, 'CAMISA AZUL CIELO OXFORD MANGA LARGA CON LOGO BORDADO PECHO IZQ. TALLA 2XL', '425.00', 1, '425.00', '2018-03-08 15:55:17', 1, '', ''),
(354, 16, 1, 'CAMISA NEGRA GABARDINA MANGA CORTA CON 3 LOGOS BORDADOS, 2 EN FRENTE T/ESCUDO, UNO EN ESPALDA, TALLA 2XL', '425.00', 1, '425.00', '2018-03-08 15:55:17', 1, '', ''),
(355, 16, 1, 'CAMISA RACING AMARILLA CON 3 LOGOS BORDADOS, EN FRENTE T/ESCUDO, UNO EN ESPALDA, TALLA 2XL', '425.00', 2, '850.00', '2018-03-08 15:55:17', 1, '', ''),
(356, 20, 1, 'PLACAS 400 X 510', '120.69', 2, '241.38', '2018-03-08 17:07:37', 1, '', ''),
(357, 19, 1, 'PLACAS', '189.65', 2, '379.30', '2018-03-08 17:07:37', 1, '', ''),
(358, 21, 1, '', '150.87', 10, '1508.70', '2018-03-08 17:14:53', 1, '', ''),
(359, 20, 1, '', '120.69', 1, '120.69', '2018-03-08 17:17:43', 1, '', ''),
(360, 17, 1, '1 sello de goma con base de madera medida : 5.5 x 5.5 cm', '117.50', 1, '117.50', '2018-03-08 17:39:37', 1, 'sellos', ''),
(361, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 3.5 X 2.5 BASTILLA Y OJILLOS', '700.00', 1, '700.00', '2018-03-08 17:43:54', 1, '', ''),
(362, 14, 1, 'FORMATO DE ORDEN DE TRABAJO', '0.36', 10000, '3600.00', '2018-03-08 17:46:38', 1, '', 'NEGRA'),
(363, 14, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS', '0.85', 12000, '10200.00', '2018-03-08 17:53:53', 1, '', 'SEL COLOR'),
(364, 20, 1, '', '120.69', 1, '120.69', '2018-03-08 18:02:33', 1, '', ''),
(365, 14, 1, '4000 VOLANTES 2 CARAS UNA A COLOR Y OTRA NEGRO 1/4 DE OFICIO COUCHE 130 GRMS.', '1508.62', 1, '1508.62', '2018-03-08 19:08:36', 1, 'VOLANTES', 'FRENTE A COLOR Y REVERSO NEGRO'),
(366, 17, 1, 'IMPRESION  DE LONAS     CON  BASTILLA  Y  OJILLOS \nCUADRO DE HORARIO: UNOS 1 X 1.20', '190.00', 1, '190.00', '2018-03-08 19:11:55', 1, '', ''),
(367, 17, 1, 'IMPRESION  DE LONA  CON BASTILLAS Y  OJILLOS \n CUADRO NEGRO DE SUGERENCIAS DE . 50 X. 70 CM\n\n\nNOTA    CORREGIR    EL  HORARIO    2:00 P.M.', '90.00', 1, '90.00', '2018-03-08 19:11:55', 1, '', ''),
(368, 17, 1, 'IMPRESION  DE LONA   CON BASTILLA  Y OJILLOS    DE 1.2 X 2.5', '460.00', 1, '460.00', '2018-03-08 19:11:55', 1, '', ''),
(370, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA 4.88 X 2.44', '6300.00', 1, '6300.00', '2018-03-08 19:19:52', 1, '', ''),
(371, 17, 1, 'IMPRESION   DE LONA  DE   2  X 3  METROS   CON SOBRANTE ', '517.00', 1, '517.00', '2018-03-08 19:36:42', 1, '', ''),
(372, 17, 1, 'IMPRESION  DE LONA  DE 1  X  1.50   CON BASTILLA  Y OJILLOS ', '129.00', 1, '129.00', '2018-03-08 19:36:42', 1, '', ''),
(373, 14, 1, 'TARJETAS PARA DIA INTERNACIONAL DE LA MUJER', '2.40', 2000, '4800.00', '2018-03-08 19:41:20', 1, '', 'LASER A COLOR Y NEGRO '),
(374, 14, 1, 'VOLANTES SELECCION COLOR UN LADO\n2 DISEÑOS DE 1,000 CADA UNO', '0.65', 2000, '1300.00', '2018-03-08 19:50:57', 1, '', 'SEL '),
(375, 17, 1, 'VINIL MICROPERFORADO MEDIDA 3.59 X 1.20 MTS INCLUYE INSTALACION', '2400.00', 1, '2400.00', '2018-03-08 20:02:45', 1, '', ''),
(376, 17, 1, 'PENDON 1.80 X .80 CON BASTILLA Y OJILLOS.....\nINCLUYE PORTAPENDONE', '400.00', 1, '400.00', '2018-03-08 20:16:16', 1, '', ''),
(377, 14, 1, 'TARJETAS DE PRESENTACION IMPRESAS 1 LADO\nLAMINADO MATE', '4.00', 100, '400.00', '2018-03-08 20:21:47', 1, '', ''),
(378, 14, 1, 'VALES DE GASOLINA 20 LTS\nSELECCION COLOR FRENTE\nREVERSO 1 TINTA NEGRA\nTRANSPARENTE UV', '0.00', 56000, '0.00', '2018-03-08 20:54:50', 1, '', 'SEL COLOR Y TINTA NEGRA, TRANSPARENTE'),
(379, 14, 1, 'VALES DE DIESEL DE 50 LTS\nSELECCION COLOR FRENTE Y UV TRANSPARENTE\nTINTA NEGRA REVERSO', '0.00', 42000, '0.00', '2018-03-08 20:56:26', 1, '', 'SEL COLRO, NEGRA Y UV TRANSPARENTE'),
(380, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 2.30 X 1.70 CON BASTILLA Y OJILLOS CADA 30 CM', '430.00', 1, '430.00', '2018-03-08 21:04:02', 1, '', ''),
(381, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 2.80 X 1.10 CON BASTILLA Y OJILLOS CADA 30 CM', '340.00', 1, '340.00', '2018-03-08 21:04:02', 1, '', ''),
(382, 17, 1, 'LONA 3 X 1.50 BASTILLA Y OJILLOS CADA METRO', '360.00', 1, '360.00', '2018-03-08 21:16:00', 1, '', ''),
(383, 17, 1, '1 SELLO OFICIAL CON ESCUDO Y BASE DE MADERA', '117.50', 1, '117.50', '2018-03-08 22:51:22', 1, 'SELLO', ''),
(384, 17, 1, '1 SELLO DE GOMA SIN TEXTO CON BASE DE MADERA', '130.00', 1, '130.00', '2018-03-08 22:51:22', 1, 'SELLO', ''),
(385, 14, 1, 'INVITACION INFORME 2017 MED: 20 X 14 DOBLADA CON SOBRE 15 X 21 CM. CART. COUCHE 250 KGS. CORTE DIAGONAL AL FRENTE EN LA INVIT. INCLUYE ENSOBRETADO', '7.20', 1000, '7200.00', '2018-03-08 23:20:51', 1, 'INVITACION', 'SELECCION DE COLOR'),
(386, 15, 1, 'PLAYERA CUELLO REDONDO DRY COOL COLOR ROJO CON IMPRESION EN VINIL TEXTIL LOGO DE FLASH, EN ESPALDA TEAM VERLAGE GARZA, Y CON NUMERO DIFERENTE CADA PLAYERA, 01, 02, 03, 04, 05', '180.00', 5, '900.00', '2018-03-08 23:42:42', 1, '', ''),
(387, 16, 1, 'CAMISAS Y BLUSAS MARCA  UNITAM CON 2 LOGOS  BORDADOS DIFERENTES TALLAS', '275.00', 96, '26400.00', '2018-03-09 00:22:27', 1, '', ''),
(388, 16, 1, 'PLAYERAS TIPO POLO MAXIMA DEPORTIVA CON 2 LOGOS BORDADOS DIFERENTES TALLAS', '199.00', 6, '1194.00', '2018-03-09 00:22:27', 1, '', ''),
(389, 17, 1, 'LONA IMPRESA MEDIDA 1 X .65 CM CON OJILLOS Y BASTILLA', '120.00', 1, '120.00', '2018-03-09 00:38:51', 1, '', ''),
(390, 16, 1, 'BORDADOS EN CHALECOS LOGO GEM', '8.00', 8, '64.00', '2018-03-09 00:46:05', 1, '', ''),
(391, 14, 1, 'IMPRESION DE  CALCAS  EN VINIL  DE  42 X  19 PULGADAS ', '150.00', 20, '3000.00', '2018-03-09 00:50:14', 1, NULL, NULL),
(392, 17, 1, 'IMPRESION DE  CALCAS  PARA   CARRO  EN VINIL  DE   .54 X 21  CM   (PARES)', '65.00', 10, '650.00', '2018-03-09 00:50:14', 1, '', 'SELECCION DE  COLOR'),
(393, 17, 1, 'ESTRUCTURA METALICA EN PTR DE  3 X 3 CON LAMINA  GALVANIZADA CALIBRE 22 CON ROTULACION  EN VINIL REFLEJANTE 1.22 X 2.40 METROS  CON PATITAS CON ALTURA DE 1.50', '8600.00', 4, '34400.00', '2018-03-09 01:14:50', 1, NULL, NULL),
(394, 14, 1, 'BOLETOS PARA CONCIERTO DE LA RONDALLA  DEL HOSPITAL GENERAL MEDIDA 6.5 X 13 CM CON PLECA DE CORTE Y FOLIO', '1.60', 1000, '1600.00', '2018-03-09 15:59:36', 1, '', 'SELECCION A COLOR'),
(395, 17, 1, 'VINIL IMPRESO EN HD MEDIDA 3.88 X 2.35 METROS INCLUYE INSTALACION', '1180.00', 1, '1180.00', '2018-03-09 16:30:55', 1, '', ''),
(397, 14, 1, 'LAMINA MATE AMBOS LADOS', '6.00', 25, '150.00', '2018-03-09 17:03:55', 1, '', ''),
(398, 14, 1, 'HOJAS MEMBRETADAS CARTA PAPEL BOND 75 KGS.SIN COMITE IMPRESO SOLO EL MEMBRETE Y EL LOGOTIPO DE FONDO ( SON PARA LA SECCION X TAMAULIPAS.', '0.65', 1000, '650.00', '2018-03-09 17:06:17', 1, 'HOJA MEMBRETADA', 'NEGRA Y LOGOTIPO DE FONDO EN TINTA VERDE'),
(399, 19, 1, '', '189.65', 1, '189.65', '2018-03-09 17:37:16', 1, '', ''),
(400, 22, 1, '', '100.00', 5, '500.00', '2018-03-09 17:56:00', 1, '', ''),
(401, 19, 1, '', '189.65', 1, '189.65', '2018-03-09 18:16:42', 1, '', ''),
(402, 17, 1, 'ESTRUCTURA METALICA DE PTR DE 3 X 3  CON  LAMINA  GALVANIZADA  CALIBRE 22  CON ROTULACION  EN VINIL REFLEJANTE  1.22  X 2.40 METROS   CON  PAPTITAS  CON ALTURA  1.50\n\n\n\n\n\nNOTA :\n\nSE  FACTURARA   CON  ZONA  PUBLICITARIA ', '8600.00', 4, '34400.00', '2018-03-09 18:42:21', 1, '', 'SELECCION  DE  COLOR  '),
(403, 15, 1, 'MOCHILA SIN 235  EN COLOR AZUL  CON IMPRESIÓN  A 1 TINTA  EN COLOR BLANCO', '17.00', 250, '4250.00', '2018-03-09 20:37:18', 1, 'SIN  235   EN  COLOR  AZUL ', ' BLANCA '),
(404, 15, 1, 'LAPIZ  EN COLOR BLANCO  CON IMPRESIÓN  A  1 TINTA ', '2.50', 500, '1250.00', '2018-03-09 20:37:18', 1, 'DPO 008 ', 'AZUL '),
(406, 15, 1, 'BORRADOR BLANCO  CON IMPRESIÓN   A 1 TINTA ', '2.10', 250, '525.00', '2018-03-09 20:37:18', 1, 'DPO 010-1 ', 'AZUL '),
(407, 15, 1, 'TERMO    LAKE EN COLOR  AZUL  CON IMPRESIÓN   A 1 TINTA ', '25.00', 50, '1250.00', '2018-03-09 20:37:18', 1, 'ANF 006   COLOR  AZUL ', 'BLANCA '),
(410, 14, 1, 'IMPRESION  DE TRIPTICO A SELECCION  DE COLOR  EN PAPEL COUCHE  DE  130 GRS. ', '7.30', 200, '1460.00', '2018-03-09 20:56:43', 1, NULL, NULL),
(413, NULL, 1, 'SELLOS DE MADERA MEDIDA 5 X 7 CM', '200.00', 2, '400.00', '2018-03-09 23:11:07', 1, '', ''),
(414, 14, 1, 'ORDEN DE TRABAJO PARA KM. 4 1/4 DE CARTA SIN IMPRESION AL CENTRO DEL FORMATO ELLOS LO LLENAN  FOLIOS : 42,001--52,000 ORIG. Y 2 COPIAS', '0.58', 10000, '5800.00', '2018-03-09 23:17:05', 1, 'ORDEN DE TRABAJO KM. 4 SIN ESQUELETO EL FORMATO', 'AZUL REFLEX'),
(416, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA .70 X 1.00 M\nBASTILLA Y OJILLOS', '60.00', 2, '120.00', '2018-03-09 23:34:24', 1, '', ''),
(417, NULL, 1, 'VINIL IMPRESION HD 1.20 X 1.56 M\n2 DE CADA DISEÑO \n', '450.00', 4, '1800.00', '2018-03-09 23:43:52', 1, '', 'HD'),
(418, 15, 1, 'PLAYERAS CUELLO REDONDO BLANCAS\nFRENTE A COLOR ESPALDA GRIS', '35.00', 300, '10500.00', '2018-03-09 23:55:29', 1, '', 'AZUL, CELESTE, VERDE Y GRIS'),
(419, 15, 1, 'ANFORA SINKER AZUL IMPRESA 1 TINTA', '18.00', 100, '1800.00', '2018-03-09 23:55:29', 1, 'ANF 009', 'BLANCA'),
(420, 15, 1, 'USB FLOPPY AZUL ', '130.00', 150, '19500.00', '2018-03-09 23:55:29', 1, '', 'AZUL '),
(421, 14, 1, 'POSTER SELECCION COLOR MEDIDA 50 X 60 CM', '15.00', 150, '2250.00', '2018-03-09 23:55:29', 1, '', 'SEL COLOR '),
(422, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.50 X 1.20 MTS  BASTILLA Y OJILLOS', '145.00', 10, '1450.00', '2018-03-09 23:55:29', 1, '', ''),
(423, 17, 1, 'LONA IMPRESION DIGITAL  8.42 X .4.40 MT', '3500.00', 1, '3500.00', '2018-03-10 00:05:45', 1, '', ''),
(425, 14, 1, 'FORMATO PARA MANTENIMIENTO PREVENTIVO 1/2 CARTA ORIGINAL Y COPIA AMARILLA FOLIADOS : 8001 al 11000 IMPRESION 1 TINTA ( AZUL REFLEX ) PAPEL AUTOCOPIA . ', '0.75', 3000, '2250.00', '2018-03-10 00:30:42', 1, 'FORMATO MANTENIMIENTO PREVENTIVO', 'AZUL REFLEX'),
(426, 21, 1, '', '150.87', 10, '1508.70', '2018-03-10 01:28:27', 1, '', ''),
(427, 15, 1, 'LIBRETA RIDGE ECOLOGICA', '38.00', 50, '1900.00', '2018-03-10 16:27:13', 1, 'HL 2010', 'BLANCA'),
(428, 15, 1, 'ANFORA LAKE TRANSPARENTE', '18.50', 100, '1850.00', '2018-03-10 16:27:13', 1, 'ANF 006', 'AZUL'),
(429, 15, 1, 'TAZAS SUBLIMADAS A COLOR', '45.00', 50, '2250.00', '2018-03-10 16:27:13', 1, '', 'SUBLIMADO'),
(430, 15, 1, 'LIBRETA LOVE COLOR VERDE', '23.00', 50, '1150.00', '2018-03-10 16:27:13', 1, 'HL 2020', 'BLANCA'),
(431, 15, 1, 'BOLIGRAFO LANZ ECOLOGICO', '4.60', 500, '2300.00', '2018-03-10 16:27:13', 1, 'ECO 030', 'BLANCA'),
(432, 15, 1, 'PLAYERAS CUELLO REDONDO MIKE (VERDE)', '50.00', 16, '800.00', '2018-03-10 16:58:07', 1, '', 'BLANCO, NEGRA Y VERDE'),
(433, 15, 1, 'PLAYERAS SULLI (AZUL)', '50.00', 17, '850.00', '2018-03-10 16:58:07', 1, '', 'BLANCO,AZUL, NEGRO'),
(434, NULL, 1, 'ETIQUETAS EN ADESIVO 10 X 6 CM', '1.90', 1500, '2850.00', '2018-03-10 17:05:02', 1, '', 'NEGRA'),
(435, NULL, 1, 'ETIQUETAS MEDIDA 2 X 4 CM', '0.90', 1500, '1350.00', '2018-03-10 17:05:02', 1, '', 'NEGRA'),
(436, 14, 1, 'ETIQUETA MEDIDA 4 X 4 CM', '1.10', 1500, '1650.00', '2018-03-10 17:05:02', 1, '', 'NEGRA'),
(437, 14, 1, 'ETIQUETA MEDIDA 4 X 2 CM', '0.90', 150, '135.00', '2018-03-10 17:05:02', 1, '', 'NEGRA'),
(438, 17, 1, 'VINIL IMPRESO EN HD MEDIDA 2.44 X 4.88 METROS\nINCLUYE INSTALACION', '2103.00', 1, '2103.00', '2018-03-10 17:28:21', 1, '', ''),
(439, 14, 1, 'TARJETAS DE PRESENTACION \n100 DE RECEPCION\n100 GERENTE DE VENTAS', '1.50', 200, '300.00', '2018-03-10 17:30:18', 1, '', 'LASER'),
(440, 19, 1, '', '189.65', 1, '189.65', '2018-03-10 17:47:26', 1, '', ''),
(441, 15, 1, 'BOLIGRAFO BOMBAY', '7.32', 200, '1464.00', '2018-03-10 18:21:30', 1, 'SH-1519', 'ROJA'),
(442, 15, 1, 'PLAYERA   EN COLOR  ROJO   EN  CUELLO  REDONDO  MARCA YAZBEK  CON IMPRESION   EN SERIGRAFIA  A 3  TINTAS   EN DIFERENTES  TALLAS   DAMA   CHICA         2 MEDIANA  13 GRANDE     8 XL                3  CABALLERO MEDIANA     4 GRANDE      3 XL                 3 ', '56.00', 36, '2016.00', '2018-03-10 18:49:01', 1, '', 'BLANCO   ,   ROSA  ,  CELESTE  '),
(443, 14, 1, 'BOLETOS PARA CUOTA DE PASO 1/4 DE CARTA 1 SUAJE PARA CORTE FOLIOS : 60,001 AL 61,000 PAPEL BOND BLANCO 75 KGS.  10 BLOCKS C/100 C/U GRAPADOS IMPR. TINTA NEGRA', '0.35', 1000, '350.00', '2018-03-10 18:55:28', 1, 'BOLETO CUOTA DE PASO', 'NEGRA'),
(444, 14, 1, '50 BLOCK DE 100 HOJAS MEDIDA DE 15.2 X 11 CM', '0.17', 5000, '850.00', '2018-03-10 18:57:48', 1, '', 'AZUL'),
(445, 14, 1, 'TARJETAS DE PRESENTACIÓN \n-KAREN LIZETH\n-MARCO ANTONIO \n-LUIS GERARDO\n-ANTONIO BOLADO \n *200 PARA CADA UNO ', '1.30', 800, '1040.00', '2018-03-10 19:02:49', 1, '', 'LASER'),
(446, 14, 1, 'AVISOS DE PRIVACIDAD IMPRESOS POR AMBOS LADOS A UNA TINTA\n\n', '0.65', 1000, '650.00', '2018-03-10 19:13:53', 1, '', 'NEGRA'),
(447, 15, 1, 'PLAYERA CLR/ BLANCAS  \nFRENTE 4 TINTAS\nESPALDA 4 TINTAS \n16-G 18-M 16- CH\n', '60.00', 50, '3000.00', '2018-03-10 19:25:44', 1, '', 'SELECCION COLOR '),
(448, 15, 1, 'PLAYERAS CLR/ NEGRAS\nFRENTE 1 TINTA \nESPALDA 1 TINTA \n16-G 34-M', '70.00', 50, '3500.00', '2018-03-10 19:25:44', 1, '', 'BLANCA'),
(449, 15, 1, 'ANFORAS LAKE \nNEGRO SOLIDO/ BLANCA\nAZUL/ BLANCA\nTRANSPARENTE/ AZUL', '30.00', 100, '3000.00', '2018-03-10 19:28:53', 1, '', 'BLANCA, AZUL');
INSERT INTO `ordenitem` (`id`, `id_producto`, `id_moneda`, `descripcion`, `precio`, `cantidad`, `total`, `fecha`, `activo`, `codigo`, `tinta`) VALUES
(450, 15, 1, 'etiquetas con logo mostachon en vinil corte blanco impresion tinta oro med : 3 x 5.3 cm.', '0.45', 10000, '4500.00', '2018-03-10 19:42:15', 1, 'etiqueta adhesiva chica', 'oro'),
(451, 14, 1, 'TARJETAS DE PRECENTACION\nING. FLAVIO CRUZ MENDEZ\nJEFE DE SUCURSAL \nCEL: 2321001568\nOFICINA:2323241488\nCORREO: f.cruz@agricenter.mx\nSUCURSAL MARTINEZ DE LA TORRE\nCARRETERA FEDERALS/N LOC.EL CAÑIZO\nESQ. GREGORIO TORRES\nMARTINEZ DE LA TORRE. VER\nC.P. 94600 \nIMPRESIÓN UN LADO ', '1.80', 100, '180.00', '2018-03-10 19:47:35', 1, '', 'SEL. COLOR'),
(452, 17, 1, 'DESROTULACION DE CAMIONETA', '1000.00', 1, '1000.00', '2018-03-10 20:36:18', 1, '', ''),
(453, 14, 1, 'VALES DE COMPRA', '1.76', 500, '880.00', '2018-03-12 14:58:19', 1, '', 'AZUL'),
(454, 16, 1, 'BORDADO EN PLAYERA \n- LOGO LA BODEGUITA MOVIL REPARACION Y ACCESORIOS PARA CELULARES\nHILOS ROJO Y BLANCO', '25.00', 18, '450.00', '2018-03-12 15:05:58', 1, '', ''),
(455, 15, 1, 'REGLA VERDE', '9.00', 200, '1800.00', '2018-03-12 15:08:44', 1, 'DP0007', 'NEGRA O BLANCA'),
(456, 14, 1, 'TARJETAS DE PRESENTACIÓN\nSELECCIÓN COLOR AMBOS LADOS \nPLASTIFICADA/MATE', '2.50', 1000, '2500.00', '2018-03-12 15:13:44', 1, '', 'SEL. COLOR'),
(457, 14, 1, 'TARJETAS DE PRECENTACION SELECCIÓN COLOR 1 LADO\n 1OO POR PERSONA\n', '0.75', 2000, '1500.00', '2018-03-12 15:19:16', 1, '', 'SEL. COLOR'),
(458, NULL, 1, 'LONAS CON IMPRESIÓN DIGITAL C/SOBRANTE DIF. DISEÑOS\n1.- YO VIVÍ LA EXPERIENCIA. \n2.- FESTIVAL 2018.\n1.- YA QUIERO QUE SEA EL PRÓXIMO FESTIVAL.\n2.- YO ME LANCE DE BUNGEE.\n( TODAS SON LAS MISMAS MEDIDAS)', '600.00', 6, '3600.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(459, 17, 1, 'PENDONES 1.80 X 1.20\n=BASTILLA Y OJILLOS=', '250.00', 6, '1500.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(460, 17, 1, 'PENDONES 2.00 X 1.20\n= BASTILLA Y OJILLOS =', '285.00', 2, '570.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(461, 17, 1, 'LONAS .75 X 1.75\n1.- META\n1.- SALIDA\n= BASTILLA Y OJILLO =', '250.00', 2, '500.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(462, 17, 1, 'LONA IMPRESION DIGITAL MEDIDAS \n2.26 X 2.26 MTS\n= BASTILLA Y 8 OJILLOS =', '630.00', 2, '1260.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(463, 17, 1, 'ROTULACION DE STAND. EN  VINIL HD IMPRESO', '990.00', 2, '1980.00', '2018-03-12 15:36:02', 1, '', 'SID'),
(464, 17, 1, 'HOJAS TAMAÑO CARTA ENMICADO GRUESO', '8.00', 58, '464.00', '2018-03-12 15:36:02', 1, '', ''),
(465, 16, 1, 'PLAYERA TIPO POLO AZUL MARINO MAXIMA DEPORTIVA CON LOGO 2=1 EN PECHO IZQ. HILO DORADO P-302 55 Q 1026 AC', '160.00', 17, '2720.00', '2018-03-12 16:29:36', 1, '', ''),
(467, 17, 1, 'LONA IMPRESION DIGITAL 1.21 X 2.04 MT BASTILLA Y OJILLOS', '370.00', 1, '370.00', '2018-03-12 17:05:35', 1, '', ''),
(468, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.80 X .80 BASTILLA Y OJILLOS EN LAS ESQUINAS', '5.00', 115, '575.00', '2018-03-12 17:15:46', 1, '', ''),
(469, 14, 1, 'VOLANTES SELECCION COLOR UN LADO.....\n1,000 DE CADA DISEÑO.  2 DISEÑOS.', '0.65', 2000, '1300.00', '2018-03-12 17:19:15', 1, '', 'SEL COLOR'),
(470, 16, 1, 'BLUSA  MANGA  LARGA   MARCA  DACACHE  EN COLOR  CELESTE  CIELO  \n\nTALLAS SOLICITADAS:\n\n\n-ECH - 6\n\n-CH - 12\n\n- M - 12\n\n- G - 10\n\n- XG - 2\n\n', '350.00', 42, '14700.00', '2018-03-12 18:07:00', 1, 'DACACHE ', 'LOGO   BORDADO  DE  LABORATORIO  RAMAULIPAS '),
(471, 16, 1, 'BLUSA  MANGA  LARGA  MARCA  DACACHE  COLOR  CELESTE  CIELO \n\nTALLAS \n- 2XG - 4', '380.00', 4, '1520.00', '2018-03-12 18:07:00', 1, 'DACAHE', 'LOGO  BORDADO   LOGO  DE LABORATORIO  TAMAULIPAS '),
(472, 14, 1, 'ORDEN DE TRABAJO 1/4 DE CARTA CON CONCEPTOS DE : OPERADOR,NUM. ECONOMICO Y FECHA PARA KM. 4 ', '0.65', 4000, '2600.00', '2018-03-12 18:09:29', 1, 'ORDEN DE TRABAJO OPERADOR,NUM. ECONOMICO Y FECHA', 'AZUL REFLEX'),
(473, 16, 1, 'BLUSA  MARCA  DACACHE  EN COLOR  CELESTE  CIELO  EN LAS  SIGUIENTES  TALLAS   TALLAS SOLICITADAS:   -ECH - 2  -CH - 6  - M - 10  - G - 6  - 10  2XL-2   3XL- 2', '380.00', 38, '14440.00', '2018-03-12 18:24:46', 1, 'BLUSAS  DACACHE ', ' BORDADO '),
(475, 14, 1, 'HOJAS MEMBRETADAS CARTA 1000 PARA DELEG. SINDICAL NUM. 37 DE CD. MANTE.', '0.65', 1000, '650.00', '2018-03-12 18:35:33', 1, 'HOJA MEMBRETADA ', 'NEGRA Y VERDE '),
(476, 14, 1, 'HOJAS MEMBRETADAS CARTA PARA DELEG. SINDICAL NUM. 5 DE MATAMOROS,TAM.', '0.65', 1000, '650.00', '2018-03-12 18:35:33', 1, 'HOJAS MEMBRETADAS ', 'NEGRA Y VERDE'),
(477, 14, 1, 'JUEGO DE CALCAS IMPRESAS EN VINIL LOGO TAM. \nSIN IMAN PARA PUERTA DE CARRO OFICIAL', '250.00', 1, '250.00', '2018-03-12 18:41:36', 1, '', 'SEL. COLOR'),
(478, 14, 1, 'PÓSTER SELECCIÓN COLOR', '1.55', 2000, '3100.00', '2018-03-12 18:46:52', 1, '', ''),
(479, 14, 1, 'SOLICITUD DE LICENCIA CARTA ', '1.50', 1000, '1500.00', '2018-03-12 18:50:17', 1, 'SOLICITUD DE LICENCIA', 'NEGRA'),
(480, 14, 1, 'PÓSTER SELECCIÓN COLOR', '1.55', 2000, '3100.00', '2018-03-12 18:50:22', 1, '', 'SEL. COLOR'),
(481, 14, 1, 'PÓSTER SELECCIÓN COLOR', '1.55', 2000, '3100.00', '2018-03-12 18:54:14', 1, '', 'SEL. COLOR'),
(482, 17, 1, 'SELLO   FECHADOR   PRINTY  46140', '480.00', 1, '480.00', '2018-03-12 19:01:05', 1, 'PRINTY 46140', ''),
(483, 19, 1, '', '189.65', 1, '189.65', '2018-03-12 20:42:23', 1, '', ''),
(484, 14, 1, 'VOLANTES SELECCION COLOR UN LADO ', '0.60', 2000, '1200.00', '2018-03-12 23:24:03', 1, '', 'SEL COLOR'),
(485, NULL, 1, 'TARJETAS INFORMATIVAS', '4.00', 500, '2000.00', '2018-03-12 23:27:14', 1, '', 'SELECCION COLOR'),
(486, 16, 1, 'BORDADOS EN CHALECO LOGO CONALEP Y LOGO TAM', '16.50', 18, '297.00', '2018-03-12 23:29:55', 1, '', ''),
(487, 16, 1, 'PARCHES GRANDES MEDIDA 18 X 20 CM  CON LOGO BORDADO DE JAGUARES', '150.00', 7, '1050.00', '2018-03-12 23:47:21', 1, '', ''),
(488, 16, 1, 'PARCHES CHICOS MEDIDA  8.5 X 8.5 CM CON LOGO BORDADO DE LA UPV', '20.00', 7, '140.00', '2018-03-12 23:47:21', 1, '', ''),
(489, 16, 1, 'PARCHES LOGO CONDE 8 X 24 CM', '25.00', 7, '175.00', '2018-03-13 00:33:00', 1, '', ''),
(490, 16, 1, 'BORDADOS LOGO TAM 8 X 24 CM', '25.00', 7, '175.00', '2018-03-13 00:33:00', 1, '', ''),
(491, 21, 1, '', '150.87', 2, '301.74', '2018-03-13 00:38:09', 1, '', ''),
(492, 15, 1, 'PLAYERAS DRIFYT SUBLIMADAS A COLOR', '139.00', 170, '23630.00', '2018-03-13 00:53:34', 1, '', ''),
(493, 17, 1, 'RECONOCIMIENTOS DE ACRILICO 9 MM CON PLACA SUBLIMADA A COLOR', '1390.00', 8, '11120.00', '2018-03-13 01:03:53', 1, '', ''),
(494, 14, 1, 'hojas membretadas carta impresion dos tintas son las de seccion x tamaulipas ( con comite )', '0.65', 1000, '650.00', '2018-03-13 01:13:34', 1, 'hoja membretada', 'negra y verde de fondo '),
(495, 17, 1, 'MAMPARA CON BASTIDOR DE MADERA MEDIDA 5.50 X 2.50 MTS.', '3000.00', 1, '3000.00', '2018-03-13 17:10:26', 1, '', ''),
(496, 14, 1, 'VOLANTES MEDIA CARTA IMPRESION A COLOR UN SOLO LADO EN PAPEL COUCHE DE 130 GRMS.', '0.40', 10000, '4000.00', '2018-03-13 17:15:04', 1, 'VOLANTES', 'SELECCION DE COLOR '),
(497, 14, 1, 'CARPETAS SELECCION COLOR CON SOLAPA PEGADAS Y PORTA TARJETAS.', '9.70', 800, '7760.00', '2018-03-13 18:09:54', 1, '', 'SELECCION COLOR'),
(498, 14, 1, 'MICAPORTAGAFETE MEDIDA 11.5 X 9 CM CON CORDON AZUL REY', '7.90', 900, '7110.00', '2018-03-13 18:09:54', 1, '', ''),
(499, 15, 1, 'BOLIGRAFO SONIX CUERPO BLANCO CON ACABADO AZUL REY', '5.99', 800, '4792.00', '2018-03-13 18:10:50', 1, 'SH 2550 A', 'AZUL'),
(500, 17, 1, 'NUMEROS PARA CARRERA ATLETICA IMPRESOS EN TELA BANDERA ', '8.00', 500, '4000.00', '2018-03-13 18:15:09', 1, 'NUMEROS PARA CARRERA', 'AZUL REY'),
(501, 16, 1, 'BORDADOS EN CHALECOS LOGO  CONALEP Y LOGO TAM', '16.50', 4, '66.00', '2018-03-13 18:43:01', 1, '', ''),
(502, 14, 1, 'RECIBOS MEDIA CARTA ORIGINAL Y 1 COPIA PAPEL AUTOCOPIA', '1.50', 500, '750.00', '2018-03-13 18:49:21', 1, 'RECIBOS', 'NEGRA'),
(503, 15, 1, 'PLAYERAS CUELLO REDONDO COLOR NEGRA\nIMPRESIÓN FRENTE Y ESPALDA', '65.00', 100, '6500.00', '2018-03-13 18:49:54', 1, '', 'BLANCO Y ROJO'),
(505, 15, 1, 'PASTILLERO CON CORTA PASTILLAS CRYSTAL   Código del Artículo: PT 2100', '13.00', 500, '6500.00', '2018-03-13 18:52:54', 1, 'PT2100', 'AZUL '),
(506, 17, 1, 'PENDONES IMPRESION DIGITAL 1.80 X .80 HD\nCON PORTAPENDON', '600.00', 3, '1800.00', '2018-03-13 18:54:33', 1, '', 'HD'),
(507, 17, 1, 'BOTONES 5.5 CM', '7.00', 100, '700.00', '2018-03-13 18:54:33', 1, '', ''),
(508, 17, 1, 'CALCAS EN VINIL HD 30 X 30 CM\n', '16.50', 9, '148.50', '2018-03-13 18:54:33', 1, '', 'HD'),
(509, 14, 1, 'VOLANTES SELECCION COLOR UN LADO 4 DISEÑOS', '0.43', 4000, '1720.00', '2018-03-13 18:55:43', 1, '', 'SEL'),
(510, 14, 1, 'PLANTILLA DE CHICHARRON SAN JORGE', '2.40', 500, '1200.00', '2018-03-13 19:19:50', 1, '', 'SEL COLOR'),
(511, 14, 1, 'CUADERNILLOS TAMAÑO CARTA ENGARGOLADO METALICO\nC/ PORTADAS ENMICADA', '290.00', 3, '870.00', '2018-03-13 20:01:58', 1, '', 'LASER'),
(512, 14, 1, 'CUADERNILLOS 17X27CM \nLAMINADO(MATE)\nENGARGOLADOS\n43 HOJAS (AMBOS LADOS)', '579.00', 15, '8685.00', '2018-03-13 20:01:58', 1, '', 'LASER'),
(513, 14, 1, 'TRIPTICOS SEL COLOR AMBOS LADOS \n', '1.40', 2000, '2800.00', '2018-03-13 20:01:58', 1, '', 'SEL. COLOR'),
(514, 19, 1, '', '189.65', 1, '189.65', '2018-03-13 22:38:24', 1, '', ''),
(515, 17, 1, 'PENDON IMPRESION DIGITAL 1.60 X .60 BASTILLA Y OJILLOS INCLUYE PORTAPENDON.', '690.00', 1, '690.00', '2018-03-13 22:52:32', 1, '', 'SID'),
(516, 17, 1, 'MEDALLAS EN COLOR ORO GRABADAS 5 CM', '295.00', 7, '2065.00', '2018-03-13 23:10:39', 1, '', ''),
(517, 17, 1, 'MEDALLAS EN COLOR PLATA GRABADAS 5 CM', '295.00', 7, '2065.00', '2018-03-13 23:10:39', 1, '', ''),
(518, 17, 1, 'MEDALLAS EN COLOR BRONCE GRABADAS 5 CM', '295.00', 7, '2065.00', '2018-03-13 23:10:39', 1, '', ''),
(519, 14, 1, 'GAFETES IMPRESOS A COLOR  ENMICADO GRUESO\nCON PORTAGAFETE AZUL REY.', '15.00', 80, '1200.00', '2018-03-13 23:13:34', 1, '', 'LASER'),
(520, 14, 1, 'INVITACIONES A COLOR AMBOS LADOS TAMAÑO CARTA\nCON MARCA DE DOBLEZ ', '15.00', 30, '450.00', '2018-03-13 23:17:22', 1, '', 'LASER'),
(521, 16, 1, 'BORDADOS EN CHALECOS LOGO  TAM', '9.00', 32, '288.00', '2018-03-14 00:30:13', 1, '', ''),
(522, 16, 1, 'BORDADOS EN CHALECOS LOGO  CONALEP', '7.50', 24, '180.00', '2018-03-14 00:30:13', 1, '', ''),
(523, 15, 1, 'BOLIGRAFOS VERDE CON BLANCO SH-9010', '9.00', 200, '1800.00', '2018-03-14 15:31:43', 1, 'SH-9010', 'AZUL'),
(524, 15, 1, 'BOLIGRAFO ROSEG AMARILLO SH 2025 CON IMPRESION A UNA TINTA.', '7.00', 500, '3500.00', '2018-03-14 16:12:14', 1, 'SH 2025 A', 'NEGRA'),
(525, 16, 1, 'CAMISA MARCA DACACHE MANGA LARGA CON LOGO \nBORDADO TALLA G', '345.00', 1, '345.00', '2018-03-14 18:26:09', 1, '', ''),
(526, 16, 1, 'CAMISA  MARCA DACACHE MANGA LARGA  CON LOGO BORDADO TALLA  G', '388.00', 1, '388.00', '2018-03-14 18:40:35', 1, '', ''),
(527, 17, 1, 'IMPRESION  DE BANDERAS    IMPRESAS  POR AMBOS  LADOS A SELECCION  DE  COLOR  EN TELA BANDERA  .80 X 1.20 METROS  CON ASTA  DE MADERA ', '750.00', 30, '22500.00', '2018-03-14 19:32:05', 1, NULL, NULL),
(528, 17, 1, 'IMPRESION DE CALCAS  ( PARES  )  EN VINIL HD ', '65.00', 50, '3250.00', '2018-03-14 19:32:05', 1, NULL, NULL),
(529, 17, 1, 'IMPRESION DE  CALCAS  EN VINIL  ( PARES  )  EN VINIL HD \n\n\n\nNo. PROVEEDOR  5022042\nRFC. AEVG11106M59', '265.00', 10, '2650.00', '2018-03-14 19:32:05', 1, NULL, NULL),
(530, 17, 1, 'ROTULACION  DE  STAND   FERIA  DE  JOVENES \n\n2 .-   2.5  X   2 METROS\n1.-    2.5  X   3 METROS\n\nEN VINIL   HD  \n', '11000.00', 1, '11000.00', '2018-03-14 19:46:42', 1, '', 'SELECCION  DE COLOR '),
(531, 17, 1, 'PORTA  BANNER  DE   1.80   X .80   CM.    CON   SU  REPECTIVA  LONA  IMPRESA   CON   BASTILLA  Y OJILLOS ', '620.00', 2, '1240.00', '2018-03-14 19:46:42', 1, '', 'SELECCION  DE  COLOR '),
(532, 17, 1, ' RENTA  DE  2 MESAS   PERIQUERA  CON  SU 2 BANCO\nMANTEL AZUL  CON BANDA EN COLOR  BLANCO  ', '750.00', 2, '1500.00', '2018-03-14 19:46:42', 1, '', ''),
(533, 16, 1, 'CAMISA MANGA LARGA MARCA DACACHE CON  LOGO BORDADO TALLA 2XL', '388.00', 1, '388.00', '2018-03-14 22:15:54', 1, '', ''),
(534, 17, 1, 'RECONOCIMIENTOS  CON MARCO DE MADERA, VIDRIO ANTIREFLEJANTE TAMAÑO CARTA', '550.00', 47, '25850.00', '2018-03-15 00:12:27', 1, '', 'COLOR'),
(535, 15, 1, 'TAZAS IMPRESAS A 1 TINTA', '23.00', 72, '1656.00', '2018-03-15 00:27:20', 1, '', ''),
(536, 17, 1, 'ROTULACION DE PARED CON FOTO DE FOLLAJE MEDIDA 2.80 X 4.75 MTS INCLUYE INSTALACION', '2300.00', 1, '2300.00', '2018-03-15 01:01:42', 1, '', 'HD'),
(537, 17, 1, 'CORTE DE VINIL BLANCO SIN IMPRESION MEDIDA .75 X .45 MTS', '80.00', 3, '240.00', '2018-03-15 01:01:42', 1, '', ''),
(538, 17, 1, 'CORTE DE VINIL BLANCO SIN IMPRESION MEDIDA .70 X .37 MTS', '75.00', 4, '300.00', '2018-03-15 01:01:42', 1, '', ''),
(539, 17, 1, 'VINIL IMPRESION DIGITLA HD MEDIDA .95 X 3.25 INCLUYE INSTALACION', '500.00', 1, '500.00', '2018-03-15 01:01:42', 1, '', ''),
(540, 17, 1, 'CORTE DE VINIL NARANJA SIN IMPRESION MEDIDA 1.07 X 3.25 MTS', '700.00', 1, '700.00', '2018-03-15 01:01:42', 1, '', ''),
(541, 17, 1, 'ROTULACION DE VIDRIOS EN VINIL 3MM (TINTA UV) MEDIDA 14 X 2.30 MTS', '9500.00', 1, '9500.00', '2018-03-15 01:05:57', 1, '', 'MTY'),
(542, 14, 1, 'VOLANTES EXPORTACION ESPECIAL 13 % MOSTAZA', '0.18', 30000, '5400.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'MOZTAZA'),
(543, 14, 1, 'VOLANTES ENGORDA CORRAL 12% LILA', '0.20', 7000, '1400.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'LILA'),
(544, 14, 1, 'VOLANTES EXPOSICION 20 % AZUL', '0.25', 3000, '750.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'AZUL'),
(545, 14, 1, 'VOLANTES LECHERO 18 % AZUL', '0.20', 5000, '1000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'AZUL'),
(546, 14, 1, 'VOLANTES PREDESTETE BECERROS 18 % VERDE', '0.20', 5000, '1000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'VERDE'),
(547, 14, 1, 'VOLANTES PASTOREO GANADO 14 % GUINDA', '0.20', 7000, '1400.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'GUINDA'),
(548, 14, 1, 'VOLANTES CRECIM. CERDOS PLUS NARANJA', '0.25', 3000, '750.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'NARANJA'),
(549, 14, 1, 'VOLANTES BORREGO ENGORDA 13 % CAFE', '0.25', 3000, '750.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'CAFE'),
(550, 14, 1, 'VOLANTES FINALIZACION CERDOS PLUS ROJA', '0.25', 3000, '750.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'ROJA'),
(569, 15, 1, '100 PLUMAS NARANJA SLIM SH-1135', '6.00', 100, '600.00', '2018-03-15 18:03:01', 1, 'SLIM SH-1135', 'NARANJA'),
(570, 15, 1, '50 ANFORAS LIKE ANF-006 AZUL', '30.00', 50, '1500.00', '2018-03-15 18:03:01', 1, 'ANF-006', 'BLANCA'),
(571, 15, 1, 'BOLSA CIMBOA 131 COLOR AZUL', '20.50', 50, '1025.00', '2018-03-15 18:03:01', 1, 'SIN131 AZUL', 'BLANCA'),
(572, 17, 1, 'SELLO AUTOENTINTABLES 46019 CIRCULAR DE 19MM', '290.00', 15, '4350.00', '2018-03-15 18:18:27', 1, '', ''),
(573, 14, 1, 'RECIBO DE PAGO NOMINA CON PLECA DE CORTE MEDIDA ARTA EN PAPEL BOND 90 GRS.', '0.41', 10000, '4100.00', '2018-03-15 18:43:51', 1, '', 'AZUL'),
(574, 15, 1, 'PLAYERA  BLANCA   CON IMPRESION EN SERIGRAFIA   A UNA TINTA  EN COLOR  negro ', '55.00', 60, '3300.00', '2018-03-15 19:40:03', 1, '', 'NEGRO '),
(575, NULL, 1, 'SIN 131 A  BOLSA CIMBOA COLOR AZUL CON IMPRESION  EN SERIGRAFIA  A  1  TINTA   EN COLOR BLANCO ', '10.00', 60, '600.00', '2018-03-15 19:40:03', 1, '', 'blanco '),
(576, NULL, 1, 'ANF 021 A  CILINDRO VAUS COLOR AZUL  CON IMPRESION  EN SERIGRAFIA  A 1 TINTA  EN COLOR  BLANCO ', '16.00', 60, '960.00', '2018-03-15 19:40:03', 1, '', 'blanco '),
(578, 17, 1, 'lona a color medida :  1.50 x 3 mts. con bastilla y ojillos ', '675.00', 1, '675.00', '2018-03-15 19:43:38', 1, 'lona', 'a color'),
(579, 14, 1, 'LIBRETA PASTA DURA PORTADA SELECCION COLOR MEDIDA 22 X 17 CM CON 100 HOJAS BOND IMPRESAS 1 TINTA AMBOS LADOS, ENGARGOLADO METALICO', '47.00', 1000, '47000.00', '2018-03-15 22:31:39', 1, '', 'PORTADA SEL COLOR /  INTERIOR 1 TINTA'),
(580, NULL, 1, 'CARPETAS IMPRESAS SELECCION COLOR EN CARTULINA COUCHE DE 300 GRAMOS', '6.10', 680, '4148.00', '2018-03-15 22:38:00', 1, '', 'SELECCION COLOR'),
(581, 17, 1, 'PENDONES IMPRESION DIGITAL 1.80 X .80 CON PORTAPENDON', '690.00', 2, '1380.00', '2018-03-16 00:42:00', 1, '', 'SID'),
(582, 14, 1, '300 TARJETAS PRESENTACION IMPRESION UN LADO', '1.50', 300, '450.00', '2018-03-16 00:46:58', 1, 'TARJETAS PRESENTACION', 'LASER'),
(583, 14, 1, 'REPORTE DE SERVICIO CARTA ', '2.30', 500, '1150.00', '2018-03-16 00:46:58', 1, 'REPORTE DE SERVICIO', 'AZUL REFLEX'),
(584, 16, 1, 'BORDADOS EN CHALECOS LOGO TAM Y LOGO CONALEP', '16.50', 34, '561.00', '2018-03-16 00:59:30', 1, '', ''),
(585, 14, 1, 'INVITACION   1/2 CARTA   EN OPALINA  A SELECCION  DE COLOR   CON SOBRE   DE  CELOFAN  ', '19.00', 5, '95.00', '2018-03-16 01:01:08', 1, '', 'SELECCION  DE COLOR '),
(586, 14, 1, 'POSTER  A  SELECCION  DE COLOR   EN  APAPEL  COUCHE  DE 250 GRS.   DOBLE  CARTA ', '25.00', 2, '50.00', '2018-03-16 01:01:08', 1, '', 'SELECCION  DE COLOR '),
(587, 17, 1, 'MAMPARA  DE    9.76   X  3.05          CON BASTIDOR  DE  MADERA                                                                                            ', '6400.00', 1, '6400.00', '2018-03-16 01:01:08', 1, '', ''),
(588, 14, 1, 'NOTAS DE VENTA 1/4 DE CARTA', '0.34', 2000, '680.00', '2018-03-16 01:04:15', 1, '', 'NEGRA'),
(589, 17, 1, 'IMPRESION  DE   VINIL    EN HD    DE  2.44  X 4.88', '2600.00', 2, '5200.00', '2018-03-16 01:09:04', 1, 'VINIL', 'SELECCION  DE  COLOR '),
(590, 17, 1, 'IMPRESION  DE VINIL  EN HD   DE 1.52  X 3.05', '1000.00', 3, '3000.00', '2018-03-16 01:09:04', 1, 'VINIL', 'SELECCION  DE COLOR '),
(591, 17, 1, 'IMPRESIÓN  DE VINIL  EN  HD  DE  1.52  X 3 .05', '1395.00', 1, '1395.00', '2018-03-16 01:16:38', 1, 'VINIL', 'SELECCION  DE COLOR '),
(592, 17, 1, 'IMPRESIÓN  DE VINIL  EN  HD  DE  1.20  X 3 .00', '1098.00', 2, '2196.00', '2018-03-16 01:16:38', 1, 'VINIL', 'SELECCION  DE COLOR '),
(593, 17, 1, 'IMPRESION  DE  VINIL  EN HD   DE   1.52  X  5', '1804.00', 1, '1804.00', '2018-03-16 01:22:02', 1, 'VINIL', 'SELECCION  DE COLOR '),
(594, 15, 1, 'BALON FUTBOL CON LOGOS IMPRESOS 1 TINTA', '225.00', 3, '675.00', '2018-03-16 02:11:13', 1, 'BALON FUTBOL', 'AZUL'),
(595, 15, 1, 'ANFORAS COLOR AZUL ', '17.50', 12, '210.00', '2018-03-16 02:11:13', 1, 'SINKER SNF-009', 'BLANCA'),
(596, 15, 1, 'ANFORA COLOR AZUL SNF-009', '17.50', 59, '1032.50', '2018-03-16 02:53:11', 1, 'SNF-009 SINKER', 'BLANCA'),
(597, 15, 1, 'BALON FUTBOL CON LOGOS IMPRESOS A 1 TINTA', '225.00', 3, '675.00', '2018-03-16 02:53:11', 1, 'BALON FUTBOL', 'AZUL'),
(598, 15, 1, 'LAPIZ AZULCON LOGOS IMPRESOS A 1 TINTA', '3.54', 24, '84.96', '2018-03-16 02:53:11', 1, 'DPO-008 A', 'BLANCA'),
(599, 15, 1, 'BALON DE FUTBOL CON LOGOS IMPRESOS 1 TINTA', '225.00', 19, '4275.00', '2018-03-16 16:58:24', 1, 'BALON FUTBOL', 'AZUL'),
(600, 15, 1, 'CUERDA PARA BRINCAR IMPRESOS CON LOGOS 1 TINTA', '32.50', 19, '617.50', '2018-03-16 16:58:24', 1, 'CUERDA PARA BRINCAR', 'AZUL'),
(601, 15, 1, 'ANFORAS COLOR AZUL IMPRESION 1 TINTA', '17.50', 78, '1365.00', '2018-03-16 16:58:24', 1, 'SINKER SNF-009', 'BLANCA'),
(602, 15, 1, 'BALON BASQUETBOL CON LOGOS IMPRESOS 1 TINTA', '210.00', 14, '2940.00', '2018-03-16 16:58:24', 1, 'BALON BASQUETBOL', 'AZUL'),
(603, 15, 1, 'PLUMAS LOGOS IMPRESOS 1 TINTA', '4.57', 70, '319.90', '2018-03-16 16:58:24', 1, 'ECO-010 AZUL', 'AZUL REY'),
(604, 15, 1, 'BRINCA BRINCA CON LOGOS IMPRESOS 1 TINTA', '35.00', 30, '1050.00', '2018-03-16 17:15:43', 1, 'BRINCA BRINCA', 'AZUL'),
(605, 15, 1, 'BORRADORES BLANCOS RECTANG. IMPRESION 1 TINTA', '3.50', 195, '682.50', '2018-03-16 17:15:43', 1, 'DPO0101', 'AZUL REY'),
(606, 15, 1, 'MOCHILA ANSHAR AZUL', '68.15', 200, '13630.00', '2018-03-16 17:36:59', 1, 'SIN 933', 'BLANCA'),
(607, 15, 1, 'TAZA MOFFY NEGRA IMPRESA 1 TINTA', '48.74', 108, '5263.92', '2018-03-16 17:36:59', 1, 'TAZ 008', 'AZUL'),
(608, 15, 1, 'ESTICHE ESCOLAR ', '26.38', 700, '18466.00', '2018-03-16 17:36:59', 1, 'INF 600', 'BLANCA'),
(609, 14, 1, 'VOLANTES SELECCION COLOR UN LADO CUARTO DE CARTA', '1.10', 1000, '1100.00', '2018-03-16 17:55:10', 1, '', 'SEL COLOR'),
(610, 14, 1, 'HOJAS TAMAÑO CARTA SELECCION COLOR AMBOS LADOS ', '0.60', 16000, '9600.00', '2018-03-16 18:28:17', 1, '', 'SEL COLOR'),
(611, 17, 1, 'ROTULACION DE CAMIONETA PEUGEOT', '3500.00', 1, '3500.00', '2018-03-16 19:02:53', 1, '', 'CORTE'),
(612, NULL, 1, 'PLAYERA TIPO POLO DACACHE ', '210.00', 3, '630.00', '2018-03-16 19:46:15', 1, '', ''),
(613, 17, 1, 'VINILES IMPRESION HD MEDIDA 1.57 Z 1.02', '240.00', 2, '480.00', '2018-03-16 20:06:25', 1, '', 'HD'),
(614, 16, 1, 'BORDADOS LOGO GUTI', '5.00', 7, '35.00', '2018-03-16 20:11:46', 1, NULL, NULL),
(615, NULL, 1, 'BORDADOS LOGO TAM', '9.00', 42, '378.00', '2018-03-16 20:11:46', 1, NULL, NULL),
(616, 16, 1, 'BORDADOS LOGO CONALEP', '7.50', 40, '300.00', '2018-03-16 20:11:46', 1, NULL, NULL),
(617, 16, 1, 'BORDADOS LOGOS GEM', '8.00', 17, '136.00', '2018-03-16 20:11:46', 1, NULL, NULL),
(618, 21, 1, '', '150.87', 10, '1508.70', '2018-03-17 00:09:58', 1, '', ''),
(619, 17, 1, 'SELLO OFICIAL CON ESCUDO NACIONAL BASE MADERA ', '175.00', 20, '3500.00', '2018-03-17 00:26:06', 1, 'SELLO OFICIAL CON ESCUDO NACIONAL', ''),
(620, 17, 1, 'SELLOS SIN TEXTO CON BASE DE MADERA 1.8 X 7.9 CM.', '195.00', 20, '3900.00', '2018-03-17 00:26:06', 1, 'SELLO SIN TEXTO', ''),
(621, 17, 1, 'SELLOS DEPURABLE CON BASE DE MADERA 3.5 X 5.8 CM.', '195.00', 10, '1950.00', '2018-03-17 00:26:06', 1, 'SELLO DEPURABLE', ''),
(622, 17, 1, 'SELLOS DESTRUIBLE CON BASE DE MADERA 3.5 X 5.8 CM.', '195.00', 10, '1950.00', '2018-03-17 00:26:06', 1, 'SELLO DESTRUIBLE', ''),
(623, 17, 1, 'SELLO PARA ENVIO EXP. AL ARCHIVO BASE MADERA 2.3 X 5.6 CM.', '174.50', 10, '1745.00', '2018-03-17 00:26:06', 1, 'SELLO ENVIO DE EXP. AL ARCHIVO', ''),
(624, 17, 1, 'SELLO CAPTURADO EN SISE BASE DE MADERA 2.6 X 3.8 CM.', '100.00', 1, '100.00', '2018-03-17 00:26:06', 1, 'SELLO CAPTURADO EN SISE', ''),
(625, 14, 1, 'VOLANTES MEDIA CARTA IMPRESOS 1 TINTA ( NEGRA ) ', '0.15', 10000, '1500.00', '2018-03-17 01:11:47', 1, 'VOLANTES', 'NEGRA'),
(626, 17, 1, 'VINIL ', '150.00', 2, '300.00', '2018-03-17 01:49:40', 1, '', 'A COLOR'),
(627, 17, 1, 'VINIL ', '150.00', 2, '300.00', '2018-03-17 01:49:40', 1, '', 'A COLOR'),
(628, 14, 1, 'VOLANTES SELECCION COLOR MEDIA CARTA 1 LADO', '0.19', 250000, '47500.00', '2018-03-17 14:55:10', 1, '', 'SEL COLOR'),
(629, 15, 1, 'ENCUADERNACION DE INFORME CIRCUNSTANCIADO DE JUZGADO AÑO 2017 PASTAS RIGIDAS PERCALINA NEGRA TAMAÑO OFICIO IMPRESION FRENTE Y LOMO', '525.00', 2, '1050.00', '2018-03-17 17:00:00', 1, 'ENCUADERNADO', 'PLATA'),
(630, 14, 1, 'FORMATO PRESTAMOS COMPLEMENTARIOS SELECCION COLOR FRENTE REVERSO 1 TINTA', '1.80', 500, '900.00', '2018-03-17 17:17:13', 1, '', 'SELECCION COLOR'),
(631, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA DE .80 X 1.80 METROS CON PORTABANNER', '690.00', 7, '4830.00', '2018-03-17 17:57:27', 1, '', ''),
(632, 14, 1, 'RECIBO PARA NOMINA CARTA CON PLECA DE CORTE AL CENTRO EN SENTIDO VERTICAL', '230.00', 20, '4600.00', '2018-03-17 18:43:58', 1, 'RECIBO PARA NOMINA', 'VERDE'),
(633, 14, 1, 'VALE DE SALIDA PARA PROVEEDOR 1/2 CARTA ORIGINAL Y COPIA ROSA SIN FOLIO AUTOCOPIA', '85.00', 10, '850.00', '2018-03-17 19:23:27', 1, 'VALE DE SALIDA PARA PROVEEDOR ', 'NEGRA'),
(634, 17, 1, '1 SELLO OFICIAL CON ESCUDO NACIONAL BASE MADERA JUZGADO DE EJECUCION PENAL 4,11 Y 14 DISTRITO', '117.50', 1, '117.50', '2018-03-17 19:49:39', 1, 'SELLO OFICIAL', ''),
(635, 14, 1, 'TARJETAS DE PRESENTACION IMPRSESAS A COLOR', '1.60', 700, '1120.00', '2018-03-20 15:55:26', 1, '', 'LASER'),
(636, NULL, 1, 'TARJETAS DE ATENTOS SALUDOS CON REALZADO EN TINTA ', '1.90', 2800, '5320.00', '2018-03-20 16:18:16', 1, '', 'NEGRA'),
(637, NULL, 1, 'SOBRES PARA TARJETAS DE ATENTOS SALUDOS', '1.50', 1800, '2700.00', '2018-03-20 16:18:16', 1, '', ''),
(638, 16, 1, 'BORDADOS EN  BATA DE DOCTOR LOGO  CLINICA PROVIDENCIA ', '7.50', 6, '45.00', '2018-03-20 16:41:27', 1, '', ''),
(639, 16, 1, 'PERSONALIZADO', '10.00', 1, '10.00', '2018-03-20 16:41:27', 1, '', ''),
(640, 15, 1, 'PLAYERA   CUELLO  REDONDO  EN COLOR  NEGRA  CON  IMPRESION  EN SERIGRAFIA   A 1 TINTA  EN ESPALDA     PECHO   EN PARCHE   TAMAYO   CARTA   PLAYERA   NIÑO XCHICA     1 CHICA       2 MEDIANA  2 GRANDE   1   JOVEN  X CHICA   1 CHICAS    2 MEDIANA  4 GRANDE   1 XL              2  DAMA   XCHICA    1 CHICA       2 MEDIANA  16 GRANDE    16 XL                2  CABALLERO CHICAS  5 MEDIANA    20 GRENDE     10 XL                12 ', '70.00', 100, '7000.00', '2018-03-20 16:45:48', 1, 'PLAYERA  NEGRA ', 'PECHO     PARCHE       ESPALDA   IMPRESA  EN SERIGRAFIA  A 1 TINTA  '),
(641, 14, 1, 'PASE DE SERVICIO DENTAL 1 TINTA', '0.83', 4000, '3320.00', '2018-02-27 05:25:03', 1, '', 'NEGRA'),
(642, 14, 1, 'RECIBOS DE TERAPIA INTENSIVA', '0.63', 2000, '1260.00', '2018-02-27 05:27:49', 1, '', 'NEGRA'),
(643, 14, 1, 'RECIBOS DE LACTANTES', '0.63', 2000, '1260.00', '2018-02-27 05:30:07', 1, '', 'NEGRA'),
(645, 14, 1, 'HOJAS MEMBRETADAS', '1.35', 1000, '1350.00', '2018-03-20 18:35:34', 1, '', 'SEL. COLOR'),
(646, 15, 1, 'PELOTA PLASTICA CON LOGO TAM', '25.00', 150, '3750.00', '2018-03-20 19:32:21', 1, '', 'BLANCA O AZUL'),
(647, 14, 1, 'PASE DE SALIDA', '1.20', 1000, '1200.00', '2018-03-20 19:39:48', 1, '', 'ROJO O NEGRO'),
(648, 14, 1, 'NOTAS DE CITA', '0.39', 1000, '390.00', '2018-03-20 19:56:01', 1, '', 'VERDE ESPECIAL Y NEGRO (GRIS)'),
(649, 14, 1, 'CARPETAS MANILA FOLDER', '1.60', 1000, '1600.00', '2018-03-20 20:04:09', 1, '', 'VERDE ESP Y NEGRO (GRIS)'),
(650, 14, 1, 'HOJA PRIMERA VEZ', '1.20', 1000, '1200.00', '2018-03-20 20:04:09', 1, '', 'VERDE ESP Y NEGRO(GRIS)'),
(651, 14, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS\n', '0.75', 10000, '7500.00', '2018-03-20 20:09:26', 1, '', 'SEL COLOR'),
(652, 17, 1, 'LONA .50 X 1.00 MTS\nBASTILLA Y OJILLOS', '80.00', 1, '80.00', '2018-03-20 21:50:24', 1, '', 'SID'),
(653, 17, 1, 'PENDONES DOBLES 1.80 X .75 CON BASTILLA Y OJILLOS', '400.00', 8, '3200.00', '2018-03-20 22:10:01', 1, '', 'HD'),
(654, 17, 1, 'CALCAS VINIL AZUL  20 X 40 CM 1 TINTA', '45.00', 100, '4500.00', '2018-03-20 23:11:59', 1, '', 'BLANCA'),
(655, 17, 1, 'CALCA VINIL AZUL 1 TINTA 15 X 30 CM ', '30.00', 150, '4500.00', '2018-03-20 23:11:59', 1, '', 'BLANCA'),
(656, 17, 1, 'CALCAS CORTE POR COMPUTADORA 30 X 30 ', '35.00', 100, '3500.00', '2018-03-20 23:11:59', 1, '', 'VINIL BLANCO'),
(657, 17, 1, 'CALCAS CORTE POR COMPUTADORA 15 X 15', '25.00', 150, '3750.00', '2018-03-20 23:11:59', 1, '', 'VINIL BLANCO'),
(658, 21, 1, '', '150.87', 4, '603.48', '2018-03-20 23:29:14', 1, '', ''),
(659, 14, 1, 'NOTAS DE VENTA', '1.12', 1000, '1120.00', '2018-03-20 23:50:22', 1, '', 'NEGRA'),
(660, 15, 1, 'MOCHILA YAIK IMPRESA 1 TINTA', '31.00', 130, '4030.00', '2018-03-20 23:52:43', 1, 'SIN 130', 'BLANCA'),
(661, 15, 1, 'ANFORA SHADOW AZUL IMPRESAS 1 TINTA', '25.00', 500, '12500.00', '2018-03-21 00:17:30', 1, '', 'BLANCA'),
(662, 15, 1, 'BRAZALETE PLASTICO AZUL', '7.00', 500, '3500.00', '2018-03-21 00:17:30', 1, '', 'BLANCA'),
(663, 17, 1, 'MICROPERFORADO 2.40 X 2.55 MTS. ', '2142.00', 1, '2142.00', '2018-03-21 00:33:49', 1, 'MICROPERFORADO', 'A COLOR'),
(664, 17, 1, 'MICROPERFORADO 2.41 X 2.76 MTS.  ', '2331.00', 1, '2331.00', '2018-03-21 00:42:42', 1, 'MICROPERFORADO', 'A COLOR'),
(665, 17, 1, 'VINIL IMPRESO 1.45 X 3 MTS.', '1087.50', 1, '1087.50', '2018-03-21 00:42:42', 1, 'VINIL', 'A COLOR'),
(668, 17, 1, 'MAMPARA CON INSTALACION MEDID 5.50 X 2.40 ', '6500.00', 1, '6500.00', '2018-03-21 15:28:38', 1, '', 'SID'),
(669, 17, 1, 'TARJETAS DE PRECENTACION  IMPRECION 1 LADO \n200 IRIS NEREYDA OBREGON TEJEDA \n200 CARMEN JULIA SALDAÑA SOSA\n200 ALVIN RAMIREZ  CRUZ', '1.30', 600, '780.00', '2018-03-21 15:31:20', 1, '', 'LASER'),
(670, 17, 1, 'SELLO DE PLACA 6 X 4 CM 4 DISEÑOS.', '490.00', 5, '2450.00', '2018-03-21 15:31:39', 1, '', ''),
(671, 17, 1, 'LONA IMPRESION DIGITAL 1 X 1.50 M\nBASTILLA Y OJILLOS', '120.00', 3, '360.00', '2018-03-21 15:55:21', 1, '', ''),
(672, 17, 1, 'VINIL CORTE POR COMPUTADORA MEDIDA 24 X 48 CM\nA COLOR ROJO Y AZUL BLUEBERRY', '75.00', 2, '150.00', '2018-03-21 16:35:14', 1, '', 'N/A'),
(673, 16, 1, 'BORDADOS EN CHALECOS LETRA TAM', '5.00', 130, '650.00', '2018-03-21 16:37:27', 1, '', ''),
(674, 16, 1, ' CAP 004 B \nGORRA TRUCKER COLOR BLANCO CON  2 LOGOS  BORDADOS  ', '79.50', 40, '3180.00', '2018-03-21 17:18:43', 1, NULL, NULL),
(675, 16, 1, 'SEC 001 Y \nCHALECO DE SEGURIDAD SIKKER', '145.00', 40, '5800.00', '2018-03-21 17:18:43', 1, NULL, NULL),
(676, 19, 1, '', '189.65', 2, '379.30', '2018-03-21 17:43:47', 1, '', ''),
(677, 17, 1, 'VINIL 1.32 X .60 MT', '150.00', 1, '150.00', '2018-03-21 17:46:49', 1, '', 'HD'),
(678, 17, 1, 'CONVOCOTARIA IMPRESA EN VINIL HD CON TROVISEL\nMEDIDA 56 X 43 CM', '150.00', 1, '150.00', '2018-03-21 17:59:01', 1, '', 'HD'),
(679, 17, 1, 'LONA IMPRESION DIGITAL 3 X 2 MTS BASTILLA Y OJILLOS', '650.00', 3, '1950.00', '2018-03-21 18:07:23', 1, '', 'SID'),
(680, 17, 1, 'LONA IMPRESION DIGITAL CON SOBRANTE MEDIDA 12.50 X 3.05 MTS', '3050.00', 1, '3050.00', '2018-03-21 18:11:42', 1, '', 'SID'),
(681, 14, 1, 'SOBRES CON IMPRESION A 1 TINTA POR 1 SOLO LADO', '0.90', 2000, '1800.00', '2018-03-21 18:25:50', 1, '', 'NEGRA'),
(682, 14, 1, 'SOBRES CON IMPRESION A 1 TINTA  POR AMBOS LADOS', '1.20', 1000, '1200.00', '2018-03-21 18:25:50', 1, '', 'NEGRA'),
(683, 14, 1, 'TARJETAS DE PRESENTACION DE VARIAS PERSONAS\nSELECCION COLOR AMBOS LADOS, PLASTIFICADO MATE', '2.60', 1500, '3900.00', '2018-03-21 18:32:01', 1, '', 'SEL COLOR'),
(684, 17, 1, 'lona impresa a color 2.10 x 4.10 mts.  con sobrante para grapar ...sin bastilla y sin ojillos !!  se instalara sobre base de triplay que tienen ya puesta en la pared.', '2550.00', 1, '2550.00', '2018-03-21 18:35:10', 1, 'lona', 'a color'),
(685, 14, 1, 'TARJETAS DE PRESENTACION ( 500 )  UNA SOLA CARA SE IMPRIMIRAN EN IMPRESORA LASER...', '1.50', 500, '750.00', '2018-03-21 19:50:48', 1, 'TARJETA PRESENTACION', ' A COLOR EN IMPRESORA LASER.'),
(687, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 1.80 X .80 BASTILLA Y OJILLOS', '240.00', 2, '480.00', '2018-03-21 22:58:40', 1, '', 'SID'),
(688, 17, 1, 'LONA IMPRESION DIGITAL 1.20 X 1.60\nBASTILLA Y OJILLOS', '250.00', 1, '250.00', '2018-03-21 23:02:54', 1, '', 'SID'),
(689, 17, 1, '1 LONA \" GRUPO GASTRONOMICO \"  VERTICAL MEDIDA :   .80 X 1.50 MTS. CON BASTILLA Y OJILLOS ', '200.00', 1, '200.00', '2018-03-21 23:45:35', 1, 'LONA', 'A COLOR'),
(690, 14, 1, 'LAMINADO DE HOJAS TAMAÑO CARTA AMBOS LADOS', '3.00', 9, '27.00', '2018-03-21 23:55:59', 1, '', 'LAMINADO'),
(691, 17, 1, '1 LONA CON BASTILLA Y OJILLOS HORIZONTAL .80 X 1.50 MTS.  \"  CODINSA \"', '200.00', 1, '200.00', '2018-03-21 23:57:11', 1, 'LONA', 'A COLOR'),
(693, 14, 1, 'HOJAS MEMBRETADAS  IMPRESION SELECCION COLOR TAMAÑO CARTA EN PAPEL BOND DE 75 GRAMOS', '2.80', 500, '1400.00', '2018-03-22 00:00:50', 1, '', 'SEL COLOR'),
(694, 14, 1, 'CARPETAS IMPRESAS A SELECCION COLOR EN COUCHE DE 300 GRAMOS', '10.50', 200, '2100.00', '2018-03-22 00:00:50', 1, '', 'SEL COLOR'),
(695, 14, 1, 'GAFETTES TAMAÑO 1/4 CARTA  SELECCION COLOR EN COUCHE DE 300 GRAMOS ENMICADOS INCLUYE PORTAGAFETTE', '9.90', 240, '2376.00', '2018-03-22 00:00:50', 1, '', 'LASER'),
(700, 15, 1, 'BOLIGRAFO DYCK AZUL IMPRESO 1 TINTA\n(COLOR DE TINTA AZUL)', '6.50', 300, '1950.00', '2018-03-22 00:06:01', 1, NULL, NULL),
(701, 15, 1, 'ETIQUETAS CON LOGO MOSTACHON EN VINIL CORTE BLANCO IMPR. TINTA ORO  MED : 4 X 7.2 ES LA GRANDE.', '0.59', 10000, '5900.00', '2018-03-22 01:32:11', 1, 'ETIQUETA ADHESIVA VINIL CORTE', 'ORO'),
(702, 15, 1, 'PLAYERAS CUELLO REDONDO NEGRA IMPRESAS 1 TINTA FRENTE (LOGO LATIENDO POR TAM)\n40 CH, 40 M, 30 G, 20 XL', '55.00', 130, '7150.00', '2018-03-22 04:43:31', 1, '', 'BLANCA'),
(703, 16, 1, 'CHALECO COLOR NARANJA  BORDADO - LOGO KEMET  - SERIGRAFIA ( COMISION  DE SEGURIDAD E HIGIENE)', '25.00', 21, '525.00', '2018-03-22 16:19:39', 1, '', 'BLANCA'),
(704, 16, 1, 'CHALECO COLOR AZUL  - BORDADO LOGO KEMET - SERIGRAFIA ALMACENISTA ', '25.00', 5, '125.00', '2018-03-22 16:19:39', 1, '', 'BLANCA '),
(705, 16, 1, 'CHALECO COLOR AMARILLO \n- BORDADO LOGO KEMET \n- SIN SERIGRAFIA', '10.00', 40, '400.00', '2018-03-22 16:19:39', 1, '', ''),
(706, 17, 1, 'ROTULACION DE CAMIONETAS:\n2 LOGO LATERALOS SIN LIMITES\n2 LOGO LATERALES CREE\n1 LOGO FRENTE SIN LIMITE\n1 LOGO ATRAS SIN LIMITE', '1250.00', 3, '3750.00', '2018-03-22 17:05:27', 1, '', ''),
(707, 17, 1, 'SELLO 6 X 4 DE PLACA....SELLO DE ACUSE.', '490.00', 1, '490.00', '2018-03-22 17:38:35', 1, '', ''),
(708, 17, 1, 'ROLLO DE VINIL 1.52 X 50 M', '1400.00', 1, '1400.00', '2018-03-22 18:32:53', 1, '', ''),
(709, 15, 1, 'REGLA VERDE', '9.00', 200, '1800.00', '2018-03-12 15:08:44', 1, 'DP0007', 'NEGRA O BLANCA'),
(710, 19, 1, '', '189.65', 1, '189.65', '2018-03-22 19:14:40', 1, '', ''),
(711, 17, 1, '1 VINIL CORTE MEDIDA : .45 X 2.30 MTS.', '450.00', 1, '450.00', '2018-03-22 19:43:14', 1, 'VINIL CORTE', 'VINIL NEGRO'),
(712, 17, 1, 'ROTULACION DE VINIL HD EN TROVISEL MEDIDA 15 X 59.5 CM', '180.00', 1, '180.00', '2018-03-22 23:23:11', 1, '', 'HD'),
(713, 14, 1, 'BOLETOS PARA CONTROL DE SALIDAS TRANSPAIS UNICO PAPEL BOND AZUL ORIGINAL DOBE SUAJE PARA CORTE TRIPLE FOLIO BLOCKS SOLO PEGADOS SIN GRAPAR', '0.20', 10000, '2000.00', '2018-03-22 23:48:28', 1, 'BOLETO PARA CONTROL DE SALIDAS ', 'NEGRA'),
(714, 14, 1, 'ORDEN DE TRABAJO 1/4 DE CARTA CON CONCEPTOS DE : OPERADOR,NUM. ECONOMICO Y FECHA PARA KM. 4 ', '0.65', 4000, '2600.00', '2018-03-23 00:17:52', 1, 'ORDEN DE TRABAJO OPERADOR,NUM. ECONOMICO Y FECHA', 'AZUL REFLEX'),
(715, 14, 1, 'TRIPTICOS SELECCION COLOR FESTIVAL DEL MAR', '0.70', 5000, '3500.00', '2018-03-23 15:17:09', 1, '', 'SEL'),
(716, 15, 1, 'IMPRESIONES EN ÁNFORAS ', '5.00', 50, '250.00', '2018-03-23 15:36:46', 1, '', ''),
(717, 17, 1, 'LONA 2.44 X 1.22 C/ SOBRANTE ', '360.00', 1, '360.00', '2018-03-23 15:47:02', 1, '', 'SID'),
(718, 17, 1, 'LONA 1.22 X 2.44 BASTILLA Y OJILLOS ( ZONA GEEK)\n', '360.00', 1, '360.00', '2018-03-23 15:47:02', 1, '', 'SID'),
(719, 17, 1, 'LONA 1.75X.75 CM BASTILLA Y OJILLOS (ACCESO C/PULSERA)', '150.00', 1, '150.00', '2018-03-23 15:47:02', 1, '', 'SID'),
(720, 17, 1, 'VINIL TRANSPARENTE HD 2X.77 CM ', '230.00', 1, '230.00', '2018-03-23 15:54:57', 1, '', 'SID'),
(721, 14, 1, 'COMANDAS', '0.11', 8000, '880.00', '2018-03-23 18:12:27', 1, '', 'NEGRA'),
(722, 17, 1, 'COROPLAST MEDIDA 1.20 X 90 CON VINIL HD ALTA CALIDAD', '750.00', 2, '1500.00', '2018-03-23 18:13:17', 1, '', 'hd'),
(723, 17, 1, 'ROTULACION DE 4 VIDRIOS (PUERTA DE ACCESO SECUNDARIA) CON VINIL HD\n2 PZ MEDIDA 93 X 1.06\n1 PZ MEDIDA 95 X 1.06\n1 PZ MEDIDA 97 X 1.06', '2900.00', 1, '2900.00', '2018-03-23 18:13:17', 1, '', 'HD'),
(724, 17, 1, 'ROTULACION DE VINIL ESMERILADO', '2300.00', 1, '2300.00', '2018-03-23 18:13:17', 1, '', ''),
(725, 17, 1, 'VINIL HD DE LOGOS HOSPITAL DE 28 CM DIAMETRO', '35.00', 30, '1050.00', '2018-03-23 18:13:17', 1, '', 'HD'),
(726, 15, 1, 'BORRADOR IMPRESO 1 TINTA 1 LADO', '2.10', 10000, '21000.00', '2018-03-23 18:22:42', 1, 'DPO 010-1', 'AZUL'),
(727, 15, 1, 'LAPICES BLANCOS IMPRESOS 1 TINTA', '2.90', 10000, '29000.00', '2018-03-23 18:22:42', 1, 'DPO 008', 'AZUL'),
(728, 16, 1, 'GORRAS DE ALGODON EN COLOR BLANCO  CON 3 LOGOS BORDADOS', '65.00', 60, '3900.00', '2018-03-23 18:39:21', 1, '', 'DORADO'),
(729, 16, 1, 'GORRAS  DE MALLA EN COLOR BLANCO CON 3 LOGOS BORDADOS', '55.00', 30, '1650.00', '2018-03-23 18:39:21', 1, '', 'DORADO'),
(730, 15, 1, 'ANFORAS LAKE DE COLORES  CON  PERSONALIZADOS EN VINIL', '40.00', 30, '1200.00', '2018-03-23 18:52:05', 1, '', 'VINIL '),
(731, 15, 1, 'LENTES  DE COLORES  CON 1 LOGO IMPRESO A 1 TINTA LOGO UN COSTADO M Y M  Y EN EL OTRO COSTADO 2018', '25.00', 50, '1250.00', '2018-03-23 18:52:05', 1, '', 'BLANCA'),
(732, 17, 1, '1 SELLO FECHADOR 4 X 6 CM.  MANUAL NO AUTOMATICO', '350.00', 1, '350.00', '2018-03-23 19:15:53', 1, 'P07', ''),
(733, 17, 1, '1 SELLO :  ACUSE DE RECIBO CON BASE DE MADERA', '100.00', 1, '100.00', '2018-03-23 19:15:53', 1, 'SELLO BASE MADERA', ''),
(734, 17, 1, '1 SELLO CON BASE DE MADERA LIC. ROSSANA ', '100.00', 1, '100.00', '2018-03-23 19:15:53', 1, 'SELLO BASE MADERA', ''),
(735, 15, 1, 'IMPRESION EN  BOTELLA DE VIDRIO LOGO DE MEZCALES JAGUAR A UNA TINTA', '5.00', 214, '1070.00', '2018-03-23 20:11:07', 1, '', 'VERDE ACUA'),
(736, 15, 1, 'IMPRESION DE ROLLO DE LISTON', '150.00', 1, '150.00', '2018-03-23 21:01:22', 1, '', ''),
(737, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 3 X 4 MTS BASTILLA Y OJILLOS', '1200.00', 2, '2400.00', '2018-03-23 23:37:15', 1, '', 'SID'),
(738, 17, 1, 'TARJETAS DE PRESENTACION', '500.00', 1, '500.00', '2018-03-24 00:10:53', 1, '', ''),
(739, 15, 1, 'TAZAS  \nTAZ- 003  COLOR  AZUL   IMPRESO  EN SERIGRAFIA  A 1 TINTA ', '39.50', 36, '1422.00', '2018-03-24 00:20:45', 1, 'TAZ 003', 'BLANCO '),
(740, 15, 1, 'TARJETERO \nM 86114 -5\n', '51.50', 36, '1854.00', '2018-03-24 00:20:45', 1, 'M86114-5', 'AZUL '),
(741, 21, 1, '', '150.87', 10, '1508.70', '2018-03-24 01:12:42', 1, '', ''),
(742, 17, 1, 'impresion  de  lona  de  1  x 1   con   bastilla  y ojillos ', '129.00', 1, '129.00', '2018-03-24 17:31:53', 1, '', ''),
(743, 15, 1, 'PLAYERA CUELLO REDONDO BLANCA DRY COOL CON VINIL TEXTIL NEGRO EN FRENTE', '150.00', 5, '750.00', '2018-03-24 19:02:42', 1, '', 'VINIL TEXTIL NEGRO'),
(744, 14, 1, 'VOLANTES A COLOR ...4000 ( 2000 DE UN DISEÑO Y 2000 DE OTRO )', '0.63', 4000, '2520.00', '2018-03-24 22:11:36', 1, 'VOLANTES MEDIA CARTA', 'A COLOR'),
(746, 14, 1, 'TARJETON MEDIA CARTA SELECCION COLOR AMBOS LADOS EN COUCHE DE 300 GRAMOS PLASTIFICADO BRILLANTE AMBOS LADOS', '2.55', 1000, '2550.00', '2018-03-26 14:50:05', 1, NULL, NULL),
(747, 14, 1, 'TARJETAS DE PRECENTACION  SEL. COLOR AMBOS LADOS PLASTIFICADO MATE', '2.20', 500, '1100.00', '2018-03-26 15:39:19', 1, '', 'SEL. COLOR '),
(748, 14, 1, 'SELLO AUTO ENTINTABLE DE PLACA\nDISEÑO\nDIRECTOR GENERAL ADMINISTRATIVO', '410.00', 1, '410.00', '2018-03-26 16:06:37', 1, '', ''),
(749, 14, 1, 'SELLO FECHADOR AUTOENTINTABLE\n\nPERIODICO OFICIAL DEL ESTADO DE TAMAULIPAS ', '420.00', 1, '420.00', '2018-03-26 16:11:47', 1, '', ''),
(750, 17, 1, 'SELLO AUTOENTINTABLE  PLACA \nMODELO PRINH 4929', '410.00', 2, '820.00', '2018-03-26 16:31:20', 1, '', ''),
(751, 17, 1, 'SELLO AUTOENTINTABLE FECHADOR  6X4', '500.00', 1, '500.00', '2018-03-26 16:38:21', 1, '', ''),
(752, 17, 1, 'PORTABANNER 1.80 X 1.80 C/ PORTA BANNER', '690.00', 2, '1380.00', '2018-03-26 16:41:21', 1, '', ''),
(753, 17, 1, 'CARTELES 49 X 33.5 ', '16.00', 100, '1600.00', '2018-03-26 16:45:30', 1, '', ''),
(754, 17, 1, 'LONA IMPRESION DIG BASTILLA Y OJILLOS', '900.00', 1, '900.00', '2018-03-26 16:48:05', 1, '', 'SID'),
(755, 17, 1, 'LONAS IMORESA 1.80 X .80 \nBASTILLA Y OJILLOS ', '200.00', 1, '200.00', '2018-03-26 16:51:32', 1, '', 'SID'),
(756, 15, 1, 'PLAYERAS CLR. BLANCAS CON PARCHE \nFRENTE TAMAÑO ESCUDO \nESPALDA TAMAÑO CARTA ', '90.00', 100, '9000.00', '2018-03-26 16:57:07', 1, '', 'COLOR '),
(757, 15, 1, 'CARPETAS OXXFORD AZUL REY 1 TINTA FRENTE Y REVERSO', '29.90', 120, '3588.00', '2018-03-26 16:59:48', 1, '', 'AZUL REY '),
(758, 14, 1, 'TARJETAS DE PRESENTACION  SEL COLOR AMBOS LADOS\nPLASTIFICADO MATE  \n2 DISEÑOS \n', '2.20', 500, '1100.00', '2018-03-26 17:02:49', 1, '', 'SEL COLOR '),
(759, 17, 1, 'ROTULACION DE PICK UP, AMBULANCIA VAN, PICK UP TORNADO \nLIBERTY, CAMION DE BOMBEROS, PIPA AGUAS, AMBULANCIA CLASE 3 ', '36620.00', 1, '36620.00', '2018-03-26 17:21:49', 1, '', 'SID'),
(760, 14, 1, 'CALCAS CORTE COMPUTADORA 5CM', '25.00', 50, '1250.00', '2018-03-26 17:27:26', 1, '', 'COLOR '),
(761, 14, 1, 'CALCAS CORTE POR COMPUTADORA 3.3 CM', '25.00', 50, '1250.00', '2018-03-26 17:27:26', 1, '', 'COLOR'),
(762, 17, 1, 'SELLO AUTOENTINTABLE TRODAT 5215 CIRCULAR ', '590.00', 1, '590.00', '2018-03-26 17:31:19', 1, '', 'AZUL'),
(763, 15, 1, 'BRAZALETE VINIL MATE ST EN COLOR DORADO CON IMPRESION A UNA TINTA', '11.00', 100, '1100.00', '2018-03-26 17:38:24', 1, '', 'CEREZA'),
(764, 19, 1, '', '189.65', 1, '189.65', '2018-03-26 17:40:17', 1, '', ''),
(765, 17, 1, 'MAMPARA  5.50 X 2.40  C/ BASTIDOR ', '6500.00', 1, '6500.00', '2018-03-26 17:43:31', 1, '', 'SID'),
(766, 17, 1, 'PENDONES 1.80 X .80 C/ BASTILLA Y OJILLOS ', '250.00', 4, '1000.00', '2018-03-26 17:43:31', 1, '', 'SID'),
(767, 14, 1, 'HOJAS MEMBRETADAS CARTA EN PAPEL BOND BLANCO FACIA FACIA FACIA FACIA....!', '0.63', 5000, '3150.00', '2018-03-26 17:54:36', 1, 'HOJAS MEMBRETADAS', 'NEGRA Y AZUL PROCESS'),
(768, 14, 1, 'REQUISICION DE COMPRA MEDIA CARTA TINTA AZUL FOLIADAS 1001 AL 2000 ORIGINAL Y 2 COPIAS AUTOCOPIA .', '1.20', 1000, '1200.00', '2018-03-26 18:45:22', 1, 'REQUISICION DE COMPRA', 'AZUL REFLEX'),
(769, 17, 1, 'ROTULACION DE STAND EN LONA IMPRESION DIGITAL MEDIDA 2.03 X 1.00 MTS', '900.00', 1, '900.00', '2018-03-26 19:01:23', 1, '', 'HD'),
(770, 17, 1, 'ROTULACION DE STAND CON VINIL HD MEDIDA 1.53 X .82', '900.00', 2, '1800.00', '2018-03-26 19:01:23', 1, '', 'HD'),
(771, 14, 1, 'FORMATO PARA MANTENIMIENTO PREVENTIVO 1/2 CARTA ORIGINAL Y COPIA AMARILLA FOLIADOS : 8001 al 11000 IMPRESION 1 TINTA ( AZUL REFLEX ) PAPEL AUTOCOPIA . ', '0.75', 3000, '2250.00', '2018-03-10 00:30:42', 1, 'FORMATO MANTENIMIENTO PREVENTIVO', 'AZUL REFLEX'),
(772, 14, 1, 'FORMATO PARA MANTENIMIENTO PREVENTIVO 1/2 CARTA ORIGINAL Y COPIA AMARILLA FOLIADOS : 8001 al 11000 IMPRESION 1 TINTA ( AZUL REFLEX ) PAPEL AUTOCOPIA . ', '0.75', 3000, '2250.00', '2018-03-10 00:30:42', 1, 'FORMATO MANTENIMIENTO PREVENTIVO', 'AZUL REFLEX'),
(773, 17, 1, 'PENDONES 1.80 X .80 BASTILLA Y OJILLOS', '215.00', 1, '215.00', '2018-03-26 20:56:39', 1, '', 'HD'),
(774, 14, 1, 'FORMATO PARA MANTENIMIENTO PREVENTIVO 1/2 CARTA  ORIGINAL Y COPIA AMARILLA FOLIADOS 8001 AL 11000 IMPRESIÓN 1 TINTA ( AZUL REFLEX ) PAPEL AUTOCOPIA ', '0.75', 3000, '2250.00', '2018-03-26 20:58:03', 1, 'FORMATO MANTENIMIENTO PREVENTIVO ', 'AZUL REFLEX'),
(775, 15, 1, 'ANFORA LAKE AMARILLA IMPRESAS 1 TINTA DISEÑO DE CUMPLEAÑOS', '21.47', 350, '7514.50', '2018-03-26 21:57:19', 1, 'ANF 006', 'AZUL'),
(776, 15, 1, 'PARAGUAS SABETTA IMPRESOS 1 TINTA 4 GAJOS\n25 VERDES\n175 AZUL', '0.00', 200, '0.00', '2018-03-26 22:02:44', 1, 'PAR 016', 'BLANCA'),
(777, 15, 1, 'PARAGUAS MURTIZ AZUL IMPRESOS 1 TINTA 4 GAJOS', '0.00', 100, '0.00', '2018-03-26 22:02:44', 1, 'PAR 014', 'BLANCA'),
(778, 16, 1, 'VINIL EN GORRAS 1 LOGO ', '51.72', 16, '827.52', '2018-03-26 23:39:41', 1, '', 'VINIL BLANCO Y ROJO'),
(779, 17, 1, 'ROTULACION DE ANUNCION LUMINOSO MEDIDA 3.15 X 6.01 INCLUYE: 	DESINSTALACION DE ANUNCIO ADOSADO A PARED, PARA	TRASLADAR A TALLER, DESARMADO DE ANUNCIO, PINTURA ANTICORROSIVA, INSTALACION DE MATERIAL ELECTRICO, INSTALACION DE LONA 3M TRASLUCIDA BLANCA, E INSTALACION DE VINIL SERIE 2500 COLOR ROJO, CORTE POR COMPUTADORA	TRASLADOO A MATRIZ E INSTALACION DE ANUNCIO ADOSADO. ', '41000.00', 1, '41000.00', '2018-03-27 00:24:50', 1, '', ''),
(780, 16, 1, 'CAMISAS MANGA LARGA (BLANCA Y CELESTE)\nHECTOR 2 T2XL\nIVAN 2 TM\nCARLOS 2 TM\nLEOBARDO 2 TCH\nEDGAR 2 TCH', '258.00', 10, '2580.00', '2018-03-27 01:02:52', 1, '', ''),
(781, 16, 1, 'CAMISAS Y BLUSAS CELESTE Y BLANCA CON LOGO BORDADO DIF TAMAULIPAS', '258.00', 7, '1806.00', '2018-03-27 01:12:28', 1, '', ''),
(782, 14, 1, 'RECIBOS DE NEONATOS', '0.58', 2000, '1160.00', '2018-03-06 17:43:02', 1, '', 'NEGRA'),
(783, 14, 1, 'TRIPTICOS TAMAÑO ESPECIAL IMPRESOS AMBOS LADOS COUCHE DE 130 GRAMOS', '0.00', 10000, '0.00', '2018-03-27 16:41:40', 1, '', 'SEL COLOR'),
(784, 17, 1, 'METROS CUADRADOS DE VINIL HD CALCA 8 X 21 CM', '130.00', 4, '520.00', '2018-03-27 16:56:50', 1, '', 'HD'),
(785, 14, 1, 'ETIQUETAS 14 X 20 (MUEBLEMANIA)', '0.60', 6000, '3600.00', '2018-03-27 16:59:59', 1, '', 'SEL COLOR'),
(786, 14, 1, 'ETIQUETAS BRISTOL VENTA REFRESCANTE', '0.60', 4000, '2400.00', '2018-03-27 17:00:52', 1, '', 'SEL COLOR'),
(787, 14, 1, 'VIÑETAS SELECCION COLOR CARTA', '1.20', 2000, '2400.00', '2018-03-27 17:01:37', 1, '', 'SEL COLOR'),
(788, 14, 1, 'ETIQUETAS CHICAS VENTA REFRESCANTE', '0.40', 3000, '1200.00', '2018-03-27 17:02:33', 1, '', 'SEL COLOR'),
(789, 17, 1, 'DESROTULACION DE CAMIONETA POLLO FELIZ', '1000.00', 1, '1000.00', '2018-03-27 17:20:18', 1, '', ''),
(790, 15, 1, 'PLAYERAS CUELLO REDONDO CON IMPRESION FRENTE Y ESPALDA A 1 TINTA EN COLOR  TURQUESA PERTENECE A CASA HOGAR', '42.24', 24, '1013.76', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(791, 15, 1, 'PLAYERAS EN COLOR AZUL REY PERTENECEN A DIVINA PROVIDENCIA', '42.24', 70, '2956.80', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(792, 15, 1, 'PLAYERAS EN COLOR NARANJA PERTENECEN A CAPILLA DE NTRA. SRA, DEL SOCORRO', '42.24', 42, '1774.08', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(793, 15, 1, 'PLAYERAS EN COLOR VERDE LIMON PERTENECE A.C.J.M', '42.24', 8, '337.92', '2018-03-27 17:30:17', 1, '', 'BLANCO'),
(794, 15, 1, 'PLAYERAS EN COLOR FIUSHA PERTENECE A  J,C,F,M,', '42.24', 7, '295.68', '2018-03-27 17:30:17', 1, '', 'BLANCA'),
(796, 15, 1, 'PLAYERAS EN COLOR MORADO PERTENECE A CRISTO REY', '42.24', 29, '1224.96', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(797, 15, 1, 'PLAYERAS EN COLOR VERDE BANDERA PERTENECE  AL CONVENTO', '42.24', 5, '211.20', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(798, 15, 1, 'PLAYERAS EN COLOR ROJO PERTENECE A MARIA AUXILIADORA', '42.24', 24, '1013.76', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(799, 15, 1, 'PLAYERAS EN COLOR CELESTE PERTENECE A DIVINA PROVIDENCIA JUVENILES', '42.24', 15, '633.60', '2018-03-27 17:30:17', 1, '', 'AMARILLO MANGO'),
(800, 15, 1, 'PLAYERAS EN COLOR AMARILLO MANGO SON DE 5 CASA HOGAR, 5 CAPILLA, 13 SAN JUANITA, 14 DIVINA PROVIDENCIA, 3 MARIA AUXILIADORA, 3 CRISTO REY, 6 COMITE DIOCESANO', '42.24', 49, '2069.76', '2018-03-27 17:30:17', 1, '', 'AZUL REY'),
(801, 16, 1, 'BLUSAS XXL BORDADAS', '380.00', 2, '760.00', '2018-03-27 17:38:38', 1, '', ''),
(802, 17, 1, 'MICROPERFORADO .66 X 1.20', '270.00', 1, '270.00', '2018-03-27 18:42:15', 1, '', 'HD'),
(803, 14, 1, 'CAMBIO DE NOMBRE DE CUENTA', '1.90', 500, '950.00', '2018-03-27 19:22:58', 1, '', 'NEGRA'),
(804, 15, 1, 'BRAZALETES TYVEK NARANAJA', '3.00', 300, '900.00', '2018-03-27 19:59:21', 1, '', 'NEGRA'),
(805, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 3  X 4 MTS', '960.00', 1, '960.00', '2018-03-27 20:00:47', 1, '', 'SID'),
(806, 14, 1, 'VALE DE SALIDA DE MATERIAL O SOLICITUD DE MATERIAL MEDIA CARTA ORIGINAL Y 2 COPIAS AZUL Y VERDE SIN FOLIO.', '1.60', 1500, '2400.00', '2018-03-27 20:09:45', 1, ' 4021 VALE DE SALIDA DE MATERIAL O SOLIC. DE MATERIAL', 'NEGRA'),
(807, 15, 1, 'BOLIGRAFO COOPER VERDE', '6.00', 200, '1200.00', '2018-03-27 20:12:57', 1, 'SH 1310', 'BLANCA'),
(808, 15, 1, 'LAPICES BLANCOS ', '3.50', 200, '700.00', '2018-03-27 20:12:57', 1, 'SPO 008', 'VERDE'),
(809, 16, 1, 'PLAYERA TIPO POLO DACACHE COLOR ROJO CON LOGO BORDADO MIL MASCOTAS FRENTE IZQ., TALLAS DAMA CH-2, M-5, G-1, XL-1, CABALLERO CH- 2, M-1, XL-1', '230.00', 13, '2990.00', '2018-03-27 20:28:35', 1, '', ''),
(810, 16, 1, 'PLAYERA TIPO POLO DACACHE COLOR ROJO CON LOGO BORDADO MIL MASCOTAS FRENTE IZQ., TALLAS DAMA 3XL -1, CABALLERO 3XL -1', '260.00', 2, '520.00', '2018-03-27 20:28:35', 1, '', ''),
(811, 16, 1, 'PLAYERA TIPO POLO DACACHE COLOR GRIS OXFORD CON LOGO BORDADO MIL MASCOTAS FRENTE IZQ., TALLAS DAMA CH-2, M-5, XL-3, CABALLERO CH-3, M-1, G-1', '230.00', 15, '3450.00', '2018-03-27 20:28:35', 1, '', ''),
(812, 16, 1, 'PLAYERA TIPO POLO DACACHE COLOR AZUL REY CON LOGO BORDADO MIL MASCOTAS FRENTE IZQ., TALLAS DAMA CH-2, M-5, G-1, XL-1, CABALLERO CH -1', '230.00', 10, '2300.00', '2018-03-27 20:28:35', 1, '', ''),
(813, 16, 1, 'PLAYERA TIPO POLO DACACHE COLOR AZUL REY CON LOGO BORDADO MIL MASCOTAS FRENTE IZQ., TALLAS DAMA 2XL-1, 3XL-1, CABALLERO 2XL -1', '260.00', 3, '780.00', '2018-03-27 20:28:35', 1, '', ''),
(814, 17, 1, 'LONA IMPRESION DIGITAL 6 X 1 MTS BASTILLA Y OJILLOS', '720.00', 1, '720.00', '2018-03-27 21:13:32', 1, '', 'SID'),
(817, 14, 1, 'SOLICITUD DE HERRAMIENTA ', '1.97', 500, '985.00', '2018-03-27 21:23:27', 1, 'CLAVE 40-29 SOLICITUD DE HERRAMIENTA', 'NEGRA'),
(818, 14, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS MISMO  PARA TODOS INTERIOR....FRENTE 5,000 DE CADA CANDIDATO', '0.00', 45000, '0.00', '2018-03-27 21:27:19', 1, '', 'SEL COLOR'),
(819, 14, 1, 'VALE DE SALIDA DE MATERIAL INSTALACION DE TOMA DE AGUA Y DESCARGAS SANITARIAS ORIG. Y 2 COPIAS AZUL Y AMARILLA AUTOCOPIA SIN FOLIO.', '2.49', 500, '1245.00', '2018-03-27 21:37:04', 1, 'CLAVE 41-53 ', 'NEGRA'),
(820, 14, 1, 'VALE PARA SUMINISTRO DE AGUA TRATADA', '1.10', 500, '550.00', '2018-03-27 22:04:13', 1, 'CLAVE 4166', 'NEGRA'),
(821, 14, 1, 'TRIPTICOS SEL. COLOR AMBOS LADOS', '1.30', 4000, '5200.00', '2018-03-27 22:08:48', 1, '', 'SEL. COLOR'),
(822, 14, 1, 'DIPTICOS SEL. COLOR AMBOS LADOS ', '2.50', 1000, '2500.00', '2018-03-27 22:08:48', 1, '', 'SEL. COLOR '),
(823, 17, 1, 'LONA \" REYNOSA\" \nBASTILLA Y OJILLOS ', '900.00', 1, '900.00', '2018-03-27 22:08:48', 1, '', 'SID'),
(824, 14, 1, 'POSTER TULA ', '0.90', 2000, '1800.00', '2018-03-27 22:08:48', 1, '', 'SEL. COLOR'),
(825, 14, 1, 'VALE PARA SUMINISTRO DE AGUA POTABLE', '1.10', 500, '550.00', '2018-03-27 22:15:21', 1, 'CLAVE 41-65', 'NEGRA'),
(826, 14, 1, 'HOJAS MEMBRETADAS SINDICATO COMAPA', '0.92', 2500, '2300.00', '2018-03-27 22:30:45', 1, 'CLAVE 41-67', 'SELECCION COLOR'),
(827, 16, 1, 'BORDADO EN TOALLA DE MANOS CON  LOGO MYM ABRIL  2018', '15.00', 30, '450.00', '2018-03-27 22:44:15', 1, '', 'HILO DORADO'),
(828, 21, 1, '', '150.87', 6, '905.22', '2018-03-27 22:49:11', 1, '', ''),
(829, 17, 1, 'LONA IMPRESION DIGITAL 2.5 X 4.00 MTS BASTILLA Y  OJILLOS', '800.00', 1, '800.00', '2018-03-27 23:35:39', 1, '', 'SID'),
(830, 15, 1, 'PLAYERAS EN COLOR CAFE PERTENECE  A SAN JUANITA', '42.24', 7, '295.68', '2018-03-27 23:47:01', 1, '', 'AMARILLO MANGO'),
(831, 14, 1, 'VINIL IMPRESO 3.48 X 2.36 ', '1300.00', 1, '1300.00', '2018-03-28 00:22:09', 1, '', 'HD'),
(832, 14, 1, 'COLGANTES IMPRESOS SELECCION COLOR AMBOS LADOS EN CPUCHE DE 300 GRAMOS CON SUAJE', '1.90', 1000, '1900.00', '2018-03-28 00:22:09', 1, '', 'SEL '),
(833, 14, 1, 'VOLANTES SELECCION COLOR AMBOS LADOS', '0.50', 4000, '2000.00', '2018-03-28 16:37:38', 1, '', 'SEL COLOR'),
(834, 17, 1, 'LONA 1 X .70 MTS \nBASTILLA Y OJILLOS', '80.00', 1, '80.00', '2018-03-28 16:42:51', 1, '', 'SID'),
(835, 17, 1, 'LONA IMPRESION DIGITAL 2 X 1 MTS BASTILLA Y OJILLOS', '160.00', 2, '320.00', '2018-03-28 16:46:36', 1, '', 'SID'),
(836, 17, 1, 'LONA IMPRESION DIGITAL .69 X 1.66', '95.00', 1, '95.00', '2018-03-28 16:46:36', 1, '', ''),
(837, 14, 1, 'HOJAS MEMBRETADAS SELECCION DE COLOR PAPEL BOND BLANCO 90 GRMS.', '1.37', 5000, '6850.00', '2018-03-28 17:15:49', 1, 'HOJA MEMBRETADA', 'SELECCION DE COLOR'),
(838, 14, 1, 'RECIBO DE CONSUMO 1/2 OFICIO IMPR. AMBOS LADOS UNA TINTA CON PLECA PARA CORTE EN PARTE INFERIOR .', '195000.00', 1, '195000.00', '2018-03-28 17:36:33', 1, 'RECIBO DE CONSUMO', 'VERDE'),
(839, 17, 1, 'SELLO AUTOENTINTABLE 6 X 4 CM', '450.00', 1, '450.00', '2018-03-28 18:00:04', 1, '', '');
INSERT INTO `ordenitem` (`id`, `id_producto`, `id_moneda`, `descripcion`, `precio`, `cantidad`, `total`, `fecha`, `activo`, `codigo`, `tinta`) VALUES
(840, 16, 1, 'BORDADO EN CAMISA LOGO GRUAS CONDE FRENTE IZQ.', '7.50', 6, '45.00', '2018-03-28 18:41:58', 1, '', ''),
(842, 15, 1, 'PLAYERAS EN COLOR AZUL MARINO PERTENECE  A SAN JUANITA', '42.24', 74, '3125.76', '2018-03-28 19:19:10', 1, '', 'AMARILLO MANGO'),
(843, 15, 1, 'IMPRESION DE PLAYERAS CUELLO REDONDO FRENTE ARRIBA Y ABAJO.', '0.00', 1000, '0.00', '2018-03-28 21:29:37', 1, '', 'AZUL'),
(844, 17, 1, 'CALCAS MEDIA CARTA', '4.40', 200, '880.00', '2018-03-28 21:40:28', 1, '', 'HD'),
(845, 14, 1, 'FORMATO PRESTAMOS COMPLEMENTARIOS SELECCION COLOR FRENTE REVERSO 1 TINTA', '1.80', 500, '900.00', '2018-03-17 17:17:13', 1, '', 'SELECCION COLOR'),
(846, 17, 1, 'LONA IMPRESION DIGITAL 1.5 X 2.00 MTS', '360.00', 1, '360.00', '2018-03-28 23:08:32', 1, '', 'SID'),
(847, 17, 1, 'LONAS FELIPE MEDIDA .60 X 1.20 BASTILLA Y OJILLOS', '58.00', 3, '174.00', '2018-03-28 23:24:49', 1, '', 'SID'),
(848, 17, 1, 'LONA HORARIO BUSTAMANTE .60 X .60 BASTILLA Y OJILLOS', '30.00', 1, '30.00', '2018-03-28 23:24:49', 1, '', 'SID'),
(849, 17, 1, 'LONA HORARIOS MIQUIHUANA .60 X .60 BASTILLA Y OJILLOS', '30.00', 1, '30.00', '2018-03-28 23:24:49', 1, '', 'SID'),
(850, 17, 1, 'LONA PUBLICIDAD .60 X 1.20 BASTILLA Y OJILLOS', '58.00', 3, '174.00', '2018-03-28 23:24:49', 1, '', 'SID'),
(851, 14, 1, 'SOLICITUD PARA EL REGISTRO DE CANDIDATOS A CAMBIOS BOND 2 COPIAS AZUL Y ROSA', '1.50', 1000, '1500.00', '2018-03-29 00:49:48', 1, '', 'NEGRA'),
(852, 14, 1, 'CAJAS DE BOCOLES NATURALES', '2.40', 20000, '48000.00', '2018-03-29 16:49:58', 1, '', 'SEL COLOR'),
(853, 14, 1, 'COMANDAS 1/4 DE CARTA ORIGINAL Y COPIA AMARILLA PAPEL AUTOCOPIA FOLIO: 472,001 AL 482,000....SON 10,000', '3350.00', 1, '3350.00', '2018-03-29 19:30:21', 1, 'COMANDAS', 'NEGRA'),
(854, 14, 1, 'RECIBO DE PAGO SERIE \" F \" CARTA ORIG. Y DOS COPIAS AMARILLA Y VERDE  PAPEL AUTOCOPIA FOLIOS : 75,001 AL 85,000  ', '1.73', 10000, '17300.00', '2018-03-29 19:42:59', 1, 'RECIBO DE PAGO SERIE \" F \"', 'NEGRA'),
(856, 14, 1, 'CONTRARECIBOS 1/2 CARTA ORIGINAL Y COPIA AMARILLA PAPEL AUTOCOPIA FOLIOS : 5001 AL 6000', '0.90', 1000, '900.00', '2018-03-29 20:42:15', 1, 'CONTRARECIBOS', 'AZUL PANTONE NUM. 2935'),
(857, 14, 1, 'INFORME DIARIO DE MAQUINARIA Y EQUIPO 1/2 CARTA ORIG. Y 2 COPIAS AMARILLO Y ROSA PAPEL AUTOCOPIA FOLIOS :  001 AL 1000 ', '1.40', 1000, '1400.00', '2018-03-29 22:55:53', 1, 'INFORME DIARIO DE MAQUINARIA Y EQUIPO', 'AZUL CLAVE PANTONE NUM. 2935 '),
(858, 14, 1, 'BOLETA DE ACARREOS  \"  OBRA \" ORIG. Y COPIA VERDE PAPEL AUTOCOPIA FOLIOS : 2001 AL 7000\nTAMAÑO 1/4 DE CARTA.', '0.70', 5000, '3500.00', '2018-03-29 23:54:02', 1, 'BOLETA DE ACARREO  \" OBRAS \" ', 'AZUL PANTONE CLAVE :  2935'),
(859, 14, 1, 'BOLETA DE ACARREOS  \"  CLIENTE \" ORIG. Y 3 COPIAS AZUL AMARILLO Y ROSA 1/4 CARTA PAPEL AUTOCOPIA FOLIOS : 4001 AL 7000', '1.05', 3000, '3150.00', '2018-03-30 00:07:23', 1, 'BOLETA DE ACARREOS  \" CLIENTE \"', 'AZUL CLAVE PANTONE NUM.  2935 '),
(860, 17, 1, 'ROTULACION DE ESPECTACULAR DE CAMPESTRE MEDIDA 12 X 4.50 MTS SE INSTALARA EL DIA 6  DE ABRIL.', '14000.00', 1, '14000.00', '2018-03-02 16:34:50', 1, '', 'COLOR'),
(861, 14, 1, 'CALCAS IMPRESAS SELECCION COLOR\n', '0.63', 4000, '2520.00', '2018-04-02 15:58:54', 1, '', 'SELECCION COLOR'),
(862, 14, 1, 'TRIPTICOS SELECCION COLOR CBTIS 236', '1.18', 2000, '2360.00', '2018-04-02 16:27:55', 1, '', 'SEL COLOR '),
(863, 17, 1, 'LONA IMPRESION DIGITAL .70 X 1.00 MTS', '56.00', 3, '168.00', '2018-04-02 16:33:48', 1, '', 'SID'),
(864, 17, 1, 'CALCAS IMPRESION DIGITAL', '2.30', 3000, '6900.00', '2018-04-02 16:44:58', 1, '', 'HD'),
(865, 20, 1, '', '120.69', 1, '120.69', '2018-04-02 16:59:14', 1, '', ''),
(866, 19, 1, '', '189.65', 1, '189.65', '2018-04-02 16:59:14', 1, '', ''),
(867, 17, 1, 'CAMBIO DE GOMAS PARA SELLOS DE MADERA', '130.00', 2, '260.00', '2018-04-02 17:01:57', 1, '', ''),
(868, 17, 1, 'SELLS 6 X 4 CM FECHADORES BICOLOR.', '490.00', 7, '3430.00', '2018-04-02 17:14:52', 1, '', ''),
(869, 14, 1, 'VALES DE GASOLINA DIESEL', '0.00', 5000, '0.00', '2018-04-02 17:20:59', 1, '', 'SEL COLOR'),
(870, 14, 1, 'TARJETAS DE PRESENTACION A COLOR AMBOS LADOS', '2.50', 300, '750.00', '2018-04-02 17:24:05', 1, '', 'LASER'),
(871, 17, 1, 'LONA CON IMPRESION DIGITAL MEDIDA DE 3 X 2 METROS', '720.00', 1, '720.00', '2018-04-02 18:34:15', 1, '', ''),
(872, 16, 1, 'BORDADOS EN CHALECOS CON LOGO  PAN', '7.50', 15, '112.50', '2018-04-02 18:47:00', 1, '', ''),
(873, 16, 1, 'PLAYERAS CON BORDADO  LOGO ESCUELA PRIMARIA ERMINIO OBREGON', '12.00', 18, '216.00', '2018-04-02 18:47:00', 1, '', ''),
(874, 16, 1, 'CHALECOS CON LOGO TAM Y LOGO CONALEP', '16.50', 3, '49.50', '2018-04-02 18:49:11', 1, '', ''),
(875, 17, 1, 'SELLOS AUTOENTINTABLES FECHADORES DE DESPACHADO MEDIDA  6 X 4 CM PARA DIFERENTES MUNICIPIOS DE CD. VICTORIA', '460.00', 8, '3680.00', '2018-04-03 15:19:02', 1, '', ''),
(876, 17, 1, 'SELLOS AUTOENTINTABLES FECHADORES DE RECIBIDO MEDIDA 6 X 4 CM PARA DIFERENTES MUNICIPIOS DE CD. VICTORIA', '460.00', 8, '3680.00', '2018-04-03 15:19:02', 1, '', ''),
(882, 19, 1, '', '189.65', 6, '1137.90', '2018-04-03 15:49:39', 1, '', ''),
(883, 14, 1, 'TRIPTICOS  IMPRESION A SELECCION COLOR POR AMBOS LADOS MEDIDA  48 X 16 CM ( REBASADO CON 2.5 MM POR CADA LADO EN PAPEL COUCHE DE 250 GRAMOS', '12.00', 250, '3000.00', '2018-04-03 15:50:46', 1, '', 'SEL COLOR'),
(884, 14, 1, 'ETIQUETAS SELECCION COLOR ', '6.75', 200, '1350.00', '2018-02-28 15:12:33', 1, '', 'SEL COLOR'),
(885, 14, 1, 'FORMATO  TAMAÑO CARTA IMPRESOS 1 TINTA, ORIGINAL Y COPIA SIN FOLIO. SIN GOMA.', '1.30', 1000, '1300.00', '2018-04-03 16:02:45', 1, '', 'NEGRA'),
(888, 14, 1, 'FORMATO TAMAÑO CARTA SERVICIO DE MANTENIMIENTO IMPRESOS AMBOS LADOS 1 TINTA', '0.80', 1000, '800.00', '2018-04-03 16:30:19', 1, '', 'NEGRA'),
(889, 17, 1, 'ARCO DE LONA CON ESTRUCTURA DE MADERA IMPRESION EN HD', '1890.00', 1, '1890.00', '2018-04-03 17:23:20', 1, '', 'HD'),
(890, 15, 1, 'PLAYERAS CUELLO REDONDO AMARILLAS IMPRESAS 1 TINTA FRENTE, 1 TINTA ESPALDA', '45.00', 210, '9450.00', '2018-04-03 17:26:56', 1, '', 'NEGRA'),
(891, 15, 1, 'BOLIGRAFO SEÑALADOR LASER METALICO COLOR NEGRO CON LOGO TAM IMPRESO', '115.00', 100, '11500.00', '2018-04-03 17:41:12', 1, '', 'BLANCA'),
(892, 15, 1, 'LIBRETA CON 80 HOJAS,BANDA ELASTICA COLOR AZUL CON LOGO TAM Y ESCUDO DE TAMAULIPAS IMPRESO', '39.00', 100, '3900.00', '2018-04-03 17:41:12', 1, '', 'BLANCA'),
(893, 15, 1, 'USB MODELO 013 EN COLOR AZUL CON LOGO TAM IMPRESO', '155.00', 100, '15500.00', '2018-04-03 17:41:12', 1, 'USB 013 A', 'BLANCA'),
(894, 16, 1, 'CAMISAS MANGA LARGA TALLAS CHICAS CON 1 BORDADO  LOGO  TAM EN LADO IZQUIERDO', '380.00', 2, '760.00', '2018-04-03 18:43:31', 1, '', ''),
(895, 17, 1, 'SELLO DE MADERA 7X2.5 CM', '200.00', 1, '200.00', '2018-04-03 21:26:43', 1, '', ''),
(896, 16, 1, 'PLAYERA TIPO POLO AZUL MARINO MAXIMA DEPORTIVA CON LOGO 2=1 EN PECHO IZQ. HILO DORADO P-302 55 Q 1026 AC', '137.93', 35, '4827.55', '2018-04-03 21:32:44', 1, '', ''),
(897, 17, 1, '1 VINIL CORTE MEDIDA : .45 X 2.30 MTS.', '450.00', 1, '450.00', '2018-03-22 19:43:14', 1, 'VINIL CORTE', 'VINIL NEGRO'),
(898, 17, 1, 'LONA IMPRESION DIGITAL .70 X 1.00 MTS', '56.00', 1, '56.00', '2018-04-02 16:33:48', 1, '', 'SID'),
(899, 17, 1, 'EXPODEMO 3.00 X 2.25 INCLUYE LONA IMPRESION DIGITAL HD', '4600.00', 1, '4600.00', '2018-04-04 14:10:27', 1, '', 'HD'),
(900, 17, 1, 'PORTABANNER 20 X 47 CON LONA IMPRESION DIGITAL', '150.00', 1, '150.00', '2018-04-04 14:10:27', 1, '', 'HD'),
(901, 17, 1, 'PORTABANNER 1.60 X .60 CON LONA IMPRESION DIGITAL', '550.00', 1, '550.00', '2018-04-04 14:10:27', 1, '', 'HD'),
(906, 14, 1, 'IMPRESION TAMAÑO CARTA SELECCION COLOR AMBOS LADOS EN CARTULINA COUCHE DE 250 GRAMOS', '1.70', 2000, '3400.00', '2018-04-04 14:15:31', 1, '', 'SEL COLOR'),
(907, 15, 1, 'TERMO NYUK COLOR AZUL', '89.50', 20, '1790.00', '2018-04-04 14:35:13', 1, 'TMPS 42', 'BLANCA'),
(908, 14, 1, 'SOBRE   TAMAÑO  OFICIO EN  PAPEL  BOND   CON  IMPRERSION A SELECCION  DE   COLOR ', '0.95', 10000, '9500.00', '2018-04-04 15:38:46', 1, 'sobre  tamaño  oficio ', 'seleccion  de color '),
(909, 14, 1, 'HOJA  MEMBRETADA   TAMAÑO  CARTA    IMPRESA  A SELECCION  DE  COLOR  EN PAPEL BOND  DE 90 GRAS', '0.55', 10000, '5500.00', '2018-04-04 15:38:46', 1, 'tamaño carta ', 'seleccion  de  color '),
(910, 17, 1, 'LONA IMPRESION DIGITAL 1.40 X 1.00', '112.00', 1, '112.00', '2018-04-04 17:11:06', 1, '', 'SID'),
(911, 14, 1, 'VALES AMARILLOS IMPRESOS A 1 TINTA EN PAPEL SEGURIDAD TAMAÑO 1/4 CARTA', '0.30', 3000, '900.00', '2018-04-04 18:10:28', 1, '', 'AZUL '),
(912, 14, 1, 'HOJAS MEMBRETADAS  TAMAÑO CARTA ', '0.55', 1000, '550.00', '2018-04-04 18:20:31', 1, '', 'AZUL'),
(913, 17, 1, 'TROVICEL 30 X 8 CON PESTAÑA LOGO TRANSPAIS', '99.00', 1, '99.00', '2018-04-04 23:07:34', 1, '', 'HD'),
(914, 17, 1, 'TROVICEL 50 X 30 CM CON PESTAÑA (HORARIOS)', '99.00', 2, '198.00', '2018-04-04 23:07:34', 1, '', 'HD'),
(915, 17, 1, 'TROVICEL 50 X 30 CM CON PESTAÑA (TARIFAS Y DESTINOS)', '99.00', 2, '198.00', '2018-04-04 23:07:34', 1, '', 'HD'),
(916, 17, 1, 'TROVICEL 50 X 30 CM CON PESTAÑA (UNIDADES)', '99.00', 2, '198.00', '2018-04-04 23:07:34', 1, '', 'HD'),
(917, 14, 1, 'IMPRESIONES TAMAÑO CARTA\n6 PZ SALA VIP\n3 PZ HORARIO 1\n3 PZ HORARIO 2\n3 PZ HORARIO 3', '7.00', 12, '84.00', '2018-04-04 23:07:34', 1, '', 'LASER'),
(918, 14, 1, 'FORMATOS ORDEN DE TRABAJO', '0.24', 10000, '2400.00', '2018-04-04 23:11:35', 1, '', 'NEGRA'),
(919, 14, 1, 'FORMATO DE ORDEN DE TRABAJO', '0.36', 2000, '720.00', '2018-03-08 17:46:38', 1, '', 'NEGRA'),
(920, 17, 1, 'TOTEMS CODIGO DE CONDUCTA 1.80 X 1.50', '1300.00', 4, '5200.00', '2018-04-04 23:31:27', 1, '', 'HD'),
(921, 17, 1, 'ACRILICO 3MM CON VINIL HD TRANSPARENTE CON FONDO BLANCO MEDIDA 45 X 35 CM', '400.00', 1, '400.00', '2018-04-04 23:31:27', 1, '', 'HD'),
(922, 15, 1, '1 LIBRO ENCUADERNADO T/OFICIO IMPRESO EN FRENTE Y EN LOMO , PASTA DURA PERCALINA AZUL IMPR. TINTA PLATA OJO :  SERA COCIDO NO SOLO PEGADO Y USAR RESISTOL BLANCO .', '525.00', 1, '525.00', '2018-04-04 23:33:32', 1, 'ENCUADERNADO', 'PLATA'),
(923, 16, 1, 'CAMISAS SIN BORDADO', '199.00', 4, '796.00', '2018-04-04 23:46:18', 1, '', 'SIN BORDA'),
(924, 16, 1, 'PANTALONES PARA CABALLERO', '270.00', 4, '1080.00', '2018-04-04 23:46:18', 1, '', ''),
(925, 15, 1, '4 LIBROS ENCUADERNADOS T/OFICIO IMPRESOS AL FRENTE Y EN LOS LOMOS ,PASTAS DURAS PERCALINA NEGRA IMPR. TINTA PLATA SERAN COCIDOS NO SOLO PEGADOS ...USAR RESISTOL BLANCO', '525.00', 4, '2100.00', '2018-04-05 00:00:04', 1, 'ENCUADERNADO', 'PLATA'),
(926, 16, 1, 'BORDADO EN PLAYERA LOGO UAT', '0.00', 1, '0.00', '2018-04-05 00:18:37', 1, '', ''),
(927, 16, 1, 'BORDADOS EN PLAYERAS LOGO HERMILO', '0.00', 3, '0.00', '2018-04-05 00:18:37', 1, '', ''),
(928, 16, 1, 'BORDADOS EN BATAS LOGO CLINICA PROVIDENCIA', '0.00', 3, '0.00', '2018-04-05 00:18:37', 1, '', ''),
(929, 17, 1, 'CALCAS VINIL HD', '4.32', 500, '2160.00', '2018-04-05 13:35:06', 1, '', 'HD'),
(930, 14, 1, 'HOJAS POST Y PRE OPERATORIAS IMPRESAS SELECCION COLOR AMBOS LAODS', '1.00', 4000, '4000.00', '2018-04-05 16:12:57', 1, '', 'SEL '),
(931, 17, 1, 'SELLO DE MADERA LOGO HOSPITAL Y MANTENIMIENTO 2.5 X 4 CM', '150.00', 1, '150.00', '2018-04-05 16:18:10', 1, '', ''),
(932, 17, 1, 'SELLO DE MADERA 2.5 X 4 CM LOGO HOSPITAL', '180.00', 1, '180.00', '2018-04-05 16:18:10', 1, '', ''),
(933, 17, 1, 'SELLO DE MADERA 1.50 X 2.5, LOGO HOPSITAL', '150.00', 6, '900.00', '2018-04-05 16:18:10', 1, '', ''),
(934, 14, 1, 'TRIPTICOS TAMAÑO ESPECIAL IMPRESOS AMBOS LADOS COUCHE DE 130 GRAMOS', '0.00', 5000, '0.00', '2018-03-27 16:41:40', 1, '', 'SEL COLOR'),
(935, 14, 1, 'INVITACIONES TAMAÑO 1/2 CARTA IMPRESION A COLOR POR 1 SOLO LADO EN PAPEL CARTULINA OPALINA COLOR BLANCA', '10.00', 25, '250.00', '2018-04-05 16:32:39', 1, '', ' COLOR'),
(936, 14, 1, 'TARJETAS DE INVITADO ESPECIAL CONCIERTO XV1X ANIVERSARIO RONDALLA DEL HOSPITAL GENERAL TAMAÑO 9 X 5 CM\nIMPRESION A 1 TINTA EN PAPEL CARTULINA OPALINA BLANCA', '1.80', 100, '180.00', '2018-04-05 16:40:16', 1, '', 'NEGRA'),
(937, 14, 1, 'IMPRESION  DE   VOLANTES  DE 1/2  CARTA  A SELECCION   DE COLOR  EN PAPEL  COUCHE  DE  130  GRS.', '0.35', 10000, '3500.00', '2018-04-05 18:01:36', 1, 'PAPEL  COUCHE DE 130 GRS. ', 'SELECCION  DE COLOR '),
(938, 17, 1, 'BANDERAS LOGO PRI 72 X 50 CM CON ASTA DE MADERA', '90.00', 60, '5400.00', '2018-04-05 18:02:40', 1, '', 'HD'),
(939, 17, 1, '30 JUEGOS DE CALCAS PARA CAMIONETA EN VINIL HD CON LOGOS OFICIALES \n\n6 CALCAS PARA CAMIONETA EN  VINIL HD PEGADO EN IMAN  CON LOGOS  OFICIALES ', '3510.00', 1, '3510.00', '2018-04-05 18:44:22', 1, '', 'SELECCION  DE  COLOR '),
(940, 16, 1, 'PLAYERA TIPO POLO MAXIMA DEPORTIVA EN COLOR NEGRA CON LOGO BORDADO EL TUCAN PECHO IZQ. Y LOGO HOTEL LAS FUENTES EN LA ESPALDA IMPRESION EN SERIGRAFIA A UNA TINTA GRIS', '185.00', 39, '7215.00', '2018-04-05 21:51:40', 1, '', 'GRIS'),
(941, 16, 1, 'BORDADOS EN CAMISAS LOGO GUTI', '0.00', 11, '0.00', '2018-04-05 22:49:55', 1, '', ''),
(942, NULL, 1, 'LONA IMPRESA A COLOR MEDIDA : 2.60 X 3.30 MTS. CON BASTILLA Y OJILLOS \" BIENVENIDO DR. VALLEJO \"', '900.00', 1, '900.00', '2018-04-05 23:31:28', 1, 'LONA', 'A COLOR'),
(943, 17, 1, '1 LONA MEDIDA: 2.70 X 3.30 MTS. CON BASTILLA Y OJILLOS \" BIENVENIDOS CONSEJISTAS \"', '900.00', 1, '900.00', '2018-04-05 23:31:28', 1, 'LONA ', 'A COLOR'),
(944, 14, 1, 'FORMATO DE APOYO SELECCION COLOR AMBOS LADOS', '0.00', 250000, '0.00', '2018-04-06 13:44:43', 1, '', 'SEL COLOR '),
(945, 19, 1, '', '189.65', 1, '189.65', '2018-04-06 15:40:39', 1, '', ''),
(946, 14, 1, 'TARJETAS DE PRESENTACION A COLOR AMBOS LADOS', '2.50', 200, '500.00', '2018-04-02 17:24:05', 1, '', 'LASER'),
(947, 14, 1, 'SOBRES TIPO BOLSA TAMAÑO CARTA ', '1.50', 500, '750.00', '2018-04-06 16:06:37', 1, '', 'NEGRO Y VINO'),
(948, 17, 1, 'VINILES IMPRESION DIGITAL HD 1.80 X 1.00', '250.00', 30, '7500.00', '2018-04-06 16:11:28', 1, '', 'HD'),
(949, 16, 1, 'GORRA TIPO SANDWICH CON LOGO DIF TAM BORDADO', '65.00', 20, '1300.00', '2018-04-06 17:17:01', 1, 'GSP 002', 'BORDADO'),
(950, 15, 1, 'CILINDRO MILO  IMPRESO 1 TINTA', '120.00', 20, '2400.00', '2018-04-06 17:17:01', 1, 'ANF 010', 'BLANCA'),
(951, 16, 1, 'MOCHILA NEVERI CON LOGO DIF TAM BORDADO ', '265.00', 20, '5300.00', '2018-04-06 17:17:01', 1, 'SIN 149', 'BORDADO'),
(952, 15, 1, 'PLAYERA  NEGRA  CUELLO  REDONDO \n\nDAMA\n\nCHICA 1\nNEDIANA  5\nGRANDE 7\nXL            3\n\nCABALLERO\nCHICA                 1\nMEDIANA            3\nGRANDE            8 \nXL                       4\n3XL                     1\n2XL                     2', '64.00', 35, '2240.00', '2018-04-06 17:22:34', 1, 'PLAYERA   NEGRA   CUELLO  REDONDO ', 'VINIL TEXTIL    EN CORTE    COLOR   BLANCO '),
(953, 14, 1, 'HOJAS MEMBRETADAS CARTA PAPEL FACIA BOND BLANCO !! ', '0.70', 2000, '1400.00', '2018-04-06 17:49:29', 1, 'HOJA MEMBRETADA', 'AZUL PANTONE 2935 Y GRIS'),
(954, 15, 1, 'MOCHILA ANSHAR AZUL', '68.15', 50, '3407.50', '2018-03-16 17:36:59', 1, 'SIN 933', 'BLANCA'),
(957, 20, 1, '', '120.69', 4, '482.76', '2018-04-06 18:35:04', 1, '', ''),
(958, 14, 1, 'SEMANARIO T/ OFICIO IMPRESO AMBOS LADOS A COLOR 1 SUAJE VERTICAL PARA CORTE PAPEL OPALINA BLANCO', '1.42', 5000, '7100.00', '2018-04-06 19:02:03', 1, 'SEMANARIO', 'SELECCION COLOR'),
(959, 14, 1, 'VOLANTES   1/4 DE CARTA   IMPRESO   POR LADO Y LADO VERTICAL LAMINADO POR AMBOS LADOS.  IMPRESO A SELECION DE COLOR    EN PAPEL  COUCHE 130 GRS.  ', '0.49', 4000, '1960.00', '2018-04-06 19:42:11', 1, NULL, NULL),
(960, 14, 1, '500 NOTAS DE VENTA 1/4 CARTA AUTOCOPIA FOLIO 001 AL 500  ', '1.20', 500, '600.00', '2018-04-06 20:31:16', 1, 'NOTA DE VENTA', 'NEGRA'),
(962, 14, 1, 'TRIPTICOS  A SELECCION  DE  COLOR  EN  PAPEL  COUCHE  DE 130 GRS.\n\nSERVICIOS TECNOLOGICOS DE LA UPV', '1.95', 1000, '1950.00', '2018-04-06 21:14:51', 1, NULL, NULL),
(963, 14, 1, 'TRIPTICOS   IMPRESO EN PAPEL  COUCHE  DE 130 GRAS-   \n\nMAESTRIAS DE  ENERGIA RENOVABLE ', '1.95', 1000, '1950.00', '2018-04-06 21:14:51', 1, NULL, NULL),
(964, 17, 1, 'BANNER    PROMOCIONAL  DE MAESTRIAS  DE   ENERGIA  RENOBABLE     1.60  X .60', '144.00', 2, '288.00', '2018-04-06 21:14:51', 1, '', ''),
(965, 14, 1, 'TRIPTICOS A SELECION  DE COLOR   EN  PAPEL  COCUHE DE 130 GRS.   \n\nDIPLOMADO EN CALIDAD Y  AHORRO  DE  DE ENERGIA ', '1.95', 1000, '1950.00', '2018-04-06 21:14:51', 1, NULL, NULL),
(966, 16, 1, 'MAQUILA  DE BORDADO DE CARITA  FELIZ ', '30.00', 30, '900.00', '2018-04-06 22:10:50', 1, '', 'BORDADO '),
(967, 20, 1, '', '120.69', 1, '120.69', '2018-04-06 22:32:04', 1, '', ''),
(968, 15, 1, 'BOLSA MORAB EN COLOR BLANCA SIN 175 CON IMPRESION A 1 TINTA', '30.00', 40, '1200.00', '2018-04-06 22:39:18', 1, '', 'DORADO'),
(969, 16, 1, 'BLUSA  MANGA  LARGA  MARCA    DACACHE    CON 1 LOGO  BORDADO   (  PAN   )  ', '327.50', 1, '327.50', '2018-04-06 22:45:40', 1, '', 'BORDADO '),
(971, 16, 1, 'GORRAS GABARDINA COLOR NEGRO LOGO BORDADO ', '59.00', 2, '118.00', '2018-04-06 23:10:17', 1, 'GSP 002', 'BORDADO'),
(972, 15, 1, 'BOLIGRAFO ACRUX IMPRESA 1 TINTA', '60.00', 5, '300.00', '2018-04-06 23:10:17', 1, 'SH 1370', 'NARANJA'),
(973, 15, 1, 'HIELERA TWO SIX COLOR NEGRA IMPRESA 1 TINTA', '125.00', 10, '1250.00', '2018-04-06 23:10:17', 1, 'SIN 007', 'BLANCA'),
(974, 15, 1, 'PARGUAS CON FUNDA NARANJA', '99.00', 4, '396.00', '2018-04-06 23:10:17', 1, 'PAR 01', 'BLANCA'),
(975, 15, 1, 'THERMO AREUSE GRIS OBSCURO', '105.00', 3, '315.00', '2018-04-06 23:10:17', 1, 'TMPS 47', 'BLANCA'),
(976, 16, 1, 'MOCHILA CAMBRIDGE CON LOGO BORDADO', '210.00', 20, '4200.00', '2018-04-06 23:10:17', 1, 'SIN 159', 'BORDADO'),
(977, 15, 1, 'CILINDRO MOLTON NEGRO', '103.00', 21, '2163.00', '2018-04-06 23:10:17', 1, 'TMPS 60', 'BLANCA'),
(978, 15, 1, 'RELOJ TIME CUBE', '230.00', 9, '2070.00', '2018-04-06 23:10:17', 1, 'MK 120', 'NARANJA'),
(979, 15, 1, 'TERMO ALLALIN PLATA', '190.00', 10, '1900.00', '2018-04-06 23:10:17', 1, 'TMPS 49', 'NEGRA'),
(980, 15, 1, 'TAZA CON CUCHARA NARANJA', '53.00', 36, '1908.00', '2018-04-06 23:10:17', 1, 'TAC 11', 'BLANCA'),
(981, 15, 1, 'TERMO DUBLIN PLATA', '260.00', 10, '2600.00', '2018-04-06 23:10:17', 1, 'TMPS 15', 'NEGRA'),
(982, 15, 1, 'SET BBQ CON RESINA', '299.00', 11, '3289.00', '2018-04-06 23:10:17', 1, 'BBQ 003', 'RESINA'),
(983, 15, 1, 'PINZAS YAVIA', '185.00', 18, '3330.00', '2018-04-06 23:10:17', 1, 'HER 018', 'NEGRA'),
(984, 15, 1, 'KIT TURBO NAVAJA ', '160.00', 13, '2080.00', '2018-04-06 23:10:17', 1, 'HER 35 18', 'NEGRA'),
(985, 15, 1, 'SET DE HERRAMIENTAS AUTHIE', '155.00', 20, '3100.00', '2018-04-06 23:10:17', 1, 'HER 023', 'BLANCA'),
(986, 16, 1, 'MALETA MORGAN LOGO BORDADO', '165.00', 18, '2970.00', '2018-04-06 23:10:17', 1, 'SIN 503', 'blanca'),
(987, 15, 1, 'ANFORA SEPIK NEGRA', '85.00', 31, '2635.00', '2018-04-06 23:10:17', 1, 'ANF 029', 'BLANCA'),
(988, 15, 1, 'ANFORA LAKE NARANJA', '25.00', 41, '1025.00', '2018-04-06 23:10:17', 1, 'ANF 006', 'BLANCA'),
(989, 14, 1, 'AVISO DE RECURSOS HUMANOS IMPRESION A 1 TINTA', '1.70', 2000, '3400.00', '2018-04-06 23:18:49', 1, '', 'NEGRA'),
(990, 14, 1, 'REGISTRO DE ORDENES ENTREGADAS A SHIPPIN IMPRESION POR AMBOS LADOS A 1 TINTA', '0.90', 2000, '1800.00', '2018-04-06 23:26:04', 1, '', 'NEGRA'),
(991, 14, 1, 'FORMATO SANI IMPRESION POR AMBOS LADOS A 1 TINTA', '0.50', 2000, '1000.00', '2018-04-06 23:56:58', 1, '', 'NEGRA'),
(992, 21, 1, '', '150.87', 6, '905.22', '2018-04-07 00:48:33', 1, '', ''),
(993, 17, 1, 'NUMEROS PARA CARRERA EN TELA TELIXCOM COLOR AZUL REY CON 4 SEGUROS CADA UNO', '9.50', 800, '7600.00', '2018-04-07 14:48:18', 1, '', 'BLANCA'),
(994, NULL, 1, 'MEDALLAS GENERICAS CON GOTA DE RESINA POR AMBOS LADOS ,CON LOGO TAM A COLOR Y LOGO INDE EN COLOR PLATA', '120.00', 33, '3960.00', '2018-04-07 14:48:18', 1, '', ''),
(995, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.50 X 2.00 MTS\nBASTILLA Y OJILLOS EN LAS ESQUINAS', '490.00', 1, '490.00', '2018-04-07 15:35:13', 1, '', 'SID'),
(996, 16, 1, '2   LOGOS   BORDADOS\n\nLADO  IZQUIERDO                LADO  DERECHO\n  PRI \nCASAS                       LIC. MIRNA E. SANCHEZ LOPEZ \n', '40.00', 2, '80.00', '2018-04-07 15:47:04', 1, '', 'BORDADO'),
(999, 17, 1, 'LONA IMPRESION DIGITAL 3.08 X 2.55 M CON SOBRANTE (MATRIZ)', '1100.00', 1, '1100.00', '2018-02-26 22:42:38', 1, '', ''),
(1004, 14, 1, 'BOLETOS DE RIFA', '3.44', 100, '344.00', '2018-04-07 16:56:52', 1, '', 'LASER'),
(1005, 20, 1, '', '120.69', 4, '482.76', '2018-04-07 17:55:46', 1, '', ''),
(1006, 14, 1, 'POSTER IMPRESOS A COLOR', '15.00', 5, '75.00', '2018-04-07 17:58:27', 1, '', 'LASER'),
(1007, 22, 1, '', '100.00', 5, '500.00', '2018-03-09 17:56:00', 1, '', ''),
(1008, 16, 1, 'BORDADO DE PLAYERAS', '30.00', 4, '120.00', '2018-04-07 19:02:22', 1, '', 'BORDADO'),
(1009, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 5.50 X 3.00 MTS BASTILLA Y OJILLOS', '1980.00', 1, '1980.00', '2018-04-09 14:25:39', 1, '', 'SID'),
(1010, 17, 1, 'BANDERAS CON ASTA DE MADERA', '99.00', 30, '2970.00', '2018-04-09 14:25:39', 1, '', 'SID'),
(1011, 17, 1, 'LONA .60 X 1.60 BASTILLA Y OJILLOS', '75.00', 4, '300.00', '2018-04-09 14:28:47', 1, '', 'SID'),
(1012, 17, 1, 'VINIL HD IMPRESION DIGITAL MEDIDA .63 X .25 M', '250.00', 1, '250.00', '2018-04-09 15:29:31', 1, NULL, NULL),
(1013, 17, 1, 'VINIL HD IMPRESION DIGITAL MEDIDA 2.26 X .36 MTS', '450.00', 1, '450.00', '2018-04-09 15:29:31', 1, NULL, NULL),
(1014, 14, 1, 'TRIPTICOS SELECCION COLOR AMBOS LADOS EN COUCHE DE 130 GRAMOS, ACABADO DOBLADO', '1.55', 5000, '7750.00', '2018-04-09 15:44:20', 1, '', 'COLOR'),
(1016, 17, 1, 'LONA IMPRESION DIGITAL DE 13 ONZAS MEDIDA 3.88 X 2.72 METROS', '1200.00', 2, '2400.00', '2018-04-09 17:35:05', 1, '', ''),
(1017, NULL, 1, 'RENTA DE PUBLICIDAD POR 6 DIAS Y 4 HORAS FIJAS Y 4 HORAS MOVILES  INCLUYE FOTOS Y VIDEO DEL RECORRIDO', '5100.00', 1, '5100.00', '2018-04-09 17:35:05', 1, '', ''),
(1018, 17, 1, 'LONA A COLOR MED : 5 X 6 MTS. BIENVENIDO DR. VALLEJO CON BASTILLA Y OJILLOS  !', '3000.00', 1, '3000.00', '2018-04-09 17:53:05', 1, 'LONAS', 'A COLOR'),
(1019, 14, 1, 'FOLLETO IMPRESO SELECCION COLOR AMBOS LADOS 4 PAGINAS', '1.00', 20000, '20000.00', '2018-03-05 20:52:07', 1, '', 'SELECCION COLOR '),
(1020, 15, 1, 'BOLSAS CAFES IMPRESAS UNA CARA 1 TINTA MEDIDA DE LA BOLASA : 29.5 X  31 CM.', '1.00', 500, '500.00', '2018-04-09 18:28:08', 1, 'BOLSA', 'CAFE OSCURO DE MOSTACHON'),
(1021, 17, 1, 'LONA IMPRESION DIGITAL 1.50 X 13 MTS (MANTE) BASTILLA Y OJILLOS', '1950.00', 1, '1950.00', '2018-02-28 15:22:22', 1, '', ''),
(1022, 17, 1, 'LONA IMPRESION DIGITAL 2.68 X 4.00 MTS (VALLES) CON SOLAPA PARA MADERA ARRIBA Y ABAJO.', '1050.00', 2, '2100.00', '2018-02-28 15:22:22', 1, '', ''),
(1023, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.80 X 10 MTS (MATAMOROS) BASTILLA Y OJILLOS.', '1800.00', 1, '1800.00', '2018-02-28 15:22:22', 1, '', ''),
(1024, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 1.80 X 3.50 (CARRERA) SOLAPA ARRIBA Y ABAJO PARA MADERA', '750.00', 2, '1500.00', '2018-02-28 15:22:22', 1, '', ''),
(1026, 14, 1, '3000 TRIPTICOS IMPRESOS A SELECCION A COLOR  TERMINACION FINAL TAMAÑO OFICIO EN PAPEL COUCHE DE 130 GRAMOS BRILLANTE', '2600.00', 1, '2600.00', '2018-04-09 22:08:26', 1, '', 'SEL.COLOR'),
(1027, 19, 1, '', '189.65', 1, '189.65', '2018-04-09 22:23:33', 1, '', ''),
(1028, 16, 1, 'BORDADOS EN CHALECOS LOGO GEM', '0.00', 10, '0.00', '2018-04-09 22:30:31', 1, '', 'HILO BLANCO'),
(1029, 16, 1, 'BORDADOS EN MANTELES AZULES LOGO CLINICA PROVIDENCIA', '0.00', 15, '0.00', '2018-04-09 22:30:31', 1, '', ''),
(1030, 16, 1, 'BORDADOS EN CHALECOS LOGO TAM', '0.00', 8, '0.00', '2018-04-09 22:30:31', 1, '', ''),
(1031, 17, 1, 'LONAS 3.0 X 2.50 MTS CON BASTILLA Y OJILLOS', '500.00', 2, '1000.00', '2018-04-09 22:33:25', 1, '', 'SID'),
(1032, 14, 1, 'TARJETAS DE PRESENTACION SELECCIÓN COLOR 1 LADO  ', '1.30', 1000, '1300.00', '2018-03-12 15:19:16', 1, '', 'SEL. COLOR'),
(1033, 14, 1, 'IMPRESION DOBLE CARTA SELECCION COLOR 1 LADO....DISEÑO DE UN DR. TRAMAUTOLOGO.', '0.00', 500, '0.00', '2018-04-10 16:06:12', 1, '', 'SEL COLOR'),
(1034, 14, 1, 'TARJETAS DE PRESENTACION IMPRESAS 1 LADO', '1.50', 200, '300.00', '2018-04-10 16:10:48', 1, '', 'LASER'),
(1035, 14, 1, 'MENUS 14 X 21 CM SELECCION COLOR AMBOS LADOS.\nMISMO DISEÑO.', '14.00', 100, '1400.00', '2018-04-10 16:14:26', 1, '', 'SEL COLOR'),
(1036, 19, 1, '', '189.65', 1, '189.65', '2018-04-10 16:45:45', 1, '', ''),
(1037, 14, 1, 'CARPETAS SELECCION COLOR ', '0.00', 500, '0.00', '2018-04-10 17:30:24', 1, '', 'SEL COLOR'),
(1038, 17, 1, 'PERSONALIZADOS   DE PUERTAS \n\nIMPRESION  DE  VINIL  PEGADO  EN  TROVICEL ', '80.00', 2, '160.00', '2018-04-10 17:42:24', 1, '', 'SELECCION   DE  COLOR '),
(1039, 14, 1, 'IMPRESIONES DOBLE CARTA SELECCION COLOR AMBOS LADOS (2 PLIEGOS) 4X4 5,000 DE CADA PLIEGO', '0.00', 10000, '0.00', '2018-04-10 18:11:47', 1, '', 'SEL COLOR'),
(1040, 14, 1, 'ETIQUETAS BRISTOL VENTA REFRESCANTE 14 x 20 ', '0.60', 1000, '600.00', '2018-03-27 17:00:52', 1, '', 'SEL COLOR'),
(1041, NULL, 1, 'ETIQUETAS BRISTOL MUEBLE MANIA', '0.60', 1000, '600.00', '2018-04-10 18:58:30', 1, '', 'SEL COLOR'),
(1042, 14, 1, 'ETIQUETAS CON OJILLO METALICO 1CM SELECCION COLOR UN LADO, PLASTIFICADO MATE 1 LADO', '0.95', 8000, '7600.00', '2018-04-10 19:58:43', 1, '', 'SEL COLOR'),
(1043, 14, 1, 'CARPETAS SELECCION COLOR CON SOLAPA SIN PEGAR.', '5.40', 500, '2700.00', '2018-04-10 20:12:03', 1, '', 'SEL COLOR'),
(1044, 17, 1, 'MAMPARA 4 X 2 MTS CON BASTIDOR DE MADERA ', '5900.00', 1, '5900.00', '2018-04-10 20:13:43', 1, '', 'SID'),
(1045, 14, 1, 'POSTER SELECCION COLOR TAMAÑO DOBLE CARTA IMPRESOS EN PAPEL COUCHE DE 130 GRAMOS ', '4.00', 400, '1600.00', '2018-04-10 22:01:38', 1, '', 'COLOR'),
(1046, 14, 1, 'TRIPTICOS IMPRESOS A SELECCION COLOR TAMAÑO CARTA EN PAPEL COUCHE DE 250 GRAMOS', '7.50', 200, '1500.00', '2018-04-10 22:09:28', 1, '', 'COLOR'),
(1047, 21, 1, '', '150.87', 4, '603.48', '2018-04-10 22:22:54', 1, '', ''),
(1048, 14, 1, 'TRIPTICOS IMPRESION A SELECCION COLOR POR AMBOS LADOS MEDIDA FINAL CARTA EN PAPEL COUCHE DE 150 GRAMOS BRILLANTE', '1.40', 1000, '1400.00', '2018-04-10 22:24:37', 1, '', 'COLOR'),
(1049, 14, 1, 'DIPTICOS IMPRESOS SELECCION COLOR AMBOS LADOS ', '2.10', 1000, '2100.00', '2018-04-10 22:32:18', 1, '', 'SEL COLOR'),
(1050, 14, 1, 'VOLANTE IMPRESOS SELECCION COLOR ', '0.55', 2000, '1100.00', '2018-04-10 22:37:03', 1, '', 'SEL COLOR'),
(1051, NULL, 1, 'TRIPTICOS SELECCION COLOR MEDIDA OFICIO COUCHE DE 130 GRAMOS CON BRANIZ UV BRILLANTE', '1.80', 1000, '1800.00', '2018-04-10 22:49:27', 1, '', ''),
(1053, 17, 1, 'LONAS IMPRESIÓN DIGITAL 11.0 X 3.60 MTS CON INSTALACION EN ESPECTACULAR', '5700.00', 2, '11400.00', '2018-04-10 23:32:21', 1, '', 'SID'),
(1054, 14, 1, 'VOLANTES EXPORTACION ESPECIAL 13 % MOSTAZA', '0.20', 10000, '2000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'MOZTAZA'),
(1056, 14, 1, 'VOLANTES EXPOSICION 20 % AZUL', '0.20', 5000, '1000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'AZUL'),
(1059, 14, 1, 'VOLANTES PASTOREO GANADO 14 % GUINDA', '0.20', 10000, '2000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'GUINDA'),
(1061, 14, 1, 'VOLANTES ENGORDA DE CORRAL 14 % CAFE', '0.20', 5000, '1000.00', '2018-03-15 01:28:57', 1, 'VOLANTES', 'CAFE'),
(1063, 15, 1, 'PLAYERAS CUELLO REDONDO VERDE LIMA IMPRESAS FRENTE.', '40.00', 300, '12000.00', '2018-04-10 23:58:52', 1, '', 'VERDE B, ROJO, BLANCO'),
(1064, 16, 1, 'PLAYERAS TIPO POLO YAZBEK VERDE LIMA CON LOGO BORDADO', '75.00', 40, '3000.00', '2018-04-11 00:20:20', 1, '', 'BORDADO'),
(1065, 17, 1, 'TROVISEL CON VINIL HD IMPRESO MEDIDA CARTA', '25.00', 150, '3750.00', '2018-04-11 00:24:25', 1, '', 'HD'),
(1066, 17, 1, 'TROVISEL CON VINIL HD MEDIDA 60 X 30 CM', '75.00', 58, '4350.00', '2018-04-11 00:24:25', 1, '', 'HD'),
(1067, 17, 1, 'VINIL IMPRESO HD MEDIDA 50 CM DIAMETRO\nHORARIO MARTES A DOMINGO 1:00 P.M. A 6:00 PM', '100.00', 1, '100.00', '2018-04-11 00:24:25', 1, '', 'HD'),
(1068, 16, 1, 'PLAYERA TIPO POLO MAXIMA DEPORTIVA EN COLOR AZUL REY CON LOGO BORDADO TAMAÑO ESCUDO EN PECHO IZQ.', '140.00', 66, '9240.00', '2018-04-11 15:39:41', 1, '', ''),
(1069, 14, 1, 'CARPETAS SELECCION COLOR. \n10 COLORES DE FRANJA Y MISMAS SELECCION FRENTE, 1 TINTA REVERSO (NEGRO)', '3.00', 5000, '15000.00', '2018-04-11 16:09:50', 1, '', 'SEL COLOR.'),
(1070, 14, 1, 'CARNET DE CITAS MEDIA CARTA PORTADA SELECCION COLOR AMBOS LADOS, INTERIOR 1 TINTA AMBOS LADOS 3 DISEÑOS (NEGRO)', '1.80', 6000, '10800.00', '2018-04-11 16:14:28', 1, '', 'SEL COLOR Y NEGRO'),
(1071, 14, 1, 'IMPRESION   DE  TRIPTICOS   A SELECCION   DE  COLOR   EN PAPEL   COUCHE  DE  130 GRS. ', '1.20', 3600, '4320.00', '2018-04-11 16:19:51', 1, NULL, NULL),
(1072, 17, 1, 'CALCAS PAPEL', '20.00', 60, '1200.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1073, 17, 1, 'CALCAS PLASTICO', '20.00', 60, '1200.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1074, 17, 1, 'CALCAS CARTON', '20.00', 40, '800.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1075, 17, 1, 'CALCAS GUANTES ALGODON', '20.00', 4, '80.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1076, 17, 1, 'CALCAS SERVILLETAS CON POLVO', '20.00', 4, '80.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1077, 17, 1, 'CALCAS PLASTICO REELERS', '20.00', 16, '320.00', '2018-04-11 17:30:08', 1, '', 'HD'),
(1078, 16, 1, 'PLAYERAS TIPO POLO VERDE LIMA CON LOGO RED TAMAULIPECA CIUDADANA', '75.00', 70, '5250.00', '2018-04-11 17:35:02', 1, '', 'BORDADO'),
(1079, 17, 1, 'PLAYERAS DRIFYT COLOR TURQUESA CON NOMBRE Y NUMERO EN LA ESPALDA COLOR NEGRO (VINIL TEXTIL)', '160.00', 12, '1920.00', '2018-04-11 17:55:09', 1, '', 'VINIL TEXTIL NEGRO'),
(1080, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA .60 X 1.95 BASTILLA Y OJILLOS', '95.00', 1, '95.00', '2018-04-11 18:12:31', 1, '', 'SID'),
(1081, 17, 1, 'VINIL MICROPERFORADO 1.23 X .82', '180.00', 1, '180.00', '2018-04-11 18:12:31', 1, '', 'HD'),
(1082, 17, 1, 'VINIL MICROPERFORADO .71 X .57', '90.00', 1, '90.00', '2018-04-11 18:12:31', 1, '', 'HD'),
(1083, 17, 1, 'VINIL MICROPERFORADO MEDIDA .46 X .57', '60.00', 1, '60.00', '2018-04-11 18:12:31', 1, '', 'HD'),
(1084, 14, 1, 'POSTER DOBLE OFICIO CARTULINA COUCHE 300 GRMS.', '15.00', 100, '1500.00', '2018-04-11 18:18:00', 1, 'POSTER', 'A COLOR'),
(1085, 17, 1, 'Pendón  1.80 mts x 0.80 mts, con bastilla  y  ojillos ', '220.00', 4, '880.00', '2018-04-11 18:33:06', 1, NULL, NULL),
(1086, 14, 1, 'IMPRESION   DE  FORMATO    (  NOMINA  )  \n\nIMPRESO   EN PAPEL  OPALINA   A  SELECCION   DE  COLOR   TAMAÑO  CARTA ', '1.40', 3000, '4200.00', '2018-04-11 18:36:50', 1, NULL, NULL),
(1087, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 5.30 X 2.00 CON SOBRANTE', '750.00', 1, '750.00', '2018-04-11 18:37:09', 1, '', 'SID'),
(1088, 17, 1, 'PENDONES IMPRESION DIGITAL MEDIDA 3 X 1 MTS', '499.00', 16, '7984.00', '2018-04-11 18:57:01', 1, '', 'SID'),
(1089, 17, 1, 'MAMPARA 5.50 X 2.40 MTS CON BASTIDOR DE MADERA Y PATAS A 60 CM', '6900.00', 1, '6900.00', '2018-04-11 19:03:04', 1, '', 'SID'),
(1090, 17, 1, 'MAMPARA 4 X 2.50 MTS CON BASTIDOR DE MADERA\nCON PATAS 60 CM', '4900.00', 4, '19600.00', '2018-04-11 19:03:04', 1, '', 'SID'),
(1091, 20, 1, '', '120.69', 8, '965.52', '2018-04-11 20:47:42', 1, '', ''),
(1092, 14, 1, 'MANTELETAS 2,500 DE CADA DISEÑO', '1.92', 5000, '9600.00', '2018-04-11 22:29:21', 1, '', 'SELECCION COLOR'),
(1093, 14, 1, 'FORMATO DE BITACORA IMPRESAS 1 TINTA', '0.70', 1000, '700.00', '2018-04-11 22:39:56', 1, '', 'AZUL'),
(1094, 14, 1, 'FORMATO DE AUDITORIA IMPRESAS 1 TINTA', '0.90', 1000, '900.00', '2018-04-11 22:40:58', 1, '', 'NARANJA'),
(1095, 14, 1, 'VALE DE DESAYUNO IMPRESOS A 1 TINTA', '0.70', 4000, '2800.00', '2018-04-11 22:46:49', 1, '', 'AZUL'),
(1096, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 3.64 X 2.06 MTS CON SOBRANTE', '620.00', 1, '620.00', '2018-04-11 22:47:21', 1, '', 'SID'),
(1097, 17, 1, 'LONA IMPRESION DIGITAL MEDIDA 5.47 X 2.06 MTS CON SOBRANTE', '920.00', 1, '920.00', '2018-04-11 22:47:21', 1, '', 'SID'),
(1098, 14, 1, 'COMANDAS', '1.76', 600, '1056.00', '2018-04-11 22:56:17', 1, '', 'NEGRA'),
(1099, 14, 1, 'SOBRES PORTALLAVES CON LOGO', '1.58', 3000, '4740.00', '2018-04-11 23:08:04', 1, '', 'AZUL,NARANJA Y GRIS'),
(1100, 14, 1, 'FORMATO DE AMA DE LLAVES', '1.65', 500, '825.00', '2018-04-11 23:15:40', 1, '', 'NEGRA'),
(1101, 14, 1, 'HOJA TAMAÑO CARTA IMPRESA SELECCION COLOR, DISEÑO 1/4 DE CARTA (4 PZ EN CARTA)', '1.40', 2000, '2800.00', '2018-02-27 05:19:12', 1, '', 'SELECCION COLOR'),
(1102, 14, 1, 'ETIQUETAS TAMAÑO CARTA DISEÑO 1/6 DE CARTA', '1.40', 1000, '1400.00', '2018-02-27 05:16:59', 1, '', 'SELECCION COLOR'),
(1103, 14, 1, 'TRIPTICOS SELECCION COLOR \nPRESENTACION DE LA ESTRATEGIA FORMACION CONTINUA 2018', '1.80', 2000, '3600.00', '2018-04-11 23:32:44', 1, '', 'SEL'),
(1104, 14, 1, 'VOLANTES SELECCION COLOR MEDIA CARTA', '0.35', 40000, '14000.00', '2018-04-11 23:34:36', 1, '', 'SEL COLOR'),
(1105, 14, 1, 'CATALOGO DE MEGRACRED 4 PAGINAS ', '1.25', 3000, '3750.00', '2018-04-11 23:43:25', 1, '', 'SEL COLOR'),
(1106, 17, 1, 'BUZONES DE QUEJAS EN ACRILICO DE 6MM ROTULADO EN VINIL \nMEDIDA 35 X 20 CM DE FRENTE, 11 CM DE ANCHO', '1490.00', 24, '35760.00', '2018-04-11 23:58:05', 1, '', 'VINIL HD'),
(1107, 14, 1, 'VALES DE 50 IMPRESOS POR AMBOS LADOS', '0.18', 4000, '720.00', '2018-04-12 00:18:17', 1, '', 'VERDE'),
(1108, 17, 1, 'TOTEMS CODIGO DE CONDUCTA 1.80 X 1.50', '1300.00', 3, '3900.00', '2018-04-04 23:31:27', 1, '', 'HD'),
(1110, 16, 1, 'PLAYERAS TIPO POLO MAXIMA DEPORTIVA CON LOGO BORDADO PECHO IZQUIERDO MANCHU WOK', '155.00', 27, '4185.00', '2018-04-12 17:16:56', 1, '', 'BORDADO'),
(1111, 15, 1, 'PORTALAPTOP DANUVIO IMPRESO 1 TINTA', '190.00', 100, '19000.00', '2018-04-12 18:01:04', 1, 'SIN 136', 'BLANCA'),
(1112, 14, 1, 'ORDENES DE COMPRA TAMAÑO OFICIO EN PAPEL AUTOCOPIA CON 2 COPIAS ( ROSA Y AMARILLO) IMPRESION POR AMBOS LADOS A 1 TINTA CON PLECA  DE CORTE EN LA PARTE INFERIOR', '1.75', 5000, '8750.00', '2018-04-12 20:43:28', 1, '', 'NEGRA'),
(1113, 16, 1, 'BORDADOS EN PLAYERAS TIPO POLO LOGO MUBARQUI', '0.00', 18, '0.00', '2018-04-12 20:53:40', 1, '', ''),
(1114, 16, 1, 'BORDADOS EN PLAYERAS TIPO POLO LOGO BANDERA', '0.00', 18, '0.00', '2018-04-12 20:53:40', 1, '', ''),
(1115, 16, 1, 'BORDADO EN TOALLAS DE MANOS LOGO M Y M 2018', '15.00', 30, '450.00', '2018-04-12 22:20:30', 1, '', ''),
(1116, 14, 1, 'VOLANTES IMPRESOS A COLOR POR 1 LADO', '0.50', 2000, '1000.00', '2018-04-12 22:34:53', 1, '', 'COLOR'),
(1117, 17, 1, 'LONA IMPRESION DIGITAL 2.5 X 1.50 MTS', '300.00', 3, '900.00', '2018-04-13 14:19:39', 1, '', 'SID'),
(1118, 17, 1, 'LONAS 3 X 2 CON SOBRANTE', '700.00', 4, '2800.00', '2018-04-13 14:32:23', 1, '', 'SID'),
(1119, 17, 1, 'BASTILLAR Y OJILLOS EN LONA DE 2.5 X 3.00 MTS', '250.00', 7, '1750.00', '2018-04-13 15:47:56', 1, '', ''),
(1120, 17, 1, 'IMPRESION DIGITAL CON BASTIDOR DE MADERA MEDIDA 7.32 X 3.05 METROS\n \nEVENTO: PRIMERA FERIA AMBIENTAM', '8700.00', 1, '8700.00', '2018-04-13 16:13:44', 1, '', 'COLOR'),
(1121, 14, 1, 'RECIBOS', '0.70', 1000, '700.00', '2018-04-13 16:20:00', 1, '', 'MAGENTA'),
(1122, 16, 1, 'BLUSAS PARA DAMA EN COLOR BLANCO TALLAS CHICA MANGA LARGA CON 2 LOGOS BORDADOS MARCA DACACHE', '420.00', 2, '840.00', '2018-04-13 16:40:30', 1, '', ''),
(1123, 16, 1, 'BLUSAS PARA DAMA MANGA CORTA TALLAS CHICA EN COLOR BLANCA MARCA DACACHE CON 2 LOGOS BORDADOS', '420.00', 2, '840.00', '2018-04-13 16:40:30', 1, '', ''),
(1124, 16, 1, 'PLAYERA TIPO POLO MAXIMA DEPORTIVA  PARA DAMA TALLA MEDIANA EN COLOR AZUL REY CON 2 LOGOS BORDADOS', '200.00', 1, '200.00', '2018-04-13 16:40:30', 1, '', ''),
(1125, 17, 1, 'ELABORACION DE MAMPARA IMPRESION DIGITAL MEDIDA 3X2 CON BATIDOR DE MADERA', '3900.00', 2, '7800.00', '2018-04-13 17:07:44', 1, '', 'COLOR'),
(1126, 17, 1, 'MAMPARA IMPRESION DIGITAL CON BASTIDOR DE MADERA MEDIDA 7.32 X 3.05 METROS', '12500.00', 1, '12500.00', '2018-04-13 17:11:39', 1, '', 'COLOR'),
(1127, 17, 1, 'TARJETAS DE PRESENTACION IMPRESION SELECCION COLOR POR AMBOS LADOS MEDIDA 5X9 CM EN PAPEL CARTULINA OPALINA ', '3.00', 500, '1500.00', '2018-04-13 17:15:08', 1, '', 'SEL'),
(1128, 17, 1, 'ELABORACION DE PENDONES IMPRESION DIGITAL MEDIDA DE .80 X 1.80 METROS CON PORTAPENDON ', '690.00', 2, '1380.00', '2018-04-13 17:24:33', 1, '', 'COLOR '),
(1129, 14, 1, 'IMPRESION DE CONVOCATORIA MEDIDA OFICIOA SELECCION COLOR EN PAPEL COUCHE  DE 130 GRAMOS ', '1.80', 2500, '4500.00', '2018-04-13 17:28:42', 1, '', 'SEL COLOR '),
(1130, 16, 1, 'BLUSAS MANGA LARGA MARCA UNITAM CON 2 LOGOS BORDADOS EN COLOR BLANCA Y VERDE AQUA  DIFERENTES TALLAS', '275.00', 3, '825.00', '2018-04-13 17:31:13', 1, '', ''),
(1131, 17, 1, 'VINIL MICROPERFORADO IMPRESION DIGITAL MEDIDA 12.20 X 2.02 METROS', '11400.00', 1, '11400.00', '2018-04-13 17:36:43', 1, '', 'COLOR'),
(1132, 17, 1, 'VINIL MICROPRFORADO IMPRESION DIGITAL  MEDIDA 9.44 X 2.00 METROS', '9800.00', 1, '9800.00', '2018-04-13 17:36:43', 1, '', 'COLOR'),
(1133, 14, 1, 'VOLANTES IMPRESOS SELECCION COLOR AMBOS LADOS ', '0.95', 2000, '1900.00', '2018-04-13 17:40:04', 1, '', 'SEL '),
(1134, 17, 1, 'MAMPARA IMPRESION DIGITAL MEDIDA 4X1.50 METROS CON BASTIDOR DE MADERA ', '6000.00', 1, '6000.00', '2018-04-13 17:43:14', 1, '', 'HD'),
(1135, 17, 1, 'LONAS 2 X 1 IMPRESION DIGITAL', '160.00', 2, '320.00', '2018-04-13 17:44:00', 1, '', 'SID'),
(1136, 14, 1, 'CUADERNILLOS IMPRESOS A COLOR 31 HOJAS', '230.00', 70, '16100.00', '2018-04-13 18:11:04', 1, '', 'LASER'),
(1137, 16, 1, 'BORDADO DE LOGO TAMAÑO ESCUDO FRENTE Y ESPALDA EN CAMISAS Y BLUSAS', '39.00', 19, '741.00', '2018-04-13 18:26:31', 1, '', 'BORDADO'),
(1138, 16, 1, 'BORDADO DE GOTTOS', '15.00', 13, '195.00', '2018-04-13 18:26:31', 1, '', 'BORDADO'),
(1139, 16, 1, 'BORDADO DE MANDILES', '23.00', 24, '552.00', '2018-04-13 18:26:31', 1, '', 'BORDADO'),
(1140, 15, 1, 'THERMO TRAVEL IMPRESOS 1 TINTA', '69.00', 117, '8073.00', '2018-04-13 18:49:39', 1, 'TMPS 16', 'NEGRO'),
(1141, 14, 1, 'COMANDAS IMPRESAS A 1 TINTA ', '0.10', 12000, '1200.00', '2018-03-05 18:24:31', 1, '', 'NEGRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordentipo`
--

CREATE TABLE `ordentipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ordentipo`
--

INSERT INTO `ordentipo` (`id`, `nombre`) VALUES
(3, 'Bordados'),
(5, 'Maquila'),
(4, 'Offset'),
(2, 'Rótulos'),
(1, 'Serigrafía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_impresionopcion`
--

CREATE TABLE `orden_impresionopcion` (
  `id_orden` int(11) NOT NULL,
  `id_impresionopcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_impresionopcion`
--

INSERT INTO `orden_impresionopcion` (`id_orden`, `id_impresionopcion`) VALUES
(73, 1),
(73, 10),
(73, 11),
(73, 14),
(74, 1),
(74, 10),
(74, 14),
(75, 1),
(75, 10),
(75, 14),
(99, 1),
(99, 10),
(99, 14),
(101, 5),
(118, 1),
(118, 10),
(118, 11),
(118, 14),
(121, 1),
(121, 10),
(121, 11),
(121, 14),
(126, 1),
(130, 1),
(130, 10),
(130, 11),
(130, 14),
(135, 2),
(159, 2),
(159, 3),
(159, 10),
(159, 11),
(159, 14),
(170, 10),
(170, 11),
(170, 14),
(174, 7),
(180, 1),
(195, 1),
(196, 1),
(196, 10),
(196, 11),
(196, 14),
(197, 1),
(202, 1),
(202, 10),
(202, 14),
(215, 5),
(232, 10),
(232, 14),
(235, 1),
(235, 10),
(235, 14),
(240, 10),
(240, 14),
(241, 10),
(241, 14),
(242, 10),
(242, 14),
(243, 10),
(243, 14),
(252, 1),
(252, 10),
(252, 14),
(260, 5),
(263, 8),
(276, 1),
(276, 3),
(288, 1),
(288, 10),
(288, 11),
(288, 14),
(294, 1),
(294, 10),
(294, 14),
(304, 2),
(304, 3),
(305, 1),
(313, 1),
(313, 10),
(313, 14),
(324, 1),
(324, 10),
(324, 11),
(324, 14),
(329, 1),
(348, 1),
(348, 10),
(348, 14),
(359, 5),
(377, 3),
(384, 1),
(384, 10),
(384, 14),
(411, 3),
(412, 1),
(412, 10),
(412, 14),
(418, 1),
(418, 10),
(418, 11),
(418, 14),
(419, 1),
(419, 10),
(419, 14),
(420, 1),
(420, 10),
(420, 14),
(431, 1),
(431, 10),
(431, 14),
(448, 8),
(449, 2),
(466, 1),
(468, 1),
(468, 3),
(469, 1),
(469, 10),
(469, 11),
(469, 14),
(489, 9),
(509, 1),
(510, 1),
(510, 10),
(510, 14),
(511, 1),
(511, 10),
(511, 14),
(513, 1),
(513, 10),
(513, 14),
(520, 1),
(520, 10),
(520, 14),
(531, 1),
(531, 10),
(531, 14),
(534, 1),
(540, 1),
(540, 10),
(540, 11),
(540, 14),
(542, 1),
(542, 10),
(542, 11),
(542, 14),
(543, 1),
(543, 10),
(543, 14),
(545, 1),
(545, 10),
(545, 14),
(555, 3),
(564, 1),
(566, 1),
(566, 10),
(566, 14),
(567, 1),
(567, 10),
(567, 11),
(567, 14),
(569, 1),
(569, 10),
(569, 14),
(570, 1),
(570, 10),
(570, 11),
(570, 14),
(571, 1),
(571, 10),
(571, 14),
(572, 1),
(572, 10),
(572, 11),
(572, 12),
(572, 14),
(590, 10),
(590, 14),
(591, 1),
(596, 1),
(607, 1),
(607, 10),
(607, 14),
(624, 3),
(634, 3),
(636, 1),
(636, 10),
(636, 14),
(645, 1),
(646, 1),
(661, 5),
(681, 8),
(685, 5),
(687, 5),
(690, 7),
(712, 1),
(713, 1),
(716, 1),
(718, 1),
(725, 1),
(729, 3),
(736, 1),
(751, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_item`
--

CREATE TABLE `orden_item` (
  `id_orden` int(11) NOT NULL,
  `id_ordenitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orden_item`
--

INSERT INTO `orden_item` (`id_orden`, `id_ordenitem`) VALUES
(39, 66),
(39, 67),
(39, 68),
(40, 69),
(41, 70),
(42, 71),
(43, 72),
(44, 73),
(45, 74),
(46, 75),
(47, 76),
(48, 77),
(49, 78),
(49, 89),
(50, 79),
(51, 80),
(52, 81),
(52, 82),
(53, 83),
(54, 84),
(55, 85),
(56, 86),
(57, 87),
(57, 88),
(58, 90),
(59, 91),
(60, 92),
(60, 93),
(60, 94),
(60, 95),
(60, 96),
(60, 97),
(60, 98),
(61, 99),
(61, 100),
(62, 101),
(62, 102),
(62, 103),
(63, 104),
(64, 105),
(64, 106),
(65, 107),
(66, 108),
(67, 109),
(67, 110),
(67, 111),
(68, 112),
(69, 113),
(70, 114),
(71, 115),
(72, 116),
(73, 117),
(74, 118),
(75, 119),
(76, 120),
(77, 121),
(78, 122),
(79, 123),
(80, 124),
(81, 125),
(82, 126),
(83, 127),
(84, 128),
(85, 129),
(85, 130),
(85, 131),
(85, 132),
(85, 133),
(86, 134),
(87, 135),
(88, 136),
(88, 137),
(89, 138),
(90, 139),
(90, 140),
(91, 141),
(92, 142),
(93, 143),
(94, 144),
(95, 145),
(96, 146),
(97, 147),
(98, 148),
(98, 149),
(98, 150),
(98, 229),
(99, 151),
(100, 152),
(101, 153),
(103, 156),
(103, 157),
(104, 158),
(105, 159),
(106, 160),
(107, 161),
(108, 162),
(109, 163),
(110, 164),
(110, 165),
(111, 166),
(111, 167),
(112, 168),
(113, 169),
(114, 170),
(115, 171),
(116, 172),
(117, 173),
(117, 174),
(118, 175),
(119, 176),
(120, 177),
(121, 178),
(122, 179),
(123, 180),
(124, 181),
(124, 182),
(125, 183),
(126, 184),
(127, 185),
(128, 186),
(128, 187),
(129, 188),
(129, 189),
(130, 190),
(131, 191),
(132, 192),
(133, 193),
(134, 194),
(135, 195),
(136, 196),
(137, 197),
(138, 198),
(138, 199),
(138, 375),
(139, 200),
(140, 201),
(140, 202),
(141, 203),
(142, 204),
(143, 205),
(144, 206),
(145, 207),
(146, 208),
(147, 209),
(148, 210),
(148, 211),
(148, 212),
(148, 213),
(148, 214),
(148, 215),
(149, 216),
(150, 217),
(151, 218),
(152, 219),
(153, 220),
(154, 221),
(155, 222),
(156, 223),
(157, 224),
(158, 225),
(159, 226),
(160, 227),
(161, 228),
(162, 230),
(163, 231),
(164, 232),
(165, 233),
(165, 243),
(166, 234),
(167, 235),
(168, 236),
(169, 237),
(170, 238),
(171, 239),
(172, 240),
(173, 241),
(174, 242),
(175, 244),
(175, 245),
(175, 246),
(176, 247),
(177, 248),
(178, 249),
(179, 250),
(180, 251),
(181, 252),
(182, 253),
(183, 254),
(183, 255),
(183, 256),
(183, 257),
(185, 259),
(185, 260),
(185, 261),
(185, 262),
(187, 264),
(191, 271),
(192, 272),
(193, 273),
(194, 274),
(195, 275),
(196, 276),
(197, 277),
(198, 278),
(199, 279),
(199, 280),
(199, 281),
(199, 282),
(199, 283),
(201, 285),
(202, 286),
(203, 287),
(205, 289),
(206, 290),
(206, 291),
(206, 292),
(207, 293),
(207, 294),
(208, 295),
(208, 296),
(209, 297),
(210, 298),
(211, 299),
(212, 300),
(213, 301),
(214, 302),
(215, 303),
(216, 304),
(217, 305),
(217, 306),
(218, 307),
(219, 308),
(220, 309),
(221, 310),
(222, 311),
(222, 312),
(223, 313),
(223, 314),
(224, 315),
(225, 316),
(225, 317),
(226, 318),
(227, 319),
(227, 320),
(227, 321),
(227, 322),
(227, 323),
(227, 324),
(227, 325),
(227, 326),
(227, 327),
(227, 328),
(227, 329),
(228, 330),
(229, 331),
(230, 332),
(232, 334),
(233, 335),
(234, 336),
(235, 337),
(236, 338),
(237, 339),
(238, 340),
(239, 341),
(240, 342),
(241, 343),
(242, 344),
(243, 345),
(244, 346),
(245, 347),
(246, 348),
(246, 349),
(246, 350),
(246, 351),
(246, 352),
(246, 353),
(246, 354),
(246, 355),
(247, 356),
(247, 357),
(248, 358),
(249, 359),
(250, 360),
(251, 361),
(252, 362),
(253, 363),
(254, 364),
(255, 365),
(256, 366),
(256, 367),
(256, 368),
(258, 370),
(259, 371),
(259, 372),
(260, 373),
(261, 374),
(262, 376),
(263, 377),
(264, 378),
(265, 379),
(266, 380),
(266, 381),
(267, 382),
(268, 383),
(268, 384),
(269, 385),
(270, 386),
(271, 387),
(271, 388),
(272, 389),
(273, 390),
(274, 391),
(274, 392),
(275, 393),
(276, 394),
(277, 395),
(279, 397),
(280, 398),
(281, 399),
(282, 400),
(283, 401),
(284, 402),
(285, 403),
(285, 404),
(285, 406),
(285, 407),
(286, 410),
(287, 413),
(288, 414),
(290, 416),
(291, 417),
(292, 418),
(292, 419),
(292, 420),
(292, 421),
(292, 422),
(293, 423),
(294, 425),
(295, 426),
(296, 427),
(296, 428),
(296, 429),
(296, 430),
(296, 431),
(297, 432),
(297, 433),
(298, 434),
(298, 435),
(298, 436),
(298, 437),
(299, 438),
(300, 439),
(301, 440),
(302, 441),
(303, 442),
(304, 443),
(305, 444),
(306, 445),
(307, 446),
(308, 447),
(308, 448),
(309, 449),
(310, 450),
(311, 451),
(312, 452),
(313, 453),
(314, 454),
(315, 455),
(316, 456),
(317, 457),
(318, 458),
(318, 459),
(318, 460),
(318, 461),
(318, 462),
(318, 463),
(318, 464),
(319, 465),
(319, 895),
(320, 467),
(321, 468),
(322, 469),
(323, 470),
(323, 471),
(324, 472),
(325, 473),
(326, 475),
(326, 476),
(327, 477),
(328, 478),
(329, 479),
(330, 480),
(331, 481),
(332, 482),
(333, 483),
(334, 484),
(335, 485),
(336, 486),
(337, 487),
(337, 488),
(337, 489),
(337, 490),
(338, 491),
(339, 492),
(340, 493),
(341, 494),
(342, 495),
(343, 496),
(344, 497),
(344, 498),
(345, 499),
(346, 500),
(347, 501),
(348, 502),
(349, 503),
(350, 505),
(351, 506),
(351, 507),
(351, 508),
(352, 509),
(353, 510),
(354, 511),
(354, 512),
(354, 513),
(355, 514),
(356, 515),
(357, 516),
(357, 517),
(357, 518),
(358, 519),
(359, 520),
(360, 521),
(360, 522),
(361, 523),
(362, 524),
(363, 525),
(364, 526),
(365, 527),
(365, 528),
(365, 529),
(366, 530),
(366, 531),
(366, 532),
(367, 533),
(368, 534),
(369, 535),
(370, 536),
(370, 537),
(370, 538),
(370, 539),
(370, 540),
(371, 541),
(372, 542),
(372, 543),
(372, 544),
(372, 545),
(372, 546),
(372, 547),
(372, 548),
(372, 549),
(372, 550),
(375, 569),
(375, 570),
(375, 571),
(376, 572),
(377, 573),
(378, 574),
(378, 575),
(378, 576),
(380, 578),
(381, 579),
(382, 580),
(383, 581),
(384, 582),
(384, 583),
(385, 584),
(386, 585),
(386, 586),
(386, 587),
(387, 588),
(388, 589),
(388, 590),
(389, 591),
(389, 592),
(390, 593),
(391, 594),
(391, 595),
(392, 596),
(392, 597),
(392, 598),
(393, 599),
(393, 600),
(393, 601),
(393, 602),
(393, 603),
(394, 604),
(394, 605),
(395, 606),
(395, 607),
(395, 608),
(396, 609),
(397, 610),
(398, 611),
(399, 612),
(400, 613),
(401, 614),
(401, 615),
(401, 616),
(401, 617),
(402, 618),
(403, 619),
(403, 620),
(403, 621),
(403, 622),
(403, 623),
(403, 624),
(404, 625),
(405, 626),
(406, 627),
(407, 628),
(408, 629),
(409, 630),
(410, 631),
(411, 632),
(412, 633),
(413, 634),
(414, 635),
(415, 636),
(415, 637),
(416, 638),
(416, 639),
(417, 640),
(418, 641),
(419, 642),
(420, 643),
(422, 645),
(423, 646),
(424, 647),
(425, 648),
(425, 649),
(425, 650),
(426, 651),
(427, 652),
(428, 653),
(429, 654),
(429, 655),
(429, 656),
(429, 657),
(430, 658),
(431, 659),
(432, 660),
(433, 661),
(433, 662),
(434, 663),
(434, 664),
(434, 665),
(435, 668),
(436, 669),
(437, 670),
(438, 671),
(439, 672),
(440, 673),
(441, 674),
(441, 675),
(442, 676),
(443, 677),
(444, 678),
(445, 679),
(446, 680),
(447, 681),
(447, 682),
(448, 683),
(449, 684),
(450, 685),
(452, 687),
(453, 688),
(454, 689),
(454, 691),
(455, 690),
(456, 693),
(456, 694),
(456, 695),
(457, 700),
(458, 701),
(459, 702),
(460, 703),
(460, 704),
(460, 705),
(461, 706),
(462, 707),
(463, 708),
(464, 709),
(465, 710),
(466, 711),
(467, 712),
(468, 713),
(469, 714),
(470, 715),
(471, 716),
(472, 717),
(472, 718),
(472, 719),
(473, 720),
(474, 721),
(475, 722),
(475, 723),
(475, 724),
(475, 725),
(475, 769),
(475, 770),
(476, 726),
(476, 727),
(477, 728),
(477, 729),
(477, 1115),
(478, 730),
(478, 731),
(479, 732),
(479, 733),
(479, 734),
(480, 735),
(481, 736),
(482, 737),
(483, 738),
(484, 739),
(484, 740),
(485, 741),
(486, 742),
(487, 743),
(488, 744),
(489, 746),
(490, 747),
(491, 748),
(492, 749),
(493, 750),
(494, 751),
(495, 752),
(496, 753),
(497, 754),
(498, 755),
(499, 756),
(500, 757),
(501, 758),
(502, 759),
(503, 760),
(503, 761),
(504, 762),
(505, 763),
(506, 764),
(507, 765),
(507, 766),
(508, 767),
(509, 768),
(510, 771),
(511, 772),
(512, 773),
(513, 774),
(514, 775),
(515, 776),
(515, 777),
(516, 778),
(517, 779),
(518, 780),
(519, 781),
(520, 782),
(521, 783),
(522, 784),
(523, 785),
(524, 786),
(525, 787),
(526, 788),
(527, 789),
(528, 790),
(528, 791),
(528, 792),
(528, 793),
(528, 794),
(528, 796),
(528, 797),
(528, 798),
(528, 799),
(528, 800),
(528, 830),
(528, 842),
(529, 801),
(530, 802),
(531, 803),
(532, 804),
(533, 805),
(534, 806),
(535, 807),
(535, 808),
(536, 809),
(536, 810),
(536, 811),
(536, 812),
(536, 813),
(537, 814),
(540, 817),
(541, 818),
(542, 819),
(543, 820),
(544, 821),
(544, 822),
(544, 823),
(544, 824),
(545, 825),
(546, 826),
(547, 827),
(548, 828),
(549, 829),
(550, 831),
(550, 832),
(551, 833),
(552, 834),
(553, 835),
(553, 836),
(554, 837),
(555, 838),
(556, 839),
(557, 840),
(558, 896),
(559, 843),
(560, 844),
(561, 845),
(562, 846),
(563, 847),
(563, 848),
(563, 849),
(563, 850),
(564, 851),
(565, 852),
(566, 853),
(567, 854),
(569, 856),
(570, 857),
(571, 858),
(572, 859),
(573, 860),
(574, 861),
(575, 862),
(576, 863),
(577, 864),
(578, 865),
(578, 866),
(579, 867),
(580, 868),
(581, 869),
(582, 870),
(583, 871),
(584, 872),
(584, 873),
(584, 874),
(585, 875),
(585, 876),
(587, 882),
(588, 883),
(589, 884),
(590, 885),
(591, 888),
(592, 889),
(593, 890),
(594, 891),
(594, 892),
(594, 893),
(595, 894),
(596, 897),
(597, 898),
(598, 899),
(598, 900),
(598, 901),
(599, 906),
(600, 907),
(601, 908),
(601, 909),
(602, 910),
(603, 911),
(604, 912),
(605, 913),
(605, 914),
(605, 915),
(605, 916),
(605, 917),
(606, 918),
(607, 919),
(608, 920),
(608, 921),
(609, 922),
(610, 923),
(610, 924),
(611, 925),
(612, 926),
(612, 927),
(612, 928),
(613, 929),
(614, 930),
(615, 931),
(615, 932),
(615, 933),
(616, 934),
(617, 935),
(617, 936),
(618, 937),
(619, 938),
(620, 939),
(621, 940),
(622, 941),
(623, 942),
(623, 943),
(624, 944),
(625, 945),
(626, 946),
(627, 947),
(628, 948),
(629, 949),
(629, 950),
(629, 951),
(630, 952),
(631, 953),
(632, 954),
(633, 957),
(634, 958),
(635, 959),
(636, 960),
(638, 962),
(638, 963),
(638, 964),
(638, 965),
(639, 966),
(640, 967),
(641, 968),
(642, 969),
(644, 971),
(644, 972),
(644, 973),
(644, 974),
(644, 975),
(644, 976),
(644, 977),
(644, 978),
(644, 979),
(644, 980),
(644, 981),
(644, 982),
(644, 983),
(644, 984),
(644, 985),
(644, 986),
(644, 987),
(644, 988),
(645, 989),
(646, 990),
(647, 991),
(648, 992),
(649, 993),
(649, 994),
(650, 995),
(651, 996),
(652, 999),
(653, 1004),
(654, 1005),
(655, 1006),
(656, 1007),
(657, 1008),
(658, 1009),
(658, 1010),
(659, 1011),
(660, 1012),
(660, 1013),
(661, 1014),
(663, 1016),
(663, 1017),
(664, 1018),
(665, 1019),
(666, 1020),
(667, 1021),
(667, 1022),
(667, 1023),
(667, 1024),
(668, 1026),
(669, 1027),
(670, 1028),
(670, 1029),
(670, 1030),
(671, 1031),
(672, 1032),
(673, 1033),
(674, 1034),
(675, 1035),
(676, 1036),
(677, 1037),
(678, 1038),
(679, 1039),
(680, 1040),
(680, 1041),
(681, 1042),
(682, 1043),
(683, 1044),
(684, 1045),
(685, 1046),
(686, 1047),
(687, 1048),
(688, 1049),
(689, 1050),
(690, 1051),
(691, 1053),
(692, 1054),
(692, 1056),
(692, 1059),
(692, 1061),
(693, 1063),
(694, 1064),
(695, 1065),
(695, 1066),
(695, 1067),
(696, 1068),
(697, 1069),
(698, 1070),
(699, 1071),
(700, 1072),
(700, 1073),
(700, 1074),
(700, 1075),
(700, 1076),
(700, 1077),
(701, 1078),
(702, 1079),
(703, 1080),
(703, 1081),
(703, 1082),
(703, 1083),
(704, 1084),
(705, 1085),
(706, 1086),
(707, 1087),
(708, 1088),
(709, 1089),
(709, 1090),
(710, 1091),
(711, 1092),
(712, 1093),
(713, 1094),
(714, 1095),
(715, 1096),
(715, 1097),
(716, 1098),
(717, 1099),
(718, 1100),
(719, 1101),
(720, 1102),
(721, 1103),
(722, 1104),
(723, 1105),
(724, 1106),
(725, 1107),
(726, 1108),
(727, 1110),
(728, 1111),
(729, 1112),
(730, 1113),
(730, 1114),
(731, 1116),
(732, 1117),
(733, 1118),
(734, 1119),
(735, 1120),
(736, 1121),
(737, 1122),
(737, 1123),
(737, 1124),
(738, 1125),
(739, 1126),
(740, 1127),
(741, 1128),
(742, 1129),
(743, 1130),
(744, 1131),
(744, 1132),
(745, 1133),
(746, 1134),
(747, 1135),
(748, 1136),
(749, 1137),
(749, 1138),
(749, 1139),
(750, 1140),
(751, 1141);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `validado` tinyint(1) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_orden` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_mediopago` int(11) DEFAULT NULL,
  `fechapago` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `id_usuario`, `id_empresa`, `id_moneda`, `monto`, `fecha`, `validado`, `activo`, `id_orden`, `id_tipo`, `id_mediopago`, `fechapago`) VALUES
(32, 3, 1, 1, '278.40', '2018-02-27 16:35:21', 1, 1, 59, 2, NULL, NULL),
(33, 3, 1, 1, '2795.60', '2018-03-03 05:37:15', 1, 1, 174, 2, NULL, NULL),
(34, 11, 1, 1, '1009.20', '2018-03-03 18:46:29', 1, 1, 165, 2, NULL, NULL),
(35, 11, 1, 1, '3000.00', '2018-03-05 16:41:36', 1, 1, 86, 1, NULL, NULL),
(36, 7, 1, 1, '139.20', '2018-03-05 23:18:16', 1, 1, 157, 1, NULL, NULL),
(37, 11, 1, 1, '900.00', '2018-03-05 23:25:57', 1, 1, 187, 1, NULL, NULL),
(38, 11, 1, 1, '359.99', '2018-03-06 00:45:39', 1, 1, 198, 2, NULL, NULL),
(39, 11, 1, 1, '9000.00', '2018-03-08 00:43:05', 1, 1, 206, 1, NULL, NULL),
(40, 3, 1, 1, '1508.00', '2018-03-08 00:54:45', 1, 1, 167, 2, NULL, NULL),
(41, 11, 1, 1, '500.00', '2018-03-08 23:44:13', 1, 1, 270, 1, NULL, NULL),
(42, 3, 1, 1, '16646.00', '2018-03-09 15:34:31', 1, 1, 216, 2, NULL, NULL),
(43, 3, 1, 1, '719.99', '2018-03-09 15:36:26', 1, 1, 247, 2, NULL, NULL),
(44, 3, 1, 1, '1160.00', '2018-03-09 15:37:15', 0, 1, 245, 2, NULL, NULL),
(45, 3, 1, 1, '1160.00', '2018-03-09 15:40:42', 1, 1, 245, 2, NULL, NULL),
(46, 4, 1, 1, '4831.40', '2018-03-09 16:01:32', 1, 1, 244, 2, NULL, NULL),
(47, 4, 1, 1, '4245.60', '2018-03-09 16:02:22', 1, 1, 243, 2, NULL, NULL),
(48, 4, 1, 1, '4245.60', '2018-03-09 16:03:42', 1, 1, 242, 2, NULL, NULL),
(49, 4, 1, 1, '2784.00', '2018-03-09 16:04:29', 1, 1, 241, 2, NULL, NULL),
(50, 4, 1, 1, '2784.00', '2018-03-09 16:04:54', 1, 1, 240, 2, NULL, NULL),
(51, 4, 1, 1, '1392.00', '2018-03-09 16:13:08', 1, 1, 239, 2, NULL, NULL),
(52, 4, 1, 1, '2679.60', '2018-03-09 16:15:09', 1, 1, 238, 2, NULL, NULL),
(53, 4, 1, 1, '2320.00', '2018-03-09 16:16:23', 1, 1, 237, 2, NULL, NULL),
(54, 4, 1, 1, '6797.60', '2018-03-09 16:17:14', 1, 1, 236, 2, NULL, NULL),
(55, 4, 1, 1, '3897.60', '2018-03-09 16:18:07', 1, 1, 235, 2, NULL, NULL),
(56, 4, 1, 1, '1716.80', '2018-03-09 16:18:51', 1, 1, 234, 2, NULL, NULL),
(57, 4, 1, 1, '1368.80', '2018-03-09 16:19:45', 1, 1, 233, 2, NULL, NULL),
(58, 4, 1, 1, '3897.60', '2018-03-09 16:20:59', 1, 1, 232, 2, NULL, NULL),
(59, 4, 1, 1, '1044.00', '2018-03-09 16:21:24', 1, 1, 213, 2, NULL, NULL),
(60, 4, 1, 1, '1160.00', '2018-03-09 16:22:04', 1, 1, 153, 2, NULL, NULL),
(61, 11, 1, 1, '900.00', '2018-03-09 16:25:32', 1, 1, 276, 1, NULL, NULL),
(62, 11, 1, 1, '174.00', '2018-03-09 19:14:16', 1, 1, 279, 2, NULL, NULL),
(63, 11, 1, 1, '9576.00', '2018-03-09 23:13:05', 1, 1, 206, 2, NULL, NULL),
(64, 3, 1, 1, '2354.80', '2018-03-09 23:13:16', 1, 1, 217, 2, NULL, NULL),
(65, 11, 1, 1, '1376.00', '2018-03-09 23:15:36', 1, 1, 206, 2, NULL, NULL),
(66, 3, 1, 1, '1392.00', '2018-03-10 18:37:14', 1, 1, 180, 2, NULL, NULL),
(67, 11, 1, 1, '139.20', '2018-03-13 22:24:03', 1, 1, 290, 2, NULL, NULL),
(68, 3, 1, 1, '429.20', '2018-03-13 23:39:46', 1, 1, 320, 2, NULL, NULL),
(69, 11, 1, 1, '956.00', '2018-03-14 22:10:41', 1, 1, 276, 2, NULL, NULL),
(70, 11, 1, 1, '450.08', '2018-03-14 23:47:05', 1, 1, 364, 2, NULL, NULL),
(71, 3, 1, 1, '13700.00', '2018-03-14 23:51:57', 1, 1, 339, 1, NULL, NULL),
(72, 4, 1, 1, '219.99', '2018-03-15 20:50:57', 1, 1, 283, 2, NULL, NULL),
(73, 4, 1, 1, '439.99', '2018-03-15 20:51:40', 1, 1, 127, 2, NULL, NULL),
(74, 4, 1, 1, '219.99', '2018-03-15 20:54:26', 1, 1, 281, 2, NULL, NULL),
(75, 4, 1, 1, '27144.00', '2018-03-15 20:57:46', 1, 1, 175, 2, NULL, NULL),
(76, 4, 1, 1, '626.40', '2018-03-15 20:59:59', 1, 1, 89, 2, NULL, NULL),
(77, 4, 1, 1, '1807.98', '2018-03-15 21:01:04', 1, 1, 88, 2, NULL, NULL),
(78, 4, 1, 1, '2088.00', '2018-03-15 21:02:30', 1, 1, 90, 2, NULL, NULL),
(79, 4, 1, 1, '3174.92', '2018-03-15 21:04:07', 1, 1, 67, 2, NULL, NULL),
(80, 4, 1, 1, '7516.80', '2018-03-15 21:04:55', 1, 1, 79, 2, NULL, NULL),
(81, 4, 1, 1, '12064.00', '2018-03-15 21:08:54', 1, 1, 166, 2, NULL, NULL),
(82, 4, 1, 1, '1972.00', '2018-03-15 21:09:35', 0, 1, 100, 1, NULL, NULL),
(83, 4, 1, 1, '1972.00', '2018-03-15 21:11:19', 1, 1, 100, 1, NULL, NULL),
(84, 4, 1, 1, '2088.00', '2018-03-15 21:13:06', 1, 1, 101, 2, NULL, NULL),
(85, 3, 1, 1, '788.00', '2018-03-16 01:04:32', 1, 1, 387, 2, NULL, NULL),
(86, 11, 1, 1, '544.00', '2018-03-16 18:20:12', 1, 1, 270, 2, NULL, NULL),
(87, 10, 1, 1, '2439.48', '2018-03-16 18:45:24', 1, 1, 299, 2, NULL, NULL),
(88, 3, 1, 1, '400.00', '2018-03-16 23:36:06', 1, 1, 267, 1, NULL, NULL),
(89, 7, 1, 1, '4400.00', '2018-03-20 16:55:08', 1, 1, 417, 1, 1, '2018-03-20'),
(90, 7, 1, 1, '2338.56', '2018-03-21 00:13:28', 1, 1, 303, 2, 1, '2018-03-21'),
(91, 3, 1, 1, '174.00', '2018-03-21 23:15:18', 1, 1, 443, 2, NULL, '2018-03-21'),
(92, 11, 1, 1, '894.52', '2018-03-22 19:20:22', 1, 1, 187, 2, 1, '2018-03-22'),
(93, 11, 1, 1, '31.32', '2018-03-23 00:30:46', 1, 1, 455, 2, 1, '2018-03-23'),
(94, 11, 1, 1, '417.60', '2018-03-23 00:37:56', 1, 1, 438, 2, 1, '2018-03-23'),
(95, 11, 1, 1, '13710.80', '2018-03-24 17:45:47', 1, 1, 339, 2, 1, '2018-03-24'),
(96, 11, 1, 1, '100.00', '2018-03-24 19:05:46', 1, 1, 487, 1, 1, '2018-03-24'),
(97, 11, 1, 1, '800.00', '2018-03-26 17:40:39', 1, 1, 505, 1, 1, '2018-03-26'),
(98, 11, 1, 1, '1020.80', '2018-03-27 16:45:24', 1, 1, 474, 2, 1, '2018-03-27'),
(99, 3, 1, 1, '9000.00', '2018-03-27 23:50:26', 1, 1, 528, 1, 1, '2018-03-27'),
(100, 11, 1, 1, '174.00', '2018-03-28 17:30:36', 1, 1, 481, 2, 1, '2018-03-28'),
(101, 7, 1, 1, '1044.00', '2018-03-28 22:10:30', 1, 1, 532, 2, 1, '2018-03-28'),
(102, 3, 1, 1, '92.80', '2018-03-28 23:12:19', 1, 1, 552, 2, 1, '2018-03-28'),
(103, 3, 1, 1, '249.40', '2018-03-28 23:13:05', 1, 1, 512, 2, 1, '2018-03-28'),
(104, 11, 1, 1, '500.00', '2018-04-02 18:41:25', 1, 1, 583, 1, 1, '2018-04-02'),
(105, 11, 1, 1, '5599.96', '2018-04-03 21:41:52', 1, 1, 558, 2, 1, '2018-04-03'),
(106, 11, 1, 1, '335.20', '2018-04-04 16:09:25', 1, 1, 583, 2, 1, '2018-04-04'),
(107, 11, 1, 1, '194.88', '2018-04-04 17:52:51', 1, 1, 576, 2, NULL, '2018-04-04'),
(108, 3, 1, 1, '603.20', '2018-04-05 16:49:42', 1, 1, 522, 2, 1, '2018-04-05'),
(109, 11, 1, 1, '881.60', '2018-04-05 17:43:46', 1, 1, 529, 2, 1, '2018-04-05'),
(110, 3, 1, 1, '522.00', '2018-04-05 22:36:59', 1, 1, 596, 2, 1, '2018-04-05'),
(111, 11, 1, 1, '560.00', '2018-04-06 19:24:39', 1, 1, 633, 2, NULL, '2018-04-06'),
(112, 3, 1, 1, '2505.60', '2018-04-06 19:34:03', 1, 1, 613, 2, 1, '2018-04-06'),
(113, 7, 1, 1, '379.90', '2018-04-06 23:23:03', 1, 1, 642, 2, 1, '2018-04-06'),
(114, 11, 1, 1, '500.00', '2018-04-07 15:18:33', 1, 1, 282, 1, 1, '2018-04-07'),
(115, 3, 1, 1, '580.00', '2018-04-07 18:44:00', 1, 1, 656, 2, 1, '2018-04-07'),
(116, 3, 1, 1, '80.00', '2018-04-07 18:44:47', 1, 1, 282, 2, 1, '2018-04-07'),
(117, 3, 1, 1, '139.20', '2018-04-07 19:03:47', 1, 1, 657, 2, 1, '2018-04-07'),
(118, 11, 1, 1, '560.00', '2018-04-09 18:25:52', 1, 1, 654, 2, 1, '2018-04-07'),
(119, 11, 1, 1, '959.92', '2018-04-09 23:30:22', 1, 1, 516, 2, 1, '2018-04-09'),
(120, 7, 1, 1, '3500.00', '2018-04-12 17:43:00', 0, 1, 618, 1, 1, '2018-04-12'),
(121, 11, 1, 1, '498.80', '2018-04-12 22:46:39', 1, 1, 617, 2, 1, '2018-04-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagotipo`
--

CREATE TABLE `pagotipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pagotipo`
--

INSERT INTO `pagotipo` (`id`, `nombre`) VALUES
(1, 'Anticipo'),
(2, 'Liquidación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `precio` decimal(12,2) NOT NULL DEFAULT '0.00',
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `id_moneda`, `nombre`, `descripcion`, `precio`, `activo`) VALUES
(14, 1, 'OFFSET', NULL, '0.00', 1),
(15, 1, 'SERIGRAFIA', NULL, '0.00', 1),
(16, 1, 'BORDADOS', NULL, '0.00', 1),
(17, 1, 'LONAS/ROTULOS', NULL, '0.00', 1),
(18, 1, 'CTP', NULL, '0.00', 1),
(19, 1, 'PLACAS 600 X 762', NULL, '189.65', 1),
(20, 1, 'PLACAS 400 X 510', NULL, '120.69', 1),
(21, 1, 'PLACAS PERIODICO 600 X 762', NULL, '150.87', 1),
(22, 1, 'PLACAS MAQUILA CHICAS', NULL, '100.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagen`
--

CREATE TABLE `producto_imagen` (
  `id_producto` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_relacionado`
--

CREATE TABLE `producto_relacionado` (
  `id_producto` int(11) NOT NULL,
  `id_relacionado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rfc`
--

CREATE TABLE `rfc` (
  `id` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `rfc` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `regimen` longtext COLLATE utf8_unicode_ci NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numext` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numint` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `colonia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `localidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `serie` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `folio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `satnocertificado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `satregimenfiscal` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `satusocfdi` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `iofusuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `iofpassword` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`) VALUES
(1, 'ROLE_ADMINISTRADOR', 'Administrador'),
(2, 'ROLE_EMPRESA', 'Administrador de empresa'),
(3, 'ROLE_VENDEDOR', 'Vendedor'),
(4, 'ROLE_COBRANZA', 'Cobranza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` decimal(12,2) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_mesa`
--

CREATE TABLE `seccion_mesa` (
  `id_seccion` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `id_empresa`, `nombre`, `cp`, `token`, `activo`) VALUES
(1, 1, 'Principal', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_seccion`
--

CREATE TABLE `sucursal_seccion` (
  `id_sucursal` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `satclaveunidad` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usocfdi`
--

CREATE TABLE `usocfdi` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usocfdi`
--

INSERT INTO `usocfdi` (`id`, `nombre`) VALUES
(1, ' G01 - Adquisición de mercancías'),
(2, 'G03 - Gasto en general'),
(3, 'Por Definir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_imagen` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_expiracion_token` datetime DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `id_firma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `id_empresa`, `id_imagen`, `username`, `nombre`, `apellidos`, `password`, `email`, `token`, `fecha_expiracion_token`, `fecha_creacion`, `is_active`, `id_firma`) VALUES
(1, 1, NULL, 'admin', 'Administrador', 'NA', '$2y$13$D7zFcnVgTxiW4sCz951LrOBomOa5W7w.foFoeLTAbksjG1gP4VZmK', 'admin@publicarte.com.mx', NULL, NULL, '2017-06-09 07:39:51', 1, 3),
(3, 1, NULL, 'publicarteadmin', 'GUILLERMO', 'AVENDAÑO', '$2y$13$B9uDn3VyxAw71HIZoz/m7OqBf/wWNevYHNfHB6T0QYfTU1G1FtDHq', 'memo_vidal@hotmail.com', NULL, NULL, '2017-06-09 07:39:51', 1, NULL),
(4, 1, NULL, 'cobrosadmin', 'Isidro', 'Ramírez', '$2y$13$pfDXCGCE/ccNrR6XAivtYuOm8pW2SOId7a8BcdJdmklbUhPuSLlCK', 'cobrosadmin@publicarte.com.mx', NULL, NULL, '2018-01-17 12:56:51', 1, NULL),
(7, 1, NULL, 'venta1', 'Zoraida', 'Tijerina', '$2y$13$kP8b/PUGTubQClMjIzxoZu1bW8b9i/ZoFkVtz0MmbCOwMeeA6Ca/2', 'mail@publicarte.com', NULL, NULL, '2018-02-27 20:43:51', 1, NULL),
(8, 1, NULL, 'venta2', 'Angel', 'Abundis', '$2y$13$3ke5BAtYxp0qwGZJUrv.zezSDzguDFVidabp1X5Pw.zZfWb.Gsluq', 'mail2@publicarte.com', NULL, NULL, '2018-02-27 20:44:49', 1, NULL),
(9, 1, NULL, 'venta3', 'Juan', 'Manuel', '$2y$13$cTTToOMB78KQc7r0fU1VeeuySFVWAk1d02AXAxuJRWwIWILLOJB1G', 'mail3@publicarte.com', NULL, NULL, '2018-02-27 20:45:56', 1, NULL),
(10, 1, NULL, 'recepcion', 'Julia', 'Izaguirre', '$2y$13$r.xd2YeaHdJ1QkfjBnZu0uqrReRh2iIU.PHtwWu9uakPtlwFYhq7m', 'mail4@publicarte.com', NULL, NULL, '2018-02-27 20:46:34', 1, NULL),
(11, 1, NULL, 'pagos', 'Lucía', 'Izaguirre', '$2y$13$2YVpt7VZhpS.UU9Prpneyu3cVFCmWbajeo9A4ASUZNpHyHEovRsZS', 'pagos@pagos.com', NULL, NULL, '2018-02-27 20:48:36', 1, NULL),
(12, 1, NULL, 'diseno1', 'Sayra', 'Chagoya', '$2y$13$DCSjeIIflQmpcsGXvmfAgeSOOQeOuBa7DzTUWKOl4aWCZIrBiy3Ji', 'diseno@dise.com', NULL, NULL, '2018-02-27 20:49:24', 1, NULL),
(13, 1, NULL, 'diseno2', 'Alma', 'niño', '$2y$13$mWT20wwIIiVFdcTHbWkXludn2UKnjP2siijnnyBld.Yx49QLACs3a', 'diseno@diseno.com', NULL, NULL, '2018-02-27 20:49:59', 1, NULL),
(14, 1, NULL, 'diseno3', 'Arturo', 'niño', '$2y$13$p0mQj2E02vzTH.dy.twNwe3F2fOwHesjfSm9GoNs5grqZF8TIDgS.', 'diseno3@diseno.com', NULL, NULL, '2018-02-27 20:50:58', 1, NULL),
(15, 1, NULL, 'produccion', 'Martín', 'Vega', '$2y$13$2lr6CdzUEyWTojuw9E5WKOGuI/qTYcDp9IEBhtUUVrvurfl/HgOvW', 'produccion@publicarte.com', NULL, NULL, '2018-02-27 20:51:40', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario`, `id_rol`) VALUES
(3, 2),
(4, 3),
(4, 4),
(7, 3),
(8, 3),
(8, 4),
(9, 3),
(10, 3),
(11, 2),
(12, 3),
(13, 3),
(14, 3),
(15, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sucursal`
--

CREATE TABLE `usuario_sucursal` (
  `id_usuario` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_sucursal`
--

INSERT INTO `usuario_sucursal` (`id_usuario`, `id_sucursal`) VALUES
(1, 1),
(3, 1),
(4, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `id_moneda` int(11) NOT NULL,
  `id_mediopago` int(11) NOT NULL,
  `id_cortecaja` int(11) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `propina` decimal(12,2) NOT NULL,
  `ticket` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `digitos` int(11) NOT NULL DEFAULT '0',
  `fecha` datetime NOT NULL,
  `fecharecepcion` datetime NOT NULL,
  `idcotizacion` int(11) DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `facturada` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaitem`
--

CREATE TABLE `ventaitem` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `satclaveprodserv` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satnoidentificacion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satclaveunidad` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satunidad` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaitempaquete`
--

CREATE TABLE `ventaitempaquete` (
  `id` int(11) NOT NULL,
  `id_combinacion` int(11) DEFAULT NULL,
  `id_moneda` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `satclaveprodserv` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satnoidentificacion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satclaveunidad` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satunidad` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaitempaqueteproducto`
--

CREATE TABLE `ventaitempaqueteproducto` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaitempaquete_paqueteproducto`
--

CREATE TABLE `ventaitempaquete_paqueteproducto` (
  `id_ventaitempaquete` int(11) NOT NULL,
  `id_paqueteproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_item`
--

CREATE TABLE `venta_item` (
  `id_venta` int(11) NOT NULL,
  `id_ventaitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_itempaquete`
--

CREATE TABLE `venta_itempaquete` (
  `id_venta` int(11) NOT NULL,
  `id_ventaitempaquete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E10122D664AF320` (`id_empresa`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F41C9B25664AF320` (`id_empresa`);

--
-- Indices de la tabla `cliente_contacto`
--
ALTER TABLE `cliente_contacto`
  ADD PRIMARY KEY (`id_cliente`,`id_contacto`),
  ADD KEY `IDX_9D70CEA22A813255` (`id_cliente`),
  ADD KEY `IDX_9D70CEA2779AA5A9` (`id_contacto`);

--
-- Indices de la tabla `cliente_domicilio`
--
ALTER TABLE `cliente_domicilio`
  ADD PRIMARY KEY (`id_cliente`,`id_domicilio`),
  ADD KEY `IDX_8C99A1152A813255` (`id_cliente`),
  ADD KEY `IDX_8C99A1151BA192F6` (`id_domicilio`);

--
-- Indices de la tabla `combinacion`
--
ALTER TABLE `combinacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_13C77589664AF320` (`id_empresa`),
  ADD KEY `IDX_13C77589963C9EC0` (`id_moneda`),
  ADD KEY `IDX_13C77589D5D165C2` (`id_unidad`);

--
-- Indices de la tabla `combinacionitem`
--
ALTER TABLE `combinacionitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DD757643CE25AE0A` (`id_categoria`),
  ADD KEY `IDX_DD757643F9BECC66` (`id_subcategoria`);

--
-- Indices de la tabla `combinacion_item`
--
ALTER TABLE `combinacion_item`
  ADD PRIMARY KEY (`id_combinacion`,`id_combinacionitem`),
  ADD KEY `IDX_5726161FBD5B87E` (`id_combinacion`),
  ADD KEY `IDX_5726161F342BB5CB` (`id_combinacionitem`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_682CCAF1664AF320` (`id_empresa`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2741493CCDE0367F` (`id_mediopago`);

--
-- Indices de la tabla `cortecaja`
--
ALTER TABLE `cortecaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F59B4629664AF320` (`id_empresa`),
  ADD KEY `IDX_F59B4629B94781C3` (`id_sucursal`),
  ADD KEY `IDX_F59B4629FCF8192D` (`id_usuario`),
  ADD KEY `IDX_F59B4629963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_44A5EC03FCF8192D` (`id_usuario`),
  ADD KEY `IDX_44A5EC03664AF320` (`id_empresa`),
  ADD KEY `IDX_44A5EC03B94781C3` (`id_sucursal`),
  ADD KEY `IDX_44A5EC033E20BCB9` (`id_seccion`),
  ADD KEY `IDX_44A5EC03A3412069` (`id_cotizacionestado`),
  ADD KEY `IDX_44A5EC032A813255` (`id_cliente`),
  ADD KEY `IDX_44A5EC03779AA5A9` (`id_contacto`),
  ADD KEY `IDX_44A5EC03963C9EC0` (`id_moneda`),
  ADD KEY `IDX_44A5EC03502D9181` (`id_esquemapago`);

--
-- Indices de la tabla `cotizacionestado`
--
ALTER TABLE `cotizacionestado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotizacionitem`
--
ALTER TABLE `cotizacionitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F976E11F760EA80` (`id_producto`),
  ADD KEY `IDX_F976E11963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `cotizacionitempaquete`
--
ALTER TABLE `cotizacionitempaquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA7A7893BD5B87E` (`id_combinacion`);

--
-- Indices de la tabla `cotizacionitempaqueteproducto`
--
ALTER TABLE `cotizacionitempaqueteproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B0CF6214F760EA80` (`id_producto`);

--
-- Indices de la tabla `cotizacionitempaquete_paqueteproducto`
--
ALTER TABLE `cotizacionitempaquete_paqueteproducto`
  ADD PRIMARY KEY (`id_cotizacionitempaquete`,`id_paqueteproducto`),
  ADD KEY `IDX_9D616D3FBCDEF93` (`id_cotizacionitempaquete`),
  ADD KEY `IDX_9D616D3FF8C42576` (`id_paqueteproducto`);

--
-- Indices de la tabla `cotizacion_item`
--
ALTER TABLE `cotizacion_item`
  ADD PRIMARY KEY (`id_cotizacion`,`id_cotizacionitem`),
  ADD KEY `IDX_D291C4DFE12F6CD4` (`id_cotizacion`),
  ADD KEY `IDX_D291C4DF32F1D317` (`id_cotizacionitem`);

--
-- Indices de la tabla `cotizacion_itempaquete`
--
ALTER TABLE `cotizacion_itempaquete`
  ADD PRIMARY KEY (`id_cotizacion`,`id_cotizacionitempaquete`),
  ADD KEY `IDX_A5A13A29E12F6CD4` (`id_cotizacion`),
  ADD KEY `IDX_A5A13A29BCDEF93` (`id_cotizacionitempaquete`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9B942ED1FB0D0145` (`id_tipo`),
  ADD KEY `IDX_9B942ED16A540E` (`id_estado`);

--
-- Indices de la tabla `domiciliotipo`
--
ALTER TABLE `domiciliotipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_AEE6AD833A909126` (`nombre`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B8D75A50E16C6B94` (`alias`),
  ADD KEY `IDX_B8D75A50D18C71B5` (`id_rfc`),
  ADD KEY `IDX_B8D75A50FB0D0145` (`id_tipo`),
  ADD KEY `IDX_B8D75A506FAE8611` (`id_logo`);

--
-- Indices de la tabla `empresatipo`
--
ALTER TABLE `empresatipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D1C8D1E53A909126` (`nombre`);

--
-- Indices de la tabla `esquemapago`
--
ALTER TABLE `esquemapago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_265DE1E33A909126` (`nombre`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F9EBA009664AF320` (`id_empresa`),
  ADD KEY `IDX_F9EBA009B94781C3` (`id_sucursal`),
  ADD KEY `IDX_F9EBA009FAD8EE7` (`id_orden`),
  ADD KEY `IDX_F9EBA009743670BE` (`id_facturaestado`),
  ADD KEY `IDX_F9EBA009963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `facturaestado`
--
ALTER TABLE `facturaestado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `impresionopcion`
--
ALTER TABLE `impresionopcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4DD58A587C952D1E` (`id_metodopago`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B00B2B2DC8541351` (`simbolo`),
  ADD UNIQUE KEY `UNIQ_B00B2B2D5845EE0A` (`satclave`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E128CFD7FCF8192D` (`id_usuario`),
  ADD KEY `IDX_E128CFD7664AF320` (`id_empresa`),
  ADD KEY `IDX_E128CFD7B94781C3` (`id_sucursal`),
  ADD KEY `IDX_E128CFD73E20BCB9` (`id_seccion`),
  ADD KEY `IDX_E128CFD72A813255` (`id_cliente`),
  ADD KEY `IDX_E128CFD7779AA5A9` (`id_contacto`),
  ADD KEY `IDX_E128CFD7963C9EC0` (`id_moneda`),
  ADD KEY `IDX_E128CFD7979742CF` (`id_ordenestado`),
  ADD KEY `IDX_E128CFD7E12F6CD4` (`id_cotizacion`),
  ADD KEY `IDX_E128CFD73B438E51` (`id_usocfdi`),
  ADD KEY `IDX_E128CFD77C952D1E` (`id_metodopago`),
  ADD KEY `IDX_E128CFD7CDE0367F` (`id_mediopago`),
  ADD KEY `IDX_E128CFD7FB0D0145` (`id_tipo`),
  ADD KEY `IDX_E128CFD774A6F94D` (`id_maquina`);

--
-- Indices de la tabla `ordenestado`
--
ALTER TABLE `ordenestado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenitem`
--
ALTER TABLE `ordenitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B43B0907F760EA80` (`id_producto`),
  ADD KEY `IDX_B43B0907963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `ordentipo`
--
ALTER TABLE `ordentipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DB0D315E3A909126` (`nombre`);

--
-- Indices de la tabla `orden_impresionopcion`
--
ALTER TABLE `orden_impresionopcion`
  ADD PRIMARY KEY (`id_orden`,`id_impresionopcion`),
  ADD KEY `IDX_DB888702FAD8EE7` (`id_orden`),
  ADD KEY `IDX_DB8887027B9676FA` (`id_impresionopcion`);

--
-- Indices de la tabla `orden_item`
--
ALTER TABLE `orden_item`
  ADD PRIMARY KEY (`id_orden`,`id_ordenitem`),
  ADD KEY `IDX_26FEDDE9FAD8EE7` (`id_orden`),
  ADD KEY `IDX_26FEDDE9340EB520` (`id_ordenitem`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F4DF5F3EFCF8192D` (`id_usuario`),
  ADD KEY `IDX_F4DF5F3E664AF320` (`id_empresa`),
  ADD KEY `IDX_F4DF5F3E963C9EC0` (`id_moneda`),
  ADD KEY `IDX_F4DF5F3EFAD8EE7` (`id_orden`),
  ADD KEY `IDX_F4DF5F3EFB0D0145` (`id_tipo`),
  ADD KEY `IDX_F4DF5F3ECDE0367F` (`id_mediopago`);

--
-- Indices de la tabla `pagotipo`
--
ALTER TABLE `pagotipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BB49148D3A909126` (`nombre`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A7BB0615963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `producto_imagen`
--
ALTER TABLE `producto_imagen`
  ADD PRIMARY KEY (`id_producto`,`id_imagen`),
  ADD KEY `IDX_2E3E7DFDF760EA80` (`id_producto`),
  ADD KEY `IDX_2E3E7DFDA52E675E` (`id_imagen`);

--
-- Indices de la tabla `producto_relacionado`
--
ALTER TABLE `producto_relacionado`
  ADD PRIMARY KEY (`id_producto`,`id_relacionado`),
  ADD KEY `IDX_48C621FEF760EA80` (`id_producto`),
  ADD KEY `IDX_48C621FE84B491B3` (`id_relacionado`);

--
-- Indices de la tabla `rfc`
--
ALTER TABLE `rfc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4F2899EF6A540E` (`id_estado`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E553F373A909126` (`nombre`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion_mesa`
--
ALTER TABLE `seccion_mesa`
  ADD PRIMARY KEY (`id_seccion`,`id_mesa`),
  ADD KEY `IDX_D5AC41413E20BCB9` (`id_seccion`),
  ADD KEY `IDX_D5AC414113939EF0` (`id_mesa`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA7FB914CE25AE0A` (`id_categoria`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E99C6D565F37A13B` (`token`),
  ADD KEY `IDX_E99C6D56664AF320` (`id_empresa`);

--
-- Indices de la tabla `sucursal_seccion`
--
ALTER TABLE `sucursal_seccion`
  ADD PRIMARY KEY (`id_sucursal`,`id_seccion`),
  ADD KEY `IDX_A2BD5046B94781C3` (`id_sucursal`),
  ADD KEY `IDX_A2BD50463E20BCB9` (`id_seccion`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usocfdi`
--
ALTER TABLE `usocfdi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2265B05DF85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_2265B05DE7927C74` (`email`),
  ADD KEY `IDX_2265B05D664AF320` (`id_empresa`),
  ADD KEY `IDX_2265B05DA52E675E` (`id_imagen`),
  ADD KEY `IDX_2265B05DC5687453` (`id_firma`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario`,`id_rol`),
  ADD KEY `IDX_72EDD1A4FCF8192D` (`id_usuario`),
  ADD KEY `IDX_72EDD1A490F1D76D` (`id_rol`);

--
-- Indices de la tabla `usuario_sucursal`
--
ALTER TABLE `usuario_sucursal`
  ADD PRIMARY KEY (`id_usuario`,`id_sucursal`),
  ADD KEY `IDX_15D9FCFFCF8192D` (`id_usuario`),
  ADD KEY `IDX_15D9FCFB94781C3` (`id_sucursal`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8FE7EE55FCF8192D` (`id_usuario`),
  ADD KEY `IDX_8FE7EE55C74C74BB` (`id_vendedor`),
  ADD KEY `IDX_8FE7EE55664AF320` (`id_empresa`),
  ADD KEY `IDX_8FE7EE55B94781C3` (`id_sucursal`),
  ADD KEY `IDX_8FE7EE553E20BCB9` (`id_seccion`),
  ADD KEY `IDX_8FE7EE55963C9EC0` (`id_moneda`),
  ADD KEY `IDX_8FE7EE55CDE0367F` (`id_mediopago`),
  ADD KEY `IDX_8FE7EE5575AEFA0E` (`id_cortecaja`);

--
-- Indices de la tabla `ventaitem`
--
ALTER TABLE `ventaitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2C8CDCBEF760EA80` (`id_producto`),
  ADD KEY `IDX_2C8CDCBE963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `ventaitempaquete`
--
ALTER TABLE `ventaitempaquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_992CCF29BD5B87E` (`id_combinacion`),
  ADD KEY `IDX_992CCF29963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `ventaitempaqueteproducto`
--
ALTER TABLE `ventaitempaqueteproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D7AF1026F760EA80` (`id_producto`),
  ADD KEY `IDX_D7AF1026963C9EC0` (`id_moneda`);

--
-- Indices de la tabla `ventaitempaquete_paqueteproducto`
--
ALTER TABLE `ventaitempaquete_paqueteproducto`
  ADD PRIMARY KEY (`id_ventaitempaquete`,`id_paqueteproducto`),
  ADD KEY `IDX_2985C3A7AA69AF8` (`id_ventaitempaquete`),
  ADD KEY `IDX_2985C3AF8C42576` (`id_paqueteproducto`);

--
-- Indices de la tabla `venta_item`
--
ALTER TABLE `venta_item`
  ADD PRIMARY KEY (`id_venta`,`id_ventaitem`),
  ADD KEY `IDX_94DB61146162AF65` (`id_venta`),
  ADD KEY `IDX_94DB6114ACB96099` (`id_ventaitem`);

--
-- Indices de la tabla `venta_itempaquete`
--
ALTER TABLE `venta_itempaquete`
  ADD PRIMARY KEY (`id_venta`,`id_ventaitempaquete`),
  ADD KEY `IDX_8E56360C6162AF65` (`id_venta`),
  ADD KEY `IDX_8E56360C7AA69AF8` (`id_ventaitempaquete`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT de la tabla `combinacion`
--
ALTER TABLE `combinacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `combinacionitem`
--
ALTER TABLE `combinacionitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de la tabla `cortecaja`
--
ALTER TABLE `cortecaja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `cotizacionestado`
--
ALTER TABLE `cotizacionestado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cotizacionitem`
--
ALTER TABLE `cotizacionitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT de la tabla `cotizacionitempaquete`
--
ALTER TABLE `cotizacionitempaquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cotizacionitempaqueteproducto`
--
ALTER TABLE `cotizacionitempaqueteproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `domiciliotipo`
--
ALTER TABLE `domiciliotipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresatipo`
--
ALTER TABLE `empresatipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `esquemapago`
--
ALTER TABLE `esquemapago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturaestado`
--
ALTER TABLE `facturaestado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `impresionopcion`
--
ALTER TABLE `impresionopcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `maquina`
--
ALTER TABLE `maquina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT de la tabla `ordenestado`
--
ALTER TABLE `ordenestado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ordenitem`
--
ALTER TABLE `ordenitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1142;

--
-- AUTO_INCREMENT de la tabla `ordentipo`
--
ALTER TABLE `ordentipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `pagotipo`
--
ALTER TABLE `pagotipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `rfc`
--
ALTER TABLE `rfc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usocfdi`
--
ALTER TABLE `usocfdi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventaitem`
--
ALTER TABLE `ventaitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventaitempaquete`
--
ALTER TABLE `ventaitempaquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventaitempaqueteproducto`
--
ALTER TABLE `ventaitempaqueteproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FK_4E10122D664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_F41C9B25664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `cliente_contacto`
--
ALTER TABLE `cliente_contacto`
  ADD CONSTRAINT `FK_9D70CEA22A813255` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_9D70CEA2779AA5A9` FOREIGN KEY (`id_contacto`) REFERENCES `contacto` (`id`);

--
-- Filtros para la tabla `cliente_domicilio`
--
ALTER TABLE `cliente_domicilio`
  ADD CONSTRAINT `FK_8C99A1151BA192F6` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id`),
  ADD CONSTRAINT `FK_8C99A1152A813255` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `combinacion`
--
ALTER TABLE `combinacion`
  ADD CONSTRAINT `FK_13C77589664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_13C77589963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_13C77589D5D165C2` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id`);

--
-- Filtros para la tabla `combinacionitem`
--
ALTER TABLE `combinacionitem`
  ADD CONSTRAINT `FK_DD757643CE25AE0A` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FK_DD757643F9BECC66` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategoria` (`id`);

--
-- Filtros para la tabla `combinacion_item`
--
ALTER TABLE `combinacion_item`
  ADD CONSTRAINT `FK_5726161F342BB5CB` FOREIGN KEY (`id_combinacionitem`) REFERENCES `combinacionitem` (`id`),
  ADD CONSTRAINT `FK_5726161FBD5B87E` FOREIGN KEY (`id_combinacion`) REFERENCES `combinacion` (`id`);

--
-- Filtros para la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD CONSTRAINT `FK_682CCAF1664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `FK_2741493CCDE0367F` FOREIGN KEY (`id_mediopago`) REFERENCES `mediopago` (`id`);

--
-- Filtros para la tabla `cortecaja`
--
ALTER TABLE `cortecaja`
  ADD CONSTRAINT `FK_F59B4629664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_F59B4629963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_F59B4629B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_F59B4629FCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `FK_44A5EC032A813255` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_44A5EC033E20BCB9` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `FK_44A5EC03502D9181` FOREIGN KEY (`id_esquemapago`) REFERENCES `esquemapago` (`id`),
  ADD CONSTRAINT `FK_44A5EC03664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_44A5EC03779AA5A9` FOREIGN KEY (`id_contacto`) REFERENCES `contacto` (`id`),
  ADD CONSTRAINT `FK_44A5EC03963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_44A5EC03A3412069` FOREIGN KEY (`id_cotizacionestado`) REFERENCES `cotizacionestado` (`id`),
  ADD CONSTRAINT `FK_44A5EC03B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_44A5EC03FCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `cotizacionitem`
--
ALTER TABLE `cotizacionitem`
  ADD CONSTRAINT `FK_F976E11963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_F976E11F760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `cotizacionitempaquete`
--
ALTER TABLE `cotizacionitempaquete`
  ADD CONSTRAINT `FK_DA7A7893BD5B87E` FOREIGN KEY (`id_combinacion`) REFERENCES `combinacion` (`id`);

--
-- Filtros para la tabla `cotizacionitempaqueteproducto`
--
ALTER TABLE `cotizacionitempaqueteproducto`
  ADD CONSTRAINT `FK_B0CF6214F760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `cotizacionitempaquete_paqueteproducto`
--
ALTER TABLE `cotizacionitempaquete_paqueteproducto`
  ADD CONSTRAINT `FK_9D616D3FBCDEF93` FOREIGN KEY (`id_cotizacionitempaquete`) REFERENCES `cotizacionitempaquete` (`id`),
  ADD CONSTRAINT `FK_9D616D3FF8C42576` FOREIGN KEY (`id_paqueteproducto`) REFERENCES `cotizacionitempaqueteproducto` (`id`);

--
-- Filtros para la tabla `cotizacion_item`
--
ALTER TABLE `cotizacion_item`
  ADD CONSTRAINT `FK_D291C4DF32F1D317` FOREIGN KEY (`id_cotizacionitem`) REFERENCES `cotizacionitem` (`id`),
  ADD CONSTRAINT `FK_D291C4DFE12F6CD4` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizacion` (`id`);

--
-- Filtros para la tabla `cotizacion_itempaquete`
--
ALTER TABLE `cotizacion_itempaquete`
  ADD CONSTRAINT `FK_A5A13A29BCDEF93` FOREIGN KEY (`id_cotizacionitempaquete`) REFERENCES `cotizacionitempaquete` (`id`),
  ADD CONSTRAINT `FK_A5A13A29E12F6CD4` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizacion` (`id`);

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `FK_9B942ED16A540E` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `FK_9B942ED1FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `domiciliotipo` (`id`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_B8D75A506FAE8611` FOREIGN KEY (`id_logo`) REFERENCES `imagen` (`id`),
  ADD CONSTRAINT `FK_B8D75A50D18C71B5` FOREIGN KEY (`id_rfc`) REFERENCES `rfc` (`id`),
  ADD CONSTRAINT `FK_B8D75A50FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `empresatipo` (`id`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_F9EBA009664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_F9EBA009743670BE` FOREIGN KEY (`id_facturaestado`) REFERENCES `facturaestado` (`id`),
  ADD CONSTRAINT `FK_F9EBA009963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_F9EBA009B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_F9EBA009FAD8EE7` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id`);

--
-- Filtros para la tabla `mediopago`
--
ALTER TABLE `mediopago`
  ADD CONSTRAINT `FK_4DD58A587C952D1E` FOREIGN KEY (`id_metodopago`) REFERENCES `metodopago` (`id`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `FK_E128CFD72A813255` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_E128CFD73B438E51` FOREIGN KEY (`id_usocfdi`) REFERENCES `usocfdi` (`id`),
  ADD CONSTRAINT `FK_E128CFD73E20BCB9` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `FK_E128CFD7664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_E128CFD774A6F94D` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id`),
  ADD CONSTRAINT `FK_E128CFD7779AA5A9` FOREIGN KEY (`id_contacto`) REFERENCES `contacto` (`id`),
  ADD CONSTRAINT `FK_E128CFD77C952D1E` FOREIGN KEY (`id_metodopago`) REFERENCES `metodopago` (`id`),
  ADD CONSTRAINT `FK_E128CFD7963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_E128CFD7979742CF` FOREIGN KEY (`id_ordenestado`) REFERENCES `ordenestado` (`id`),
  ADD CONSTRAINT `FK_E128CFD7B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_E128CFD7CDE0367F` FOREIGN KEY (`id_mediopago`) REFERENCES `mediopago` (`id`),
  ADD CONSTRAINT `FK_E128CFD7E12F6CD4` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizacion` (`id`),
  ADD CONSTRAINT `FK_E128CFD7FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `ordentipo` (`id`),
  ADD CONSTRAINT `FK_E128CFD7FCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `ordenitem`
--
ALTER TABLE `ordenitem`
  ADD CONSTRAINT `FK_B43B0907963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_B43B0907F760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `orden_impresionopcion`
--
ALTER TABLE `orden_impresionopcion`
  ADD CONSTRAINT `FK_DB8887027B9676FA` FOREIGN KEY (`id_impresionopcion`) REFERENCES `impresionopcion` (`id`),
  ADD CONSTRAINT `FK_DB888702FAD8EE7` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id`);

--
-- Filtros para la tabla `orden_item`
--
ALTER TABLE `orden_item`
  ADD CONSTRAINT `FK_26FEDDE9340EB520` FOREIGN KEY (`id_ordenitem`) REFERENCES `ordenitem` (`id`),
  ADD CONSTRAINT `FK_26FEDDE9FAD8EE7` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `FK_F4DF5F3E664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_F4DF5F3E963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_F4DF5F3ECDE0367F` FOREIGN KEY (`id_mediopago`) REFERENCES `mediopago` (`id`),
  ADD CONSTRAINT `FK_F4DF5F3EFAD8EE7` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id`),
  ADD CONSTRAINT `FK_F4DF5F3EFB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `pagotipo` (`id`),
  ADD CONSTRAINT `FK_F4DF5F3EFCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_A7BB0615963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`);

--
-- Filtros para la tabla `producto_imagen`
--
ALTER TABLE `producto_imagen`
  ADD CONSTRAINT `FK_2E3E7DFDA52E675E` FOREIGN KEY (`id_imagen`) REFERENCES `imagen` (`id`),
  ADD CONSTRAINT `FK_2E3E7DFDF760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `producto_relacionado`
--
ALTER TABLE `producto_relacionado`
  ADD CONSTRAINT `FK_48C621FE84B491B3` FOREIGN KEY (`id_relacionado`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_48C621FEF760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `rfc`
--
ALTER TABLE `rfc`
  ADD CONSTRAINT `FK_4F2899EF6A540E` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `seccion_mesa`
--
ALTER TABLE `seccion_mesa`
  ADD CONSTRAINT `FK_D5AC414113939EF0` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id`),
  ADD CONSTRAINT `FK_D5AC41413E20BCB9` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `FK_DA7FB914CE25AE0A` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `FK_E99C6D56664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `sucursal_seccion`
--
ALTER TABLE `sucursal_seccion`
  ADD CONSTRAINT `FK_A2BD50463E20BCB9` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `FK_A2BD5046B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_2265B05D664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_2265B05DA52E675E` FOREIGN KEY (`id_imagen`) REFERENCES `imagen` (`id`),
  ADD CONSTRAINT `FK_2265B05DC5687453` FOREIGN KEY (`id_firma`) REFERENCES `imagen` (`id`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK_72EDD1A490F1D76D` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FK_72EDD1A4FCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_sucursal`
--
ALTER TABLE `usuario_sucursal`
  ADD CONSTRAINT `FK_15D9FCFB94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_15D9FCFFCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_8FE7EE553E20BCB9` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55664AF320` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_8FE7EE5575AEFA0E` FOREIGN KEY (`id_cortecaja`) REFERENCES `cortecaja` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55B94781C3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55C74C74BB` FOREIGN KEY (`id_vendedor`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55CDE0367F` FOREIGN KEY (`id_mediopago`) REFERENCES `mediopago` (`id`),
  ADD CONSTRAINT `FK_8FE7EE55FCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `ventaitem`
--
ALTER TABLE `ventaitem`
  ADD CONSTRAINT `FK_2C8CDCBE963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_2C8CDCBEF760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `ventaitempaquete`
--
ALTER TABLE `ventaitempaquete`
  ADD CONSTRAINT `FK_992CCF29963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_992CCF29BD5B87E` FOREIGN KEY (`id_combinacion`) REFERENCES `combinacion` (`id`);

--
-- Filtros para la tabla `ventaitempaqueteproducto`
--
ALTER TABLE `ventaitempaqueteproducto`
  ADD CONSTRAINT `FK_D7AF1026963C9EC0` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  ADD CONSTRAINT `FK_D7AF1026F760EA80` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `ventaitempaquete_paqueteproducto`
--
ALTER TABLE `ventaitempaquete_paqueteproducto`
  ADD CONSTRAINT `FK_2985C3A7AA69AF8` FOREIGN KEY (`id_ventaitempaquete`) REFERENCES `ventaitempaquete` (`id`),
  ADD CONSTRAINT `FK_2985C3AF8C42576` FOREIGN KEY (`id_paqueteproducto`) REFERENCES `ventaitempaqueteproducto` (`id`);

--
-- Filtros para la tabla `venta_item`
--
ALTER TABLE `venta_item`
  ADD CONSTRAINT `FK_94DB61146162AF65` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`),
  ADD CONSTRAINT `FK_94DB6114ACB96099` FOREIGN KEY (`id_ventaitem`) REFERENCES `ventaitem` (`id`);

--
-- Filtros para la tabla `venta_itempaquete`
--
ALTER TABLE `venta_itempaquete`
  ADD CONSTRAINT `FK_8E56360C6162AF65` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`),
  ADD CONSTRAINT `FK_8E56360C7AA69AF8` FOREIGN KEY (`id_ventaitempaquete`) REFERENCES `ventaitempaquete` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
