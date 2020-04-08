-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-04-2020 a las 12:56:02
-- Versión del servidor: 5.6.38
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `technest_alan_careyes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES
(1, 'webmaster', 'Webmaster'),
(2, 'admin', 'Administrator'),
(3, 'manager', 'Manager'),
(4, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, NULL, 1451900190, 1465489592, 1, 'Webmaster', ''),
(2, '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, 1451900228, 1465489580, 1, 'Admin', ''),
(3, '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, 1451900430, 1465489585, 1, 'Manager', ''),
(4, '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, 1451900439, 1465489590, 1, 'Staff', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users_groups`
--

CREATE TABLE `admin_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_users_groups`
--

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_access`
--

CREATE TABLE `api_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'anonymous', 1, 1, 0, NULL, 1463388382);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_limits`
--

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `path_image` varchar(256) NOT NULL,
  `movil_image` varchar(254) NOT NULL,
  `title` varchar(120) NOT NULL,
  `introText` text NOT NULL,
  `image_icon1` varchar(120) NOT NULL,
  `image_icon2` varchar(120) NOT NULL,
  `image_icon3` varchar(120) NOT NULL,
  `image_icon4` varchar(120) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bookNow` varchar(120) NOT NULL,
  `estatus` int(11) NOT NULL,
  `descriptionResidence` varchar(120) NOT NULL,
  `nextButton` varchar(120) NOT NULL,
  `prevButton` varchar(120) NOT NULL,
  `detailImage` varchar(120) NOT NULL,
  `imageFistResidence` varchar(120) NOT NULL,
  `imageSecondResidence` varchar(120) NOT NULL,
  `imageThirdResidence` varchar(120) NOT NULL,
  `detailTitle` varchar(80) NOT NULL,
  `intro_Text2` text NOT NULL,
  `detailParagraph1` varchar(60) NOT NULL,
  `detailParagraph2` varchar(150) NOT NULL,
  `detailParagraph3` varchar(60) NOT NULL,
  `detailParagraph4` varchar(60) NOT NULL,
  `detailParagraph5` varchar(60) NOT NULL,
  `detailParagraph6` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id`, `path_image`, `movil_image`, `title`, `introText`, `image_icon1`, `image_icon2`, `image_icon3`, `image_icon4`, `created_at`, `updated_at`, `bookNow`, `estatus`, `descriptionResidence`, `nextButton`, `prevButton`, `detailImage`, `imageFistResidence`, `imageSecondResidence`, `imageThirdResidence`, `detailTitle`, `intro_Text2`, `detailParagraph1`, `detailParagraph2`, `detailParagraph3`, `detailParagraph4`, `detailParagraph5`, `detailParagraph6`) VALUES
(1, 'assets/img/Residences/11/El-Careyes-Residence-11-Cover.jpg', 'assets/img/Residences/11/El-Careyes-Residence-11-Cover-m.jpg', 'RESIDENCIA 11', 'Residencia de dos recámaras ubicada en planta baja con una formidable terraza frontal con sala y comedor ', 'assets/img/iconos/Grupo1.png', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-11 14:45:00', '2020-04-08 16:19:30', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-a.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-b.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-c.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-d.jpg', 'RESIDENCIA <br>11', 'Residencia de dos recámaras ubicada en planta baja con una formidable terraza frontal con sala y comedor de jardín con vista al restaurante del Club. Cuenta con puertas de persiana de madera tropical que ofrecen un estilo único y formidable.', '– 2 ½ baños', '– Cocina integral con parrilla eléctrica, microondas y refrigerador', '– Sala con televisión y accesorios', '– Jardín pequeño', '', ''),
(2, 'assets/img/Residences/14/El-Careyes-Residence-14-Cover.jpg', 'assets/img/Residences/14/El-Careyes-Residence-14-Cover-m.jpg', 'RESIDENCIA 14', 'Espaciosa residencia de tres recámaras con decoración excepcional, ubicada en planta baja del Club', 'assets/img/iconos/Grupo1-2.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-11 19:32:00', '2020-04-08 16:34:01', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-a.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-b.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-c.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-c.jpg', 'RESIDENCIA <br>14', 'Espaciosa residencia de tres recámaras con decoración excepcional, ubicada en planta baja del Club. Cuenta una cómoda terraza frontal con sala y comedor de jardín, además de tener vista al restaurante.', '– 3 ½ baños', '– Cocina integral con parrilla eléctrica, microondas y refrigerador', '– Sala con televisión y accesorios', '– Jardín pequeño', '', ''),
(3, 'assets/img/Residences/211/El-Careyes-Residence-211-Cover.jpg', 'assets/img/Residences/211/El-Careyes-Residence-211-Cover-m.jpg', 'RESIDENCIA 211', 'Hermosa residencia de dos recámaras ubicada en la planta media. Nuestro espacio se caracteriza por contar...', 'assets/img/iconos/Grupo1.png', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-11 19:38:00', '2020-04-08 16:34:05', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-a.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-b.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-c.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-d.jpg', 'RESIDENCIA <br>211', 'Hermosa residencia de dos recámaras ubicada en la planta media. Nuestro espacio se caracteriza por contar con una vista privilegiada al mar y la naturaleza desde la terraza, la cual cuenta con una cómoda sala.', '– Baño completo', '– Cocina integral con parrilla eléctrica, microondas y refrigerador', '– Sala con televisión y accesorios', '– Balcón con vista a la naturaleza', '', ''),
(4, 'assets/img/Residences/116/El-Careyes-Residence-116-Cover.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Cover-m.jpg', 'RESIDENCIA 116', 'Cómoda residencia de dos recámaras de diseño tropical ubicada en la planta alta del club. Cuenta con una posición...', 'assets/img/iconos/Grupo1-2.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-11 19:39:00', '2020-04-08 16:34:10', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-a.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-b.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-c.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-d.jpg', 'RESIDENCIA<br>116', 'Cómoda residencia de dos recámaras de diseño tropical ubicada en la planta alta del club. Cuenta con una posición ideal para disfrutar de una extraordinaria vista al mar desde la sala en la terraza.', '– 1 ½ baños', '– Cocina integral mediana con parrilla eléctrica, microondas y refrigerador', '– Sala mediana con televisión y accesorios', '– Balcón con vista a la cancha de tenis y estacionamiento', '', ''),
(5, 'assets/img/Residences/229/El-Careyes-Residence-229-cover.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-cover-m.jpg', 'RESIDENCIA 229', 'Hermosa residencia de una habitación con un paisaje natural de fondo. Ubicada en el piso medio, nuestro espacio se ...', 'assets/img/iconos/Grupo1.png', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-12 11:34:00', '2020-04-08 16:34:22', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-a.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-b.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-c.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-d.jpg', 'RESIDENCIA<br>229', 'Hermosa residencia de una habitación con un paisaje natural de fondo. Ubicada en el piso medio, nuestro espacio se caracteriza por su estilo tropical representado por medio de su arquitectura de persianas de madera, una terraza cálida acompañada de una sala, además de contar con vista privilegiada al mar y las albercas.', '– Baño completo', '– Cocina integral con parrilla eléctrica, microondas y refrigerador', '– Pequeña sala con televisión y accesorios', '– Balcón con vista a la naturaleza', '', ''),
(6, 'assets/img/Residences/3/El-Careyes-Residence-3-cover.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-cover-m.jpg', 'RESIDENCIA 3', 'Residencia natural de una recámara ubicada en planta baja y de diseño conceptual. Cuenta con una...', 'assets/img/iconos/Grupo1.png', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-03-12 10:38:00', '2020-04-08 16:34:26', '#', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-a.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-b.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-c.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-d.jpg', 'RESIDENCIA<br>3', 'Residencia natural de una recámara ubicada en planta baja y de diseño conceptual. Cuenta con una cómoda terraza frontal con sala y comedor de jardín, además de una vista directa a las albercas del Club.', '– Recámara con baño completo', '– Cocina integral con parrilla eléctrica, microondas y refrigerador', '– Sala pequeña con televisión y accesorios', '– Jardín pequeño', '', ''),
(7, 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover-m.jpg', 'RESIDENCIA 9', 'Hermosa residencia de una recámara ubicada en planta baja con vista directa a las albercas y restaurante del Club', 'assets/img/iconos/Grupo1-3.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:22:34', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/9/El-Careyes-Residencia-9-Galeria-a.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Galeria-b.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Galeria-c.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Galeria-d.jpg', 'RESIDENCIA<br>9', 'Hermosa residencia de una recámara ubicada en planta baja con vista directa a las albercas y restaurante del Club. Cuenta con un cómodo comedor ubicado en la terraza, ideal para disfrutar de un momento al aire libre.', '– Baño completo con jacuzzi', '– Cocina integral con parrilla eléctrica, microondas, horno, tostador y refrigerador', '– Sala pequeña con mesa de centro, televisión y accesorios', '– Jardín trasero', '', ''),
(8, 'assets/img/Residences/15/El-Careyes-Residencia-15-Cover.jpg', 'assets/img/Residences/15/El-Careyes-Residencia-15-Cover-m.jpg', 'RESIDENCIA 15', 'Cómoda residencia de dos recámaras ubicada en planta baja del Club. Cuenta con una terraza frontal ideal para disfrutar', 'assets/img/iconos/Grupo1-4.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:22:39', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/15/El-Careyes-Residencia-15-Galeria-a.jpg', 'assets/img/Residences/15/El-Careyes-Residencia-15-Galeria-b.jpg', 'assets/img/Residences/15/El-Careyes-Residencia-15-Galeria-c.jpg', 'assets/img/Residences/15/El-Careyes-Residencia-15-Galeria-d.jpg', 'RESIDENCIA<br>15', 'Cómoda residencia de dos recámaras ubicada en planta baja del Club. Cuenta con una terraza frontal ideal para disfrutar de una comida al aire libre. Acceso a la zona de albercas y restaurante a tan solo unos pasos.', '– 2 baños completos', '– Cocina integral completa con parrilla eléctrica, microondas, licuadora, horno, cafetera, refrigerador y utensilios de cocina', '– Cama king size y dos matrimoniales', '– Comedor para 6 personas', '– Sala con mesa de centro, televisión y accesorios', '– Jardín trasero'),
(9, 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover-m.jpg', 'RESIDENCIA 17', 'Residencia de dos recámaras ubicada en planta baja del Club. Cuenta con una terraza frontal ideal con comedor', 'assets/img/iconos/Grupo1-4.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:47:23', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-a.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-b.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-c.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-d.jpg', 'RESIDENCIA<br>17', 'Residencia de dos recámaras ubicada en planta baja del Club. Cuenta con una terraza frontal ideal con comedor para seis personas. Situada a solo unos pasos del restaurante y zona de albercas.', '– 2 baños completos', '– Cocina integral completa con parrilla eléctrica, microondas, licuadora, horno, cafetera, refrigerador y utensilios de cocina', '– Cama king size y dos matrimoniales', '– Comedor para 6 personas', '– Sala con mesa de centro, televisión y accesorios', '– Jardín trasero'),
(10, 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover-m.jpg', 'RESIDENCIA 114', 'Extensa residencia de cuatro recámaras ubicada en la planta alta del Club. Cuenta con una amplia terraza para disfrutar...', 'assets/img/iconos/Grupo1-5.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:47:26', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-a.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-b.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-c.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-d.jpg', 'RESIDENCIA<br>114', 'Extensa residencia de cuatro recámaras ubicada en la planta alta del Club. Cuenta con una amplia terraza para disfrutar de tiempo al aire libre y con una majestuosa vista al mar, además de un balcón con vista hacia las canchas de tenis y estacionamiento.', '– 4 baños completos', '– Tres camas king size y dos matrimoniales', '– Cocina integral equipada', '– Sala amplia con mesa de centro, televisión y accesorios', '– Aire acondicionado', ''),
(11, 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover.jpg', 'assets/img/Residences/9/El-Careyes-Residencia-9-Cover-m.jpg', 'PH 126', 'Amplio penthouse de cuatro recámaras ubicado en la planta media del Club y con espectacular vista directa al mar', 'assets/img/iconos/Grupo1-5.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:47:32', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-a.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-b.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-c.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-d.jpg', 'PH 26', 'Amplio penthouse de cuatro recámaras ubicado en la planta media del Club y con espectacular vista directa al mar y a la alberca. Cuenta con una terraza equipada con una cómoda sala de estar, además de dos balcones hacia las canchas de tenis y estacionamiento.', '– 4 baños completos', '– Dos camas king size y cuatro matrimoniales', '– Cocina integral equipada', '– Sala amplia con mesa de centro, televisión y accesorios', '– Aire acondicionado', ''),
(12, 'assets/img/Residences/303/El-Careyes-Casita-303-Cover.jpg', 'assets/img/Residences/303/El-Careyes-Casita-303-Cover-m.jpg', 'CASITA 303', 'Maravillosa casita ubicada a unos pasos del mar. Este original concepto arquitectónico está conformado por...', 'assets/img/iconos/Grupo1-5.svg', 'assets/img/iconos/Grupo2.png', 'assets/img/iconos/Grupo3.png', 'assets/img/iconos/Grupo4.png', '2020-04-08 08:14:14', '2020-04-08 18:22:57', '', 1, 'Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia', '', '', 'assets/img/Residences/303/El-Careyes-Casita-303-Galeria-a.jpg', 'assets/img/Residences/303/El-Careyes-Casita-303-Galeria-b.jpg', 'assets/img/Residences/303/El-Careyes-Casita-303-Galeria-c.jpg', 'assets/img/Residences/303/El-Careyes-Casita-303-Galeria-d.jpg', 'CASITA<br>303', 'Maravillosa casita ubicada a unos pasos del mar. Este original concepto arquitectónico está conformado por tres habitaciones divididas entre la planta baja y el primer piso, además de una amplia terraza con jacuzzi y una formidable salita para disfrutar de un increíble paisaje natural.', '– 3½ baños', '– Dos camas king size y dos matrimoniales', '– Cocina integral equipada', '– Sala amplia con mesa de centro, televisión y accesorios', '– Aire acondicionado', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'member', '$2y$08$kkqUE2hrqAJtg.pPnAhvL.1iE7LIujK5LZ61arONLpaBBWh/ek61G', NULL, 'member@member.com', NULL, NULL, NULL, NULL, 1451903855, 1451905011, 1, 'Member', 'One', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_access`
--
ALTER TABLE `api_access`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_limits`
--
ALTER TABLE `api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `api_access`
--
ALTER TABLE `api_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `api_limits`
--
ALTER TABLE `api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
