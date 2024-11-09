-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:40:50
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
-- Base de datos: `strawberrybk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id_a` int(3) NOT NULL,
  `nombrea` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` int(3) DEFAULT NULL,
  `cantidada` int(3) DEFAULT NULL,
  `fotoa` varchar(255) DEFAULT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id_a`, `nombrea`, `descripcion`, `precio`, `cantidada`, `fotoa`, `categoria`) VALUES
(36, 'JIMIN Muse (Set) y Weverse Albums', 'Incluye disco, photobook con imágenes conceptuales, postales, stickers y otros elementos visuales.', 815, 20, '../assets/img_albumes/jimin_muse.png', 'SET'),
(41, 'Jungkook Golden Random', 'Inlcuye photocards, photobook, cd, notas', 312, 15, '../assets/img_albumes/jungkook_golden.png', 'RANDOM'),
(42, 'RM Right Place Wrong Person Set', 'Incluye File Holder, posters, photobook, lyrics, cd, photocard, postcard', 937, 22, '../assets/img_albumes/rm_rpwp.png', 'SET'),
(43, 'J-HOPE Hope On The Street Random', 'Incluye Photo-zine,poster, photocard, lyrics, stickers, hang tag, cd-r', 305, 10, '../assets/img_albumes/jhope_hopeon.png', 'RANDOM'),
(44, 'AGUST D D-Day Set', 'Incluye photobook, lyric book, postcard, poster, photocard, scanimation,sticker', 773, 25, '../assets/img_albumes/suga_dday.png', 'SET'),
(45, 'JIN The Astronaut', 'Incluye Out Cover, photobook, CD, lyric card, postcard, graphic sticker, seal sticker, photocard, po', 268, 12, '../assets/img_albumes/jin_astronaut.png', 'RANDOM'),
(46, 'V Layover Set', 'Incluye Outbox, photobook, lyric book, photocards,qr card', 999, 25, '../assets/img_albumes/v_layover.png', 'SET'),
(49, 'PROFUGOS DEL ANEXO', 'ALBUM', 200, 5, '../assets/img_albumes/v_layover.png', 'RANCHERO'),
(50, 'PROOF (EDICIÓN PARA COLECCIONISTAS)', 'Incluye Outer Box,Outer Frame, Book, Premium Photo Set, CD, AR CARD, 3D CARD, Póster.', 4704, 20, '../assets/img_albumes/proof_collector.png', 'COLECCIONISTAS'),
(51, 'ON (VINIL)', 'Disco de Vinilo de ON, perteneciente a MOTS:7', 155, 8, '../assets/img_albumes/mots_vynil.jpg', 'DISCOS DE VINIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_ca` int(3) NOT NULL,
  `id_a` int(3) NOT NULL,
  `nombrea` varchar(100) NOT NULL,
  `precio` int(3) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `id_u` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_c` int(3) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_c`, `categoria`) VALUES
