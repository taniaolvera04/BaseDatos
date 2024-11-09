-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:37:14
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
-- Base de datos: `kitty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calorias`
--

CREATE TABLE `calorias` (
  `id_ca` int(3) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `actividad` varchar(50) DEFAULT NULL,
  `caloria` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calorias`
--

INSERT INTO `calorias` (`id_ca`, `categoria`, `actividad`, `caloria`) VALUES
(2, 'comida', 'Ensalada', 300),
(4, 'comida', 'Pollito', 400),
(5, 'ejercicio', 'Yoga', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_c` int(3) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_c`, `categoria`) VALUES
(1, 'comida'),
(2, 'ahorro'),
(3, 'casa'),
(4, 'ocio'),
(5, 'salud'),
(6, 'varios'),
(7, 'suscripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `id` int(3) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `costo` int(4) DEFAULT NULL,
  `id_c` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`id`, `descripcion`, `costo`, `id_c`) VALUES
(24, 'ahgaha', 200, 2),
(25, 'youtube', 100, NULL),
(26, 'you tube', 100, 7),
(27, ',manzana', 20, 1),
(28, ',fresa', 30, 1),
(29, ',mesa', 100, 3),
(30, 'telefono', 100, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_m` int(3) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `costo` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_m`, `descripcion`, `costo`) VALUES
(2, 'Kitty Quesadilla', 40),
(4, 'Kitty Sope', 50),
(6, 'Kitty Café', 25),
(9, 'Kitty Hamburguesa', 35),
(10, 'Kitty Té', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id_o` int(3) NOT NULL,
  `id_m` int(3) DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id_o`, `id_m`, `cantidad`) VALUES
(8, 4, 1),
(13, 6, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calorias`
--
ALTER TABLE `calorias`
  ADD PRIMARY KEY (`id_ca`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_c` (`id_c`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_m`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id_o`),
  ADD KEY `id_m` (`id_m`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calorias`
--
ALTER TABLE `calorias`
  MODIFY `id_ca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_c` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_m` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id_o` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `categoria` (`id_c`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`id_m`) REFERENCES `menu` (`id_m`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
