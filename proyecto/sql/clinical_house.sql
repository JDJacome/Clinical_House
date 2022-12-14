-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 16:48:33
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinical_house`
--
CREATE DATABASE IF NOT EXISTS `clinical_house` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `clinical_house`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ap`
--

CREATE TABLE `ap` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_aux` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ap`
--

INSERT INTO `ap` (`id`, `id_paciente`, `id_aux`) VALUES
(1, 27580057, 1092337120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignación`
--

CREATE TABLE `asignación` (
  `id_asignación` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_auxiliar` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `id_mes` int(11) NOT NULL,
  `turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxiliar`
--

CREATE TABLE `auxiliar` (
  `Cédula` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Teléfono` bigint(20) NOT NULL,
  `Formato` varchar(10) NOT NULL,
  `Horas` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Salario_básico` bigint(11) NOT NULL,
  `Auxilio_transporte` bigint(11) NOT NULL,
  `Poliza_Fepazde` bigint(20) NOT NULL,
  `Bonificación_PTEVM` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auxiliar`
--

INSERT INTO `auxiliar` (`Cédula`, `Nombre`, `Teléfono`, `Formato`, `Horas`, `Estado`, `Salario_básico`, `Auxilio_transporte`, `Poliza_Fepazde`, `Bonificación_PTEVM`) VALUES
(60363587, 'Blanca Oneida', 3213109045, '8H,X', 8, '', 0, 0, 0, 0),
(1092337120, 'Josep Daniel', 3214456148, 'CNX', 12, 'En servicio', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deducido`
--

CREATE TABLE `deducido` (
  `id` int(20) NOT NULL,
  `Salud` bigint(20) NOT NULL,
  `Pensión` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deducido`
--

INSERT INTO `deducido` (`id`, `Salud`, `Pensión`) VALUES
(1, 40000, 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id_dia` int(11) NOT NULL,
  `id_mes` int(11) NOT NULL,
  `dia` varchar(20) NOT NULL,
  `número` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id_dia`, `id_mes`, `dia`, `número`) VALUES
(1, 1, 'Sabado', 1),
(2, 1, 'Domingo', 2),
(3, 1, 'Lunes', 3),
(4, 1, 'Martes', 4),
(5, 1, 'Miercoles', 5),
(6, 1, 'Jueves', 6),
(7, 1, 'Viernes', 7),
(8, 1, 'Sabado', 8),
(9, 1, 'Domingo', 9),
(10, 1, 'Lunes', 10),
(11, 1, 'Martes', 11),
(12, 1, 'Miercoles', 12),
(13, 1, 'Jueves', 13),
(14, 1, 'Viernes', 14),
(15, 1, 'Sabado', 15),
(16, 1, 'Domingo', 16),
(17, 1, 'Lunes', 17),
(18, 1, 'Martes', 18),
(19, 1, 'Miercoles', 19),
(20, 1, 'Jueves', 20),
(21, 1, 'Viernes', 21),
(22, 1, 'Sabado', 22),
(23, 1, 'Domingo', 23),
(24, 1, 'Lunes', 24),
(25, 1, 'Martes', 25),
(26, 1, 'Miercoles', 26),
(27, 1, 'Jueves', 27),
(28, 1, 'Viernes', 28),
(29, 1, 'Sabado', 29),
(30, 1, 'Domingo', 30),
(31, 1, 'Lunes', 31),
(32, 2, 'Martes', 1),
(33, 2, 'Miercoles', 2),
(34, 2, 'Jueves', 3),
(35, 2, 'Viernes', 4),
(36, 2, 'Sabado', 5),
(37, 2, 'Domingo', 6),
(38, 2, 'Lunes', 7),
(39, 2, 'Martes', 8),
(40, 2, 'Miercoles', 9),
(41, 2, 'Jueves', 10),
(42, 2, 'Viernes', 11),
(43, 2, 'Sabado', 12),
(44, 2, 'Domingo', 13),
(45, 2, 'Lunes', 14),
(46, 2, 'Martes', 15),
(47, 2, 'Miercoles', 16),
(48, 2, 'Jueves', 17),
(49, 2, 'Viernes', 18),
(50, 2, 'Sabado', 19),
(51, 2, 'Domingo', 20),
(52, 2, 'Lunes', 21),
(53, 2, 'Martes', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` int(11) NOT NULL,
  `Formato` varchar(5) NOT NULL,
  `Horas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `Formato`, `Horas`) VALUES
(1, 'C', 12),
(2, 'X', 0),
(3, 'N', 12),
(4, 'M', 6),
(5, 'T', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `Cédula` int(11) NOT NULL,
  `Nombre` varchar(55) NOT NULL,
  `Apellido` varchar(55) NOT NULL,
  `Teléfono` bigint(20) NOT NULL,
  `Especialidad` varchar(25) NOT NULL,
  `Tipo_Contrato` varchar(25) NOT NULL,
  `Modalidad` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`Cédula`, `Nombre`, `Apellido`, `Teléfono`, `Especialidad`, `Tipo_Contrato`, `Modalidad`) VALUES
(1092337120, 'Alan', 'Cors', 3214456148, 'A1', 'Aprendizaje', 'ATD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE `mes` (
  `id_mes` int(11) NOT NULL,
  `mes` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mes`
--

INSERT INTO `mes` (`id_mes`, `mes`) VALUES
(1, 'Enero 2022'),
(2, 'Febrero 2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `Nombre` varchar(80) NOT NULL,
  `Identificación` int(11) NOT NULL,
  `Salario_Básico` bigint(12) NOT NULL,
  `Auxilio_Transporte` bigint(12) NOT NULL,
  `Horas_mes` bigint(11) NOT NULL,
  `Dias_laborados` bigint(11) NOT NULL,
  `Sueldo_mes` bigint(11) NOT NULL,
  `N_extras` int(11) NOT NULL,
  `Horas_extras` bigint(11) NOT NULL,
  `Recargo_nocturno` bigint(11) NOT NULL,
  `Recargo_domiical` bigint(11) NOT NULL,
  `R_nocturno_d` bigint(11) NOT NULL,
  `Devengado` bigint(11) NOT NULL,
  `Salud` bigint(11) NOT NULL,
  `Pensión` bigint(11) NOT NULL,
  `Poliza` bigint(11) NOT NULL,
  `Fepazde` bigint(11) NOT NULL,
  `PTE_VM` bigint(11) NOT NULL,
  `Deducido` bigint(11) NOT NULL,
  `Neto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Cédula` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Dirección` varchar(120) NOT NULL,
  `Barrio` varchar(120) NOT NULL,
  `Zona` varchar(60) NOT NULL,
  `Teléfono` varchar(100) NOT NULL,
  `Aseguradora` varchar(30) NOT NULL,
  `Tutela` varchar(5) NOT NULL,
  `Criterio` varchar(5) NOT NULL,
  `Aux_Enfermeria` varchar(5) NOT NULL,
  `Horas` int(11) NOT NULL,
  `GAMS` varchar(20) NOT NULL,
  `Químico` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`Cédula`, `Nombre`, `Sexo`, `Dirección`, `Barrio`, `Zona`, `Teléfono`, `Aseguradora`, `Tutela`, `Criterio`, `Aux_Enfermeria`, `Horas`, `GAMS`, `Químico`) VALUES
(8018, 'GILBERTO RIVERA CAICEDO ', 'M', 'CLL 14 # 7-71', 'MOTILONES', 'ZONA ATALAYA ', '3209891025', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(55598, 'AURA MARIA PEÑA DE COLMENARES', 'F', 'AV 1E No. 15-66 APTO  401 ', 'EDIFICIO VIÑEDO ', 'ZONA LIBERTADORES ', '3163599493', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(72588, 'ROLANDO ENRRIQE PEÑALOZA ', 'M', 'CLL 15 # 2E -47', 'LOS CAOBOS ', 'ZONA LIBERTADORES ', '3157836678', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(153673, 'PABLO VARGAS MONROY', 'M', 'CLL 0AN # 4E-61', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3172972614', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(287315, 'RAMON ANTONIO MORENO MORA ', 'M', 'CLL  2AN  #7e-38', 'LOS PINOS', 'ZONA LIBERTADORES ', '3208379675', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(460231, 'TRINIDAD ILSE MÁRQUEZ DE PEÑA', 'F', 'CALLE 1AN #5-17 ', 'PESCADERO', '', '3185580889', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(519968, 'YANETZI YAMILET UVIEDA INFANTE', 'F', ' AVENIDA 8 #9-130 VILLAS DEL MONTECARLO CASA C6 ', 'PRADOS DEL ESTE ', 'ZONA LIBERTADORES', '3168718545', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1258310, 'LUIS GONZALO PATIÑO RAMIREZ ', 'M', ' CL 1N #0-19E ', 'QUINTA BOSCH ', 'ZONA LIBERTADORES', '3148887077', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1725469, 'VICTOR MANUEL CALA CERQUERA', 'M', 'CRR 10 A # 27-16 -1 ', 'BUENA VISTA 33 ', 'ZONA VILLA ROSARIO', '3209055843', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1910628, 'JUSTINIANO REDONDO ', 'F', 'MZ E 28 LOTE 13 ', 'TORCOROMA 2', 'ZONA LIBERTAD ', '3143715640', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1910845, 'JOSE DEL CARMEN VARGAS ', 'M', 'CALLE 5 AN # 5-78 ', 'COLPET', 'ZONA LIBERTADORES', '3163565121', 'ECOPETROL', 'No', 'No', '', 12, 'OK ', 'sep / 17'),
(1911110, 'VICTOR JULIO VARGAS PALACIOS ', 'M', 'XLL 29 # 4 E-47', 'LA CORDIALIDAD', 'ZONA PATIOS ', '3108683530', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1912052, 'MANUEL ANTONIO RUIZ ', 'M', 'Cll  6N # 1AN - 35  Ceiba II.', 'Edificio torre club apto 401', 'ZONA LIBERTADORES', '3102019227', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1913230, 'LUIS EDUARDO AMOROCHO ', 'M', 'CLL 2 # 7 E -141', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES', '5771355', 'ECOPETROL', 'No', 'No', '', 12, 'INCOMPLETA ', 'AGOSTO '),
(1914914, 'HORACIO MEJIA TELLEZ ', 'M', 'CLL 13  N # 16 E -120', 'ALCALA ', 'ZONA LIBERTADORES', '3162346036', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1915703, 'RAMON ARMANDO VERA ', 'M', 'AV 8 # 66-19 APARTAMENTO 401 EDIFICIO PLATINO BELLAVISTA ALTA', 'BELLAVISTA', 'ZONA PATIOS', '3204027827', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(1915916, 'ELIAS VANEGAS ', 'M', 'AV 8 # 14-76 ', 'ONCE DE NOVIEMBRE ', 'ZONA PATIOS ', '3142818598', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1918664, 'HERNANDO URIBE CALDERON', 'M', 'CALLE 0·1E-70', ' Q BOSH', 'ZONA LIBERTADORES', '3003991797', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1919715, 'HERNAN DE JESUS ALVAREZ PINTO', 'M', 'CLL  5 # 11E-61', 'COLSAG', 'ZONA LIBERTADORES', '3166914533', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1920452, 'LUIS REGULO GARCIA BAUTISTA', 'M', 'CONJUNTO PLENITUD B APTO 415', 'PLENITUD', 'ZONA CENTRO ', '3133159865', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1923302, 'LUIS ARTURO PARRA ', 'M', 'CLL 15 # 6B -47 ', 'TIEERA LINDA ', 'ZONA PATIOS', '3022296187', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1924288, 'GERMAN GUERRERO VARGAS ', 'M', 'AV 10 A # 54-113', 'LA FLORESTA ', 'ZONA PATIOS ', '3203447101', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1925070, 'RUBEN PARADA GELVEZ', 'M', 'AV 3e # 1n-10 ', 'QUINTA BOSH ', 'ZONA LIBERTADORES', '3134513446', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1927246, 'LAURENTINO LAZARO LOPEZ ', 'M', 'CLL 6 TA # 6-20', 'LA VICTORIA ', 'ZONA ATALAYA ', '3152598439', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(1929304, 'MARCO TULIO REY', 'M', 'CLL 32 #10-53 PATIO ANTIGUO ', 'PATIO ANTIGUO ', 'ZONA PATIOS', '3142736779', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1929323, 'ALVARO LEON VEGA ', 'M', 'CLL 3  # 0-58 ', 'LLERAS ', 'ZONA LIBERTADORES', '3173751713', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1929634, 'PARMENIO LOPEZ', 'M', 'CL 4 A  # 13 -  14  ', 'COLSAG ', 'ZONA LIBERTADORES', '3213868516', 'ECOPETROL', 'SI', 'No', '', 12, 'DICIEMBRE', ''),
(1931823, 'EFRAIN AMADO ', 'M', 'AV 23 #28-56', 'SANTANDER ', 'ZONA BELEN ', '3218510101', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1933329, 'JUAQUIN FLOREZ CARRERO ', 'M', 'Cra. 13 # 28AN-81/85', 'NAVARRO WOF ', 'ZONA VILLA ROSARIO', '3164103124', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1936609, 'TEOFILO SUESCUN ROSALES ', 'M', 'CLL 3 # 11E-44', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3203368560', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1939886, 'AURELINO CELIS ', 'M', 'AV 18 E N -75 ', 'ASTURIAS IMPERIAL APT 803', '', '3156262279', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1942721, 'RAMON ALBERTO MORENO GARCIA', 'M', '0 AN  7e -14 QUINTA ORIIENTAL', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES', '3157621077', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(1947873, 'ROBERTO CONTRERAS DIAZ', 'M', 'AV 28 # 14 -46 ', 'JUANA RANGEL ', 'ZONA BELEN', '3124188110', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1949538, 'JOSE PASTOR ANTELIZ TORRES', 'M', 'MZ  F2 CASA  13', 'TORCOROMA ', 'ZONA LIBERTAD ', '3183241034', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1954568, 'EDMUNDO CHACON DURAN ', 'F', 'ALLE 14 #4-20 CASA 69 ', 'CONJUNTO RESIDENCIAL SABANA CLUB VEREDA EL PORTICO', 'ZONA PATIOS ', '316 4541332', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1961430, 'JOSE MANUEL FERNANDEZ RODRIGUEZ ', 'M', 'AV 1E # 13 24 APTO  502  EDIFI EL FARAON ', 'CAOBOS ', 'ZONA CENTRO', '3156424382', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1980779, 'MISAEL LEON TRIANA ', 'M', 'Calle 7 # 3-80 ', 'SAN LUIS ', 'ZONA LIBERTAD ', '316 6800100', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1986837, 'RAMON ANTONO DIAZ', 'F', 'MZ 14 A CASA 14', 'CIUDAD JARDIN ', 'ZONA LIBERTADORES ', '3204840165', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1988682, 'ISMAEL MEDINA JAIMES ', 'M', 'AV 3 CLL 2 ', 'ASILO RUDESINDO SOTO ', 'ZONA BELEN', '3133076767', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1994723, 'MIGUEL GARCIA BARRERA', 'M', 'CLL 2 AV 8 # 8-34', 'PANAMERICANO', 'ZONA AEROPUERTO', '3133816433', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(2007160, 'LAZARO PATIÑO SILVA', 'M', 'AV 4 # 11-45', 'SANTA ANA ', 'ZONA LIBERTAD ', '3118417915', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(2017600, 'JOSE JAIRO PINILLA REY', 'M', 'CASA U- 3 VÍA LA PARADA', 'URBANIZACIÓN SANTA MARÍA DEL ROSARIO', 'ZONA VILLA ROSARIO', '3508944516', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(2057856, 'RUBEN SALAZAR', 'M', 'cll  7N #12E-88 ', 'LOS ACACIOS ', 'ZONA LIBERTADORES', '6555489', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(2170861, 'GRATINIANO MANRIQUE ALVAREZ ', 'M', 'MZ 3 LOTE 18 ', 'ATALAYA 1 ETAPA ', 'ZONA ATALAYA ', '3132240924', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(2173162, 'ISODORO  DELGADO RUIZ ', 'F', 'MZ B1 CASA 19', 'METROPOLIS GARCIA HERREROS ', 'ZONA LIBERTADORES ', '3142657790', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(2871764, 'JULIO  JAUREGUI', 'M', 'calle 2 # 4e -72', 'LA CEIBA ', 'ZONA LIBERTADORES', '3123894899', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(3263609, 'FELIX JOSE ROMAN ', 'M', 'TORRES FRAGATTA APTO 304 LA FLORESTA', 'TORRES FRAGATTA APTO 304 LA FLORESTA', 'ZONA PATIOS', '3112260655', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(3868625, 'JOSE ANGEL LLERENA SOLA ', 'M', 'CLL  15 N # 4-11', 'PORTACHUELO ', 'ZONA LIBERTADORES', '3208893793', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(4111152, 'PEDRO  SGUERRA ', 'M', 'AV 6 #33-72', 'CONJUNTO SANTA CATALINA(LOS PATIOS)', 'ZONA PATIOS', '300 3607340', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(5380847, 'MANUEL MARIA TRUJILLO GUTIERREZ ', 'M', 'CLL 0 # 1 E -102', 'QUINTA BOSH ', 'ZONA LIBERTADORES ', '3246035420', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5381725, 'HERIBERTO MALDONADO DAVILA ', 'F', 'AV 10 A # 42 ', 'CARORA  ', '', '3107537092', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5386120, 'CESAR AUGUSTO DELGADO LA ROTTA ', 'F', 'CONDOMINIO PLENITUD A TORRE 1 ', 'APTO 201', 'ZONA CENTRO ', '3112639771', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5387095, 'JOSE JULIAN MALDONADO ', 'M', 'CLL 7 # 2 E -21', 'POPULAR', 'ZONA LIBERTADORES ', '3213444039', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5387310, 'ALFONSO MADURO BAUTISTA ', 'M', 'AVENIDA 11 # 11-23 ARCOIRIS', 'TORCOROMA ', 'ZONA LIBERTAD ', '5764179', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(5387763, 'ERNESTO BLANCO LEAL', 'M', 'CLL 29 AN # 17A-33 ', 'ALTOS DE LA SIERRA', '', '3138691109', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5388269, 'ALVARO ENRRIQUE GIL ', 'M', 'CLL 9 # 9E -60 GUVI APTO 202', '', 'ZONA LIBERTADORES ', '3172689281', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5389333, 'JUAN PABLO VARGAS PALACIOS', 'M', 'AV 2 E #7-86 ', 'POPULAR POR EL COLEGIO LA SALLE', 'ZONA LIBERTADORES', '3153984469', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5389754, 'JESUS MARIA VILLAMIZAR ', 'M', 'CLL 24 # 12-60', 'LOPEZ', 'ZONA BELEN ', '3132789865', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5390591, 'ALEJANDRO MARTINEZ ', 'M', 'AV 4 # 16 - 88 ', 'LA PLAYA ', 'ZONA LIBERTADORES', '3184015521', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5390926, 'RUBEN DARIO RODRIGUEZ', 'M', 'AV  1 # 4-27', 'LLERAS ', 'ZONA CENTRO ', '3164522027', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5394766, 'FRANCISCO ANTONIO LABARCA VARGAS', 'M', 'MZ 22 LOTE 20 ', 'CLARET ', 'ZONA ATALAYA ', '3118536716', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5394921, 'RAFAEL HERNANDO GOMEZ ARAMBULA ', 'M', 'AV 2 # 18-24 APT 102', 'LA PLAYA ', 'ZONA CENTRO ', '3160445266', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5395001, 'ALEJANDRO PALENCIA ', 'M', 'CLL  23 # 4A- 54', 'PORTAL DE LOS ALCAZARES ', 'ZONA VILLA ROSARIO', '3156309039', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5404027, 'JOSE AGUSTIN ARION ', 'M', ' AVENIDA 8E # 4-36 ', 'QUINTA ORIENTAL', 'ZONA LIBERTADORES', '5753513', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(5404709, 'SAMUEL ESTUPIÑAN ', 'M', 'CONJUNTO CANELA CASA E12 CERCA A NATURA', 'ANILLO VIAL', 'ZONA VILLA ROSARIO', '3133105392', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5404811, 'JORGE ENRIQUE TORRES MENDOZA ', 'M', 'CALLE 4 N 15E-29 ', 'SAN EDUARDO ', 'ZONA LIBERTADORES', '3125140229', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(5404993, 'FRANCISCO PALMA MORALES', 'M', 'CLL 8 # 20-30', 'NUEVO HORIZONTE ', 'ZONA ATALAYA ', '3022627915', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(5405012, 'JORGE ALFONSO NIETO ', 'M', 'CLL 2DA #1-43 ', 'MOTILONES', 'ZONA ATALAYA', '5793912', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5405054, 'CARLOS JULIO DUARTE ', 'M', 'CALLE 7A N°2E-72 ', 'COLSAG', 'ZONA LIBERTADORES', '3174361243', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(5405113, 'JOSE ISAAC BAUTISTA ', 'M', 'CALLE 6N N. 4 - 06', 'COLPET', 'ZONA LIBERTADORES', '3142351995', 'ECOPETROL', 'No', 'No', '', 12, 'FEBRERO ', 'AGOSTO '),
(5409751, 'LUIS ENRIQUE VEGA MONCADA', 'M', 'CLL 1 A # 12-57', 'SAN MARTIN ', 'ZONA LIBERTAD ', '3135971435', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5414344, 'JOSE HELI LOPEZ CAICEDO', 'M', 'CLL 4A #9-88 LA FLORESTA ', 'URB EL BOSQUE NOGAL CS 7', '', '3105513866', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5425148, 'JOSE DE JESUS SANTIAGO DURAN ', 'M', 'CLL 3 A # 1-41 ', 'COLSAG ', 'ZONA LIBERTADORES ', '3124688287', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5441722, 'ALEXANDER VEJAR RUBIO', 'M', 'CLL 7 A # ON  - 64 ', 'TRIGAL DEL NORTE ', 'ZONA AEROPUERTO', '3102696418', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5448567, 'LUIS ANTONIO ROZO SANABRIA ', 'M', 'cll 18 #5-27 ', 'LA CABERRA ', 'ZONA CENTRO ', '3003775828', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5448878, 'LUIS ANTONIO CHIA TORRES ', 'M', 'CLL  5 # 2-03', 'MOTILONES', 'ZONA ATALAYA ', '3188941473', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5449776, 'DANIEL GUTIERREZ HINESTROZA ', 'M', 'CLL 29 # 29-28', 'BELEN ', 'ZONA BELEN', '3156091032', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(5449831, 'JOSE ELIAS BOTELLO ORTEGA', 'M', 'AV  5 CALLE 1 CONFAVI INT 4 ', 'PESCADERO ', 'ZONA LIBERTADORES ', '3164098343', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5473608, 'JOSE DEL CARMEN DIAZ ROJAS ', 'M', 'CLL 15a # 3e-85 APT 301 ', 'EDI. MEDITERRANEO CAOBOS ', 'ZONA CENTRO ', '3214571759', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(5480733, 'GRATINIANO CARRILLO VARGAS', 'M', 'CLL 10 #4-31 ', '7 DE AGOSTO ', 'ZONA ATALAYA ', '3178091378', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5486009, 'FELIX MARIA LLANES PACHECO', 'M', 'MZ I2 LOTE 14 ', 'PRIMERA ETAPA ATALAYA', 'ZONA ATALAYA', '3106953186', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5493923, 'HENRRY OMAR JAIMES', 'F', 'CLL 16 JN #14 -03 ', 'BRISAS DEL AEROPUERTO ', 'ZONA AEROPUERTO', '3115133322', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5545834, 'BALDOMERO ESTUPIÑAN', 'M', 'CLL 15 A # 11-54 ', 'LA LIBERTAD ', 'ZONA LIBERTAD ', '3143238037', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(5612835, 'ROQUE JULIO LIZCANO', 'M', 'MANZANA B CASA 3 ', 'BALCONES DE LLANITOS', 'ZONA PATIOS ', '3125259072', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5638146, 'RODOLFO GUTIERREZ CEPEDA', 'M', 'AV 2AE # 6-51', 'EL POPULAR ', 'ZONA CENTRO ', '3105764578', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5671049, 'CENEN SUAREZ PINZON ', 'M', 'AV 34 # 29-98 ', 'DIVINA PASTORA ', 'ZONA ATALAYA ', '3208461495', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(5730439, 'JHORIANNY ROSIRE LOBO MATHEUS ', 'M', 'CALLE 12A #3-48 ', 'GARCIA HERREROS', 'ZONA AEROPUERTO', '3023111978', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(6741983, 'JOSE TOBIAS RISCANEVO', 'M', 'cll 2 # 3-51', 'LA UNION BOCONO ', 'PARTE ALTA ', '3155943448', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(6817092, 'ANA VICTORIA  YAÑEZ DE PEREZ ', 'M', 'AV 8 3 # 4-71', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3173896008', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(7412204, 'JOSE GESNER BAEZ FLOREZ', 'M', 'AV 17 # 2 N -65 ', 'CONDOMINIO PALMA REAL', 'ZONA LIBERTADORES', '3156730221', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(7498902, 'JOSE ALBERTO FRANCO RODRIGUEZ ', 'M', 'CLL 18 # 19-92 ', 'VALLESTER ', 'ZONA LIBERTAD ', '3125035669', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(8264304, 'HERNAN DE JESUS GOMEZ', 'M', 'CALLE 1N 4E-30 ', 'QUINTA BOSH', 'ZONA LIBERTADORES ', '3104264093', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(8281474, 'JAIME RODRIGUEZ GONZALEZ', 'M', 'CONJUNTO RESIDENCIAL ', 'CLL 30 # 1 -250 BARI APT 504 / CLUB TENIS ', 'ZONA CENTRO ', '3165252736', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(9305956, 'FIDEL ALEJANDRO ARIETA ', 'M', 'CLL 5 A # 13A-58 ', '13 DE MARZO ', 'ZONA LIBERTAD ', '3228321200', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(12740065, 'JOSE ANTONIO QUINTERO NAVARRO ', 'M', 'CLL 13 # 28-40 APT 502 TORRE C ', 'CONJUNTO HACIENDO SAN JUAN ', 'ZONA BOCONO ', '3112375277', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13210050, 'LUIS ERNESTO OMAÑA', 'M', 'Av. 2E # 5-64 ', 'LA CEIBA ', 'ZONA LIBERTADORES', '3106963753', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13210852, 'CARLOS EDUARDO GUZMAN ', 'M', 'CLL 10  # 6AE -45 EDIF ', 'MABEFOR GOLD APT 303 / RIVIERA ', 'ZONA LIBERTADORES ', '3044336301', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(13211303, 'ALFREDO ZANA CASADIEGOS ', 'M', 'MZ K1 LOTE 19', 'ATALAYA 1 ETAPA', 'ZONA ATALAYA ', '3132444416', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13212446, 'TEODORO ROZO ESPINEL ', 'M', 'CALLE 7 AN # 16 AE -98 ', 'URBANIZACION LA PRIMAVERA LIBERTADORES  ', 'ZONA LIBERTADORES ', '3166714125', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(13212575, 'HUMBERTO DELGADO TORRES ', 'M', 'CLL 25 # 17-24', 'AGUAS CALIENTES', 'ZONA LIBERTAD ', '3222746440', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(13212649, 'HERMON MALDONADO ARIAS ', 'M', 'AV 5  20-29 ', 'LA CABRERA ', 'ZONA BELEN', '315 3338658', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13212806, 'JOSE NARCISO SALAMANCA AMAYA', 'M', 'CLL 4 #2E-74 LA CEIBA', 'LA CEIBA ', 'ZONA LIBERTADORES', '3222582365', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13213912, 'LUIS RAMON RODRIGUEZ ', 'M', 'Z H3 LOTE 1', 'ATALAYA I ETAPA ', 'ZONA ATALAYA ', '3112278180', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13215661, 'REINALDO SOLEDAD ', 'M', 'AV 13 # 9-29 ', 'EL LLANO ', 'ZONA CENTRO ', '3188067146', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(13217030, 'PEDRO GOMEZ SUAREZ ', 'M', 'AV LIB PRADOS CLUB INTERIOR 1 #2-12', 'AV LIBERTADORES ', 'ZONA LIBERTADORES', '3232345849', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13218563, 'LUIS RAUL PARRA GAMBOA', 'M', 'CLL  20BN No. 3-30 ', 'TASAJERO ', 'ZONA LIBERTADORES', '3213172992', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13218673, 'RAUL ARTURO  MORA ROJAS ', 'M', 'AV 8  E # 4-71 ', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3173896008', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13222958, 'FERMIN SUAREZ LOZADA ', 'M', 'AV 4  A # 20   N 28 ', 'URB TAZAJERO ', 'ZONA LIBERTADORES', '3123449478', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13225207, 'JOSE WENCESLAO ACERO ', 'F', 'CLL 19 # 18-76', 'SAN JOSE ', 'ZONA BELEN ', '3228632645', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13225557, 'ARMANDO ABREO MONSALVE ', 'M', 'AV 1E#N-20 TORRES BARCELONA APTO 203', 'QUINTA BOSCH ', 'ZONA LIBERTADORES ', '3044788480', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13225974, 'JOSE GABRIEL SUAREZ PANQUEVA', 'M', 'Av 6B #6-113 B', 'PRADOS ESTE', 'ZONA LIBERTAD ', '3203772822', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13228867, 'JAVIER LEMUS ', 'M', 'CALLE 2A NORTE #1-13 ', 'PESCADERO ', 'ZONA LIBERTADORES', '3204878850', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(13229157, 'GONZALO BARON VILLAMIL', 'M', 'CLL 16 49-13 ', 'ANTONIA SANTOS ', 'ZONA ATALAYA ', '3103382627', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13229702, 'WILLIAMS REYES CHACON', 'M', 'CALLE 2AN # 7E-13 APTO 203', 'APTO 203 QUINTA ORIENTAL', 'ZONA LIBERTADORES', '3134439947', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13231714, 'LIBARDO RINCON QUINTERO ', 'M', 'CLL 14 # 8-60', 'EL PARAMO', 'ZONA BELEN ', '6075833143', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(13231976, 'GABRIEL CONTRERAS LAMBRAÑO ', 'M', 'AV2#3-35', 'LA VICTORIA ', 'ZONA ATALAYA ', '3168189417', 'SENA ', 'No', 'No', '', 12, ' ', ' '),
(13232119, 'MARIO DANIEL ANTOLINEZ ANTUNEZ ', 'M', 'CLL. 2 NORTE N° 4E - 55', 'QUINTA BOSCH ', 'ZONA LIBERTADORES ', '3174843286', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13233320, 'ALVARO AMAYA MOGOLLON', 'M', 'Call 5 #8-60', 'SAN MARTIN', 'ZONA LIBERTAD ', '3203814814', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(13237705, 'LUIS ALBERTO CARRILLO ROJAS ', 'M', 'MZ G CASA 5 B  ', 'CONJUNTO PUNTA COLORADO ', 'ZONA PATIOS', '3214726445', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13239716, 'JOSE JOAQUIN DUARTE GUATIBONZA ', 'M', 'CALLE 7A # 6E-141 ', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES', '505367268', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13240406, 'GUILLERMO ANTONIO AGUDELO GAVIRIA ', 'F', 'MANZANA 38 N 16A-36 ', 'ANIVERSARIO I', 'ZONA LIBERTAD ', '3202924915', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13246397, 'HENRRY BARROSO  MENDOZA', 'M', 'AV 3 # 3-30 LLERAS', 'LLERAS ', 'ZONA CENTRO ', '3112435062', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13248326, 'JESUS MARIA CONTRERAS VILLAMIZAR', 'M', 'CALLE 12 #0-25', 'SAN LUIS ', 'ZONA LIBERTAD ', '3124398215', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13248783, 'JOSE ANTONIO CARVAJALINO CONDE', 'M', ' MZ F13 CASA 21', 'TORCOROMA III', 'ZONA LIBERTAD ', '3186004042', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(13249852, 'JOSE DEL CARMEN ROJAS ROPERO', 'M', 'MZ R5 Lote 21 ', 'ATALAYA 1 ETAPA ', 'ZONA ATALAYA ', '3227799974', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13250022, 'REGULO MANRRIQUE MANRIQUE ', 'F', 'CLL 12 # 7-12', 'SAN LUIS ', 'ZONA LIBERTAD ', '3132407196', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13252101, 'CARLOS ALBERTO JARAMILLO ', 'M', 'CRA 1 # 8-45 VILLA ANT', 'HOGAR REVIVIR ', 'ZONA VILLA ROSARIO', '3108010660', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13253715, 'JERSON ZAMBRANO RODRIGUEZ', 'M', 'CLL  6A # 2E- 45 ', 'POPULAR ', 'ZONA LIBERTADORES', '3182351903', 'ECOPETROL ', 'SI ', 'No', '', 12, ' ', ' '),
(13255147, 'LUIS ERNESTO FLOREZ ', 'M', 'CLL 10# 6-62 ', 'SAN LUIS ', 'ZONA LIBERTAD ', '3112618132', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13259119, 'JAIME CONTRERAS SUAREZ', 'M', 'CLL 25 # 12 -54 ', 'ALFONSO LOPEZ PARTE ALTA ', 'ZONA BELEN ', '3222020027', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13265314, 'JOSE DE LA CRUZ MOJICA', 'M', 'CALLE 8 N° 10 - 14 SEGUNDO PISO ', 'EL LLANO ', 'ZONA CENTRO ', '3133437795', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13265593, 'ADOLFO CORONEL ARIAS', 'M', 'CLL0 A # 2E-72 ', 'QUINTA BOSH', 'ZONA LIBERTADORES', '3215998322', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13266598, 'CARMEN ABAD GUTIERREZ SALCEDO', 'F', 'Cll 1.ª #2- 28 ', 'COLINAS BELLO MONTE ', 'ZONA LIBERTAD ', '3228096329', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13337391, 'BENJAMIN DELGADO MANCIPE ', 'M', 'Av. 25 # 22-04 ', 'GAITAN PARTE ALTA ', 'ZONA BELEN', '3134699904', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(13356057, 'ALFONSO SALAZAR URQUIJO', 'M', 'CLL  34 # 7-37 ', 'ERMITA ', 'ZONA ATALAYA ', '3133431393', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13357155, 'GUSTAVO MORENO CAPADOR ', 'M', 'cll 15 # 6-35', 'OSPINA PEREZ ', 'ZONA ATALAYA ', '3224500546', 'PONAL ', 'No', 'No', '', 12, ' ', ' '),
(13364232, 'CARMEN ANGEL TORO ', 'F', 'MZ 13 D2 LT 12 ', 'CUCUTA 75', 'ZONA ATALAYA ', '3123003182', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13374645, 'JESUS ANTONIO DURAN PEINADO ', 'M', 'AV 6C #7-131 ', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD ', '3013070140', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13386029, 'AMADO PACAVITA LEON', 'M', 'AV 9E # 9-30 ', 'LA RIVIERA', 'ZONA LIBERTADORES ', '3156324904', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13435509, 'CARLOS ABEL ROJAS RINCON ', 'M', 'AV 26 ', 'BELEN ', 'ZONA BELEN', '3132513494', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(13436372, 'IVAN EUGENIO COGOLLO MERLANO', 'F', 'AV 7 # 10-52 APTO 202 ', 'CENTRO ', 'ZONA CENTRO ', '3194740078', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13444777, 'JOSE ANTONIO CRISTANCHO LOPEZ ', 'M', 'AV 10 # 10-69 ', 'EL LLANO ', 'ZONA CENTRO ', '3133945864', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13446684, 'JOSE ANTONIO ESPINEL PINZÓN', 'F', 'MZ 17 LOTE  2-66 ', 'MARIA TERESA ', 'ZONA BELEN ', ' 3105290330', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13450958, 'JUAQUN ANGEL PARRA MORALES ', 'M', 'AV  14 E # 9 an -35', 'CIUEDAD JARDIN ', 'ZONA LIBERTADORES', '302597574', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(13463042, 'JOSE JAIRO RIO HUERFANO ', 'F', 'AV 8 # 6 N-43', 'SANTANDER ', 'ZONA VILLA ROSARIO', '3156105219', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13466162, 'LUIS DAVID PORRRAS ', 'M', 'CLL 29 #13A - 53', 'URB COLINAS DE VISTA HERMOSA', 'ZONA VILLA ROSARIO', '3107786161', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13467822, 'JAVIER EDUARDO PEÑA CASTRILLON', 'M', 'Calle 10 #369', 'SAN LUIS ', 'ZONA LIBERTAD ', '3144242077', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13469127, 'MARIO ENRIQUE LABRADOR PACHECO', 'M', 'MZ 5 AV 13 # 9-27A ', 'ANIVERSARIO  I', 'ZONA LIBERTADORES ', '3102236936', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(13473385, 'ALBERTO MAURICIO PACHECO ', 'M', 'RESERVAS DE SAN LUIS ', 'TORRE 7 APTO 302', 'ZONA LIBERTAD ', '3118676872', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13482461, 'CARLOS ENRRIQUE DURAN LINDARTE ', 'M', 'CLL 3 N # 9E-68', 'GOVIKA ', 'ZONA LIBERTADORES ', '3157806439', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13492560, 'DEVINSON ALBERTO VARGAS ', 'M', 'CLL 6 # 18-53 ', 'SIGLO XIX ', 'ZONA LIBERTAD ', '3163512603', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13495634, 'JUAN CARLOS GARCIA BECERRA', 'M', 'Av. 0 N- 1-47', 'LLERAS ', '', '312 4541673', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13501527, 'EDGAR JAVIER CARREÑO MANTILLA ', 'M', 'CALLE 10 # 9e-23', 'LA RIVIERA ', 'ZONA LIBERTADORES ', '3164978683', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13504802, 'CARLOS ARTURO SILVA', 'M', 'MZN 27 LOTE 11', 'PALMERAS PARTE ALTA', 'ZONA ATALAYA ', '3204948250', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13507288, 'NELSON  MORENO GOMEZ', 'M', 'CALLE 5AN # 3-04 ', 'COLPET', 'ZONA LIBERTADORES', '3214752861', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(13818917, 'AMBROSIO GUZMAN GOMEZ ', 'F', 'AV 7 E # 0-11  QUINTA ORIENTAL', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES', '3132543786', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(13825172, 'FRANCISCO VIVIESCAS NAVARRO', 'F', 'CLL  3 # 4-70', 'CARLOS RAMIREZ PARIS ', 'ZONA AEROPUERTO', '3115301449', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(17070825, 'GERMAN BALLESTEROS GUTIERREZ ', 'M', 'AVENIDA 6E # 8A-16 ', 'EDIFICIO LOS ARUPOS LA RIVIERA', 'ZONA LIBERTADORES ', '3157211029', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(17112344, 'CARLOS ORLANDO GONZALES ', 'M', 'CASA J-21 AV 10    ', 'CONJ DUVAI VIA LOS PATIOS ', 'ZONA PATIOS ', '3133871641', 'SENA ', 'No', 'No', '', 12, ' ', ' '),
(17131852, 'EFRAIN ANTONIO BARROS CABAS', 'M', 'AV 12E # 5A30', 'EDIF GAUDI ', 'ZONA LIBERTADORES', '3209116800', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(17137760, 'EFRAIN GONZALES GONZALES', 'M', 'CLL 5 2N # 75 ', 'TRIGAL DEL NORTE ', 'ZONA AEROPUERTO', '3192193203', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(17304907, 'PEDRO AGUSTIN JIMENEZ SARMIENTO', 'M', 'MZ K1 LOTE 20 ', 'ATALAYA 1 ETAPA', 'ZONA ATALAYA', '3135615063', 'PONAL ', 'SI', 'No', '', 12, ' ', ' '),
(17525154, 'JOSE MARIA RODRIGUEZ', 'F', 'CLL  11 #  CASA 3-46', 'TRAPICHES', 'ZONA VILLA ROSARIO', '3136510096', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(18932608, 'HECTOR ENRIQUE TORRES LOPEZ', 'M', 'AV 20B N13-30 ', ' BALLESTER', 'ZONA LIBERTAD ', '3168141732', 'SANITAS ', 'SI ', 'No', '', 12, ' ', ' '),
(19073197, 'JORGE ALBERTO DIAZ ACOSTA', 'F', 'AV 17 E # 2N-65 CASA T -13', 'PALMA REAL ', 'ZONA LIBERTADORES', '3107529692', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(20113835, 'MARIA ALICIA NIÑO JAIMES', 'F', 'CLL 25 # 9-36', 'CUBEROS NIÑO ', 'ZONA BELEN ', '3005711494', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(20241027, 'BELEN BERNAL', 'F', 'CLL 7 AN # 12 E -141 ', 'LOS ACACIOS ', 'ZONA LIBERTADORES ', '3153820964', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(20258758, 'MARIA ELISA DIAZ DE URBINA', 'M', 'CLL 13 # 3A -45 ', 'URB MACARENA CASA D-1', 'SENDERO DE PAZ', '3002356807', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(20299408, 'MARIELA  TORRES DE GALINDO ', 'F', 'AV  1 # 18-48 ', 'BARRIO BLANCO ', 'ZONA CENTRO ', '3143412406', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(20318128, 'ALICIA DURAN LA VERDAD', 'F', 'AV 10E  # 10  -112 LA RIVIERA ', 'LA RIVIERA ', 'ZONA LIBERTADORES', '3187429529', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(20523944, 'YOLANDA CHICA VARGAS ', 'F', 'QUINTAS DEL TAMARINDO I  ', 'CASA I1 ', 'ZONA VILLA ROSARIO', '3212587024', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(20938372, 'ISABEL ARCHILA ', 'F', 'CLL 12 # 17 A -75', 'ANIVERSARIO II ', 'ZONA LIBERTAD ', '3223829454', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(21306394, 'LIGIA RESTREPO VASQUEZ ', 'F', 'URB LA RESERVA CASA    # 4', 'VIA LOS PATIOS ANTES DE LLEGAR UFPS', 'ZONA PATIOS', '3204780989', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(22399988, 'GLADYS HERMINIA DIAZ DE WALDO', 'F', 'CALLE 10C # 0-96 URB VILLA GRACIELA', 'URB VILLA GRACIELA ', 'ZONA VILLA ROSARIO', '3113563672', 'SURA EPS', 'No', 'No', '', 12, ' ', ' '),
(22862705, 'GERTRUDIS ANAYA ALVAREZ ', 'F', 'AV 1 # 0-52 ', 'CHAPINERO', 'ZONA ATALAYA', '3205628142', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(22898114, 'TULIA HERAZO ', 'F', 'CLL  8 A # 12 -94 ', 'SAN MARTIN II', 'ZONA LIBERTAD ', '3184388497', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(22904401, 'MARLENY ENITH RICO DE TOLOZA ', 'F', 'AV 3 # 16-35 ', 'LA PLAYA ', 'ZONA LIBERTADORES', '3042051677', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(22927060, 'ROSA MATILDE LARIOS ', 'F', 'CLL 4 # 15-22', 'CARORA  ', 'ZONA ATALAYA', '5728133', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(23155364, 'LEOVIGILDA MORA DE SUBERO', 'F', 'MANZANA 9 F LOTE 22 ', 'LOS ALMENDROS ', '', '3175343253', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(24074831, 'MARIA EDILIA PEÑARANDA', 'F', 'AV 8 # 8-27 ', 'SEVILLA ', 'ZONA SEVILLA ', '3168822290', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(24229290, 'VISITACION ROJAS', 'F', 'cll 22 # 11- 45 TOLEDO PLATA', 'TOLEDO PLATA', 'ZONA AEROPUERTO', '3138896904', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(26195041, 'SOLEDAD MARINA VIDAL', 'F', 'AV 5 B # 6-60 ', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD', '3167125912', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(26673391, 'TRINIDA PABON ROZO ', 'M', 'AV 4 # 8-21 ', 'LA VICTORIA ', 'ZON ATALAYA ', '3123484597', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(26674099, 'DELIA LOZANO MARTINEZ ', 'F', 'CALLE 28A N° 15-18 ', 'COLINAS DE VISTA HERMOSA', 'ZONA VILLA ROSARIO', '3003092534', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(26684157, 'ELVIRA CALDERON DE YAÑEZ ', 'F', 'MZ  G1 LOTE  17 ', '1 ETAPA ATALAYA ', 'ZONA ATALAYA ', '3126953135', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(26688723, 'RAFAELA PACHECO NAVARRO ', 'F', 'CLL 12 AN  #10A -13', 'CARLOS PIZARRO ', 'ZONA ATALAYA ', '3223933878', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(26735437, 'MARIA DEL CARMEN CASTRO SANTIAGO ', 'F', 'AV 20 B # 13-30 ', 'VALLESTER ', 'ZONA LIBERTAD ', '3168141732', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27550083, 'ISABEL TERESA ACERO JORDAN ', 'F', 'AV 1A # 11-39', 'PASAJES CURASAO LA PLAYA ', 'ZONA CENTRO ', '3212297421', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27550128, 'ROSELIA OMAÑA DE BARON', 'F', 'CALLE 14N#18E-56 ', 'NIZA', 'ZONA LIBERTADORES ', '3003203814', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27552123, 'LIA JACOBINA LLANES', 'F', 'AV 9 # 54-83 APT 903 TORRE A   PIE MONTE LA FLORESTA  3102561846', 'PIE MONTE LA FLORESTA ', 'ZONA PATIOS', '3102561846', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27552677, 'MANUELA ORTIZ ', 'F', 'CLL  21 N #16 BE-56 ', 'URB NIZA', 'ZONA LIBERTADORES', '5873288', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27552895, 'HELENA VALENCIA DE SANTAELLA', 'M', 'CLL 1 # 3E-40', 'LA CEIBA ', 'ZONA LIBERTADORES', '3123834113', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27553111, 'CARMEN ROSA MARTINEZ ', 'F', 'CLL 12 # 19-02', 'CUNDINAMARCA', 'ZONA BELEN ', '3212329959', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27553751, 'CECILIA BALLESTEROS GUTIERRES  ', 'F', 'GERIATRICO LOS VAOS', 'PATIOS', 'ZONA PATIOS', '3158090630', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27554279, 'CECILIA GARCIA HERNANDEZ ', 'F', 'AV 16 N # 17E - 112', 'NIZA', 'ZONA LIBERTADORES ', '3164133393', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27554479, 'DOLORES CARRERO ', 'F', 'CLL 24 # 0A-14 APT 104 LOS LIBERTADORES', 'BARRIO BLANCO ', 'ZONA LIBERTADORES', '3164999994', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(27555312, 'FILOMENA GUALDRON DE CASTRO ', 'F', 'CLL 3 # 12-31', 'CARORA  ', 'ZONA ATALAYA', '3132120054', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27556040, 'ANA VICTORIA JAIMES FERNANDEZ', 'F', 'MZ L5 LOTE  3', 'ATALAYA 1 ETAPA', 'ZONA ATALAYA ', '3005470518', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27556646, 'AMANDA DIAZ DE GELVEZ ', 'F', 'AV 8 A # 1 BN - 65', 'SEVILLA ', 'ZONA AEROPUERTO', '3133456078', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27556812, 'CARMEN NUÑEZ DE ESPITIA ', 'M', '15 #53-46 ANTONIA SANTOS  3197314541-3002191177', 'ANTONIA SANTOS ', 'ZONA ATALAYA', '3002191177', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27557032, 'ALICIA GAMBOA', 'F', 'CLL 16 # 1-66 ', 'LA PLAYA ', 'ZONA CENTRO ', '3127727194', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27557041, 'TRIUNFANTE DIAZ DE DIAZ ', 'F', 'AVENIDA  19 # 8-54 ', 'SAN MIGUEL ', 'ZONA BELEN', '3114540764', 'ECOPETROL', 'No', 'No', '', 12, 'DICIEMBRE', 'AGOSTO '),
(27557284, 'CARMEN SOFIA BELTRAN BUENDIA', 'F', 'AV 19 #11-46', 'CUNDINAMARCA', 'ZONA BELEN ', '3188599514', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27557293, 'ANA BEATRIZ BALAGUERA DE GRANADOS', 'M', 'CARRERA 1E# 8-92', 'HOGAR REVIVIR ', 'ZONA VILLA ROSARIO', '3166563949', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27557671, 'MARIA TULIA VILLAMIZAR DE JAIMES', 'F', 'CL 23 # 12 07 ', 'CUBEROS NIÑO ', 'ZONA BELEN ', '3138701499 ', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27558206, 'DIGNA ROSA GAMBOA', 'F', 'CLL 3 # 6-50', 'ESCOBAL ', 'ZONA BOCONO ', '3112666698', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27558425, 'MARGARITA RUEDA GOMEZ ', 'F', 'AV 5 # 18-25', 'SANTA TERESITA ', 'ZONA LIBERTAD ', '3156207836', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27558547, 'GISELA PORRAS  ', 'F', 'CALLE 18 # 1E-94', 'CAOBOS ', 'ZONA LIBERTADORES', '3142378721', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27559280, 'ANA DE DIOS MANRRIQUE DE PARRA ', 'F', 'AV 11 # 30-35', 'BELLAVISTA ', 'ZONA LIBERTAD ', '3105515472', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27559588, 'ROSA ESTHER DUARTE FERRERO ', 'F', 'CLL 6 # 0-32 ', 'LLERAS ', 'ZONA CENTRO ', '3156940577', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27559638, 'MARINA HERNANDEZ DE POMPEYO ', 'F', 'CASA A 27A Via la Para ', 'TAMACOA ', 'ZONA VILLA ROSARIO', '5700352', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27559696, 'SILVIA CORONADO DE CAMARGO ', 'F', 'TRAPICHES 2 CASA 3 / FRENTE RANCHO DE VILLA LUZ', 'BOCONO ', 'ZONA VILLA ROSARIO', '3134413288', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27560138, 'LUCINA JULIO DE RIVERA ', 'M', 'AV 9E # 6BN - 47 INTERIOR 1', 'CEIBA II ', 'ZONA LIBERTADORES ', '3115716080', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27560189, 'ANGELA LUISA CONTRERAS ', 'F', 'MZ  22 LOTE 15', 'CIUDAD JARDIN ', 'ZONA LIBERTADORES', '3115581882', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27561130, 'CARMEN BAUTISTA DE CUELLAR', 'F', 'AV 6 # 4N -27 ', 'PESCADERO ', 'ZONA LIBERTADORES ', '3215744216', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27561158, 'BERNARDINA PAREDES VDA DE BUSTAMANTE', 'F', 'CALLE 2 N° 7-146 ', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3102514968', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27561365, 'PAULA FUENTES ROJAS', 'F', 'CALLE 11 3 14-70 ', ' PISO EL LLANO  ', 'ZONA CENTRO ', '3112490060', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27561792, 'ANA JOAQUINA PEÑA DE LOPEZ', 'F', 'CLL  6N # 12E-94 ', 'LOS ACACIOS ', 'ZONA LIBERTADORES', '3142934496', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27561808, 'ARACELI HERNANDEZ DE PAREDES ', 'M', 'CLL 5 # 2AE - 19 ', 'LA CEIBA ', 'ZONA LIBERTADORES ', '3204867108', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27561902, 'EDILIA ALVAREZ DE DAW ', 'F', 'AV 11 E # 3-33', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3133018069', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27562771, 'CECILIA GARCIA BAUTISTA ', 'F', 'EDI PLENITUD B APT 415 ', 'PLENITUD', 'ZONA CENTRO ', '3112412425', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27562958, 'ROMELIA CARDENAS DE ROLON', 'F', 'CLL 2 ENTRE  2 y 3 # 2-35', 'AEROPUERTO ', 'ZONA AEROPUERTO', '3133721097', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27563876, 'OFELIA LIZARAZO DE VERA', 'F', 'AV 8 # 66-19 APARTAMENTO 401 EDIFICIO PLATINO BELLAVISTA ALTA', 'BELLAVISTA', 'ZONA PATIOS', '3124523512', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(27565355, 'ESPERANZA ROMAN ', 'F', 'CLL  9 #  9e-60 EDIFICIO GUVI APT 102', 'LA RIVIERA ', 'ZONA LIBERTADORES', '5944664', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(27565577, 'ANA GUERRERO GUERRERO ', 'F', 'CLL 14 # 0-64 ', 'LA  PLAYA ', 'ZONA CENTRO ', '3112583811', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27565773, 'ELIDE  CONTRERAS ', 'F', 'AVENIDA 6 # 23-72', 'EL SALADO', 'ZONA AEROPUERTO', '3165694349', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27566157, 'CARMEN MARIELA PEREZ DE VELASCO ', 'F', 'CONJUNTO RESIDENCIAL TOREE 1 APT 101', ' SAN LUIS ', 'ZONA LIBERTAD ', '3174390008', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27567562, 'DORIS RENE ORTEGA DE TARAZONA', 'F', 'CLL 8 # 1- 33', 'CAMPO VERDE', 'ZONA VILLA ROSARIO', '3103214386', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27567627, 'RUTH MARIN DE JURGUENSEN ', 'F', 'CLL 7 B # 14-30 ', 'SAN MIGUEL ', 'ZONA LIBERTAD ', '3015434494', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27568076, 'MARIANA CAICEDO REYES ', 'F', 'CLL 12a # 18-72 ', 'CUNDINAMARCA', 'ZONA BELEN', '3192330440', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27569180, 'ANA MERCEDES MALDONADO DE PEÑA', 'F', 'CLL 6 # 9E-51 ', 'EL BOSQUE ', 'ZONA LIBERTADORES', '3002001584', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27569415, 'ANA BENILDA MONSALVE ', 'F', 'AV 12 B # 9-66', 'TORCOROMA ', 'ZONA LIBERTADORES', '3153309496', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27569593, 'ANA ROMERO DE MORE ', 'M', 'CRA 1 # 8-45 VILLA ANT', 'HOGAR REVIVIR ', 'ZONA VILLA ROSARIO', '3108010660', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27569977, 'OLGA MARIA LIZCANO DE GAMBOA ', 'F', 'AV 5 # 16 B- 28 ', 'III ETAPA TIERRA LINDA ', 'ZONA PATIOS', '3145182667', 'ECOPETROL', 'No', 'No', '', 12, 'COMPLETA ', ''),
(27570683, 'GILMA RUEDA DE YAÑEZ ', 'F', 'AV 2 E # 5-64', 'LA CEIBA ', 'ZONA LIBERTADORES ', '3114949799', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27570746, 'ALICIA ZANA CASADIEGO', 'F', 'AV 14 N 15-47 ', 'EL CONTENTO ', 'ZONA BELEN', '3102986885', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27571017, 'LIGIA MARIA SANDOVAL DE MORENO', 'F', 'CALLE 7AN # 3E -78', 'CEIBA 2', 'ZONA LIBERTADORES ', '3158219575', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27571057, 'NINA  MALDONADO ', 'F', 'AV 2  B # 7-15 ', 'CHAPINERO', 'ZONA ATALAYA', '3112879481', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27572160, 'MARIA ANTONIA MONSALVE DE BAUTISTA', 'F', 'AV  0 # 17-35 ', 'SAN LUIS ', 'ZONA LIBERTAD ', '3175743172', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27572316, 'BLANCA NELLY PEREIRA ', 'F', 'AV 9AE # 2N - 25 ', 'URB GOVIKA ', 'ZONA LIBERTADORES ', '3132624156', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27573369, 'REBECA SALAS PEREZ ', 'F', 'Av. 1E # 13-140 APT 201', 'EDIFICIO LA CARPEÑA', 'ZONA LIBERTADORES', '3138060119', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27573588, 'MARINA ROZO DE ROZO ', 'F', 'EDI TERRAZA NOSTRA  TORRE 4 APTO 4211', '', 'ZONA BOCONO ', '3212845428', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27573936, 'ANGELA CLEOTILDE CASTRO DE AMOROCHO ', 'F', 'CLL 2 # 7 E -141', 'QUINTA ORIENTAL', 'ZONA LIBERTADORES', '5771355', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27574454, 'RAFAELA PINZON DE BETANCURT ', 'F', 'CLL 4 AN # 15AE-15', 'SAN EDUARDO ', 'ZONA LIBERTADORES ', '3102359812', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27574597, 'RITA ESTHER BRAVO', 'F', 'PELNITUB B TORRE B 114', 'ZONA CENTRO ', 'ZONA LIBERTADORES', '3177839579', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27574828, 'GRACIELA SERRANO DE CAMPOS ', 'F', 'AV LIBERTADORES  URB PRADOS II ', 'CASA 79 ', 'ZONA LIBERTADORES ', '3124186328', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27575340, 'LAURA FORERO', 'F', 'AV  4 # 12-44  APT 201', 'CENTRO ', 'ZONA LIBERTADORES', '3204367108', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27575659, 'GRACIELA GIRON TOLEDO', 'F', ' CLL 5 #5-51', 'NIDIA', 'ZONA ATALAYA ', '3209973038', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27575779, 'CATALINA CEBALLOS DE AYALA', 'F', 'No posee', 'PRADOS II ', 'ZONA LIBERTADORES', '3162340371', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27576028, 'ANA RAMONA CONTRERAS ', 'F', 'CLL 5B # 6B-224 ', 'SAN NICOLAS ', 'ZONA PATIOS ', '3203791784', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27576061, 'MARIA ETELVINA CARRILLO ', 'F', 'AV 4 # 8-81', 'SAN LUIS ', 'ZONA LIBERTAD ', '3243912313', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27576387, 'MARINA PUERTO DE ORTIZ', 'F', 'CLL 6 # 2E-13', 'LA CEIBA ', 'ZONA LIBERTADORES', '3107667343', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27577602, 'OFELIA ACEVEDO VDA DE LEA', 'F', 'CLL 1 # 7 E -38 APT 101', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3013635870', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27577745, 'MARÍA ANTONIA ALFONSO DE MANRIQUE', 'F', 'AV 5 #1A- 32', 'CONJUNTO BILBAO LA INSULA APT 207', 'ZONA SEVILA', '3022977626', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27577964, 'GUILLERMINA SANDOVAL VERA', 'F', 'AV 6  #  7-40', 'SAN LUIS / FUNDAMI ', 'ZONA LIBERTAD ', '75762981', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27578939, 'ALBA MEDINA DE VILLAGAS ', 'F', 'MZ 16 LOTE 1 4 ETAPA ', 'CLARET ', 'ZONA ATALAYA ', '3118007719', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27579030, 'MARIA DEL ROSARIO MERIDIANO ', 'F', 'CLL 9 #  6 -36 APT 104', 'MOTILONES ', 'ZONA ATALAYA ', '3107608169', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(27579464, 'FLOR SAYAGO ', 'F', 'CLL 7 # 2-11 ', 'SAN ANTONIO DE PADUA', 'ZONA VILLA ROSARIO', '3183365798', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27579556, 'LEONILDE VILLAMIZAR', 'M', 'AVENIDA 28 N19-75  TORRE 3 APTO 211 ', 'CONNJUNTO CERRADO TERRA NOSTRA ', '', ' 3158202291', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27580057, 'ADELFA TERESA BERMONT DE PANESSO ', 'F', 'CLL 6 # 4E -14 ', 'POPULAR', 'ZONA LIBERTADORES', '3105610426', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27580350, 'ANA JOSEFA SANDOVAL SANTOS ', 'F', 'CLL 24- # 28-64  ', 'BELEN ', 'ZONA BELEN ', '3125150284', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27580407, 'ANA HIGUERA  BEJAR ', 'F', 'CLL 15N # 17E-60 ', 'NIZA ', 'ZONA LIBERTADORES', '3202218990', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27580494, 'ROSELVIA SANGUINO SANCHEZ', 'F', 'CALLE 1 A # 2 E - 15 ', 'QUINTA BOSCH', 'ZONA LIBERTADORES', '3153979903', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27581076, 'LEONOR HERRERO RODRIGUEZ ', 'F', 'AV 0B22 05  APT 102C ', 'BARLOVENTO / EL ROSAL', 'ZONA CENTRO ', '3105788298', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27582716, 'MARIA IRMA CAMPERO', 'F', 'CLL 6 NORTE # 3-16', 'COLPET', 'ZONA LIBERTADORES', '3102432153', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27583334, 'MARIA ANTONIA RODRIGUEZ RONCANCIO ', 'F', 'CLL 3 N # 0-6E ', 'CEIBA ', 'ZONA LIBERTADORES', '322 2070565', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27584232, 'MATILDE RIVERA LEAL ', 'F', 'AV 7E #3-15', 'QUINTA ORIENTAL', 'ZONA LIBERTADOES ', '3167346577', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27584741, 'CARMEN ALICIA GARCIA PACHECO ', 'F', 'CALLE 28AN #13A- 95 URB COLINAS DE VISTA HERMOSA', 'URB COLINAS DE VISTA HERMOSA', 'ZONA VILLA ROSARIO', '3114853946', 'SANITAS ', 'SI ', 'No', '', 12, ' ', ' '),
(27584831, 'MARIA DE LA CRUZ AMAYA ', 'F', 'MZ K2 LOTE 22 ', 'ATALAYA 1 ETAPA', 'ZONA ATALAYA ', '3153171317', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27584977, 'MATILDE  BULLA  ', 'F', 'CALLE 5 NO. 2AE - 15 ', 'CEIBA', 'ZONA LIBERTADORES', '5718784', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27585886, 'LUZ MARINA QUINTERO DE GUERRERO ', 'F', 'AV 10 A # 54-113', 'LA FLORESTA ', 'ZONA PATIOS ', '3203447101', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27586000, 'MARIELA LOPEZ DE ALTUVE ', 'F', 'AV 7 # 7-114', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD ', '314 3892895', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27586138, 'ELDA MARIA SANCHEZ DE ALBA ', 'F', 'AV 15 A # 20-38', 'ALFONSO LOPEZ', 'ZONA BELEN', '3194053141', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27586173, 'NELLY DIAZ DE CARDENAS', 'F', 'CL 13 # 1-62  SAN LUIS ', 'SAN LUIS ', 'ZONA LIBERTAD ', '3184809600', 'ECOPETROL ', 'SI ', 'No', '', 12, ' ', ' '),
(27587701, 'AURA MARIA PEREZ PRATO', '', ' AV 7 # 19-45  ', 'LA CABRERA ', 'ZONA CENTRO ', '3212225243', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27587968, 'AGUSTINA MANRIQUE DE SIERRA', 'F', 'AV 8 # 0B N-15', 'SEVILLA ', 'ZONA AEROPUERTO', '3114805222', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27588308, 'CARMEN CECILIA YAÑEZ GRANDE', 'F', 'AVE 18  E # 7 N -166 APT 103 D', 'TORRES DE PICABIA', 'ZONA LIBERTADORES ', '3003066892', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(27588426, 'ALIX MARIA GOMEZ DE SANCHEZ', 'F', 'AV  7 # 6-71', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD ', '3229459587', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27588547, 'CARMEN OLIVA CLARO DE SANCHEZ', 'F', 'CLL 5 AN  # 3-15', 'PESCADERO ', 'ZONA LIBERTADORES ', '3138080572', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27588694, 'MARIA DEL SOCORRO ERAZO', 'F', 'CONJ RESIDENCIAL RESERVA SAN LUIS', 'TORRE  8 APTO  302  ', 'ZONA LIBERTAD ', '3002827095', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27589303, 'TRINIDAD CASTRILLON RODRIGUEZ', 'F', 'CALLE 22 12-31 ', 'ALFONSO LOPEZ', 'ZONA BELEN ', '3125636845', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27589743, 'MARTHA RODRIGUEZ', 'F', 'CLL  3 #10AE-53 ', 'QUINTA ORIENTAL', 'ZONA LIBERTADORES', '3134862576 ', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27592670, 'MYRIAM HAYDEE ARIAS AGUILLON', 'F', 'AV 7 # CLL 4 B # 9BN -130', 'CHAPINERO ', 'ZONA ATALAYA ', '3222587756', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27594115, 'BLANCA MYRIAM RIVERA ', 'F', 'cll 17 # 11AN -03', 'LA ESPERANZA ', 'ZONA VILLA ROSARIO', '3227728462', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27607244, 'SOCORRO NIÑO DE REYES ', 'F', 'CLL 15 N # 17E-73', 'NIZA', 'ZONA LIBERTADORES ', '3203923476', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27608287, 'ROSA DELIA ORTEGA ', 'M', 'AV 20 # 8-20 ', 'SAN MIGUEL ', 'ZONA BELEN', '3152496968', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27608292, 'EDDA ZAMBRANO DE SILVA ', 'F', 'CALLE 2 #4E-90 ', 'LA CEIBA ', 'ZONA LIBERTADORES', '3229699207', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27608504, 'ANA PAULA CELIS DE RUEDA ', 'F', 'No posee', 'QUINTA BOSH ', 'ZONA LIBERTADORES', '6555478', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27608762, 'EDELMIRA BAUTISTA ', 'M', 'CLL 1# 14-12 ', 'URB NUEVA ESPERANZA SAN MARTIN ', 'ZONA LIBERTAD ', '3213595105', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27609061, 'SOLEDAD BLANCO', 'M', 'CLL 5 Norte # 4 -26 ', 'COLPET ', 'ZONA LIBERTADORES', '3107656900', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(27609187, 'CARMEN SOFIA RICO DE BAUTISTA ', 'F', 'CALLE 6N N. 4 - 06 ', 'COLPET', 'ZONA LIBERTADORES', '3142351995', 'ECOPETROL', 'SI', 'No', '', 12, 'OCTUBRE', 'AGOSTO '),
(27616279, 'FIDELINA GARAVITO DE MELO', 'F', 'CLL14 # 49-88 ', 'ANTONIA SANTOS ', 'ZONA ATALAYA', '3132128879', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27617725, 'ANA DOLORES SANCHEZ', 'F', 'CALLE 7 AV 19-19 ', '28 DE FEBRERO  ', 'ZONA BELEN ', '3133111074', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27631200, 'MARIA HELENA JIMENEZ DE CORDERO ', 'F', 'AV 18 # 4-11', 'SIGLO XXI ', 'ZONA LIBERTAD ', '3138560447', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27631950, 'EMPERATRIZ TORRES ', 'F', 'MZ E CASA 4 ', 'URB LA FLORIDA VILLA CAMILA SAN LUIS', 'ZONA LIBERTAD ', '3184181251', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27637215, 'CARMEN ESTHER MARIÑO ', 'F', 'CLL 2 1 E -83 ', 'CEIBA   ', 'ZONA LIBERTADORES', '3104822239', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27637581, 'ELOINA CLAVIJO ', 'F', 'CLL 22 AN # 4-07', 'TASAJERO ', 'ZONA LIBERTADOES ', '3176349939', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27649094, 'VITERMINIA BECERRA', 'F', 'CALLE 22 # 12A-13 FLORIDA BLANCA', 'TRIGAL DEL NORTE ', 'ZONA AEROPUERTO', '3134968533', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(27658550, 'FANY AREVALO ', 'F', 'CALLE 13 N #17E-29', 'ALCALA ', 'ZONA LIBERTADORES', '315 4265541', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27659894, 'CARMEN GOMEZ ', 'M', 'AV LIB TORRES DEL PARQUE ', 'APT 401 TORRE B ', 'ZONA LIBERTADORES', '3506112326', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(27670169, 'EVANGELINA CONTRERAS DE ALBARRACIN ', 'F', 'AV 3ESTE N° 1-30', 'LA CEIBA ', 'ZONA LIBERTADORES', '3144104538', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(27670715, 'MARIA IGNACIA FONSECA ', 'F', 'CALLE 7 AV 3 # 3 04 ', 'BARRIO MOTILONES', 'ZONA ATALAYA', '3212503304', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27671007, 'NINFA CARRILLO DE MENDOZA', 'F', 'AV 17  10-65 CUNDINAMARCA', 'CUNDINAMARCA', 'ZONA BELEN', '3213686431', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27678786, 'OLIVA CERINZA DE ALBARRACÍN', 'F', 'CLL 18 #15-39', 'LA LIBERTAD', 'ZONA LIBERTAD ', '3022399313', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27679975, 'TILCIA VERA ', 'F', 'CLL 3 # 10-53', 'CARORA  ', 'ZONA ATALAYA ', '320 4330224', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27680007, 'MYRIAM VERA DE CONTRERAS ', 'M', 'CLL 20 # 3A -30', 'SANTA TERESITA ', 'ZONA LIBERTAD ', '3168060719', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27680425, 'MARIA EUGENIA ALVAREZ ALBARRACIN ', 'F', 'HOGAR GERIATRICO ', 'REVIVIR / VILLA ANTIGUA ', 'ZONA VILLA ROSARIO', '3208486636', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27685692, 'AMINTA RODRIGUEZ DE LEAL', 'F', 'CLL  17 #7-05 CONUNTO COMFAORIENTE', 'TIERRA LINDA', 'ZONA PATIOS', '3182726060', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27694348, 'ANAYDA PEÑA DE CARDENAS', 'F', 'AV 2 # 15-35 APTO 101', 'LA PLAYA ', 'ZOAN CENTRO ', '3102329461', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27694629, 'CARMEN ROSA ORTEGA  ', 'F', 'AV 2AE # 5-48 ', 'LA CEIBA ', 'ZONA LIBERTADORES', '3137608969', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27697553, 'NUBIA MARLENY LEON ', 'F', 'MZ 13 LOTE 24 ', 'VALLE DEL RODEO', 'ZONA BELEN ', '3137392648', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27702751, 'LUZ ESPERANZA VIVAS DE VELANDIA', 'F', 'CLL 2 N # 1 E -53 ', 'QUINTA BOSH ', '', '3005698657', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27712256, 'CENELLY PACHECO DE VERGEL', 'F', 'No posee', 'CONJUNTO DUBAI ', 'ZONA PATIOS', '3023765984', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27717726, 'DELIA MARIA LEAL ', 'F', 'CLL 11 # 13 -48', 'EL LLANO ', 'ZONA CENTRO ', '5717516', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27725578, 'MARIA CARLINA DURAN DE MANZANO', 'F', 'CLL 10 # 12-49 ', 'MARIA PAZ', 'ZONA ATALAYA ', '3134609932', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27726059, 'RAMONA ANTONIA CONTRERAS', 'F', 'AV 2 A # 33-88', 'VILLA JULIANA / CONCORDIA', 'ZONA AEROPUERTO', '3002847551', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27731628, 'MIRIAM  SOCORRO PABON DE SANTOS ', 'F', 'AV 13 # 14-61', 'EL CONTENTO ', 'ZONA BELEN ', '3183872714', 'SANITAS ', 'No', 'No', '', 12, ' ', ' ');
INSERT INTO `paciente` (`Cédula`, `Nombre`, `Sexo`, `Dirección`, `Barrio`, `Zona`, `Teléfono`, `Aseguradora`, `Tutela`, `Criterio`, `Aux_Enfermeria`, `Horas`, `GAMS`, `Químico`) VALUES
(27737231, 'MIRIAN CACUA MALDONADO', 'F', 'CLL 34 N 37 - 38', 'BRISA DE LOS ANDES  LA PASTORA ', 'ZONA BELEN ', '3107874961', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27739958, 'ROSABEL TORRADO CLARO', 'F', 'CLL 3 #11e-55', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES', '3102692700', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27747443, 'TERESA ACEROS CORREA ', 'F', 'CLL 18 # 16-56', 'BELISARIO ', 'ZONA LIBERTADORES ', '3102853548', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27756314, 'DIOSELINA SANJUAN DURAN ', 'F', 'AV 20 # 12-35', 'VALLESTER ', 'ZONA LIBERTAD', '3022238590', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27758374, 'GLADYS MENESES REYES ', 'F', 'CLL 22 AN # 3-54 ', 'URB TASAJERO ', 'ZONA LIBERTADORES ', '3045631139', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27775934, 'ANA DOLORES OCHOA DE CONTRERAS ', 'F', 'CLL 39 #1-02', 'URB NUEVA FLORESTA SABANA ', 'ZONA PATIOS ', '3202856680', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27776725, 'ANA DE JESUS VILLAMIZAR DIAZ', 'F', 'AV 9 # 15-06 EL PARAMO', 'EL PARAMO', 'ZONA CENTRO ', '3173008690', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27776936, 'ELOINA JIMENEZ DE SILVA ', 'F', 'AV 21 #11-89 ', 'VALLESTER ', 'ZONA LIBERTAD ', '3216356980', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27778729, 'ANA CELIA SCOVINO ', 'F', 'AV0B# 21B-60 APT 301 ', 'EL ROSAL/ DETRÁS DEL COL CARD SAN', 'ZONA LIBERTADORES', '3106954590', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27779052, 'GRACIELA SALCEDO DE ANDRADE', 'F', 'CLL 7a #11E-34', 'COLSAG', 'ZONA LIBERTADORES', '3163387959', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27779309, 'MARIA CRISTINA  BALLEN  SPANNOCCHIA', 'F', 'CALLE 30 # 1-40', ' EDIF PLENITUD APTO 503 TORRE A  ', 'ZONA LIBERTADORES', '3138069396', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27780068, 'LEONOR DE JESUS TORRADO', 'F', 'CALLE 34 A # 3A - 19', 'LA CONCORDIA ', 'ZONA PATIOS', '3203678775', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27780735, 'ROSA INES VARGAS ', 'F', 'CLL  3N# 3E- 19 ', 'LA CAPILLANA ', 'ZONA LIBERTAD ', '3175388078', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27796686, 'JOSEFA ANTONIA CONTRERAS ', 'F', 'CLL 10N # 9E-15 ', 'GUIMARAL ', 'ZONA LIBERTADORES', '3138472367', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27798642, 'BLANCA ISABEL MORANTES DE ESPITIA', 'F', 'AV 18 E # 14 N - 05 ', 'NIZA', 'ZONA CENTRO ', '3172972614', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27799267, 'BEATRIZ MIRANDA SILVA', 'F', 'CLL 10 #4-31', '7 DE AGOSTO ', 'ZONA ATALAYA ', '3178091378', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27802328, 'ANA FRANCISCA ROLON ', 'F', 'CLL 1A # 1 E -08 ', 'QUINTA BOSH ', 'ZONA LIBERTADORES ', '3013861786', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27803592, 'MARIA  DE JESUS TAMAYO DE MEDINA', 'F', 'AV 3 CLL 2 ', 'ASILO RUDESINDO SOTO ', 'ZONA BELEN', '3133076767', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27803601, 'OLGA ALTAGRACIA', 'F', 'CLL 7  A # 12 E -04 TORRES DEL COLSAG APT 501', 'COLSAG ', 'ZONA LIBERTADORES', '3012847699', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27807502, 'EVANGELINA CARDENAS DE CARDENAS ', 'F', 'CLL  21#17-75', 'ALFONSO LOPEZ ', 'ZONA BELEN ', '3158829606', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27809724, 'ESTHER SANCHEZ DE GRANADA ', 'F', 'AV 7 E # 2-23', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3007663772', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27811125, 'CONCEPCION PEÑA DE CACERES ', 'F', 'AV 11 3 # 10 N -73', 'GUAIMARAL ', 'ZONA LIBERTADORES ', '3146159830', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27812137, 'ANA ISABEL RINCON DE RINCON ', 'F', 'MZ 30  CASA 11 ', 'BRISAS DEL NORTE ', 'ZONA AEROPUERTO', '3016936262', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27829166, 'TULIA PEREZ DE AYALA', 'F', 'AV  1A E # 18-55 ', 'CAOBOS ', 'ZONA LIBERTADORES', '3108688750', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27833800, 'CANDIDA GARCIA', 'F', 'MANZANA L5 LOTE 15 FRENTE A LA CANCHA 20 DE JULIO PRIMERA ETAPA', 'ATALAYA', 'ZONA ATALAYA', '3506820039', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(27834858, 'CARMEN ROSA SERRANO ', 'F', 'CLL 7 # 9 E -96 APT 603', 'EDIFICIO TOSCANA COLSAG ', 'ZONA LIBERTADORES ', '5763830', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27838529, 'BLANCA BELEN BAUTISTA', 'F', 'CLL 19 AN # 16 BE -35 ', 'NIZZA', 'ZONA LIBERTADORES', '3204693008', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(27877315, 'ROSA MARIA MENDOZA CARRILLO ', 'F', 'CLL 21 # 9-06 ', 'LA LIBERTAD', 'ZONA LIBERTAD ', '3224660890', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27886232, 'MARIA EVELIA FLOREZ DE RODRIGUEZ', 'F', 'CLL 17 # 19-159', 'VALLESTER ', 'ZONA LIBERTAD ', '3204229678', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27889362, 'LAURA OMAÑA DE DUARTE ', 'F', 'CALLE 7A N°2E-72 ', 'COLSAG', 'ZONA LIBERTADORES', '3174361243', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27889629, 'LIBRADA MERCHAN', 'F', 'CLL 9 N 16-02', ' LA PALMITA ', 'ZONA VILLA ROSARIO', '3106796171', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27889915, 'MARIA LEGUIZAMON ', 'F', 'CLL 8A # 9E-12 ', 'SAN EDIFICIO APT 404 COLSAG ', 'ZONA LIBERTADORES ', '3005269329', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27897036, 'JOSEFINA SOTO DE SALAMANCA', 'F', 'CLL 28 A # 10-71 ', 'PATIO ANTIGUO ', 'ZONA PATIOS', '5556654', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(27899158, 'ANA FRANCISCA VARGAS', 'F', 'CLL 21 # 11-38', 'ALFONSO LOPEZ', 'ZONA BELEN', ' 315 3244522', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27908072, 'TERESA NIÑO DE PICÓN ', 'F', 'CLL 26 #4-87 ,', 'SAN MATEO ', 'ZONA LIBERTAD ', '3053745057', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27940221, 'ANA DE DIOS GARCIA CUEVAS ', 'F', 'AV 3 # 3-30 ', 'SAN MATEO PARTE ALTA ', 'ZONA LIBERTAD ', '3052505931', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27951009, 'DOLORES RODRIGUEZ CUADROS', 'M', 'CLL 5 # 19-82 ', 'SIGLO XIX ', 'ZONA LIBERTAD ', '3123709860 ', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(27997280, 'NOHEMA PRADA DE MURCIA ', 'F', 'AV 2E # 5-64 El Jardin de mis abuelitos', '', 'ZONA LIBERTADORES', '5752345', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(27997498, 'ISABEL RUEDA DE PINILLA ', 'F', 'CALLE 11 N # 3A-57 ', 'URBANIZACION EL PARAISO  EL BOSQUE', 'ZONA LIBERTADORES', '3156775396', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(28001422, 'ANA ISABEL JIMENEZ VASQUEZ', 'F', 'CALLE 7 NO. 5-34', 'MOTILONES', 'ZONA ATALAYA', '3143898743', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(28051909, 'ROSA DELIA GUALDRON MARIÑO ', 'F', 'CRR 12 # 11-49 ', 'EL PARAMO ', 'ZONA VILLA ROSARIO', '3125552050', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28066669, 'NATIVIDAD SILVA', 'F', 'AV 19 # 17-44', 'BALLESTER', 'ZONA LIBERTAD ', '3112472755', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28123010, 'LETICIA MEJIA VDA DE CADENA', 'F', 'CONJUTO RESIDENCIAL PUNTA COLORADO ', 'MZ H CASA 5 B ', 'ZONA PATIOS', '3112784731', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28124201, 'MARIA DE JESUS CAMACHO ', 'M', 'CLL 12 # 121', 'SAN LUIS ', 'ZONA LIBERTAD ', '3123697201', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28127095, 'ROSAURA CANDELA DE MESA', 'F', 'CRR  6 # 4-48 ', 'CENTRO ', 'ZONA VILLA ROSARIO', '3125529612', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(28232218, 'IRMA PEÑALOZA DE VILLAMIZAR ', 'F', 'CLL 14 N # 15 AE -21 BLOQUE 6 APT 102', 'GRATAMIRA ', 'ZONA LIBERTADORES', '3218138119', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28234065, 'FRANCISCA ARENALES DE MORENO ', 'F', 'CARRERA 11 # 9N-15', ' BARRIO 20 DE JULIO', 'ZONA VILLA ROSARIO', '3115193354', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(28257182, 'CECILIA LOZANO CAMACHO', 'F', 'CLL 16 #  14-36 ', 'LA LIBERTAD ', 'ZONA LIBERTAD ', '3138664385', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28294569, 'BARBARA DELGADO ALVAREZ', 'F', 'CLL 22 # 9-81 ', 'SANTA BARBARA ', 'ZONA VILLA ROSARIO', '3134262237', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(28310951, 'INES HOTOS DE ISAZA ', 'F', 'AV 11 # 6-68', 'TORCOROMA ', 'ZONA LIBERTAD ', '322 7404642', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(28375892, 'ROSALBA ROJAS DE ACEVEDO ', 'F', 'CONJ CERRADO VILLA ALCALA B ', 'AB LIBERTADORES ', 'ZONA LIBERTADORES', '3104924135', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(28385063, 'LASTENIA  HERRERA   ', 'F', 'CALLE 2 NO. 7-32', 'ALTOS  PAMPLONITA', 'ZONA LIBERTAD ', '3013372933', 'ECOPETROL ', 'SI ', 'No', '', 12, ' ', ' '),
(28386619, 'VIRGINIA ORTIZ DE GOMEZ', 'F', 'CALLE 12 # 12-56  CASA # 5', 'EL PARAMO ', 'ZONA VILLA ROSARIO', '3042460140', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(28418492, 'EDELMRA VILLAMIZAR MENEZ', 'F', 'CLL 21 # 2-59 ', 'PRADOS NORTE ', 'ZONA LIBERTADORES ', '3163050413', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28516933, 'EVELIA CALDERON DE ARIAS', 'F', 'CL 13N # 9AE-19 ', 'GUAIMARAL ', 'ZONA LIBERTADORES', '3185960847', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(28833303, 'ALICIA MENDEZ  DE ALVIS ', 'F', 'TAMARINDO CLUB CASA R 11 ', 'TAMARINDO CLUB CASA R 11 ', 'ZONA VILLA ROSARIO', '3124952739', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(28972298, 'LIBOLIA CRUZ ', 'F', 'CLL 6 # 8-86 CASA B 2 ', 'VERACRUZ ', 'ZONA PRADOS ', '3162230306', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(29329671, 'BEATRIZ RAMIREZ IZA', 'F', 'CLLE 18 # 3-57', 'AEROPUERTO ', 'ZONA AEROPUERTO', '3114572726', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(29553778, 'ROSABEL SERNA DE HINOJOSA', 'F', 'AV # 9-19 ', 'LLANO', 'ZONA CENTRO ', '3118750085', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(29854199, 'INES BETANCOURT DE QUINTERO ', 'F', 'AV 7 E # 7AN -12', 'CEIBA II ', '', '3127695482', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(31842751, 'LUZ STELLA OCHOA RAMIREZ ', 'F', 'No posee', 'AEROPUERTO ', 'ZONA AEROPUERTO', '5920700', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(35314112, 'CARMEN ROSA GAMBOA ', 'F', 'CLL 20 AN # 4-27 ', 'PRADOS NORTE ', 'ZONA LIBERTADORES ', '3123285655', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37177059, 'MARIA DEL CARMEN CELIS', 'F', 'AV 6 #4-35 ', 'LA UNION  ', 'ZONA LIBERTAD ', '3104711094', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37211886, 'ELIA BRIGIDA VILLAMIZAR DE VERA', 'F', 'CLL 4 # 7-86', 'EL CALLEJON ', 'ZONA ATALAYA ', '3152145515', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37212565, 'MARINA RINCON DE CASELLES ', 'F', 'MZ  16  LOTE 9', 'CIUDAD JARDIN ', 'ZONA LIBERTADORES', '3219796625', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37215450, 'ELSA GOMEZ DE DIAZ', 'F', 'AV 0A # 4-36  LLERAS', 'LLERAS ', 'ZONA CENTRO ', '3043775669', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37215891, 'ANA MARIA BOHORQUEZ', 'F', 'AV 30 N. K5 – 1 ', 'BOCONO FRENTE A LA IGLESIA', 'ZONA VILLA ROSARIO', '3024139295', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(37217049, 'NYDIA LEONOR ALBARRACIN ', 'F', 'CLL 2 # 4 E -80', 'LA CEIBA ', 'ZONA LIBERTADORES ', '3012725172', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37218194, 'ENELDA OLIVEROS MENDEZ', 'F', 'AC 26 CA 36  - 53 ', 'BELEN ', 'ZONA BELEN ', '3143267187', 'COMFAORIENTE ', 'SI', 'No', '', 12, ' ', ' '),
(37218483, 'JUANITA CHAVEZ LIZCANO ', 'F', 'CLL 22N #4-36', 'PRADOS NORTE ', 'ZONA LIBERTADORES ', '3172822601', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37220363, 'FRANCELINA ORTEGA', 'F', 'CLL 9 # 5 -104  ', 'MOTILONES ', 'ZONA LIBERTADORES', '3132083215', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(37223248, 'GRACIELA LAZARO VILLAMIZAR', 'F', 'CLL 7BN  # 11E -81 ', 'LOS ACACIOS ', 'ZONA LIBERTADORES', '3157925102', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37226160, 'MARLENY RIVERO', 'F', 'CLL  2 # 0-50 ', 'LLERAS ', 'ZONA CENTRO ', '3023073955', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37226834, 'MARINA DUARTE VANEGAS ', 'M', ' Calle 7 AN # 12E – 94', 'LOS ACACIOS ', 'ZONA LIBERTADORES', '3112772820', 'ECOPETROL', 'No', 'No', '', 12, 'AGOSTO/OK ', ''),
(37228253, 'MARIA DELIA CARDENAS DE CARRILLO ', 'F', 'AV 1 #0-22 ', 'TRIGAL DEL NORTE ', 'ZONA AEROPUERTO', '3168918579', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37230506, 'EDELMRIA BARRERA LEAL ', 'F', 'CLL 8AN  # 3e-38', 'CEIBA II ', 'ZONA LIBERTADORES ', '3045603644', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37230685, 'MARIA ISABEL BONELS', 'F', 'CLL7 # 6e-59 ', 'LA RIVIERA ', 'ZONA LIBERTADORES', '3002052155', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(37230968, 'MYRIAM GONZALEZ DE CARDENAS', 'F', 'AV 10 # K-73 -1  PISAREAL', 'PISAREAL ', 'ZONA PATIOS', '3206337715', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(37234718, 'TULIA MERCHAN LOZANO ', 'F', 'AV 18 CLL 7 CASA #7-12', 'LOMA DE BOLIVAR ', 'ZONA BELEN ', '3227646802', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37235938, 'AURA MARIA SUAREZ DE OLIVARES', 'F', 'CLL 11 #1-17 ', 'AEROPUERTO ', 'ZONA AEROPUERTO', '3138140497', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37236686, 'ELIZABETH BELTRAN VILLAMIZAR ', 'F', 'AV 10 # 15 -89 ', 'EL CONTENTO ', 'ZONA BELEN ', '3209090412', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37237583, 'DOMELIA ELISA LOPEZ PEINADO', 'F', 'CALLE 27 AV 14 #11-79 ', 'ALFONSO LOPEZ ', 'ZONA BELEN', '3144254502', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(37238197, 'BERNANDA CONTRERAS SANABRIA', 'F', 'CLL 27 # 17-26', 'AGUAS CALIENTES', 'ZONA LIBERTAD ', '3223001177', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37239900, 'DIANA DEL CARMEN GRANADOS ', 'F', 'CLL 20 # 0A-22', 'BARRIO BLANCO ', 'ZONA CENTRO ', '3145841281', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37240552, 'GLADYS OFELIA PEREZ ', 'F', 'TAMARINDO CLUB CASA C 24 ', 'BOCONO', 'ZONA BOCONO ', '3002166851', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37241013, 'NELLY JAIMES ', 'F', ' CLL 1 #  7 E  211 EDI MARIA EVA APTO 102', 'QUINTA ORIENTAL', 'ZONA LIBERTADORES', '301 2615932', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(37244533, 'ROSA ESTELA  SAENZ', 'F', 'MZ 15 LOTE 6  CIUDAD JARDIN ', 'CIUDAD JARDIN ', 'ZONA LIBERTADORES', '3168265909', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(37246665, 'ROMERO OLIVA', 'M', 'CLL 25 #54-31', 'ANTONIO SANTOS ', 'ZONA ATALAYA ', '3214607738', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37247536, 'SANDRA SILVANA RAMIREZ ', 'F', 'CLL  6A # 2E- 45 ', 'POPULAR', 'ZONA LIBERTADORES ', '3002905270', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37248797, 'FLOR MARIA MARTINEZ ', 'F', 'AV 10 E # 7 N -117', 'SANTA LUCIA ', 'ZONA LIBERTADORES', '3108800927', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(37249264, 'LUZ MARINA BUITRAGO ', 'F', 'CLL 3 N # 5A-26 ', 'PESCADERO ', 'ZONA LIBERTADORES ', '3204229678', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37256588, 'BARBARA FAJARDO RIVERO', 'F', 'AVENIDA 26 # 25-04', 'BELEN ', 'ZONA BELEN', '3112286180', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37257279, 'FANNY MONSALVE ', 'F', 'CRA 1 # 8-45 VILLA ANT', 'HOGAR REVIVIR ', 'ZONA VILLA ROSARIO', '700830', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37257411, 'LUZ MARINA MATEUS ', 'F', 'CLL  21 # 1-49 ', 'PRADOS NORTE ', 'ZONA LIBERTADORES', '3143526308', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(37313121, 'CARMEN GRACIELA LUNA MANZANO', 'F', 'CLL 2 # 10-61', 'QUINTA ORIENTAL ', 'ZONA LIBERTADORES ', '3212448842', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37320742, 'LUZ BELEN RAMIREZ CARIILLO', 'F', 'cll 19 # AN - 2-59 ', 'PRADOS NORTE ', 'ZONA LIBERTADORES', '3017305599', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(37370468, 'MARY CARRASCAL BOTELLO ', 'F', 'AV  6 #7-131', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD ', '3186067484', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37415014, 'MATILDE SANDOVAL DE PEREZ ', 'F', 'CALLE 7 # 7-60', 'CECI ', 'ZONA ATALAYA ', '3188383850', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(37444471, 'YENNI ZAMIRA ROLON ARGUELLO', 'F', 'CLL 8 N -24 -26', 'PATIO CENTRO ', 'ZONA PATIOS', '3116839648', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(37916142, 'SONIA GONZALES DAVILA ', 'F', 'CLL 3 A # 10-15 ', 'SAN MARTIN ', 'ZONA LIBERTAD ', '3222935786', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(41310711, 'ROSA JAIMES RAMIREZ', 'M', 'CL 8 NORTE #3E-41', 'CEIBA II', 'ZONA LIBERTADORES ', '3112004761', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(41444443, 'MARIA ANTONIA PORRAS DE ANTURI ', 'F', 'CLL12#11-103 ', 'VIDELSO', 'ZONA PATIOS', '3114879697', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(41533365, 'IRENE RODRIGUEZ DUARTE', 'F', 'CLL 5 N 1-103 ', 'CHAPINERO ', 'ZONA ATALAYA ', '3123178926', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(41556860, 'NAYIBE MARIA PEINADO PACHECHO', 'F', ' CALLE12 #0-44', 'CAMUNEROS', 'ZONA ATALAYA ', '3133492608', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(42490597, 'BEATRIZ LEMUS DE LOBO ', 'M', 'AV LIBERTADORES 9 BN -96 ', 'URB LINARES ', 'ZONA LIBERTADORES ', ' 3124546469', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(43785235, 'LUCIA SOCORRO SERNA CASTAÑO ', 'F', 'Calle 9 #1-99', 'AEROPUERTO ', 'ZONA AEROPUERTO', '3002142476', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(51823902, 'FANNY VALENCIA MUÑOZ', 'F', 'CLL 3 CASA D3', 'EL CUJI ', 'ZONA BOCONO ', '3124157203', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(52507655, 'LADY YAIRA LUNA', 'F', 'CALLE 6 N° 12 – 64 ', 'URB. MIRADORES DE PAMPLONITA', 'ZONA PATIOS', '3022930274', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60278060, 'MARIA EUGENIA SILVA', 'F', 'CALLE 5 # 11E-147 COLSAG ', 'COLSAG', 'ZONA LIBERTADORES', '5944305', 'ECOPETROL', 'No', 'No', '', 12, 'OCTUBRE', ''),
(60294086, 'ESPERANZA SANDOVAL ', 'F', ' AV 24 MZ 6 LOTE 26 FRENTE EL CUJI ', ' LA ESMERALDA', 'ZONA VILLA ROSARIO', '3125176958', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(60300350, 'ELIZABETH ALVAREZ ARCE', 'F', 'AV 2 Este  # 5-64', 'CEIBA  HOGAR MIS ABUELITOS ', 'ZONA LIBERTADORES ', '3012195328', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60305882, 'ERMINDA PEÑARANDA ', 'F', 'AV 1 # 10-75', 'COMUNEROS', 'ZONA ATALAYA', '3222277615', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(60306941, 'MERCEDES ELENA PARADA MORENO', 'F', 'CLL 23 N # 06 - 47', 'PRADOS NORTE', 'ZONA LIBERTADORES ', '3226332223', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60307422, 'SARA ESTER JAIMES HERAZO ', 'F', 'CLL 11 #8-90 PRADOS DEL ESTE APT 401', 'BONAIRE TORRE 9 ', 'ZONA PRADOS ', '3208354800', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(60310378, 'NELLY GARCIA GARCIA', 'F', 'CLL  8 # 16N-58 ', 'CHAPINERO', 'ZONA ATALAYA ', ' 3105874273', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(60312736, 'MARIA ALICIA CELY TEATINO', 'F', 'AV  12 23a 05 kdx 104 02', 'PATIO ANTIGUO ', 'ZONA PATIOS', '3115764713', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(60316627, 'BERTA EDILIA VELANDIA NIÑO ', 'F', 'CALLE 11 N° 11-14 ', 'SAN JOSE DE TORCOROMA', 'ZONA LIBERTAD ', '3178233847', 'PONAL ', 'No', 'No', '', 12, ' ', ' '),
(60327375, 'ANA AMIRA ARCINIEGAS', 'F', 'CLL 11 AV 3 # 11-10', 'COMUNEROS ', 'ZONA ATALAYA ', '3102033622', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(60333775, 'SILVIA INES DUQUE SANABRIA ', 'F', 'CLL 16 # 23-32', 'POLICARPA', 'ZONA LIBERTAD ', '3115419354', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60334554, 'MARIA TERESA VILLAMIZAR ', 'F', 'AV 4 N # 9-15 ', 'TRIGAL DEL NORTE ', 'ZONA AEROPUERTO', '3163864614', 'ECOPETROL ', 'SI', 'No', '', 12, ' ', ' '),
(60349395, 'FILADELFA IBARRA RICO', 'M', 'CLL  6N # 7E-168 ', 'CEIBA 2', 'ZONA LIBERTADORES ', '3134918801', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(60349650, 'MAGDA PIEDAD BAUTISTA CONTRERAS ', 'F', 'MZ G 3 LOTE 15  ', '1 ETAPA ATALAYA ', 'ZONA ATALAYA ', '3183667171', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(60359354, 'CARMEN IRENE PINEDA ', 'F', 'MZ 22 LOTE 26 ', 'CLARET ', 'ZONA ATALAYA', '3224062554', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(60363210, 'PAULINA REMOLINA', 'F', 'CLL 9 # 48-96 ', 'LOS OLIVOS', 'ZONA ATALAYA ', '3173253225', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60363587, 'Blanca Oneida', 'F', 'Calle 4 #15-62', 'Turbay Ayala', 'Villa del Rosario', '3213109045', 'Ninguna', 'Si', 'No', '', 12, ' ', ' '),
(60380182, 'SONIA MARTIZA ACEVEDO ', 'F', 'CLL 8 # 8-70', 'ALTO PAMPLONITA ', 'ZONA LIBERTAD ', '3195924480', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(60389256, 'GLADYS CALDERON BARRERA  ', 'F', 'CONJUNTO RESIDENCIAL ', 'LOS ARRAYANES TORRE 1A  APTO 211', 'ZONA ANILLO VIAL ', '3138740607', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(60393461, 'YOLANDA DIAZ LEAL ', 'F', 'CLL 9 8-49', 'PANAMERICANO', 'ZONA LIBERTADORES ', '3102280040', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(60397759, 'MILENA ROZO RIVEROS ', 'F', 'CLL 6B # 5-06 ', 'PRADOS DEL ESTE', 'ZONA LIBERTAD ', '3123560235', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(60407133, 'CARMEN AIDE MANJARRES ORTIZ ', 'F', 'CLL 13 # 11-94 EL PARAISO', 'EL PARAISO ', 'ZONA ATALAYA ', '3218615346', 'COMFAORIENTE ', 'SI', 'No', '', 12, ' ', ' '),
(63287976, 'MARIELA ORTIZ CAMPUZANO', 'F', 'AV  31 # 25-50', 'BELEN ', 'ZONA BELEN ', '3208648315 ', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(63298721, 'MARIA HELENA SABALA ', 'F', 'AV 9 # 1-119 MZ D LOTE 23  ', 'LLANITOS ', 'ZONA PATIOS ', '3142878086', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(79745032, 'JAVIER SALAMANCA ', 'M', 'CLL 20 AN # 4-33 ', 'PRADOS NORTE ', 'ZONA CENTRO ', '3159266414', 'PONAL ', 'SI', 'No', '', 12, ' ', ' '),
(88175866, 'PEDRO JULIO PINZON MARTINEZ', 'M', 'AV 10 E # 7 N -114 ', 'SANTA LUCIA ', 'ZONA LIBERTADORES', '3143368819', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(88189327, 'RODOLFO ANTONIO RODRIGUEZ ', 'F', 'AV 12 a # 10 a -32', 'TORCOROMA ', 'ZONA LIBERTAD ', '3125676220', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(88196739, 'WILLIAN ALONSO RIVEROS RAMIREZ', 'F', 'CLL  5 AN 18 E 55 apt 1 ', 'PLAYA HERMOSA ', 'ZONA CENTRO ', '3168213233', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(88209968, 'JUAN GREGORIO ROJAS ARIAS', 'M', 'CLL 4 AN # 9 E -06 ', 'GOVIKA', 'ZONA LIBERTADORES', '2022245', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(88210258, 'CELSO GOMEZ MOJICA ', 'M', 'CALLE 0 NO. 3E-36 ', 'QUINTA BOSH ', 'ZONA LIBERTADORES', '3103131831', 'ECOPETROL ', 'No', 'No', '', 12, ' ', ' '),
(88219599, 'LUIS ANTONIO ZABALA ORTIZ', 'M', 'CALLE 6  # 48-15 ', 'BARRIO LOS OLIVOS ', 'ZONA ATALAYA ', '3212604575 ', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(88223500, 'MARLON GOMEZ QUINTERO', 'M', 'CARRERA 6 # 21-16 CONJUNTO CERRADO QUINTA GAVIOTA VILLA DEL ROSARIO INT  b50 3142257803', '', 'ZONA VILLA ROSARIO', '3142257803', 'SANITAS', 'SI ', 'No', '', 12, ' ', ' '),
(88236835, 'WILLIAN RENE HERNANDEZ MUÑOZ', 'M', 'CLL 17 AV 2 # 2-25', 'MOTILONES', 'ZONA ATALAYA ', '3138493584', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(88248472, 'JORGE ELIECER GARCIA GARCIA ', 'M', 'MZ 1 LOTE 7', 'CUCUTA 75', 'ZONA ATALAYA ', '3115084191', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(88255428, 'LUIS FERNANDO MARCONI GAMBOA', 'M', 'CLL 3N #2E-38', 'LA CAPILLANA', 'ZONA LIBERTADORES', '3208469524', 'SANITAS ', 'SI ', 'No', '', 12, ' ', ' '),
(88260121, 'FREDY OMAR REY HERNANDEZ', 'F', 'KDX-12-8 ', 'EL PORTICO ', 'ZONA PATIOS', '3103116475', 'PONAL ', 'SI', 'No', '', 12, ' ', ' '),
(88275499, 'RICARDO VELASQUEZ VACCA', 'M', 'CALLE 10 #12-39', 'BELISARIO', 'ZONA ATALAYA', '3123262455', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(112244587, 'Pepito Alcachofa', 'M', 'Calle #4 15-62', 'Villa Rosario', '3214456148', 'ECOPETROL', 'SI', 'No', '12', '', 0, ' ', ' '),
(232244587, 'Pepita Perez', 'M', 'Calle #4 15-62', 'Turbay', 'Villa Rosario', '3214456148', 'ECOPETROL', 'SI', 'No', '', 12, 'FEBRERO', 'ABRIL'),
(1000379656, 'EMANUEL ACOSTA ROJAS ', 'M', 'CLL 20 AN # 4-27 ', 'PRADOS NORTE ', 'ZONA LIBERTADORES', '3123285655', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1004802033, 'DIEGO ANDRES ROJAS VARGAS ', 'M', ' CALLE  15 # 16-35 ', 'LAS AMERICAS', 'ZONA ATALAYA', '3502440113', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1004804287, 'JORDAN SEBASTIAN BLANCO PORTILLA', 'M', 'CLL 27 # 23-64', 'SANTANDER ', 'ZONA BELEN ', '3203587269', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1004805954, 'MITCHEL STEVEN CARRILLO GOMEZ', 'M', 'AVENIDA 10 # 15-35 EL PARAMO', 'EL PARAMO', 'ZONA BELEN', '5945300', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1004864289, 'NANCY MONGUI MANOSALVA PACHECO', 'F', 'CLL 37 # 7-40 ', 'LA SABANA ', 'ZONA PATIOS', '3217400258', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1004997128, 'MARIA GABRIELA OLIVEROS AMAYA', 'F', 'TAMARINDO CLUB P -36 ', 'VILLA ANTIGUA ', 'ZONA VILLA ROSARIO', '3223761632', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1027298999, 'ANDRES CAMILO LA VERDE REY', 'M', 'CALLE 8 -8 -11  LA PARADA', 'LA PARADA ', 'ZONA VILLA ROSARIO', '3187679219', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(1030181624, 'SORAINY MICHELL SIERRA VARGAS', 'F', 'MZ 4J lote 71 ', 'PRIMAVERA', 'ZONA ATALAYA', '3156119608', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1033120742, 'MARIA LUCIANA GUILLEN', 'F', 'AV  10 con Calle 21 #20 - 27', 'CUBEROS ', 'ZONA BELEN ', '3054207175', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(1090367571, 'YERSON ORLANDO PEÑALOZA ', 'M', 'CLL 35 # 1-45 ', '12 DE OCTUBRE ', 'ZONA PATIOS', '3133748904', 'COMFAORIENTE ', 'SI', 'No', '', 12, ' ', ' '),
(1090371416, 'MABEL DAYANA ZERPA ANGARITA ', 'M', 'CLL 23 # 33-36', 'VILLAS DE LA PAZ', 'ANILLO VIAL ', '3222334855', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1090379141, 'NILDA YUDITH PEREZ ARIAS', 'F', 'CLL 30  # 11-54', 'BELLAVISTA ', 'ZONA LIBERTAD ', '3123914183', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1090387192, 'ANA LUCIA ANGARITA ', 'F', 'AV 11# 36-02 ', 'BELLAVISTA ', 'ZONA LIBERTAD ', '3202265441', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1090436873, 'PAULINA IBÃNEZ ARIAS', 'F', 'AV 4A #  8-82 ', 'SANTA ANA ', 'ZONA LIBERTAD ', '3112026379', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1090459282, 'ISAMAR CASTRO VILLAMIZAR ', 'F', 'CALLE 7 A AVENIDA 19 #1-12 ', 'BARRIO SAN MIGUEL', 'ZONA BELEN ', '3144504933', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1090461507, 'ANYELI MARIA CAMPO QUINCO ', 'F', 'AV 5 # 27-55', 'SAN MATEO ', 'ZONA LIBERTAD ', '3219098624', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1090491030, 'MARIA ALEJANDRA JACOME ', 'F', 'CLL 0 No. 10a-15', 'SAN MARTIN ', 'ZONA LIBERTAD ', '3204797714', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1090520580, 'REINALDO DE JESUS TORRES', 'F', 'AV 8 # 1n-04 ', 'SAN MARTIN ', 'ZONA LIBERTAD ', '3214349796', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1090540364, 'STEFANNY MARIAN GOMEZ GOMEZ', 'F', 'CALLE 11 # 7E-19', 'GUALANDAY', 'ZONA LIBERTADORES', '3137520855', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1091352178, 'JEISSON DAVID GUERERO CASTRO ', 'F', 'CLL 3 AN AV 6 ', 'PESCADER PRIMERA ETAPA CASA 22 ', 'ZONA LIBERTADORES ', '3132372573', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1091359400, 'DANNA SALOME PALENCIA GOMEZ               ', 'F', 'cll 7 #1-45 ', 'MOTILONES', 'ZONA ATALAYA', '3102172661', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1091365836, 'YUCKLIANS SHARITH SANTANDER PARADA', 'F', '16B83 ', ' LAS AMÉRICAS', 'ZONA ATALAYA ', '3217135978', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1091373292, 'RYAM MARTHIERN BECERRA LOPEZ', 'F', 'CLL 4 AV 9 k25 ', 'SEVILLA ', 'ZONA LIBERTADORES', '3125590793', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1091974620, 'JHOAN ANDREY QUINTERO ARIAS', 'M', 'RB CIUDAD RODEO TORRE H  APTO 105', 'RODEO', 'ZONA BELEN', '3187964648', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1091988615, 'VALERIA PERDOMO ', 'F', 'CONJUNTO DUBAY CASA J - 7', 'CONJUNTO DUBAY ', 'ZONA PATIOS', '310 2911827', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(1091993011, 'NATALIA SOLIMAR MATEUS CONTRERA S', 'F', 'CLL 12 N # 11-04 ', 'CARLOS PIZARRO ', 'ZONA ATALAYA ', '3144708458', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(1091994241, 'JOSTIN CAMILO VACA VACA', 'M', 'AV 58 LOTE 24 BRISAS DEL MIRADOR ', 'PARTE ALTA DE ANTONIA SANTOS', 'ZONA ATALAYA', '3107613709', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1092014959, 'LIAM ALEJANDRO LLANES GUALDRON', 'F', 'CLL 10 AV 9 NA # 9-51 ', 'CECI ', 'ZONA ATALAYA ', '3125730499', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(1092017989, 'MAXIMILAINO TARAZONA HERNANDEZ ', 'M', 'CARRERA 5 # 3-38', 'LA PARADA / ALFONSO LOPEZ', 'ZONA VILLA ROSARIO', '3006265137', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(1092337120, 'Josep Daniel', 'M', 'Calle 4 #15-62', 'Turbay Ayala', 'Villa del Rosario', '3214456148', 'Ninguna', 'Si', 'No', '', 12, ' ', ' '),
(1092356840, 'HERNANDO JAIMES SEPULVEDA ', 'M', 'QUINTA DEL TAMARINDO 2 CASA M10', 'LA PARADA ', 'ZONA VILLA ROSARIO', '3177487361', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1092362427, 'ELOINA RIVERA OVALLES ', 'F', 'AV 47  MZ 1 CASA 25', 'PALMERAS BARTE BAJA', 'ZONA CENTRO ', '3134085789', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1092530833, 'MITHCEL VANESSA REYES ', 'F', 'CLL 12 A # 13-77', 'TOLEDA PLATA ', 'ZONA AEROPUERTO', '3202318831', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1092547896, 'MANUEL SEBASTIAN ANTOLINEZ ', 'M', 'calle 26 #1c -65 ', 'VIRGILIO BARCO ', 'ZONA BELEN', '3156479024', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(1092948007, 'ANGIE VALERIA ORTIZ', 'F', 'CALLE 0 #3-21 ', 'CHAPINERO ', 'ZONA ATALAYA ', '3014209234', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1092948785, 'DAVID SANTIAGO VILLALOBOS GONZALES', 'M', 'CLL 23 # 3-35 ', 'URB GARCIA HERREROS ', 'ZONA LIBERTADORES', '3177111524', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1092963315, 'GISEL NATALY YAÑEZ COMBARIZA ', 'F', 'LOTE 73 -B ', 'ESPIRITU SANTO ', 'ZONA ATALAYA ', '3208243464', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(1093296696, 'JIMMY ALEXANDER PEREZ LEAL', 'M', 'av 19 #3-91 ', 'DESIERTO', 'ZONA ATALAYA', '3142145383', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1093434255, 'LUIS EDUARDO BUENO', 'M', 'AV  7C # 5-83 ', 'PRADOS DEL ESTE ', 'ZONA LIBERTAD ', '3164739165', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(1093590476, 'CRYSTAL GISELL ESTEBAN ROLON', 'F', 'cll 14 # 18-25 ', 'CAÑO LIMON ', 'ZONA EROPUERTO ', '3112528143', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1093601569, 'SHEILLY ESTEFANIA VACA VACA', 'F', 'AV 58 LOTE 24 BRISAS DEL MIRADOR ', 'PARTE ALTA DE ANTONIA SANTOS', 'ZONA ATALAYA', '3107613708', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1093602512, 'JHON SNEIDER QUINTERO ESCALANTE', 'M', 'CLL 7 # 1 -83 APT 202', 'LATINO ', 'ZONA CENTRO ', '3219314828', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1093612561, 'MARYANGEL BATECA URIBE ', 'F', 'AV 5 # 36-47', 'LA SABANA ', 'ZONA PATIOS ', '3142123295', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1093754313, 'LUDY KATHERINE ALVAREZ FLOREZ ', 'F', 'CLL 21 N 3-61 ', 'TASAJERO ', 'ZONA LIBERTADORES', '3183024235', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(1093764889, 'FRANCISCO EDUARDO VARON GRANADOS', 'M', 'CLL 20 # 0A-22', ' BARRIO BLANCO ', 'ZONA CENTRO ', '3145841281', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1093776649, 'ANTONY TOVAR ARTEAGA ', 'M', 'MZ 14 E LOTE 11', 'CIUDAD JARDIN ', 'ZONA LIBERTADORES ', '3132904046', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1093777918, 'FRANCISCO EDUARDO BARROSO ORTIZ', 'M', 'CLL 15 # 11-67 ', 'CUBEROS NIÑO ', 'ZONA BELEN ', '3203949307', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1093784386, 'SMITH ALEXIS JAIMES', 'M', 'CLL 4 CASA 59 ', 'DOÑA NIDIA', 'ZONA ATALAYA', '3213673871', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1093786108, 'LUIS FERNANDO ACEVEDO PAEZ ', 'M', 'MZ D LOTE 8 ', 'BRISAS DEL LLANO ', 'ZONA PATIOS ', '3225823739', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1094049521, 'VALENTINA RESTREPO CACERES', 'F', 'AV 12 # 8-67', 'MONTEBELLO I ', 'ZONA PATIOS', '3204489193', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1094051010, 'JUAN DAVID MONCADA TORRES', 'M', 'Av 35# 31-45 ', 'DIVINA PASTORA ', 'ZONA BELEN ', '3232404768', 'COMPENSAR ', 'No', 'No', '', 12, ' ', ' '),
(1094061042, 'JOSE MANUEL DEL RIO', 'M', 'AV  8 #4-99 APT 115  TORRE  4 ', 'AMBAR DEL ESTE ', 'ZONA LIBERTADORES', '3103185356', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(1094241824, 'JESICA VALENTINA VILLAMIZAR VARGAS ', 'F', 'CALLE 21 AV 18#21-20 ', 'AGUAS CALIENTES', 'ZONA LIBERTAD ', '3133945337', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1096062463, 'CAMILO ALBERTO AGUILLON ZAMBRANO', 'M', 'CLL 11 AN # 7 E - 10', 'GUALANDAI ', 'ZONA LIBERTADORES', '3112838297', 'SANITAS', 'No', 'No', '', 12, ' ', ' '),
(1127945518, 'SAMUEL DARIO EDUARDO HERNANDEZ ', 'F', 'MZ 47 LOTE 24', ' EL TALENTO ', 'ZONA ANILLO VIAL ', '3202534707', 'COMFAORIENTE ', 'No', 'No', '', 12, ' ', ' '),
(1148218045, 'ANA MARLENY ARCNINIEGAS ', 'M', 'HOGAR REVIVIR ', 'VILLA ANTIGUA ', 'ZONA VILLA ROSARIO', '3138133723', 'SANITAS ', 'No', 'No', '', 12, ' ', ' '),
(1192465522, 'EVELYN MARIANA QUINTERO GUILLIN', 'F', 'AV 29 # 14-216 ', 'PORTOFINO CLUB CASA 21 ', 'ZONA VILLA ROSARIO', '706827', 'SANITAS ', 'SI', 'No', '', 12, ' ', ' '),
(1232815298, 'EMMA VICTORIA CAMACHO VELANDIA', 'F', 'CL  24 AV 8  # 8- 137  ', 'OSPINA PEREZ', 'ZONA ATALAYA ', '3132976724', 'SANITAS', 'SI', 'No', '', 12, ' ', ' '),
(2147483647, 'GEORGINA DEL CARMEN MATOS DE PEREZ ', 'F', 'AV LIBERTADORES CLL  19N # 15E-15', 'EDI UNICENTRO TOWER ', 'ZONA LIBERTADORES', '3207671484', 'SANITAS ', 'No', 'No', '', 12, ' ', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programación_médica`
--

CREATE TABLE `programación_médica` (
  `Id_PM` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `visita` date NOT NULL,
  `mes` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesión`
--

CREATE TABLE `sesión` (
  `usuario` varchar(25) NOT NULL,
  `contraseña` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sesión`
--

INSERT INTO `sesión` (`usuario`, `contraseña`) VALUES
('root', '12345678Aa*'),
('asignación', 'asignaciónCH2022');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ap`
--
ALTER TABLE `ap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_aux` (`id_aux`);

--
-- Indices de la tabla `asignación`
--
ALTER TABLE `asignación`
  ADD PRIMARY KEY (`id_asignación`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_auxiliar` (`id_auxiliar`),
  ADD KEY `id_dia` (`dia`),
  ADD KEY `id_mes` (`id_mes`);

--
-- Indices de la tabla `auxiliar`
--
ALTER TABLE `auxiliar`
  ADD PRIMARY KEY (`Cédula`);

--
-- Indices de la tabla `deducido`
--
ALTER TABLE `deducido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id_dia`),
  ADD KEY `id_mes` (`id_mes`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`Cédula`);

--
-- Indices de la tabla `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`id_mes`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Cédula`);

--
-- Indices de la tabla `programación_médica`
--
ALTER TABLE `programación_médica`
  ADD KEY `id_medico` (`id_medico`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ap`
--
ALTER TABLE `ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asignación`
--
ALTER TABLE `asignación`
  MODIFY `id_asignación` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deducido`
--
ALTER TABLE `deducido`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id_dia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mes`
--
ALTER TABLE `mes`
  MODIFY `id_mes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignación`
--
ALTER TABLE `asignación`
  ADD CONSTRAINT `auxiliar` FOREIGN KEY (`id_auxiliar`) REFERENCES `auxiliar` (`Cédula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`Cédula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `dias`
--
ALTER TABLE `dias`
  ADD CONSTRAINT `mes` FOREIGN KEY (`id_mes`) REFERENCES `mes` (`id_mes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `programación_médica`
--
ALTER TABLE `programación_médica`
  ADD CONSTRAINT `medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`Cédula`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