(1, 'SET'),
(2, 'RANDOM'),
(4, 'RANCHERO'),
(5, 'COLECCIONISTAS'),
(6, 'DISCOS DE VINIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ca`
--

CREATE TABLE `detalle_ca` (
  `id_dca` int(3) NOT NULL,
  `id_ca` int(3) NOT NULL,
  `id_a` int(2) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `fechahr` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_o`
--

CREATE TABLE `detalle_o` (
  `id_do` int(3) NOT NULL,
  `id_o` int(3) NOT NULL,
  `id_a` int(3) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `fechahr` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_o`
--

INSERT INTO `detalle_o` (`id_do`, `id_o`, `id_a`, `cantidad`, `fechahr`) VALUES
(6, 5, 42, 1, '2024-09-19 00:09:08'),
(7, 6, 36, 2, '2024-09-19 00:09:15'),
(8, 7, 46, 1, '2024-09-19 00:09:24'),
(9, 8, 45, 1, '2024-09-19 00:43:52'),
(10, 9, 43, 1, '2024-09-19 00:55:22'),
(11, 10, 36, 2, '2024-09-19 00:56:24'),
(12, 11, 41, 2, '2024-09-19 00:59:51'),
(13, 12, 36, 1, '2024-09-19 00:59:56'),
(14, 13, 43, 2, '2024-09-19 01:00:35'),
(15, 14, 45, 1, '2024-09-19 09:22:20'),
(16, 15, 44, 1, '2024-09-19 09:22:27'),
(17, 16, 46, 1, '2024-09-19 09:25:46'),
(18, 17, 49, 1, '2024-09-19 11:19:48'),
(19, 18, 49, 2, '2024-09-19 11:20:07'),
(20, 19, 46, 1, '2024-09-19 11:20:13'),
(21, 20, 49, 1, '2024-09-19 11:20:34'),
(22, 21, 51, 1, '2024-09-19 23:05:05'),
(23, 22, 50, 1, '2024-09-19 23:05:09'),
(24, 23, 36, 2, '2024-09-20 08:53:10'),
(25, 24, 43, 2, '2024-09-20 09:08:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id_o` int(3) NOT NULL,
  `id_u` int(3) NOT NULL,
  `nombrea` varchar(100) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha_o` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id_o`, `id_u`, `nombrea`, `cantidad`, `total`, `fecha_o`) VALUES
(5, 2, 'RM Right Place Wrong Person Set', 1, 937.00, '2024-09-19 00:09:08'),
(6, 2, 'JIMIN Muse (Set) y Weverse Albums', 2, 1630.00, '2024-09-19 00:09:15'),
(7, 2, 'V Layover Set', 1, 999.00, '2024-09-19 00:09:24'),
(8, 2, 'JIN The Astronaut', 1, 268.00, '2024-09-19 00:43:52'),
(9, 2, 'J-HOPE Hope On The Street Random', 1, 305.00, '2024-09-19 00:55:22'),
(10, 2, 'JIMIN Muse (Set) y Weverse Albums', 2, 1630.00, '2024-09-19 00:56:24'),
(11, 2, 'Jungkook Golden Random', 2, 624.00, '2024-09-19 00:59:51'),
(12, 2, 'JIMIN Muse (Set) y Weverse Albums', 1, 815.00, '2024-09-19 00:59:56'),
(13, 2, 'J-HOPE Hope On The Street Random', 2, 610.00, '2024-09-19 01:00:35'),
(14, 2, 'JIN The Astronaut', 1, 268.00, '2024-09-19 09:22:20'),
(15, 2, 'AGUST D D-Day Set', 1, 773.00, '2024-09-19 09:22:27'),
(16, 2, 'V Layover Set', 1, 999.00, '2024-09-19 09:25:46'),
(17, 2, 'PROFUGOS DEL ANEXO', 1, 200.00, '2024-09-19 11:19:48'),
(18, 2, 'PROFUGOS DEL ANEXO', 2, 400.00, '2024-09-19 11:20:07'),
(19, 2, 'V Layover Set', 1, 999.00, '2024-09-19 11:20:13'),
(20, 2, 'PROFUGOS DEL ANEXO', 1, 200.00, '2024-09-19 11:20:34'),
(21, 2, 'ON (VINIL)', 1, 155.00, '2024-09-19 23:05:05'),
(22, 2, 'PROOF (EDICIÓN PARA COLECCIONISTAS)', 1, 4704.00, '2024-09-19 23:05:09'),
(23, 3, 'JIMIN Muse (Set) y Weverse Albums', 2, 1630.00, '2024-09-20 08:53:10'),
(24, 2, 'J-HOPE Hope On The Street Random', 2, 610.00, '2024-09-20 09:08:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(3) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `usuario`, `password`, `nombre`, `foto`, `tipo`) VALUES
(1, 'tuyushi02@gmail.com', '1f642ec57ab25ddaf37b741cb4675c10', 'Tania', '../assets/img_profile/✿.jfif', 'admin'),
(2, 'tuyushireyes@gmail.com', '82bd97007dffdc26e5dd101c561f800d', 'Tuyushi', '../assets/img_profile/♡︎.jfif', 'cliente'),
(3, 'cesarosvaldo@gmail.com', 'f4d0b73409157b0215749806be2e9d81', 'cesar', NULL, 'cliente'),
(4, 'cesarosvaldo@gmail.com', 'f4d0b73409157b0215749806be2e9d81', 'cesar', NULL, 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id_a`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_ca`),
  ADD KEY `id_a` (`id_a`),
  ADD KEY `id_u` (`id_u`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `detalle_ca`
--
ALTER TABLE `detalle_ca`
  ADD PRIMARY KEY (`id_dca`),
  ADD KEY `id_ca` (`id_ca`),
  ADD KEY `id_a` (`id_a`);

--
-- Indices de la tabla `detalle_o`
--
ALTER TABLE `detalle_o`
  ADD PRIMARY KEY (`id_do`),
  ADD KEY `id_o` (`id_o`),
  ADD KEY `fk_album` (`id_a`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id_o`),
  ADD KEY `id_u` (`id_u`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id_a` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_ca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_c` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_ca`
--
ALTER TABLE `detalle_ca`
  MODIFY `id_dca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `detalle_o`
--
ALTER TABLE `detalle_o`
  MODIFY `id_do` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id_o` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_a`) REFERENCES `albumes` (`id_a`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`);

--
-- Filtros para la tabla `detalle_ca`
--
ALTER TABLE `detalle_ca`
  ADD CONSTRAINT `detalle_ca_ibfk_1` FOREIGN KEY (`id_ca`) REFERENCES `carrito` (`id_ca`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_ca_ibfk_2` FOREIGN KEY (`id_a`) REFERENCES `albumes` (`id_a`);

--
-- Filtros para la tabla `detalle_o`
--
ALTER TABLE `detalle_o`
  ADD CONSTRAINT `detalle_o_ibfk_1` FOREIGN KEY (`id_o`) REFERENCES `orden` (`id_o`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_album` FOREIGN KEY (`id_a`) REFERENCES `albumes` (`id_a`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
