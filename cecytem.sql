-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:35:28
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
-- Base de datos: `cecytem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cecyusuario`
--

CREATE TABLE `cecyusuario` (
  `id` int(3) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cecyusuario`
--

INSERT INTO `cecyusuario` (`id`, `usuario`, `password`, `nombre`, `apellidos`, `foto`) VALUES
(17, 'tuyushi02@gmail.com', 'c1d7ea6053bec86021715f9742427e69', 'Tania', 'Olvera Reyes', 'assets/img_profile/jimin.jpg'),
(18, 'Oswaldodeltoro@gmail.com', 'b956af1639f1be94fdfe3258d01515fc', 'Oswaldo', 'DelToro', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `am` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `ap`, `am`, `telefono`) VALUES
(27, 'Tania', 'Olvera', 'Reyes', '5582030807'),
(30, 'Jareth', 'Hernández', 'Bautista', '5582030856'),
(31, 'Kimi', 'Hernández', 'Bautista', '5567890241'),
(32, 'Akira', 'Olvera', 'Reyes', '5543141467'),
(33, 'Candy', 'Monsieur', 'Reyes', '5526077567'),
(34, 'Kitty', 'Olvera', 'Reyes', '2345555555'),
(35, 'Gatonovich', 'Chio', 'Flores', '2345555777'),
(36, 'Svetlana', 'Chio', 'Flores', '2345555555'),
(37, 'Josh', 'Bautista', 'Reyes', '1111111111'),
(38, 'Mang', 'Bautista', 'Reyes', '1111111111'),
(39, 'Nanami', 'Chio', 'Flores', '2222222222'),
(40, 'Mechona', 'Chio', 'Flores', '3333333333'),
(41, 'Garfield', 'Chio', 'Flores', '3333333333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dulceria`
--

CREATE TABLE `dulceria` (
  `id` int(3) NOT NULL,
  `dulce` varchar(100) NOT NULL,
  `precio` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dulceria`
--

INSERT INTO `dulceria` (`id`, `dulce`, `precio`) VALUES
(1, 'Duvalin', 4),
(2, 'Pockys', 50),
(3, 'Tarrito', 5),
(4, 'Panzón', 10),
(5, 'Mazapan', 4),
(6, 'Tapones', 35),
(7, 'panzon acido', 15),
(8, 'Pulparindo', 5),
(9, 'Paleta Arcoiris', 3),
(10, 'Paleta Payaso', 15),
(11, '#$', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cecyusuario`
--
ALTER TABLE `cecyusuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dulceria`
--
ALTER TABLE `dulceria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cecyusuario`
--
ALTER TABLE `cecyusuario`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `dulceria`
--
ALTER TABLE `dulceria`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
