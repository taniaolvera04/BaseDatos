-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:36:26
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
-- Base de datos: `foro505`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idcomentario` int(11) NOT NULL,
  `comentario` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_u` int(11) NOT NULL,
  `idpost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idcomentario`, `comentario`, `fecha`, `id_u`, `idpost`) VALUES
(1, 'holaa', '2024-10-04 03:21:25', 1, 8),
(2, 'hola', '2024-10-04 03:21:34', 1, 8),
(3, 'hh', '2024-10-04 03:58:47', 4, 11),
(4, 'Te extraño, mi flaco', '2024-10-04 04:23:03', 1, 4),
(5, 'No, pecas', '2024-10-04 04:32:59', 4, 7),
(6, 'Regrésenme al 2023', '2024-10-04 04:33:21', 4, 4),
(7, 'pipip', '2024-10-04 16:11:53', 1, 12),
(8, 'chin', '2024-10-04 16:13:09', 1, 13),
(9, 'hola', '2024-10-06 01:51:05', 5, 15),
(10, 'hshsjs', '2024-10-07 18:02:30', 1, 16),
(11, 'shshujs', '2024-10-07 18:02:38', 1, 16),
(12, 'hola', '2024-10-08 13:13:39', 1, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `post` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_u` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `post`, `fecha`, `id_u`) VALUES
(1, 'hola', '2024-09-28 15:47:22', 4),
(2, 'Apocosi', '2024-09-28 21:33:28', 1),
(4, 'Te extraño 😿​', '2024-09-29 07:25:22', 4),
(5, 'Quizás en otra vida...', '2024-09-29 07:27:28', 1),
(6, '¿Por qué?', '2024-10-02 02:33:03', 1),
(7, 'Pipipi', '2024-10-02 02:33:49', 4),
(8, 'hI', '2024-10-02 13:26:49', 1),
(11, 'hajha', '2024-10-04 03:39:07', 4),
(12, 'Holaa', '2024-10-04 16:10:29', 1),
(13, 'quiero un jokei', '2024-10-06 01:43:11', 1),
(14, 'no, pecas', '2024-10-06 01:40:40', 1),
(15, '🐶', '2024-10-06 01:50:02', 5),
(16, 'hola', '2024-10-07 18:02:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_u` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_u`, `email`, `password`, `nombre`, `foto`) VALUES
(1, 'tuyushi02@gmail.com', '1f642ec57ab25ddaf37b741cb4675c10', 'Tanis', '../img_profile/jimin.png'),
(4, 'tanis04@gmail.com', 'd0d199d987f469c98c887b62588696bd', 'Taniss', '../img_profile/jiminf.png'),
(5, 'wawa@gmail.com', '30de08212b7e713cf7a427f2476488cc', 'Akira', '../img_profile/img_1728179250.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `fk_usuario2` (`id_u`),
  ADD KEY `fk_post` (`idpost`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `fk_usuario` (`id_u`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_post` FOREIGN KEY (`idpost`) REFERENCES `post` (`idpost`),
  ADD CONSTRAINT `fk_usuario2` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id_u`);

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id_u`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
