-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2021 a las 21:58:18
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proypwi-utn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Id` int(11) NOT NULL,
  `Id_Rubro` int(11) NOT NULL,
  `Descr` varchar(50) DEFAULT NULL,
  `Precio` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Id`, `Id_Rubro`, `Descr`, `Precio`) VALUES
(1, 1, 'PIPETA POWER 2/4 KG (Violeta)									 ', '104.00'),
(2, 1, 'PIPETA POWER 5/10 KG (Roja)                     ', '113.00'),
(3, 1, 'PIPETA POWER 10/20 KG (Verde)                   ', '126.00'),
(4, 1, 'PIPETA POWER 20/40 KG ( Azul)                   ', '171.00'),
(5, 1, 'PIPETA POWER 40/60 KG (Gris)                    ', '214.00'),
(6, 1, 'PIPETA POWER GATO CHICO                         ', '87.00'),
(7, 1, 'PIPETA POWER GATO GRANDE                        ', '97.00'),
(8, 1, 'POWER COMPRIMIDOS 2/5 KG                        ', '214.00'),
(9, 1, 'POWER COMPRIMIDOS 5/10 KG                       ', '239.00'),
(10, 1, 'POWER COMPRIMIDOS 10/20 KG                      ', '264.00'),
(11, 1, 'POWER COMPRIMIDOS 20/30 KG                      ', '321.00'),
(12, 1, 'POWER COMPRIMIDOS 30/40 KG                      ', '376.00'),
(13, 1, 'NEXGARD 2/5 KG                                  ', '424.00'),
(14, 1, 'NEXGARD 5/10 KG                                 ', '466.00'),
(15, 1, 'NEXGARD 10/25 KG                                ', '609.00'),
(16, 1, 'NEXGARD 25/50 KG                                ', '719.00'),
(17, 1, 'COMFORTIS 2/4 KG ( ROSA)                        ', '333.00'),
(18, 1, 'COMFORTIS 4/9 KG                                ', '360.00'),
(19, 1, 'COMFORTIS 9/18 KG                               ', '441.00'),
(20, 1, 'COMFORTIS 18/27 KG                              ', '521.00'),
(21, 1, 'COMFORTIS 27/54 KG ( MARRÓN)                    ', '561.00'),
(22, 1, 'COMPRIMIDOS SPYN 3/6 KILOS                      ', '132.00'),
(23, 1, 'COMPRIMIDOS SPYN 6/12 KILOS                     ', '157.00'),
(24, 1, 'COMPRIMIDOS SPYN 12/25 KILOS                    ', '178.00'),
(25, 1, 'COMPRIMIDOS SPYN 25/40 KILOS                    ', '300.00'),
(26, 1, 'CREDELIO 1.3 a 2.5kg.(56,25 mg)                 ', '226.00'),
(27, 1, 'CREDELIO 2.5 a 5.5kg.(112,5 mg)                 ', '250.00'),
(28, 1, 'CREDELIO 5.5 a 11kg.(225 mg)                    ', '278.00'),
(29, 1, 'CREDELIO 11 a 22kg.(450 mg)                     ', '395.00'),
(30, 1, 'CREDELIO 22 a 45kg.(900 mg)                     ', '483.00'),
(31, 1, 'FRONTLINE PLUS 0/10 KG                          ', '358.00'),
(32, 1, 'FRONTLINE PLUS 10/20 KG                         ', '357.00'),
(33, 1, 'FRONTLINE PLUS 20/40KG                          ', '481.00'),
(34, 1, 'FRONTLINE PLUS 40/60KG                          ', '609.00'),
(35, 1, 'FRONTLINE PLUS GATOS                            ', '279.00'),
(36, 1, 'FRONTLINE SPOT 0/10 KG ( AZUL)                  ', '238.00'),
(37, 1, 'FRONTLINE SPOT 10/20 KG ( AZUL)                 ', '258.00'),
(38, 1, 'FRONTLINE SPOT 20/40 KG ( AZUL)                 ', '333.00'),
(39, 1, 'FRONTLINE SPOT 40/60 KG ( AZUL)                 ', '420.00'),
(40, 1, 'FRONTLINE SPOT GATOS ( AZUL)                    ', '211.00'),
(41, 1, 'FRONTLINE SPRAY X 100ML                         ', '772.00'),
(42, 1, 'FRONTLINE SPRAY X 250ML                         ', '1180.00'),
(43, 1, 'ADVANTIX 4/10 KG                                ', '189.00'),
(44, 1, 'ADVANTIX 10/25 KG                               ', '210.00'),
(45, 1, 'ADVANTIX 25/40 KG                               ', '251.00'),
(46, 1, 'ADVOCATE GATO HASTA 4 KG                        ', '420.00'),
(47, 1, 'ADVOCATE GATO HASTA 4/8KG                       ', '430.00'),
(48, 1, 'ADVOCATE PERRO 4/10KG                           ', '448.00'),
(49, 1, 'ADVOCATE PERRO 10/25 KG                         ', '503.00'),
(50, 1, 'ADVOCATE PERRO 25/40 KG                         ', '595.00'),
(51, 1, 'ANIKILL 0/10 KG                                 ', '104.00'),
(52, 1, 'ANIKILL 10 /20 KG                               ', '114.00'),
(53, 1, 'ANIKILL 20/40 KG                                ', '160.00'),
(54, 1, 'ANIKILL 40/60                                   ', '194.00'),
(55, 1, 'ANIKILL GATO                                    ', '94.00'),
(56, 1, 'BRAVECTO 02a4.5kg                               ', '939.00'),
(57, 1, 'BRAVECTO 04.5a10kg.                             ', '993.00'),
(58, 1, 'BRAVECTO 10/20 KG                               ', '1397.00'),
(59, 1, 'BRAVECTO 20/40 KG                               ', '1528.00'),
(60, 1, 'BRAVECTO 40/56 KG                               ', '1663.00'),
(61, 1, 'BRAVECTO  GATO 1,2/2,8KG                        ', '967.00'),
(62, 1, 'BRAVECTO GATO 2,8/6,25 KG                       ', '1023.00'),
(63, 1, 'REVOLUTION 0/2,5KG/ PERROS-GATOS                ', '312.00'),
(64, 1, 'REVOLUTION -GATOS 2,6 a 7,5 Kg                  ', '341.00'),
(65, 1, 'REVOLUTION 2,6 a 5 Kg                           ', '347.00'),
(66, 1, 'REVOLUTION 5/10 KG                              ', '350.00'),
(67, 1, 'REVOLUTION 10/20 KG                             ', '408.00'),
(68, 1, 'REVOLUTION 20/40 KG                             ', '552.00'),
(69, 1, 'FIPRONIL 2a10k.                                 ', '90.00'),
(70, 1, 'FIPRONIL 11a20k.                                ', '95.00'),
(71, 1, 'FIPRONIL 20 a 40k.                              ', '136.00'),
(72, 1, 'FIPRONIL 41a60k.                                ', '170.00'),
(73, 1, 'FIPRONIL GATO                                   ', '85.00'),
(74, 1, 'PIPETAS OSSPRET 0/10 KG                         ', '65.00'),
(75, 1, 'PIPETAS OSSPRET 10/20 KG                        ', '67.00'),
(76, 1, 'PIPETAS OSSPRET 20/40 KG                        ', '74.00'),
(77, 1, 'PIPETAS OSSPRET 40/60 KG                        ', '78.00'),
(78, 1, 'PIPETAS OSSPRET GATO 0/4KG                      ', '62.00'),
(79, 1, 'PIPETAS OSSPRET GATO 4/8KG                      ', '69.00'),
(80, 1, 'OSSPRET ACUAECTHO 250 ML (naranja)              ', '136.00'),
(81, 1, 'OSSPRET DOUBLE 250 ML ( amarillo)               ', '136.00'),
(82, 1, 'OSSPRET TRADICIONAL 250 ML ( azul)(PULGUICIDA)  ', '132.00'),
(83, 1, 'OSSPRET CACHORRO 250 ML                         ', '122.00'),
(84, 1, 'OSSPRET CLORHEXIDINA 250 ML                     ', '127.00'),
(85, 1, 'SH.PEROXIDO BENZOILO x250cc.                    ', '194.00'),
(86, 1, 'OSSPRET AMITRAZ 250ML                           ', '131.00'),
(87, 1, 'OSSPRET MIX FRUTAL 250 ML                       ', '122.00'),
(88, 1, 'SH.KETOCONAZOL x250cc.(OSSP)                    ', '219.00'),
(89, 1, 'OSSPRET POTENCIADO ( ANTISEBORREICO)            ', '132.00'),
(90, 1, 'OSSPRET A2 250 ML ( ALOE VERA)                  ', '143.00'),
(91, 1, 'OSSPRET BLANCO 250 ML                           ', '138.00'),
(92, 1, 'OSSPRET NEGRO 250 ML                            ', '138.00'),
(93, 1, 'OSSPRET BRONCE 250 ML                           ', '138.00'),
(94, 1, 'OSSPRET MEDICADO X250ML                         ', '121.00'),
(95, 1, 'OSSPRET ENJUAGUE LACIO X 250 ML                 ', '161.00'),
(96, 1, 'OSSPRET ENJUAGUE MAYOR VOLUMEN X 250 ML         ', '161.00'),
(97, 1, 'OSSPRET PERFUMADO DE 5 LT ( MIX FRUTAL)         ', '906.00'),
(98, 1, 'OSSPRET ENJUAGUE DE 5 LT                        ', '1394.00'),
(99, 1, 'OSSPRET PULGUICIDA Y GARRAPATICIDA DE 5 LT      ', '1074.00'),
(100, 1, 'OSSPRET HIPOALERGENICO-MEDICADO DE 5 LT(rojo)   ', '1089.00'),
(101, 1, 'TEA 327 AEROSOL 100mg./ 170cc                   ', '300.00'),
(102, 1, 'COLLAR ECTHOL  40 CMS (CHICO)                   ', '277.00'),
(103, 1, 'COLLAR ECTHOL 63 CMS (GRANDE)                   ', '306.00'),
(104, 1, 'COLLAR ECTHOL GATO                              ', '277.00'),
(105, 1, 'COLLAR TEA GATO                                 ', '268.00'),
(106, 1, 'COLLAR TEA CACHORRO                             ', '268.00'),
(107, 1, 'COLLAR TEA MEDIANO                              ', '328.00'),
(108, 1, 'COLLAR TEA GRANDE                               ', '338.00'),
(109, 1, 'ECTHOL X70ML                                    ', '157.00'),
(110, 1, 'ECTHOL X120ML                                   ', '221.00'),
(111, 1, 'LOCION AMBAR X 50 ML MOKSHA                     ', '107.00'),
(112, 1, 'ECTHOL X70ML                                    ', '157.00'),
(113, 1, 'ECTHOL X120ML                                   ', '221.00'),
(114, 1, 'KIL PG TALQUERA x100grs.                        ', '134.00'),
(115, 1, 'TALCO ELMER                                     ', '74.00'),
(116, 2, 'AGUA OXIGENADA X LITRO VOLUMEN 10                 ', '139.00'),
(117, 2, 'AGUJAS 16/5(NARANJA)                              ', '2.00'),
(118, 2, 'AGUJAS 25/8(VERDE)                                ', '2.00'),
(119, 2, 'AGUJAS 40/8 ( VERDE OSCURO)                       ', '7.00'),
(120, 2, 'GUANTES DESCARTABLES DE LATEX CH/MED/GR X 100 UNID', '480.00'),
(121, 2, 'CLORURO DE BENZALCONIO x1 lts.                    ', '360.00'),
(122, 2, 'IODOPOVIDONA 10% x1 LT                            ', '315.00'),
(123, 2, 'IODOPOVIDONA 5% x5lt.                             ', '543.00'),
(124, 2, 'JERINGAS DE 3 ML                                  ', '6.00'),
(125, 2, 'JERINGAS DE 5 ML                                  ', '6.00'),
(126, 2, 'JERINGAS DE 10 ML                                 ', '10.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_rubros`
--

CREATE TABLE `articulos_rubros` (
  `Id` int(11) NOT NULL,
  `Descr` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos_rubros`
--

INSERT INTO `articulos_rubros` (`Id`, `Descr`) VALUES
(1, 'PIPETAS-PULGUICIDAS'),
(2, 'PRODUCTOS DE USO CLINICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Consulta` varchar(255) DEFAULT NULL,
  `Available` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `articulos_rubros`
--
ALTER TABLE `articulos_rubros`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `articulos_rubros`
--
ALTER TABLE `articulos_rubros`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
