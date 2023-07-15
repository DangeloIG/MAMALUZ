-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 15-07-2023 a las 03:54:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `ruc` varchar(15) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `direccion` text NOT NULL,
  `mensaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `mensaje`) VALUES
(1, '10455161822', 'MAMA LUZ', '994061802', 'Urb. Sol de Ica-Mza.F-Lote21\r\n', 'Gracias por la compra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comentario` text DEFAULT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `nombre`, `precio`, `cantidad`, `comentario`, `id_pedido`) VALUES
(1, 'CHAUFA', 20.00, 1, '', 1),
(14, 'Chaufa', 13.00, 2, '', 4),
(15, 'Arroz con Pollo', 11.00, 1, '', 4),
(16, 'Arroz con Pollo', 11.00, 1, '', 5),
(17, 'Jalea Mixta', 25.00, 1, 'Con ensalafa aparte', 6),
(18, 'Chicharrones', 15.50, 1, '', 6),
(19, 'Chicharrones', 15.50, 3, '', 7),
(20, 'Jalea Mixta', 25.00, 1, '', 7),
(21, 'Arroz con Pollo', 11.00, 1, '', 7),
(22, 'Chaufa', 13.00, 1, '', 8),
(23, 'Arroz con Pollo', 11.00, 1, '', 9),
(24, 'Chicharrones', 15.50, 1, '', 9),
(25, 'Arroz con Pollo', 11.00, 1, '', 10),
(26, 'Chaufa', 13.00, 1, '', 10),
(27, 'Arroz con Pollo', 11.00, 1, '', 11),
(28, 'Chicharrones', 15.50, 2, '', 11),
(29, 'Chicharrones', 15.50, 2, '', 12),
(30, 'Jalea Mixta', 25.00, 1, 'Con ensalada aparte', 12),
(31, 'Chicharrones', 15.50, 3, '', 13),
(32, 'Jalea Mixta', 25.00, 1, 'Con ensalada aparte', 13),
(33, 'Arroz con Pollo', 11.00, 1, '', 14),
(34, 'Chaufa', 13.00, 2, '', 14),
(35, 'Chicharrones', 15.50, 1, '', 14),
(36, 'Chaufa', 13.00, 2, '', 15),
(37, 'Arroz con Pollo', 11.00, 2, '', 16),
(38, 'Chicharrones', 15.50, 3, '', 17),
(39, 'Caldo de Gallina', 8.00, 2, '', 18),
(40, 'Caldo de Gallina', 8.00, 2, '', 19),
(41, 'Arroz con Pollo', 11.00, 1, '', 20),
(42, 'Chicharrones', 15.50, 3, '', 20),
(43, 'Caldo de Gallina', 8.00, 1, '', 20),
(44, 'Chicharrón', 15.00, 2, 'Con la salsa aparte', 21),
(45, 'Mazamorra', 3.00, 1, 'Para llevar', 21),
(46, 'Chicharrón', 15.00, 2, 'Ensalada aparte', 22),
(47, 'Jarra de chicha', 12.00, 1, 'Con limón aparte', 22),
(48, 'Arroz con seco de pollo', 15.00, 2, '', 22),
(49, 'Coca Cola 1.5L', 10.00, 2, '', 23),
(50, 'Coca Cola 1.5L', 10.00, 2, '', 24),
(51, 'Coca Cola 1.5L', 10.00, 2, '', 25),
(52, 'Coca Cola 1.5L', 10.00, 2, '', 26),
(53, 'Chicharrones', 15.00, 1, 'Con ensalada aparte', 27),
(54, 'Carapulcra con sopa seca', 18.00, 1, '', 27),
(55, 'Carapulcra con sopa seca', 18.00, 2, '', 28),
(56, 'Chicharrones', 15.00, 2, '', 29),
(57, 'Coca Cola 1.5L', 10.00, 1, '', 29),
(58, 'Carapulcra con sopa seca', 18.00, 1, '', 30),
(59, 'Chicharrones', 15.00, 1, '', 30),
(60, 'Chicha de Jora', 15.00, 1, '', 31),
(61, 'Chicha de Jora', 15.00, 1, '', 32),
(62, 'Chicha de Jora', 15.00, 1, '', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `num_mesa` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `estado` enum('PENDIENTE','FINALIZADO') NOT NULL DEFAULT 'PENDIENTE',
  `usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_sala`, `num_mesa`, `fecha`, `total`, `estado`, `usuario`) VALUES
