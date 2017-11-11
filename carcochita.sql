-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2017 a las 15:19:25
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carcochita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `codigo` smallint(6) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `año` smallint(6) NOT NULL,
  `color` varchar(20) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`codigo`, `marca`, `modelo`, `año`, `color`, `imagen`, `descripcion`) VALUES
(1, 'KIA', 'Rio Sedan', 2018, 'blanco', 'http://www.kia.com/content/dam/kwcms/gt/en/images/showroom/rio-4-door/features/360vr/360_ex_White/UD_00001.jpg', 'Conduzca el Rio y junto con la potencia, la eficiencia y el rendimiento vienen las emisiones bajas y el consumo de combustible reducido.'),
(2, 'KIA', 'Cerato Sedan', 2018, 'rojo', 'http://www.kia.com.eg/vehicles/Cerato/images/img-car980.jpg', 'El aspecto deportivo inconfundible se combina con la tecnología de vanguardia y el rendimiento avanzado en la carretera para despertar tus sentidos mientras te lleva por nuevos caminos.'),
(6, 'BMW', '6 Series', 2014, 'azul', 'https://buyersguide.caranddriver.com/media/assets/submodel/8162.jpg', 'Todas y cada una de las facetas del BMW Serie 6 Convertible refleja agilidad, ráfagas de viento y empuje. Junto con los faros LED estándar y las luces de circulación diurna sobre las tomas de aire.'),
(7, 'BMW', 'M5 Sedan', 2017, 'azul', 'https://media.ed.edmunds-media.com/bmw/m5/2013/oem/2013_bmw_m5_sedan_base_fq_oem_9_1280.jpg', 'Con emocionante y elegante forma. Más potente que nunca. La nueva generación del BMW M5 es la total declaración de un nivel de ingeniería supremo e inteligencia de conducción innovadora.'),
(8, 'AUDI', 'TT', 2017, 'blanco', 'http://www.abt-sportsline.de/uploads/tx_mpabtcarsettings/audi_tt_overview.png', 'El Nuevo Audi TT se caracteriza por las innovadoras tecnologías en el sistema de tracción integral a las cuatro ruedas, en sus deportivos y eficientes motores.'),
(9, 'AUDI', 'A8', 2017, 'azul', 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/gallery_big/public/media/image/2017/04/audi-a8-2018-segun-x-tomi.jpg?itok=ty9PVCfL', 'Es un modelo que presenta lo último en tecnología de la marca, con motores V6, V8 y W12 y un interior en el que nos encontramos con un gran espacio y con excelentes acabados y ajustes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `contraseña` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `celular`, `edad`, `contraseña`) VALUES
(8, 'David', 'Medina', 'davidmedi@hotmail.com', '9874561', '21', 'ab5adb174a2b4f020b1bf8fa5b92f3fb'),
(9, 'Anuel', 'Flores', 'brrr@gmail.com', '10229874', '24', '74df7386caa7885def54c04614baf1d3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `codigo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;