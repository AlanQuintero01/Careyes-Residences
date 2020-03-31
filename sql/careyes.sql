-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2020 a las 00:37:16
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `careyes`
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
  `detailParagraph1` varchar(60) NOT NULL,
  `detailParagraph2` varchar(60) NOT NULL,
  `detailParagraph3` varchar(60) NOT NULL,
  `detailParagraph4` varchar(60) NOT NULL,
  `detailParagraph5` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id`, `path_image`, `movil_image`, `title`, `introText`, `created_at`, `updated_at`, `bookNow`, `estatus`, `descriptionResidence`, `nextButton`, `prevButton`, `detailImage`, `imageFistResidence`, `imageSecondResidence`, `imageThirdResidence`, `detailTitle`, `detailParagraph1`, `detailParagraph2`, `detailParagraph3`, `detailParagraph4`, `detailParagraph5`) VALUES
(1, 'assets/img/Residences/8/El-Careyes-Residence-8-Cover.jpg', 'assets/img/Residences/8/El-Careyes-Residence-8-Cover-m.jpg', 'RESIDENCE 8', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-05 13:43:00', '2020-03-31 03:18:24', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/8/El-Careyes-Galeria-residence-8-a.jpg', 'assets/img/Residences/8/El-Careyes-Galeria-residence-8-b.jpg', 'assets/img/Residences/8/El-Careyes-Galeria-residence-8-b.jpg', 'assets/img/Residences/8/El-Careyes-Galeria-residence-8-d.jpg', 'RESIDENCE<br>8', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(2, 'assets/img/Residences/11/El-Careyes-Residence-11-Cover.jpg', 'assets/img/Residences/11/El-Careyes-Residence-11-Cover-m.jpg', 'RESIDENCE 11', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-11 14:45:00', '2020-03-31 03:49:25', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-a.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-b.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-c.jpg', 'assets/img/Residences/11/El-Careyes-Galeria-residence-11-d.jpg', 'RESIDENCE<br>11', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(3, 'assets/img/Residences/14/El-Careyes-Residence-14-Cover.jpg', 'assets/img/Residences/14/El-Careyes-Residence-14-Cover-m.jpg', 'RESIDENCE 14', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-11 19:32:00', '2020-03-31 03:49:53', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-a.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-b.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-c.jpg', 'assets/img/Residences/14/El-Careyes-Galeria-residence-14-c.jpg', 'RESIDENCE<br>14', '- 3 Bedroom', '- 1 Living Room', '- 4 Bathroom', '- 2 King size bed', '- 2 Queen size bed'),
(4, 'assets/img/Residences/211/El-Careyes-Residence-211-Cover.jpg', 'assets/img/Residences/211/El-Careyes-Residence-211-Cover-m.jpg', 'RESIDENCE 211', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-11 19:38:00', '2020-03-31 03:50:06', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-a.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-b.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-c.jpg', 'assets/img/Residences/211/El-Careyes-Galeria-residence-211-d.jpg', 'RESIDENCE<br>211', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed ', '- 2 Queen size bed'),
(5, 'assets/img/Residences/116/El-Careyes-Residence-116-Cover.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Cover-m.jpg', 'RESIDENCE 116', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-11 19:39:00', '2020-03-31 03:50:17', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-a.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-b.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-c.jpg', 'assets/img/Residences/116/El-Careyes-Residence-116-Gallery-d.jpg', 'RESIDENCE<br>116', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(6, 'assets/img/Residences/118/El-Careyes-Residence-118.jpg', 'assets/img/Residences/118/El-Careyes-Residence-118-m.jpg', 'RESIDENCE 118', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-12 11:25:00', '2020-03-31 03:50:30', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/118/El-Careyes-Residence-gallery-118-a.jpg', 'assets/img/Residences/118/El-Careyes-Residence-gallery-118-b.jpg', 'assets/img/Residences/118/El-Careyes-Residence-gallery-118-c.jpg', 'assets/img/Residences/118/El-Careyes-Residence-gallery-118-d.jpg', 'RESIDENCE<br>118', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(7, 'assets/img/Residences/122/El-Careyes-Residence-122-Cover.jpg', 'assets/img/Residences/122/El-Careyes-Residence-122-Cover-m.jpg', 'RESIDENCE 122', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-12 11:28:00', '2020-03-31 03:50:43', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/122/El-Careyes-Residence-gallery-122-a.jpg', 'assets/img/Residences/122/El-Careyes-Residence-gallery-122-b.jpg', 'assets/img/Residences/122/El-Careyes-Residence-gallery-122-c.jpg', 'assets/img/Residences/122/El-Careyes-Residence-gallery-122-d.jpg', 'RESIDENCE<br>122', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(8, 'assets/img/Residences/228/El-Careyes-Residence-228-cover.jpg', 'assets/img/Residences/228/El-Careyes-Residence-228-cover-m.jpg', 'RESIDENCE 228', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-12 11:30:00', '2020-03-31 03:51:10', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/228/El-Careyes-Residence-228-gallery-a.jpg', 'assets/img/Residences/228/El-Careyes-Residence-228-gallery-b.jpg', 'assets/img/Residences/228/El-Careyes-Residence-228-gallery-c.jpg', 'assets/img/Residences/228/El-Careyes-Residence-228-gallery-d.jpg', 'RESIDENCE<br>228', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(9, 'assets/img/Residences/229/El-Careyes-Residence-229-cover.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-cover-m.jpg', 'RESIDENCE 229', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-12 11:34:00', '2020-03-31 03:51:41', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-a.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-b.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-c.jpg', 'assets/img/Residences/229/El-Careyes-Residence-229-gallery-d.jpg', 'RESIDENCE<br>229', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed'),
(10, 'assets/img/Residences/3/El-Careyes-Residence-3-cover.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-cover-m.jpg', 'RESIDENCE 3', 'Full Height tropical wood treated shutter doors, direct Ocean view terrace with outdoor lounge and dining area.', '2020-03-12 10:38:00', '2020-03-31 03:51:54', '#', 1, 'Garden, terrace & interior: 90. 01 SM<br> Kitchen, bedroom and more.', '', '', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-a.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-b.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-c.jpg', 'assets/img/Residences/3/El-Careyes-Residence-3-gallery-d.jpg', 'RESIDENCE<br>3', '- 2 Bedroom', '- 1 Living Room', '- 2 Bathroom', '- 1 King size bed', '- 2 Queen size bed');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
