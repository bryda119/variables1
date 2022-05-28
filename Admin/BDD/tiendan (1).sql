-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2022 a las 04:48:24
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `pasword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `fnacimiento`, `detalle`, `usr`, `pasword`) VALUES
(3, ' Patricio', 'Flores', '2022-02-05', ' Estudiante', 'patricio', '123'),
(4, ' Amanda', 'Pilamonta', '2021-11-13', ' Estudiante', '321', '3'),
(6, ' Brayan', 'Flores', '2022-02-04', 'Estudiante', '0', '123'),
(7, 'Marco', 'Tipan', '2022-02-03', ' ESTUDIANTE', '222s', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idd` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` decimal(10,0) DEFAULT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idd`, `cantidad`, `precioventa`, `importe`, `idproducto`, `idfactura`) VALUES
(5, 12, '40', '480', 7, 7),
(6, 2, '15', '30', 6, 7),
(7, 12, '40', '480', 7, 8),
(8, 2, '15', '30', 6, 8),
(9, 2, '25', '50', 5, 9),
(10, 1, '40', '40', 7, 9),
(11, 2, '40', '80', 7, 10),
(12, 3, '40', '120', 7, 11),
(13, 1, '25', '25', 5, 11),
(14, 3, '40', '120', 7, 12),
(15, 1, '25', '25', 5, 12),
(16, 3, '40', '120', 7, 13),
(17, 1, '25', '25', 5, 13),
(18, 2, '40', '80', 7, 14),
(19, 2, '40', '80', 7, 15),
(20, 20, '25', '500', 5, 15),
(21, 3, '40', '120', 7, 16),
(22, 20, '25', '500', 5, 16),
(23, 3, '40', '120', 7, 17),
(24, 3, '40', '120', 7, 18),
(25, 1, '15', '15', 6, 18),
(26, 4, '40', '160', 7, 19),
(27, 1, '15', '15', 6, 19),
(28, 5, '40', '200', 7, 20),
(29, 1, '15', '15', 6, 20),
(30, 1, '15', '15', 6, 21),
(31, 2, '40', '80', 7, 21),
(32, 1, '40', '40', 7, 22),
(33, 1, '40', '40', 7, 23),
(34, 2, '25', '50', 5, 23),
(35, 2, '40', '80', 7, 24),
(36, 2, '25', '50', 5, 24),
(37, 1, '15', '15', 6, 24),
(38, 2, '40', '80', 7, 25),
(39, 2, '40', '80', 7, 26),
(40, 4, '25', '100', 5, 26),
(41, 3, '40', '120', 7, 27),
(42, 2, '25', '50', 5, 27),
(43, 1, '15', '15', 6, 27),
(44, 4, '40', '160', 7, 28),
(45, 2, '25', '50', 5, 28),
(46, 1, '15', '15', 6, 28),
(47, 5, '40', '200', 7, 29),
(48, 3, '25', '75', 5, 29),
(49, 1, '15', '15', 6, 29),
(50, 20, '5', '100', 8, 29),
(51, 5, '40', '200', 7, 30),
(52, 3, '25', '75', 5, 30),
(53, 1, '15', '15', 6, 30),
(54, 22, '5', '110', 8, 30),
(55, 10000000, '40', '400000000', 7, 31),
(56, 3, '25', '75', 5, 31),
(57, 23, '5', '115', 8, 31),
(58, 10000000, '40', '400000000', 7, 32),
(59, 3, '25', '75', 5, 32),
(60, 23, '5', '115', 8, 32),
(61, 2, '40', '80', 7, 33),
(62, 10000001, '40', '400000040', 7, 34),
(63, 3, '25', '75', 5, 34),
(64, 23, '5', '115', 8, 34),
(65, 10000001, '40', '400000040', 7, 35),
(66, 3, '25', '75', 5, 35),
(67, 23, '5', '115', 8, 35),
(68, 10000001, '40', '400000040', 7, 36),
(69, 3, '25', '75', 5, 36),
(70, 23, '5', '115', 8, 36),
(71, 10000001, '40', '400000040', 7, 37),
(72, 3, '25', '75', 5, 37),
(73, 23, '5', '115', 8, 37),
(74, 10000001, '40', '400000040', 7, 38),
(75, 3, '25', '75', 5, 38),
(76, 23, '5', '115', 8, 38),
(77, 10000001, '40', '400000040', 7, 39),
(78, 3, '25', '75', 5, 39),
(79, 23, '5', '115', 8, 39),
(80, 10000001, '40', '400000040', 7, 40),
(81, 3, '25', '75', 5, 40),
(82, 23, '5', '115', 8, 40),
(83, 10000001, '40', '400000040', 7, 41),
(84, 3, '25', '75', 5, 41),
(85, 23, '5', '115', 8, 41),
(86, 10000001, '40', '400000040', 7, 42),
(87, 3, '25', '75', 5, 42),
(88, 23, '5', '115', 8, 42),
(89, 10000001, '40', '400000040', 7, 43),
(90, 3, '25', '75', 5, 43),
(91, 23, '5', '115', 8, 43),
(92, 10000001, '40', '400000040', 7, 44),
(93, 3, '25', '75', 5, 44),
(94, 23, '5', '115', 8, 44),
(95, 10000001, '40', '400000040', 7, 45),
(96, 3, '25', '75', 5, 45),
(97, 23, '5', '115', 8, 45),
(98, 10000001, '40', '400000040', 7, 46),
(99, 3, '25', '75', 5, 46),
(100, 23, '5', '115', 8, 46),
(101, 10000001, '40', '400000040', 7, 47),
(102, 3, '25', '75', 5, 47),
(103, 23, '5', '115', 8, 47),
(104, 10000001, '40', '400000040', 7, 48),
(105, 3, '25', '75', 5, 48),
(106, 23, '5', '115', 8, 48),
(107, 3, '25', '75', 5, 49),
(108, 23, '5', '115', 8, 49),
(109, 3, '25', '75', 5, 50),
(110, 23, '5', '115', 8, 50),
(111, 1, '50', '50', 10, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idf` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `IVA` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idf`, `fecha`, `subtotal`, `IVA`, `total`, `idcliente`) VALUES
(1, '2022-02-16', '510', '61', '571', 3),
(2, '2022-02-16', '510', '61', '571', 3),
(3, '2022-02-16', '510', '61', '571', 3),
(4, '2022-02-16', '510', '61', '571', 3),
(5, '2022-02-16', '510', '61', '571', 3),
(6, '2022-02-16', '510', '61', '571', 3),
(7, '2022-02-16', '510', '61', '571', 3),
(8, '2022-02-16', '510', '61', '571', 3),
(9, '2022-02-17', '90', '11', '101', 3),
(10, '2022-02-24', '80', '10', '90', 3),
(11, '2022-02-24', '145', '17', '162', 3),
(12, '2022-02-24', '145', '17', '162', 3),
(13, '2022-02-24', '145', '17', '162', 4),
(14, '2022-02-25', '80', '10', '90', 3),
(15, '2022-02-25', '580', '70', '650', 3),
(16, '2022-02-25', '620', '74', '694', 3),
(17, '2022-02-26', '120', '14', '134', 4),
(18, '2022-02-26', '135', '16', '151', 6),
(19, '2022-02-26', '175', '21', '196', 4),
(20, '2022-02-26', '215', '26', '241', 6),
(21, '2022-02-26', '95', '11', '106', 6),
(22, '2022-02-27', '40', '5', '45', 6),
(23, '2022-02-27', '90', '11', '101', 6),
(24, '2022-02-27', '145', '17', '162', 6),
(25, '2022-02-27', '80', '10', '90', 6),
(26, '2022-02-27', '180', '22', '202', 6),
(27, '2022-02-27', '185', '22', '207', 3),
(28, '2022-02-27', '225', '27', '252', 7),
(29, '2022-02-27', '390', '47', '437', 3),
(30, '2022-02-27', '400', '48', '448', 3),
(31, '2022-02-27', '400000190', '48000023', '448000213', 3),
(32, '2022-02-27', '400000190', '48000023', '448000213', 3),
(33, '2022-02-27', '80', '10', '90', 3),
(34, '2022-02-27', '400000230', '48000028', '448000258', 3),
(35, '2022-02-27', '400000230', '48000028', '448000258', 3),
(36, '2022-02-27', '400000230', '48000028', '448000258', 3),
(37, '2022-02-27', '400000230', '48000028', '448000258', 3),
(38, '2022-02-27', '400000230', '48000028', '448000258', 3),
(39, '2022-02-27', '400000230', '48000028', '448000258', 3),
(40, '2022-02-27', '400000230', '48000028', '448000258', 3),
(41, '2022-02-27', '400000230', '48000028', '448000258', 3),
(42, '2022-02-27', '400000230', '48000028', '448000258', 3),
(43, '2022-02-27', '400000230', '48000028', '448000258', 3),
(44, '2022-02-27', '400000230', '48000028', '448000258', 3),
(45, '2022-02-27', '400000230', '48000028', '448000258', 3),
(46, '2022-02-27', '400000230', '48000028', '448000258', 3),
(47, '2022-02-27', '400000230', '48000028', '448000258', 3),
(48, '2022-02-27', '400000230', '48000028', '448000258', 3),
(49, '2022-02-27', '190', '23', '213', 3),
(50, '2022-02-27', '240', '29', '269', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `detalle`, `foto`, `precio`, `stock`) VALUES
(5, ' Perrito', ' Canino', 'Mascota', 'perrito2.jpg', '25', 5),
(6, 'Michico', 'Gato', ' Felino', 'gato3.jpg', '15', 6),
(7, ' Balton', 'Perrito', 'canino', 'perrito3.jpg', '40', 7),
(8, 'lino', 'gato', 'felino', 'gato1.jpg', '6', 6),
(10, ' Firulay', ' Canino', ' mascota', 'perrito3.jpg', '50', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idu` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idu`, `nombres`, `apellidos`, `usuario`, `clave`) VALUES
(1, ' 3', ' ww', 'patrico', '123'),
(2, 'patricio', 'flores', 'admin', 'admin'),
(3, ' kevin', ' ww', 'flores', '123'),
(4, ' Patriciop', 'Flores', 'Floress', '123'),
(5, 'brayan', 'lopez', 'brayan', 'flores'),
(6, 'brayan', 'lopez', 'brayan', '123'),
(7, ' kevin', 'flores', 'lopez', '123'),
(8, 'Juan', 'Tapia', 'Juan', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `idfactura` (`idfactura`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idfactura`) REFERENCES `facturas` (`idf`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
