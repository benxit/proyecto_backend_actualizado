-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 29-09-2026 a las 04:35:17
-- Versión del servidor: 11.4.9-MariaDB
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `django_evaluacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'Can add Genero', 7, 'add_genero'),
(26, 'Can change Genero', 7, 'change_genero'),
(27, 'Can delete Genero', 7, 'delete_genero'),
(28, 'Can view Genero', 7, 'view_genero'),
(29, 'Can add Plataforma', 8, 'add_plataforma'),
(30, 'Can change Plataforma', 8, 'change_plataforma'),
(31, 'Can delete Plataforma', 8, 'delete_plataforma'),
(32, 'Can view Plataforma', 8, 'view_plataforma'),
(33, 'Can add Videojuego', 9, 'add_videojuego'),
(34, 'Can change Videojuego', 9, 'change_videojuego'),
(35, 'Can delete Videojuego', 9, 'delete_videojuego'),
(36, 'Can view Videojuego', 9, 'view_videojuego'),
(37, 'Can add Director', 10, 'add_director'),
(38, 'Can change Director', 10, 'change_director'),
(39, 'Can delete Director', 10, 'delete_director'),
(40, 'Can view Director', 10, 'view_director'),
(41, 'Can add Genero', 11, 'add_genero'),
(42, 'Can change Genero', 11, 'change_genero'),
(43, 'Can delete Genero', 11, 'delete_genero'),
(44, 'Can view Genero', 11, 'view_genero'),
(45, 'Can add Pelicula', 12, 'add_pelicula'),
(46, 'Can change Pelicula', 12, 'change_pelicula'),
(47, 'Can delete Pelicula', 12, 'delete_pelicula'),
(48, 'Can view Pelicula', 12, 'view_pelicula'),
(49, 'Can add Categoria', 13, 'add_categoria'),
(50, 'Can change Categoria', 13, 'change_categoria'),
(51, 'Can delete Categoria', 13, 'delete_categoria'),
(52, 'Can view Categoria', 13, 'view_categoria'),
(53, 'Can add Marca', 14, 'add_marca'),
(54, 'Can change Marca', 14, 'change_marca'),
(55, 'Can delete Marca', 14, 'delete_marca'),
(56, 'Can view Marca', 14, 'view_marca'),
(57, 'Can add Equipo', 15, 'add_equipo'),
(58, 'Can change Equipo', 15, 'change_equipo'),
(59, 'Can delete Equipo', 15, 'delete_equipo'),
(60, 'Can view Equipo', 15, 'view_equipo'),
(61, 'Can add Categoria', 16, 'add_categoria'),
(62, 'Can change Categoria', 16, 'change_categoria'),
(63, 'Can delete Categoria', 16, 'delete_categoria'),
(64, 'Can view Categoria', 16, 'view_categoria'),
(65, 'Can add Marca', 17, 'add_marca'),
(66, 'Can change Marca', 17, 'change_marca'),
(67, 'Can delete Marca', 17, 'delete_marca'),
(68, 'Can view Marca', 17, 'view_marca'),
(69, 'Can add Producto', 18, 'add_producto'),
(70, 'Can change Producto', 18, 'change_producto'),
(71, 'Can delete Producto', 18, 'delete_producto'),
(72, 'Can view Producto', 18, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$spNRXOWW8mqAiCKLd0Y5nC$HPMtCnYCGmLmCadG7aCNpthMJcsrCu3C6T+2PAssR30=', '2026-09-29 03:22:06.563578', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2026-09-28 20:59:06.200752');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida_chatarra_categoria`
--

DROP TABLE IF EXISTS `comida_chatarra_categoria`;
CREATE TABLE IF NOT EXISTS `comida_chatarra_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comida_chatarra_categoria`
--

