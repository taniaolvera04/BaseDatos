-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:39:35
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
-- Base de datos: `practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polleria`
--

CREATE TABLE `polleria` (
  `id_u` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `cantp` int(10) NOT NULL,
  `complemento` varchar(30) NOT NULL,
  `total` int(10) NOT NULL,
  `iva` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `polleria`
--

INSERT INTO `polleria` (`id_u`, `nombre`, `producto`, `cantp`, `complemento`, `total`, `iva`) VALUES
(1, 'Tania', 'Pollo rostizado', 3, 'Papas', 390, 336.2068965517242),
(3, 'Carlos', 'Costilla', 2, 'Seleccionar', 470, 405.1724137931035);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `polleria`
--
ALTER TABLE `polleria`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `polleria`
--
ALTER TABLE `polleria`
  MODIFY `id_u` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
