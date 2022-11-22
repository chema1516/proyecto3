-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2022 a las 05:48:45
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
-- Base de datos: `contacto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto1`
--

CREATE TABLE `contacto1` (
  `idcontacto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `problema` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto1`
--

INSERT INTO `contacto1` (`idcontacto`, `nombre`, `correo`, `telefono`, `problema`, `direccion`, `fecha`) VALUES
(1, 'daniel', 'carlitos12@gmail.com', '2147483647', 'caga sangre', 'mamerto234', '2022-11-29'),
(7, 'carlos', 'carlitos12@gmail.com', '2147483647', 'huele a mierda aun que lo bañe', 'mamerto234', '2022-11-23'),
(8, 'andres', 'guzmandaniel21193@gmail.com', '4491967752', 'mierda saca', 'kana117', '2023-10-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto1`
--
ALTER TABLE `contacto1`
  ADD PRIMARY KEY (`idcontacto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto1`
--
ALTER TABLE `contacto1`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
