-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-08-2022 a las 16:27:31
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basemvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `id_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `presentacion`, `precio`, `id_tipo`) VALUES
(1, '000001', 'Gaseosa', '200 ml', 1000, 2),
(2, '000002', 'Jugo TutiFruti en caja', 'Caja x 250 ml', 1200, 2),
(3, '000003', 'Alpin de Fresa', 'Bolsa x 200 ml', 1500, 1),
(4, '000004', 'Yogurt Mora', 'Bolsa x 200 ml', 1500, 1),
(5, '000005', 'Empanada de carne y arroz', 'unidad', 1300, 3),
(6, '000006', 'Pastel de pollo', 'unidad', 2000, 3),
(7, '000007', 'Palito de queso', 'Unidad', 2600, 3),
(8, '000008', 'Chocolatina', 'unidad pequeÃ±a', 700, 4),
(9, '000009', 'Chocolatina Jet con mani', 'Unidad', 2500, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

DROP TABLE IF EXISTS `tipo_productos`;
CREATE TABLE IF NOT EXISTS `tipo_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`id`, `nombre`) VALUES
(1, 'Lacteos'),
(2, 'Bebidas'),
(3, 'Fritos'),
(4, 'Cofiteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `perfil`, `nombre`, `correo`, `clave`) VALUES
(1, 'usuario', 'Max Espinoza', 'max@gmail.com', '12345'),
(2, 'administrador', 'Maria Jose Mira', 'mariaj69@gmail.com', '12345'),
(3, 'administrador', 'Profe Jhon Pino', 'profepino@gmail.com', '12345');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
