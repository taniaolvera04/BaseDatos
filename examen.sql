-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:36:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `verE` ()   BEGIN
SELECT * FROM e;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e`
--

CREATE TABLE `e` (
  `id_u` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ap` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `signo` varchar(100) NOT NULL,
  `edad` int(3) NOT NULL,
  `mes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `e`
--

INSERT INTO `e` (`id_u`, `nombre`, `ap`, `fecha`, `signo`, `edad`, `mes`) VALUES
(2, 'Jareth', 'Bautista', '2007-04-20', 'aries', 17, 'April'),
(4, 'tanis', 'oveyes', '2007-09-04', 'virgo', 17, 'September'),
(5, 'Jimin', 'Park', '1995-10-13', 'libra', 29, 'October');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `e`
--
ALTER TABLE `e`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `e`
--
ALTER TABLE `e`
  MODIFY `id_u` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
