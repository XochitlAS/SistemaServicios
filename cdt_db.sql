-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 20:42:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cdt_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `telefono_2` varchar(15) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `registro` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `telefono_2`, `correo`, `registro`) VALUES
(1, 'Dibanhi Lira Gonzalez', '', '', '', '2023-10-30'),
(2, 'INSTITUTO GENESIS', '', '', '', '2023-10-30'),
(3, 'JESUS GARANZUAY', '', '', '', '2023-10-30'),
(4, 'JUAN PEREZ', '', '', '', '2023-10-30'),
(7, 'XOCHITL AGUERO', '877987323', '87981271', '1234@gmail.com', '2024-03-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `nombre_Cliente` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono_1` int(11) NOT NULL,
  `telefono_2` int(11) NOT NULL,
  `folio` varchar(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `no_serie` varchar(255) NOT NULL,
  `anticipo_1` float NOT NULL,
  `anticipo_2` float NOT NULL,
  `balance` float NOT NULL,
  `fecha_contrato` date NOT NULL DEFAULT current_timestamp(),
  `subtotal` float NOT NULL,
  `iva` float NOT NULL,
  `total` float NOT NULL,
  `f_pago` varchar(255) NOT NULL,
  `notas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id`, `id_cliente`, `id_usuario`, `nombre_Cliente`, `ciudad`, `estado`, `correo`, `telefono_1`, `telefono_2`, `folio`, `domicilio`, `marca`, `modelo`, `no_serie`, `anticipo_1`, `anticipo_2`, `balance`, `fecha_contrato`, `subtotal`, `iva`, `total`, `f_pago`, `notas`) VALUES
(49, 1, 14, 'Dibanhi Lira Gonzalez', '', '', '', 0, 0, '93169', 'SAN JUAN DE LA BARRERA', 'HIKVISION', 'DS-HGHGI-K1', '384929', 0, 0, 0, '2024-04-23', 0, 0, 0, 'Efectivo', ''),
(50, 7, 14, 'XOXHITL AGUERO', '', '', '', 0, 0, '56278', 'SONIA LISETH ', 'EPCOM', '32-TURBO-3948', '365431', 0, 0, 0, '2024-04-23', 0, 0, 0, 'Efectivo', ''),
(51, 7, 1, 'XOXHITL AGUERO', '', '', '', 0, 0, '71251', 'SONIA LISETH ', 'HIKVISION', 'DS-HGHI-K1', '934875', 1500, 400, 0, '2024-04-24', 3740, 299.2, 4039.2, 'Cheque', 'ES PARA LA ESCUELA PRIMARIA JUSTO SIERRA'),
(63, 7, 1, 'XOXHITL AGUERO', 'ACUÑA', 'COAHUILA', '1234@gmail.com', 877987323, 87981271, '85213', 'SONIA LISETH ', 'HIKVISION', 'DS-HGHI-K102', 'GH93847', 1500, 300, 1800, '2024-05-05', 14660, 1172.8, 15832.8, 'Tarjeta', 'ES PARA LA CENTRAL DE AVASTOS'),
(70, 2, 1, 'INSTITUTO GENESIS', 'ACUÑA', 'COAHUILA', '', 0, 0, '82283', 'HIDALGO ', 'HILOOK', 'DS-HGDI290J-K1', 'NX387610', 1500, 0, 0, '2024-05-07', 9000, 720, 9720, 'Cheque', 'ESTA A NOMBRE DE LA LICENCIADA CARMEN FUENTES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id` int(255) NOT NULL,
  `id_cliente` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `emisio` int(255) NOT NULL,
  `expiracion` int(255) NOT NULL,
  `subtotal` int(255) NOT NULL,
  `iva` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `notas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizaciones`
--

INSERT INTO `cotizaciones` (`id`, `id_cliente`, `id_usuario`, `cliente`, `usuario`, `emisio`, `expiracion`, `subtotal`, `iva`, `total`, `notas`) VALUES
(1, '1', '26', 'Dibanhi Lira Gonzalez\r\n', 'xochitl aguero', 0, 0, 93874, 879987, 879797, 'estubo chido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_contratos`
--

CREATE TABLE `detalle_contratos` (
  `id_detalle` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` float NOT NULL,
  `p_unitario` float NOT NULL,
  `subtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_contratos`
--

INSERT INTO `detalle_contratos` (`id_detalle`, `id_contrato`, `descripcion`, `cantidad`, `p_unitario`, `subtotal`) VALUES
(28, 49, '', 0, 0, 0),
(29, 50, '', 0, 0, 0),
(30, 51, 'CAMRA TURRET', 1, 800, 800),
(31, 51, 'CAMARA COLOR VU ', 3, 980, 2940),
(43, 63, 'EPCOM', 4, 600, 2400),
(44, 63, 'HIKVISION', 5, 900, 4500),
(45, 63, 'HIKLOOK', 8, 970, 7760),
(52, 70, 'CAMARA TURRET SIRENA', 3, 1200, 3600),
(53, 70, 'KIT DE 4 CAMARAS COLOR VU', 1, 1600, 1600),
(54, 70, 'CAMARA BULLET SIRENA COLOR VU', 2, 1900, 3800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `calle` varchar(1000) NOT NULL,
  `interior` varchar(10) NOT NULL,
  `exterior` varchar(10) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `referencias` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`id`, `id_cliente`, `calle`, `interior`, `exterior`, `colonia`, `ciudad`, `estado`, `pais`, `referencias`) VALUES
(1, 4, '', '', '', '', '', '', 'Mexico', 'Domicilio Simulado'),
(2, 1, '', '', '2014', 'SANTA TERESA', 'ACUÑA', 'COAHUILA', 'Mexico', 'Casa color Blanco 2 Pisos'),
(3, 1, 'SAN JUAN DE LA BARRERA', '', '510', '', '', '', 'Mexico', ''),
(5, 2, 'kjkjkjkj', '43', '4233', 'hfghfhghfhgf', 'acuña', 'coahula', 'Mexico', 'jrtftrjdf'),
(6, 7, 'SONIA LISETH ', '1048', '1048', 'FRACC. NOBLASSI 2', 'ACUÑA', 'COAHUILA', 'Mexico', 'SERCA DE LA IGLESIA '),
(15, 1, 'HIDALGO ', '23398', '20012', 'VILLA NUEVA', 'ACUÑA', 'COAHUILA', 'Mexico', ''),
(16, 2, 'HIDALGO ', '23398', '20012', 'VILLA NUEVA', 'ACUÑA', 'COAHUILA', 'Mexico', ''),
(17, 4, 'HIDALGO ', '23398', '20012', 'VILLA NUEVA', 'ACUÑA', 'COAHUILA', 'Mexico', ''),
(18, 3, 'HIDALGO ', '23398', '20012', 'VILLA NUEVA', 'ACUÑA', 'COAHUILA', 'Mexico', ''),
(19, 3, 'HIDALGO ', '23398', '20012', 'VILLA NUEVA', 'ACUÑA', 'COAHUILA', 'Mexico', ''),
(20, 2, 'VILLA REAL', '12831', '20981', 'CEDROS', 'ACUÑA', 'COAHULA', 'Mexico', 'ESTA SERCA DE LA FRUTERIA '),
(21, 4, 'VILLA REAL', '12831', '20981', 'CEDROS', 'ACUÑA', 'COAHULA', 'Mexico', 'ESTA SERCA DE LA FRUTERIA ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `registro` date NOT NULL DEFAULT current_timestamp(),
  `estatus` varchar(10) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `pass` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `registro`, `estatus`, `nivel`, `usuario`, `pass`) VALUES
(1, 'DIBANHI LIRA GONZALEZ', '8771365051', '2023-10-30', 'ACTIVO', 'administrador', 'admin', 'admin'),
(26, 'XOCHITL IDALY AGUERO SANCHEZ', '8771023801', '2024-03-13', 'ACTIVO', 'usuario', 'user', '12345'),
(28, 'PRUEBA', '', '2024-03-14', 'ACTIVO', 'administrador', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_contratos`
--
ALTER TABLE `detalle_contratos`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
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
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_contratos`
--
ALTER TABLE `detalle_contratos`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
