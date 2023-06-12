-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2023 a las 16:48:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `botiga_grupb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add productos', 7, 'add_productos'),
(26, 'Can change productos', 7, 'change_productos'),
(27, 'Can delete productos', 7, 'delete_productos'),
(28, 'Can view productos', 7, 'view_productos'),
(29, 'Can add carrito', 8, 'add_carrito'),
(30, 'Can change carrito', 8, 'change_carrito'),
(31, 'Can delete carrito', 8, 'delete_carrito'),
(32, 'Can view carrito', 8, 'view_carrito'),
(33, 'Can add comanda', 9, 'add_comanda'),
(34, 'Can change comanda', 9, 'change_comanda'),
(35, 'Can delete comanda', 9, 'delete_comanda'),
(36, 'Can view comanda', 9, 'view_comanda'),
(37, 'Can add compra', 10, 'add_compra'),
(38, 'Can change compra', 10, 'change_compra'),
(39, 'Can delete compra', 10, 'delete_compra'),
(40, 'Can view compra', 10, 'view_compra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreto_carrito`
--

CREATE TABLE `carreto_carrito` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comprado` tinyint(1) NOT NULL,
  `productoId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreto_carrito`
--

INSERT INTO `carreto_carrito` (`id`, `cantidad`, `comprado`, `productoId_id`) VALUES
(7, 2, 1, 1),
(8, 2, 1, 2),
(9, 7, 0, 7),
(10, 3, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cataleg_productos`
--

CREATE TABLE `cataleg_productos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `precio` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fabricante` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cataleg_productos`
--

INSERT INTO `cataleg_productos` (`id`, `nombre`, `descripcion`, `precio`, `estado`, `fabricante`) VALUES
(1, 'pelota', 'para jugar un deporte', 5, 0, 'Nike'),
(2, 'Nintendo 3DS', 'para jugar un videojuegos', 200, 1, 'Nintendo'),
(3, 'priducto3', 'para jugar (Modificando el estado)', 5, 1, 'ProductosSL'),
(4, 'priducto4', 'para jugar', 5, 0, 'ProductosSL'),
(5, 'priducto5', 'para jugar', 5, 0, 'ProductosSL'),
(6, 'priducto6', 'para jugar', 5, 0, 'ProductosSL'),
(7, 'priducto7', 'para jugar', 5, 0, 'ProductosSL'),
(8, 'priducto8', 'para jugar', 5, 0, 'ProductosSL'),
(9, 'priducto9', 'para jugar', 5, 0, 'ProductosSL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandes_comanda`
--