INSERT INTO `comida_chatarra_categoria` (`id`, `nombre`) VALUES
(4, 'Bebidas'),
(3, 'Dulces'),
(2, 'Hamburguesas'),
(1, 'Papas fritas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida_chatarra_marca`
--

DROP TABLE IF EXISTS `comida_chatarra_marca`;
CREATE TABLE IF NOT EXISTS `comida_chatarra_marca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comida_chatarra_marca`
--

INSERT INTO `comida_chatarra_marca` (`id`, `nombre`) VALUES
(4, 'Coca-Cola'),
(1, 'Lays'),
(2, 'McDonald\'s'),
(3, 'Nestle');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida_chatarra_producto`
--

DROP TABLE IF EXISTS `comida_chatarra_producto`;
CREATE TABLE IF NOT EXISTS `comida_chatarra_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `anio` int(10) UNSIGNED NOT NULL CHECK (`anio` >= 0),
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `marca_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comida_chatarra_prod_categoria_id_69c154a9_fk_comida_ch` (`categoria_id`),
  KEY `comida_chatarra_prod_marca_id_025c9938_fk_comida_ch` (`marca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comida_chatarra_producto`
--

INSERT INTO `comida_chatarra_producto` (`id`, `nombre`, `anio`, `imagen`, `precio`, `categoria_id`, `marca_id`) VALUES
(1, 'Papas Fritas Clasicas', 1932, 'images/comida_chatarra/papas.svg', 1500.00, 1, 1),
(2, 'Combo Hamburguesa Doble', 1967, 'images/comida_chatarra/hamburguesa.svg', 4200.00, 2, 2),
(3, 'Chocolate Relleno', 1935, 'images/comida_chatarra/chocolate.svg', 900.00, 3, 3),
(4, 'Bebida Cola 350ml', 1886, 'images/comida_chatarra/bebida.svg', 1200.00, 4, 4),
(5, 'Nuggets de Pollo', 1983, 'images/comida_chatarra/nuggets.svg', 3500.00, 2, 2),
(6, 'Nachos con Queso', 1964, 'images/comida_chatarra/nachos.svg', 1800.00, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-09-29 03:21:35.059689', '7', 'pizzas (100)', 1, '[{\"added\": {}}]', 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(16, 'comida_chatarra', 'categoria'),
(17, 'comida_chatarra', 'marca'),
(18, 'comida_chatarra', 'producto'),
(5, 'contenttypes', 'contenttype'),
(13, 'gimnasio', 'categoria'),
(15, 'gimnasio', 'equipo'),
(14, 'gimnasio', 'marca'),
(10, 'peliculas', 'director'),
(11, 'peliculas', 'genero'),
(12, 'peliculas', 'pelicula'),
(6, 'sessions', 'session'),
(7, 'videojuegos', 'genero'),
(8, 'videojuegos', 'plataforma'),
(9, 'videojuegos', 'videojuego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-09-28 20:58:58.076028'),
(2, 'auth', '0001_initial', '2026-09-28 20:58:58.128562'),
(3, 'admin', '0001_initial', '2026-09-28 20:58:58.156628'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-09-28 20:58:58.161402'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-09-28 20:58:58.166274'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-09-28 20:58:58.181698'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-09-28 20:58:58.189485'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-09-28 20:58:58.196482'),
(9, 'auth', '0004_alter_user_username_opts', '2026-09-28 20:58:58.201748'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-09-28 20:58:58.211258'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-09-28 20:58:58.211924'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-09-28 20:58:58.216515'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-09-28 20:58:58.224087'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-09-28 20:58:58.230794'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-09-28 20:58:58.237464'),
(16, 'auth', '0011_update_proxy_permissions', '2026-09-28 20:58:58.242082'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-09-28 20:58:58.248881'),
(18, 'comida_chatarra', '0001_initial', '2026-09-28 20:58:58.265336'),
(19, 'gimnasio', '0001_initial', '2026-09-28 20:58:58.280729'),
(20, 'peliculas', '0001_initial', '2026-09-28 20:58:58.295231'),
(21, 'sessions', '0001_initial', '2026-09-28 20:58:58.300906'),
(22, 'videojuegos', '0001_initial', '2026-09-28 20:58:58.315414');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('851sryfnrwbtvbylfvhqxeikwtd4mgar', '.eJxVjDsOwjAQBe_iGllZf2SHkp4zWLveNQ4gR4qTCnF3iJQC2jcz76USbmtNW5clTazOCtTpdyPMD2k74Du226zz3NZlIr0r-qBdX2eW5-Vw_w4q9vqtPbhMxQLYEjMai0KFYpaRgydwIoAcjQNiNIHL4IdYAltreUQi49T7AwjeONk:1xBOOe:Y5HPoDK34vVAtcKd1_V7yly5zjroQp6Pa2XcPwfepbU', '2026-10-13 03:20:48.713294'),
('9ydxi9baa530at49d6rq7yw4at0x3o8d', '.eJxVjDsOwjAQBe_iGllZf2SHkp4zWLveNQ4gR4qTCnF3iJQC2jcz76USbmtNW5clTazOCtTpdyPMD2k74Du226zz3NZlIr0r-qBdX2eW5-Vw_w4q9vqtPbhMxQLYEjMai0KFYpaRgydwIoAcjQNiNIHL4IdYAltreUQi49T7AwjeONk:1xBOPu:zhfh9ubHqA5VRQQed0YWKXkXMUKNNnEeEIrXWS9fhYc', '2026-10-13 03:22:06.565221');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio_categoria`
--

DROP TABLE IF EXISTS `gimnasio_categoria`;
CREATE TABLE IF NOT EXISTS `gimnasio_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gimnasio_categoria`
--

INSERT INTO `gimnasio_categoria` (`id`, `nombre`) VALUES
(1, 'Cardio'),
(2, 'Fuerza'),
(3, 'Funcional'),
(4, 'Movilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio_equipo`
--

DROP TABLE IF EXISTS `gimnasio_equipo`;
CREATE TABLE IF NOT EXISTS `gimnasio_equipo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `anio` int(10) UNSIGNED NOT NULL CHECK (`anio` >= 0),
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `marca_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gimnasio_equipo_categoria_id_75c17652_fk_gimnasio_categoria_id` (`categoria_id`),
  KEY `gimnasio_equipo_marca_id_2967545a_fk_gimnasio_marca_id` (`marca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gimnasio_equipo`
--

INSERT INTO `gimnasio_equipo` (`id`, `nombre`, `anio`, `imagen`, `precio`, `categoria_id`, `marca_id`) VALUES
(1, 'Caminadora ProRun X1', 2023, 'images/gimnasio/caminadora.svg', 890000.00, 1, 1),
(2, 'Bicicleta Spinning Elite', 2022, 'images/gimnasio/bicicleta.svg', 650000.00, 1, 2),
(3, 'Rack de Sentadillas Pro', 2021, 'images/gimnasio/rack.svg', 450000.00, 2, 3),
(4, 'Multiestacion Functional Trainer', 2023, 'images/gimnasio/multiestacion.svg', 1200000.00, 3, 4),
(5, 'Set Mancuernas Ajustables', 2020, 'images/gimnasio/mancuernas.svg', 320000.00, 2, 3),
(6, 'Kit Bandas de Movilidad', 2022, 'images/gimnasio/bandas.svg', 25000.00, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gimnasio_marca`
--

DROP TABLE IF EXISTS `gimnasio_marca`;
CREATE TABLE IF NOT EXISTS `gimnasio_marca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gimnasio_marca`
--

INSERT INTO `gimnasio_marca` (`id`, `nombre`) VALUES
(1, 'Life Fitness'),
(4, 'Matrix'),
(3, 'Rogue'),
(2, 'Technogym');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_director`
--

DROP TABLE IF EXISTS `peliculas_director`;
CREATE TABLE IF NOT EXISTS `peliculas_director` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas_director`
--

INSERT INTO `peliculas_director` (`id`, `nombre`) VALUES
(3, 'Anthony y Joe Russo'),
(1, 'Christopher Nolan'),
(4, 'Denis Villeneuve'),
(6, 'Joseph Kosinski'),
(2, 'Matt Reeves'),
(5, 'Todd Phillips');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_genero`
--

DROP TABLE IF EXISTS `peliculas_genero`;
CREATE TABLE IF NOT EXISTS `peliculas_genero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas_genero`
--

INSERT INTO `peliculas_genero` (`id`, `nombre`) VALUES
(3, 'Acción'),
(2, 'Acción y suspenso'),
(1, 'Ciencia ficción'),
(4, 'Drama y suspenso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_pelicula`
--

DROP TABLE IF EXISTS `peliculas_pelicula`;
CREATE TABLE IF NOT EXISTS `peliculas_pelicula` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `anio` int(10) UNSIGNED NOT NULL CHECK (`anio` >= 0),
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `director_id` bigint(20) NOT NULL,
  `genero_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `peliculas_pelicula_director_id_48e93f1a_fk_peliculas_director_id` (`director_id`),
  KEY `peliculas_pelicula_genero_id_6e66627c_fk_peliculas_genero_id` (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas_pelicula`
--

INSERT INTO `peliculas_pelicula` (`id`, `titulo`, `anio`, `imagen`, `precio`, `director_id`, `genero_id`) VALUES
(1, 'Interstellar', 2014, 'images/peliculas/interstellar.jpg', 3990.00, 1, 1),
(2, 'The Batman', 2022, 'images/peliculas/batman.jpg', 4490.00, 2, 2),
(3, 'Avengers: Endgame', 2019, 'images/peliculas/endgame.jpg', 3990.00, 3, 3),
(4, 'Dune', 2021, 'images/peliculas/dune.jpg', 4290.00, 4, 1),
(5, 'Joker', 2019, 'images/peliculas/joker.jpg', 3490.00, 5, 4),
(6, 'Top Gun: Maverick', 2022, 'images/peliculas/topgun.jpg', 4490.00, 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos_genero`
--

DROP TABLE IF EXISTS `videojuegos_genero`;
CREATE TABLE IF NOT EXISTS `videojuegos_genero` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videojuegos_genero`
--

INSERT INTO `videojuegos_genero` (`id`, `nombre`) VALUES
(2, 'Acción y aventura'),
(4, 'Carreras'),
(3, 'RPG'),
(1, 'Sandbox');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos_plataforma`
--

DROP TABLE IF EXISTS `videojuegos_plataforma`;
CREATE TABLE IF NOT EXISTS `videojuegos_plataforma` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videojuegos_plataforma`
--

INSERT INTO `videojuegos_plataforma` (`id`, `nombre`) VALUES
(1, 'PC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos_videojuego`
--

DROP TABLE IF EXISTS `videojuegos_videojuego`;
CREATE TABLE IF NOT EXISTS `videojuegos_videojuego` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `anio` int(10) UNSIGNED NOT NULL CHECK (`anio` >= 0),
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `genero_id` bigint(20) NOT NULL,
  `plataforma_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `videojuegos_videojue_genero_id_3658c335_fk_videojueg` (`genero_id`),
  KEY `videojuegos_videojue_plataforma_id_ca989b52_fk_videojueg` (`plataforma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videojuegos_videojuego`
--

INSERT INTO `videojuegos_videojuego` (`id`, `nombre`, `anio`, `imagen`, `precio`, `genero_id`, `plataforma_id`) VALUES
(1, 'Salvo a nachitot', 2011, 'images/videojuegos/minecraft.jpg', 19990.00, 1, 1),
(2, 'Grand Theft Auto V', 2013, 'images/videojuegos/gta5.jpg', 14990.00, 2, 1),
(3, 'Red Dead Redemption 2', 2018, 'images/videojuegos/rdr2.jpg', 29990.00, 2, 1),
(4, 'Cyberpunk 2077', 2020, 'images/videojuegos/cyberpunk.jpg', 24990.00, 3, 1),
(5, 'Forza Horizon 5', 2021, 'images/videojuegos/forza.jpg', 34990.00, 4, 1),
(6, 'The Witcher 3', 2015, 'images/videojuegos/witcher3.jpg', 12990.00, 3, 1);

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
-- Filtros para la tabla `comida_chatarra_producto`
--
ALTER TABLE `comida_chatarra_producto`
  ADD CONSTRAINT `comida_chatarra_prod_categoria_id_69c154a9_fk_comida_ch` FOREIGN KEY (`categoria_id`) REFERENCES `comida_chatarra_categoria` (`id`),
  ADD CONSTRAINT `comida_chatarra_prod_marca_id_025c9938_fk_comida_ch` FOREIGN KEY (`marca_id`) REFERENCES `comida_chatarra_marca` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `gimnasio_equipo`
--
ALTER TABLE `gimnasio_equipo`
  ADD CONSTRAINT `gimnasio_equipo_categoria_id_75c17652_fk_gimnasio_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `gimnasio_categoria` (`id`),
  ADD CONSTRAINT `gimnasio_equipo_marca_id_2967545a_fk_gimnasio_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `gimnasio_marca` (`id`);

--
-- Filtros para la tabla `peliculas_pelicula`
--
ALTER TABLE `peliculas_pelicula`
  ADD CONSTRAINT `peliculas_pelicula_director_id_48e93f1a_fk_peliculas_director_id` FOREIGN KEY (`director_id`) REFERENCES `peliculas_director` (`id`),
  ADD CONSTRAINT `peliculas_pelicula_genero_id_6e66627c_fk_peliculas_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `peliculas_genero` (`id`);

--
-- Filtros para la tabla `videojuegos_videojuego`
--
ALTER TABLE `videojuegos_videojuego`
  ADD CONSTRAINT `videojuegos_videojue_genero_id_3658c335_fk_videojueg` FOREIGN KEY (`genero_id`) REFERENCES `videojuegos_genero` (`id`),
  ADD CONSTRAINT `videojuegos_videojue_plataforma_id_ca989b52_fk_videojueg` FOREIGN KEY (`plataforma_id`) REFERENCES `videojuegos_plataforma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
