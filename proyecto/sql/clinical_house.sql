-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2022 a las 22:29:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

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
(12, 1092335620, 109822675),
(13, 1092337120, 1095520402),
(28, 1092335620, 22225555),
(30, 1092337120, 11122235);

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

--
-- Volcado de datos para la tabla `asignación`
--

INSERT INTO `asignación` (`id_asignación`, `id_paciente`, `id_auxiliar`, `dia`, `id_mes`, `turno`) VALUES
(1, 1092335620, 109822675, 1, 1, 'c'),
(2, 1092335620, 109822675, 2, 1, 'c'),
(3, 1092335620, 109822675, 3, 1, 'c'),
(4, 1092335620, 109822675, 4, 1, 'n'),
(5, 1092335620, 109822675, 5, 1, 'n'),
(6, 1092335620, 109822675, 6, 1, 'n'),
(7, 1092335620, 109822675, 7, 1, ''),
(8, 1092335620, 109822675, 8, 1, ''),
(9, 1092335620, 109822675, 9, 1, ''),
(10, 1092335620, 109822675, 10, 1, ''),
(11, 1092335620, 109822675, 11, 1, ''),
(12, 1092335620, 109822675, 12, 1, ''),
(13, 1092335620, 109822675, 13, 1, ''),
(14, 1092335620, 109822675, 14, 1, ''),
(15, 1092335620, 109822675, 15, 1, ''),
(16, 1092335620, 109822675, 16, 1, ''),
(17, 1092335620, 109822675, 17, 1, ''),
(18, 1092335620, 109822675, 18, 1, ''),
(19, 1092335620, 109822675, 19, 1, ''),
(20, 1092335620, 109822675, 20, 1, ''),
(21, 1092335620, 109822675, 21, 1, ''),
(22, 1092335620, 109822675, 22, 1, ''),
(23, 1092335620, 109822675, 23, 1, ''),
(24, 1092335620, 109822675, 24, 1, ''),
(25, 1092335620, 109822675, 25, 1, ''),
(26, 1092335620, 109822675, 26, 1, ''),
(27, 1092335620, 109822675, 27, 1, ''),
(28, 1092335620, 109822675, 28, 1, ''),
(29, 1092335620, 109822675, 29, 1, ''),
(30, 1092335620, 109822675, 30, 1, ''),
(31, 1092335620, 109822675, 31, 1, ''),
(32, 1092335620, 22225555, 1, 1, ''),
(33, 1092335620, 22225555, 2, 1, ''),
(34, 1092335620, 22225555, 3, 1, ''),
(35, 1092335620, 22225555, 4, 1, 'c'),
(36, 1092335620, 22225555, 5, 1, 'c'),
(37, 1092335620, 22225555, 6, 1, 'c'),
(38, 1092335620, 22225555, 7, 1, 'n'),
(39, 1092335620, 22225555, 8, 1, 'n'),
(40, 1092335620, 22225555, 9, 1, 'n'),
(41, 1092335620, 22225555, 10, 1, ''),
(42, 1092335620, 22225555, 11, 1, ''),
(43, 1092335620, 22225555, 12, 1, ''),
(44, 1092335620, 22225555, 13, 1, ''),
(45, 1092335620, 22225555, 14, 1, ''),
(46, 1092335620, 22225555, 15, 1, ''),
(47, 1092335620, 22225555, 16, 1, ''),
(48, 1092335620, 22225555, 17, 1, ''),
(49, 1092335620, 22225555, 18, 1, ''),
(50, 1092335620, 22225555, 19, 1, ''),
(51, 1092335620, 22225555, 20, 1, ''),
(52, 1092335620, 22225555, 21, 1, ''),
(53, 1092335620, 22225555, 22, 1, ''),
(54, 1092335620, 22225555, 23, 1, ''),
(55, 1092335620, 22225555, 24, 1, ''),
(56, 1092335620, 22225555, 25, 1, ''),
(57, 1092335620, 22225555, 26, 1, ''),
(58, 1092335620, 22225555, 27, 1, ''),
(59, 1092335620, 22225555, 28, 1, ''),
(60, 1092335620, 22225555, 29, 1, ''),
(61, 1092335620, 22225555, 30, 1, ''),
(62, 1092335620, 22225555, 31, 1, ''),
(63, 1092335620, 11122235, 1, 1, ''),
(64, 1092335620, 11122235, 2, 1, ''),
(65, 1092335620, 11122235, 3, 1, ''),
(66, 1092335620, 11122235, 4, 1, ''),
(67, 1092335620, 11122235, 5, 1, ''),
(68, 1092335620, 11122235, 6, 1, ''),
(69, 1092335620, 11122235, 7, 1, 'c'),
(70, 1092335620, 11122235, 8, 1, 'c'),
(71, 1092335620, 11122235, 9, 1, 'c'),
(72, 1092335620, 11122235, 10, 1, ''),
(73, 1092335620, 11122235, 11, 1, ''),
(74, 1092335620, 11122235, 12, 1, ''),
(75, 1092335620, 11122235, 13, 1, ''),
(76, 1092335620, 11122235, 14, 1, ''),
(77, 1092335620, 11122235, 15, 1, ''),
(78, 1092335620, 11122235, 16, 1, ''),
(79, 1092335620, 11122235, 17, 1, ''),
(80, 1092335620, 11122235, 18, 1, ''),
(81, 1092335620, 11122235, 19, 1, ''),
(82, 1092335620, 11122235, 20, 1, ''),
(83, 1092335620, 11122235, 21, 1, ''),
(84, 1092335620, 11122235, 22, 1, ''),
(85, 1092335620, 11122235, 23, 1, ''),
(86, 1092335620, 11122235, 24, 1, ''),
(87, 1092335620, 11122235, 25, 1, ''),
(88, 1092335620, 11122235, 26, 1, ''),
(89, 1092335620, 11122235, 27, 1, ''),
(90, 1092335620, 11122235, 28, 1, ''),
(91, 1092335620, 11122235, 29, 1, ''),
(92, 1092335620, 11122235, 30, 1, ''),
(93, 1092335620, 11122235, 31, 1, ''),
(94, 1092337120, 1095520402, 1, 1, 'c'),
(95, 1092337120, 1095520402, 2, 1, 'c'),
(96, 1092337120, 1095520402, 3, 1, 'c'),
(97, 1092337120, 1095520402, 4, 1, 'c'),
(98, 1092337120, 1095520402, 5, 1, ''),
(99, 1092337120, 1095520402, 6, 1, ''),
(100, 1092337120, 1095520402, 7, 1, ''),
(101, 1092337120, 1095520402, 8, 1, ''),
(102, 1092337120, 1095520402, 9, 1, ''),
(103, 1092337120, 1095520402, 10, 1, ''),
(104, 1092337120, 1095520402, 11, 1, ''),
(105, 1092337120, 1095520402, 12, 1, ''),
(106, 1092337120, 1095520402, 13, 1, ''),
(107, 1092337120, 1095520402, 14, 1, ''),
(108, 1092337120, 1095520402, 15, 1, ''),
(109, 1092337120, 1095520402, 16, 1, ''),
(110, 1092337120, 1095520402, 17, 1, ''),
(111, 1092337120, 1095520402, 18, 1, ''),
(112, 1092337120, 1095520402, 19, 1, ''),
(113, 1092337120, 1095520402, 20, 1, ''),
(114, 1092337120, 1095520402, 21, 1, ''),
(115, 1092337120, 1095520402, 22, 1, ''),
(116, 1092337120, 1095520402, 23, 1, ''),
(117, 1092337120, 1095520402, 24, 1, ''),
(118, 1092337120, 1095520402, 25, 1, ''),
(119, 1092337120, 1095520402, 26, 1, ''),
(120, 1092337120, 1095520402, 27, 1, ''),
(121, 1092337120, 1095520402, 28, 1, ''),
(122, 1092337120, 1095520402, 29, 1, ''),
(123, 1092337120, 1095520402, 30, 1, ''),
(124, 1092337120, 1095520402, 31, 1, ''),
(125, 1092337120, 11122235, 1, 1, ''),
(126, 1092337120, 11122235, 2, 1, ''),
(127, 1092337120, 11122235, 3, 1, ''),
(128, 1092337120, 11122235, 4, 1, ''),
(129, 1092337120, 11122235, 5, 1, ''),
(130, 1092337120, 11122235, 6, 1, 'n'),
(131, 1092337120, 11122235, 7, 1, 'n'),
(132, 1092337120, 11122235, 8, 1, 'c'),
(133, 1092337120, 11122235, 9, 1, 'c'),
(134, 1092337120, 11122235, 10, 1, 'c'),
(135, 1092337120, 11122235, 11, 1, ''),
(136, 1092337120, 11122235, 12, 1, ''),
(137, 1092337120, 11122235, 13, 1, ''),
(138, 1092337120, 11122235, 14, 1, ''),
(139, 1092337120, 11122235, 15, 1, ''),
(140, 1092337120, 11122235, 16, 1, ''),
(141, 1092337120, 11122235, 17, 1, ''),
(142, 1092337120, 11122235, 18, 1, ''),
(143, 1092337120, 11122235, 19, 1, ''),
(144, 1092337120, 11122235, 20, 1, ''),
(145, 1092337120, 11122235, 21, 1, ''),
(146, 1092337120, 11122235, 22, 1, ''),
(147, 1092337120, 11122235, 23, 1, ''),
(148, 1092337120, 11122235, 24, 1, ''),
(149, 1092337120, 11122235, 25, 1, ''),
(150, 1092337120, 11122235, 26, 1, ''),
(151, 1092337120, 11122235, 27, 1, ''),
(152, 1092337120, 11122235, 28, 1, ''),
(153, 1092337120, 11122235, 29, 1, ''),
(154, 1092337120, 11122235, 30, 1, ''),
(155, 1092337120, 11122235, 31, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxiliar`
--

CREATE TABLE `auxiliar` (
  `Cédula` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
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

INSERT INTO `auxiliar` (`Cédula`, `Nombre`, `Apellido`, `Teléfono`, `Formato`, `Horas`, `Estado`, `Salario_básico`, `Auxilio_transporte`, `Poliza_Fepazde`, `Bonificación_PTEVM`) VALUES
(11122235, 'Prueba', 'Prueba', 573214456148, 'XMT', 6, 'En servicio', 1000000, 50000, 120000, 0),
(11133344, 'Sujeto', 'Apellido', 3216543918, 'TXM', 6, ' ', 1000000, 0, 140000, 0),
(22225555, 'test', 'sss', 3214456895, 'TXM', 6, 'En servicio', 1000000, 0, 110000, 0),
(109822675, 'Dina Saray', 'Jacome Contreras', 412264544, 'TXM', 6, 'En servicio', 1000000, 0, 90000, 0),
(1095520402, 'Stephany', 'Grueso', 3212710402, 'MTX', 6, 'En servicio', 1000000, 0, 80000, 0);

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
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Cédula` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Dirección` varchar(60) NOT NULL,
  `Barrio` varchar(60) NOT NULL,
  `Zona` varchar(60) NOT NULL,
  `Teléfono` bigint(20) NOT NULL,
  `EPS` varchar(30) NOT NULL,
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

INSERT INTO `paciente` (`Cédula`, `Nombre`, `Apellido`, `Sexo`, `Dirección`, `Barrio`, `Zona`, `Teléfono`, `EPS`, `Aseguradora`, `Tutela`, `Criterio`, `Aux_Enfermeria`, `Horas`, `GAMS`, `Químico`) VALUES
(55999666, 'Prueba', 'Prueba', 'M', 'Calle 4#15-62', 'TURBAY', '', 573214456148, 'Nueva IPS', 'P', 'si', 'No', '', 6, ' ', ' '),
(1092335620, 'Stephany', 'Grueso', 'F', 'Calle 4#15-62', 'TURBAY', 'Villa del Rosario', 3212710402, 'Nueva IPS', 'ECOPETROL', 'Si', 'No', '', 6, ' Abril', ' Junio'),
(1092337120, 'Josep', 'Jacome Contreras', 'M', 'Calle 4#15-62', 'TURBAY', 'Villa del Rosario', 3214456148, 'Nueva IPS', 'S', 'si', 'NO', '', 6, ' ', ' ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `asignación`
--
ALTER TABLE `asignación`
  MODIFY `id_asignación` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

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