CREATE TABLE `comandes_comanda` (
  `id` int(11) NOT NULL,
  `historial_comandes` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `idCarrito_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comandes_comanda`
--

INSERT INTO `comandes_comanda` (`id`, `historial_comandes`, `state`, `idCarrito_id`) VALUES
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 75, 0, 7),
(0, 34, 0, 7),
(0, 24, 0, 7),
(0, 45, 0, 7),
(0, 8, 0, 7),
(0, 86, 0, 7),
(0, 51, 0, 7),
(0, 10, 0, 7),
(0, 60, 0, 7),
(0, 98, 0, 8),
(0, 11, 0, 8),
(0, 30, 0, 8),
(0, 10, 0, 8),
(0, 24, 0, 8),
(0, 44, 0, 8),
(0, 90, 1, 8),
(0, 75, 1, 8),
(0, 19, 1, 8),
(0, 96, 1, 8),
(0, 62, 1, 7),
(0, 84, 1, 7),
(11988, 81, 1, 7),
(38375, 36, 1, 7),
(72322, 1, 1, 7),
(27656, 20, 1, 7),
(44299, 87, 1, 7),
(68813, 58, 1, 8),
(39293, 98, 1, 10),
(37982, 86, 1, 7),
(73687, 3, 1, 8),
(47358, 81, 1, 10),
(1087, 84, 1, 7),
(66328, 64, 1, 8),
(49630, 18, 1, 10),
(78589, 28, 1, 7),
(82568, 74, 1, 8),
(99789, 25, 1, 10),
(18790, 54, 1, 7),
(40244, 47, 1, 8),
(47976, 43, 1, 10),
(72243, 69, 1, 7),
(94934, 86, 1, 8),
(4947, 76, 1, 10),
(976, 40, 1, 7),
(2249, 42, 1, 8),
(28750, 6, 1, 10),
(47626, 8, 1, 7),
(64514, 65, 1, 8),
(51368, 27, 1, 10),
(93849, 48, 1, 7),
(99290, 60, 1, 8),
(96518, 50, 1, 10),
(88086, 61, 1, 7),
(20478, 19, 1, 8),
(16875, 91, 1, 10),
(43101, 98, 1, 7),
(70022, 81, 1, 8),
(39197, 85, 1, 10),
(78335, 86, 1, 7),
(94037, 2, 1, 8),
(74465, 70, 1, 10),
(86517, 42, 1, 7),
(20790, 55, 1, 8),
(31439, 73, 1, 10),
(19908, 4, 1, 7),
(64870, 82, 1, 8),
(78440, 23, 1, 10),
(43489, 46, 1, 7),
(78166, 20, 1, 8),
(90134, 21, 1, 10),
(19143, 87, 1, 7),
(23652, 92, 1, 8),
(58239, 67, 1, 10),
(15786, 90, 1, 7),
(3832, 18, 1, 8),
(73302, 6, 1, 10),
(46924, 43, 1, 7),
(83217, 20, 1, 8),
(62317, 65, 1, 10),
(78530, 41, 1, 7),
(95850, 21, 1, 8),
(47861, 52, 1, 10),
(69655, 28, 1, 7),
(76988, 18, 1, 8),
(89855, 71, 1, 10),
(28506, 48, 1, 7),
(67318, 15, 1, 8),
(28184, 77, 1, 10),
(44307, 45, 1, 7),
(77720, 85, 1, 8),
(83481, 55, 1, 10),
(62727, 1, 1, 7),
(22110, 29, 1, 8),
(45951, 58, 1, 10),
(68334, 93, 1, 7),
(37029, 67, 1, 8),
(76706, 46, 1, 10),
(24485, 65, 1, 7),
(56685, 56, 1, 8),
(23199, 65, 1, 10),
(13228, 20, 1, 7),
(58511, 8, 1, 8),
(33135, 45, 1, 10),
(70416, 17, 1, 7),
(80926, 98, 1, 8),
(97882, 37, 1, 10),
(13119, 19, 1, 7),
(92075, 87, 1, 8),
(40688, 81, 1, 10),
(86785, 2, 1, 7),
(3057, 9, 1, 8),
(89536, 83, 1, 10),
(64919, 62, 1, 7),
(48340, 88, 1, 8),
(72116, 90, 1, 10),
(45800, 38, 1, 7),
(29419, 46, 1, 8),
(85607, 95, 1, 10),
(39285, 28, 1, 7),
(18417, 52, 1, 8),
(54282, 75, 1, 10),
(6974, 55, 1, 7),
(78995, 52, 1, 8),
(7806, 71, 1, 10),
(35617, 38, 1, 7),
(86282, 48, 1, 8),
(35125, 75, 1, 10),
(1533, 91, 1, 7),
(32590, 64, 1, 8),
(20206, 0, 1, 10),
(40634, 31, 1, 7),
(18785, 65, 1, 8),
(73826, 8, 1, 10),
(98987, 74, 1, 7),
(19820, 98, 1, 8),
(16823, 2, 1, 10),
(96096, 48, 0, 9),
(84907, 68, 0, 9),
(90956, 11, 0, 9),
(30601, 67, 1, 7),
(54718, 40, 1, 8),
(79393, 37, 1, 10),
(34929, 69, 1, 7),
(61692, 41, 1, 8),
(68718, 36, 1, 10),
(13599, 75, 0, 9),
(38961, 3, 0, 9),
(34276, 66, 1, 7),
(21842, 12, 1, 8),
(56159, 82, 1, 10),
(33003, 55, 1, 7),
(62498, 60, 1, 8),
(9691, 24, 1, 10),
(48712, 39, 0, 9),
(68214, 3, 0, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'carreto', 'carrito'),
(7, 'cataleg', 'productos'),
(9, 'comandes', 'comanda'),
(5, 'contenttypes', 'contenttype'),
(10, 'pagaments', 'compra'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-12 01:01:08.040811'),
(2, 'auth', '0001_initial', '2023-06-12 01:01:08.739223'),
(3, 'admin', '0001_initial', '2023-06-12 01:01:08.879530'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-12 01:01:08.889301'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-12 01:01:08.899303'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-12 01:01:08.973548'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-12 01:01:09.041730'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-12 01:01:09.060798'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-12 01:01:09.069804'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-12 01:01:09.109774'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-12 01:01:09.113774'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-12 01:01:09.121967'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-12 01:01:09.139488'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-12 01:01:09.155485'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-12 01:01:09.175487'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-12 01:01:09.184487'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-12 01:01:09.200579'),
(18, 'cataleg', '0001_initial', '2023-06-12 01:01:09.220217'),
(19, 'carreto', '0001_initial', '2023-06-12 01:01:09.305738'),
(20, 'comandes', '0001_initial', '2023-06-12 01:01:09.354868'),
(21, 'pagaments', '0001_initial', '2023-06-12 01:01:09.405768'),
(22, 'pagaments', '0002_alter_compra_fecha_caducidad', '2023-06-12 01:01:09.547400'),
(23, 'sessions', '0001_initial', '2023-06-12 01:01:09.587876'),
(24, 'comandes', '0002_comanda_idcarrito', '2023-06-12 02:08:32.103177'),
(25, 'comandes', '0003_alter_comanda_state', '2023-06-12 04:48:01.291904');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagaments_compra`
--

CREATE TABLE `pagaments_compra` (
  `id` bigint(20) NOT NULL,
  `numero_tarjeta` varchar(16) NOT NULL,
  `fecha_caducidad` varchar(5) NOT NULL,
  `cvc` varchar(3) NOT NULL,
  `fecha_compra` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `carreto_carrito`
--
ALTER TABLE `carreto_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carreto_carrito_productoId_id_31ab93a5_fk_cataleg_productos_id` (`productoId_id`);

--
-- Indices de la tabla `cataleg_productos`
--
ALTER TABLE `cataleg_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comandes_comanda`
--
ALTER TABLE `comandes_comanda`
  ADD KEY `comandes_comanda_idCarrito_id_d4e08154_fk_carreto_carrito_id` (`idCarrito_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pagaments_compra`
--
ALTER TABLE `pagaments_compra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreto_carrito`
--
ALTER TABLE `carreto_carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cataleg_productos`
--
ALTER TABLE `cataleg_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pagaments_compra`
--
ALTER TABLE `pagaments_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carreto_carrito`
--
ALTER TABLE `carreto_carrito`
  ADD CONSTRAINT `carreto_carrito_productoId_id_31ab93a5_fk_cataleg_productos_id` FOREIGN KEY (`productoId_id`) REFERENCES `cataleg_productos` (`id`);

--
-- Filtros para la tabla `comandes_comanda`
--
ALTER TABLE `comandes_comanda`
  ADD CONSTRAINT `comandes_comanda_idCarrito_id_d4e08154_fk_carreto_carrito_id` FOREIGN KEY (`idCarrito_id`) REFERENCES `carreto_carrito` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
