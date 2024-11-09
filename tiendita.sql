-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 20:41:01
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
-- Base de datos: `tiendita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int(3) NOT NULL,
  `id_p` int(3) NOT NULL,
  `fotop` varchar(100) DEFAULT NULL,
  `nombrep` varchar(100) NOT NULL,
  `talla` varchar(100) DEFAULT NULL,
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
(1, 'Blusas'),
(2, 'Jeans'),
(3, 'Vestidos'),
(5, 'Faldas'),
(6, 'Chaleco'),
(7, 'Corset'),
(8, 'Shorts');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `fecha` datetime DEFAULT NULL,
  `tipomov` varchar(100) NOT NULL,
  `id_p` int(3) NOT NULL,
  `id_u` int(3) NOT NULL,
  `cant` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`fecha`, `tipomov`, `id_p`, `id_u`, `cant`) VALUES
('2024-06-21 03:19:39', 'venta', 8, 3, 2),
('2024-06-21 03:19:44', 'venta', 1, 3, 1),
('2024-06-20 19:21:21', 'venta', 3, 3, 1),
('2024-06-20 20:44:48', 'compra', 19, 1, 3),
('2024-06-20 21:53:16', 'venta', 1, 3, 2),
('2024-06-20 21:53:39', 'venta', 11, 3, 2),
('2024-06-20 21:54:51', 'venta', 3, 3, 1),
('2024-06-20 21:56:19', 'venta', 11, 3, 4),
('2024-06-20 22:33:48', 'compra', 21, 1, 2),
('2024-06-20 23:08:12', 'venta', 21, 3, 2),
('2024-06-20 23:08:19', 'venta', 20, 3, 1),
('2024-06-21 11:15:57', 'venta', 4, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prendas`
--

CREATE TABLE `prendas` (
  `id_p` int(3) NOT NULL,
  `nombrep` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(3) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `cantidadp` int(3) NOT NULL,
  `fotop` varchar(100) DEFAULT NULL,
  `id_c` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prendas`
--

INSERT INTO `prendas` (`id_p`, `nombrep`, `descripcion`, `precio`, `talla`, `cantidadp`, `fotop`, `id_c`) VALUES
(1, 'Crop Top', 'crop top básico sin mangas en color negro 2 tirantes', 50, 'S', 10, '../assets/img_prendas/croptop.jpg', 1),
(2, 'Baggy Jeans', 'baggy jeans color azul, cintura baja', 60, 'XS', 15, '../assets/img_prendas/baggyjeans.jpg', 2),
(3, 'Vestido', 'vestido negro con mangas largas', 70, 'M', 4, '../assets/img_prendas/vestido-negro.png', 3),
(4, 'Falda Tableada Mezclilla', 'Falda Tableada de Mezclilla en color azul', 60, 'L', 30, '../assets/img_prendas/falda-mezclilla.png', 5),
(5, 'Chaleco Azul', 'Chaleco azul con blanco de rombos', 55, 'S', 30, '../assets/img_prendas/chaleco-azul.jpg', 6),
(6, 'Falda Tableada Negra', 'Falda tableada de color negro con cruces blancas en parte inferior', 70, 'XS', 20, '../assets/img_prendas/falda-cruces.jpg', 5),
(8, 'Corset Negro', 'Corset de color negro con encaje', 80, 'M', 25, '../assets/img_prendas/corset-negro.jpg', 7),
(11, 'Vestido Negro', 'Vestido Aterciopelado en color negro, con mangas largas en color negro transparentes', 130, 'L', 10, '../assets/img_prendas/vestido-terciopelo.jpeg', 3),
(19, 'Pantalón de Corazones', 'Pantalón de mezclilla con corazones impresos', 60, 'M', 7, '../assets/img_prendas/pantalon-corazones.jpg', 2),
(20, 'Shorts Negros', 'Shorts Negros con cinturón estilo coreano', 60, 'M', 9, '../assets/img_prendas/shorts-negros.png', 8),
(21, 'Shorts Fresa', 'Shorts de color azul con estampado de fresas', 55, 'XS', 20, '../assets/img_prendas/shorts-fresas.jpeg', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomov`
--

CREATE TABLE `tipomov` (
  `id_tipo` int(3) NOT NULL,
  `tipomov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipomov`
--

INSERT INTO `tipomov` (`id_tipo`, `tipomov`) VALUES
(1, 'compra'),
(2, 'venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(3) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `usuario`, `password`, `nombre`, `foto`, `tipo`) VALUES
(1, 'tuyushi02@gmail.com', 'c1d7ea6053bec86021715f9742427e69', 'Tanis', '../assets/img_profile/jimin.jpg', 'admin'),
(3, 'tanis04@gmail.com', '1121b1f1b76edccc7c2935dd09dd6bbc', 'Tanis Oveyes', '../assets/img_profile/vestido-negro.png', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `fk_id_u` (`id_u`),
  ADD KEY `fk_id_p` (`id_p`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `tipomov` (`tipomov`);

--
-- Indices de la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_c` (`id_c`);

--
-- Indices de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  ADD PRIMARY KEY (`id_tipo`),
  ADD KEY `idx_tipomov` (`tipomov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_c` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `prendas`
--
ALTER TABLE `prendas`
  MODIFY `id_p` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  MODIFY `id_tipo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_id_p` FOREIGN KEY (`id_p`) REFERENCES `prendas` (`id_p`),
  ADD CONSTRAINT `fk_id_u` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `id_p` FOREIGN KEY (`id_p`) REFERENCES `prendas` (`id_p`),
  ADD CONSTRAINT `id_u` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`),
  ADD CONSTRAINT `tipomov` FOREIGN KEY (`tipomov`) REFERENCES `tipomov` (`tipomov`);

--
-- Filtros para la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD CONSTRAINT `id_c` FOREIGN KEY (`id_c`) REFERENCES `categorias` (`id_c`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