(1, 1, 2, '2023-06-30 13:10:44', 78.00, 'FINALIZADO', 'Daniel Carbajo'),
(2, 2, 8, '2023-06-30 13:10:44', 30.00, 'FINALIZADO', 'Jose Aleman'),
(3, 1, 9, '2023-06-30 13:10:44', 28.00, 'FINALIZADO', 'D\'Angelo Injante'),
(4, 1, 11, '2023-06-30 13:10:44', 20.00, 'FINALIZADO', 'D\'Angelo Injante'),
(5, 1, 1, '2023-06-30 14:11:50', 11.00, 'FINALIZADO', 'D\'Angelo Injante'),
(6, 1, 1, '2023-06-30 14:15:04', 40.50, 'FINALIZADO', 'D\'Angelo Injante'),
(7, 1, 1, '2023-06-30 14:16:23', 82.50, 'FINALIZADO', 'D\'Angelo Injante'),
(8, 1, 1, '2023-06-30 18:46:50', 13.00, 'FINALIZADO', 'Jose Aleman'),
(9, 1, 1, '2023-06-30 18:50:59', 26.50, 'FINALIZADO', 'D\'Angelo Injante'),
(10, 1, 1, '2023-06-30 19:03:04', 24.00, 'FINALIZADO', 'D\'Angelo Injante'),
(11, 1, 2, '2023-06-30 19:06:43', 42.00, 'FINALIZADO', 'D\'Angelo Injante'),
(12, 1, 1, '2023-06-30 19:07:57', 56.00, 'FINALIZADO', 'D\'Angelo Injante'),
(13, 1, 8, '2023-06-30 19:09:09', 71.50, 'FINALIZADO', 'D\'Angelo Injante'),
(14, 1, 8, '2023-06-30 19:10:40', 52.50, 'FINALIZADO', 'D\'Angelo Injante'),
(15, 1, 1, '2023-06-30 19:16:58', 26.00, 'FINALIZADO', 'D\'Angelo Injante'),
(16, 1, 1, '2023-06-30 19:19:27', 22.00, 'FINALIZADO', 'D\'Angelo Injante'),
(17, 1, 7, '2023-06-30 19:20:12', 46.50, 'FINALIZADO', 'D\'Angelo Injante'),
(18, 1, 10, '2023-06-30 20:07:41', 16.00, 'FINALIZADO', 'D\'Angelo Injante'),
(19, 1, 10, '2023-06-30 20:09:01', 16.00, 'FINALIZADO', 'D\'Angelo Injante'),
(20, 1, 9, '2023-06-30 20:26:37', 65.50, 'FINALIZADO', 'Jose Aleman'),
(21, 1, 1, '2023-07-06 13:32:10', 33.00, 'FINALIZADO', 'D\'Angelo Injante'),
(22, 2, 4, '2023-07-06 15:05:10', 72.00, 'FINALIZADO', 'D\'Angelo Injante'),
(23, 2, 3, '2023-07-07 10:50:49', 20.00, 'FINALIZADO', 'D\'Angelo Injante'),
(24, 2, 4, '2023-07-07 11:00:06', 20.00, 'FINALIZADO', 'D\'Angelo Injante'),
(25, 2, 5, '2023-07-07 11:06:44', 20.00, 'FINALIZADO', 'D\'Angelo Injante'),
(26, 2, 5, '2023-07-07 18:36:40', 20.00, 'FINALIZADO', 'D\'Angelo Injante'),
(27, 2, 3, '2023-07-07 19:32:34', 33.00, 'FINALIZADO', 'D\'Angelo Injante'),
(28, 2, 2, '2023-07-07 19:40:26', 36.00, 'FINALIZADO', 'D\'Angelo Injante'),
(29, 1, 9, '2023-07-07 19:43:26', 40.00, 'FINALIZADO', 'D\'Angelo Injante'),
(30, 1, 8, '2023-07-07 21:04:04', 33.00, 'FINALIZADO', 'D\'Angelo Injante'),
(31, 2, 5, '2023-07-11 00:11:09', 15.00, 'FINALIZADO', 'D\'Angelo Injante'),
(32, 2, 5, '2023-07-11 00:00:00', 15.00, 'PENDIENTE', 'D\'Angelo Injante'),
(33, 2, 3, '2023-07-11 00:16:21', 15.00, 'FINALIZADO', 'D\'Angelo Injante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`id`, `nombre`, `precio`, `fecha`) VALUES
(1, 'ARROZ CON POLLO', 10.00, '2022-05-17'),
(2, 'CHAUFA', 20.00, '2022-05-17'),
(3, 'GASEOSA COCA COLA 1.5 LITROS', 8.00, '2022-05-17'),
(4, 'Arroz con Pollo', 11.00, '2023-06-30'),
(5, 'Chaufa', 13.00, '2023-06-30'),
(8, 'Chicharrones', 15.50, '2023-06-30'),
(9, 'Jalea Mixta', 25.00, '2023-06-30'),
(10, 'Caldo de Gallina', 8.00, '2023-06-30'),
(11, 'Chicharrón', 15.00, '2023-07-06'),
(12, 'Mazamorra', 3.00, '2023-07-06'),
(13, 'Arroz con seco de pollo', 15.00, '2023-07-06'),
(14, 'Jarra de chicha', 12.00, '2023-07-06'),
(15, 'Coca Cola 1.5L', 10.00, '2023-07-07'),
(16, 'Carapulcra con sopa seca', 18.00, '2023-07-07'),
(17, 'Chicharrones', 15.00, '2023-07-07'),
(18, 'Chicha de Jora', 15.00, '2023-07-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `mesas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id`, `nombre`, `mesas`) VALUES
(1, 'SALA PRINCIPAL', 10),
(2, 'SEGUNDO PISO', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'D\'Angelo Injante', 'D\'Angelo', 'admin', 'Administrador'),
(3, 'DanielCarbajo', 'Daniel Carbajo', 'admin', 'Administrador'),
(4, 'Jose Aleman', 'Jose Aleman', 'asis', 'Asistente'),
(5, 'Daniel Carbajo', 'Daniel', 'asis', 'Asistente'),
(6, 'D\'Angelo Injante', 'D\'Angelo', 'asis', 'Asistente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
