-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-10-2025 a las 05:34:09
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
-- Base de datos: `verduleriaVM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add clientes', 7, 'add_clientes'),
(26, 'Can change clientes', 7, 'change_clientes'),
(27, 'Can delete clientes', 7, 'delete_clientes'),
(28, 'Can view clientes', 7, 'view_clientes'),
(29, 'Can add productos', 8, 'add_productos'),
(30, 'Can change productos', 8, 'change_productos'),
(31, 'Can delete productos', 8, 'delete_productos'),
(32, 'Can view productos', 8, 'view_productos');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$3UbJXpEOzgZTYhLZhSss11$d8CiIXPZ9LHbfVSgCg98+7U+Z65ePKsVnAoVy62Xvbo=', '2025-10-07 03:15:00.488358', 1, 'Admin', '', '', 'admin@verduleriavm.com', 1, 1, '2025-10-07 03:14:17.627440');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djangoVerVictorMondaca_clientes`
--

CREATE TABLE `djangoVerVictorMondaca_clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Correo` varchar(254) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `Tipo_Cliente` varchar(20) NOT NULL,
  `Preferencias` longtext DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `djangoVerVictorMondaca_clientes`
--

INSERT INTO `djangoVerVictorMondaca_clientes` (`ID_Cliente`, `Nombre_Cliente`, `Correo`, `Telefono`, `Direccion`, `Ciudad`, `Pais`, `Fecha_Registro`, `Tipo_Cliente`, `Preferencias`, `Fecha_Nacimiento`, `Genero`) VALUES
(1, 'Pepe Grillo', 'donpepe@gmail.com', '9111222333999', 'Avenida don alamiro', 'Cumpeo', 'Chile', '2025-10-07', 'individual', 'Prefiere las manzanas rojas', '1930-12-25', 'M'),
(2, 'Juan Perez', 'notiene@correo.cl', '920000000', 'Villa don matias 20', 'Talca', 'Chile', '2025-10-07', 'individual', 'Papas', '1973-10-30', 'M'),
(3, 'La picá del tuna S.A', 'contacto@picadeltuna.cl', '+56240059943', 'San Jorge #25', 'Cumpeo', 'Chile', '2025-10-07', 'individual', 'Restaurante de Cumpeo.', '2005-10-05', 'O'),
(4, 'Victor Mondaca', 'contacto@victormondaca.com', '931024130', 'Fundo Santa Marta', 'Talca', 'Chile', '2025-10-07', 'individual', 'Suele comprar de todo menos fruta.', '1999-01-17', 'M'),
(5, 'Martina Riquelme', 'martina@hotmail.com', '93495834', 'Callejón oscuro s/n', 'San Clemente', 'Chile', '2025-10-07', 'individual', 'Papas, Mani', '2005-02-10', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djangoVerVictorMondaca_productos`
--

CREATE TABLE `djangoVerVictorMondaca_productos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `observaciones` longtext DEFAULT NULL,
  `proveedor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `djangoVerVictorMondaca_productos`
--

INSERT INTO `djangoVerVictorMondaca_productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `categoria`, `estado`, `observaciones`, `proveedor`) VALUES
(1, 'Lechuga Costina', 'Lechuga de Iloca', 790.00, 101, 'Verduras', 'disponible', 'Hacer pedido cada 2 semanas', 'Don Manuel'),
(2, 'Repollo Morado', 'Es un repollo, pero morado.', 1000.00, 20, 'Verduras', 'disponible', 'Pedir todas las semanas.', 'Don Manolito'),
(3, 'Coliflor', 'Cocidas quedan buenas.', 1200.00, 0, 'Verduras', 'agotado', 'Consultar semana a semana si vienen.', 'Don Jorge'),
(4, 'Papa grande', 'por saco', 7000.00, 17, 'Verduras', 'disponible', 'Cuando queden 5 llamar para pedir.', 'Felipe Arevalo'),
(5, 'Manzana Verde', 'Variedad Granny Smith', 2990.00, 20, 'Frutas', 'disponible', 'Evitar dejar al sol.', 'Don Luciano'),
(6, 'Frutilla', 'Excelente Calidad', 7990.00, 10, 'Frutas', 'disponible', 'Fuera de temporada, traer por encargo.', 'Don Emiliano'),
(7, 'Bolsa 20x30', 'Reutilizable', 200.00, 1000, 'Insumos', 'disponible', 'Cambiar proveedor, mala calidad.', 'Plásticos Chile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'djangoVerVictorMondaca', 'clientes'),
(8, 'djangoVerVictorMondaca', 'productos'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-07 02:49:41.705841'),
(2, 'auth', '0001_initial', '2025-10-07 02:49:41.914752'),
(3, 'admin', '0001_initial', '2025-10-07 02:49:41.968963'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-10-07 02:49:41.974385'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-07 02:49:41.979931'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-10-07 02:49:42.012895'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-10-07 02:49:42.038029'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-10-07 02:49:42.050552'),
(9, 'auth', '0004_alter_user_username_opts', '2025-10-07 02:49:42.055518'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-10-07 02:49:42.071788'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-10-07 02:49:42.072472'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-10-07 02:49:42.076428'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-10-07 02:49:42.087988'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-10-07 02:49:42.100129'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-10-07 02:49:42.112093'),
(16, 'auth', '0011_update_proxy_permissions', '2025-10-07 02:49:42.116660'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-10-07 02:49:42.132787'),
(18, 'djangoVerVictorMondaca', '0001_initial', '2025-10-07 02:49:42.140799'),
(19, 'djangoVerVictorMondaca', '0002_clientes_productos_delete_empleado', '2025-10-07 02:49:42.161893'),
(20, 'djangoVerVictorMondaca', '0003_auto_20251006_2223', '2025-10-07 02:49:42.162862'),
(21, 'sessions', '0001_initial', '2025-10-07 02:49:42.181607');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1fq46k41jj8ikm2h6rpvtsjavct54qjw', '.eJxVjEEOwiAQRe_C2hAo4IBL9z0DmWFGqZo2Ke3KeHfbpAvd_vfef6uM61Lz2mTOA6uLsur0uxGWp4w74AeO90mXaVzmgfSu6IM23U8sr-vh_h1UbHWrCUJJEg11nY9WzoaRyTvL4MQmg46TdC5ChBD8poKJIcVA6AGo3JL6fAHPPjct:1v5yAG:o2G6b94BTZL0DrQRbDG1Hz9-C76SUSAj5SU3oP9aoGY', '2025-10-21 03:15:00.492497');

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
-- Indices de la tabla `djangoVerVictorMondaca_clientes`
--
ALTER TABLE `djangoVerVictorMondaca_clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `djangoVerVictorMondaca_productos`
--
ALTER TABLE `djangoVerVictorMondaca_productos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de la tabla `djangoVerVictorMondaca_clientes`
--
ALTER TABLE `djangoVerVictorMondaca_clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `djangoVerVictorMondaca_productos`
--
ALTER TABLE `djangoVerVictorMondaca_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
