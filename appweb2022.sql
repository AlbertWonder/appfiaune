-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-09-2022 a las 15:47:11
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appweb2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appwebsite_anhotra`
--

DROP TABLE IF EXISTS `appwebsite_anhotra`;
CREATE TABLE IF NOT EXISTS `appwebsite_anhotra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombrean` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appwebsite_anhotra`
--

INSERT INTO `appwebsite_anhotra` (`id`, `nombrean`) VALUES
(1, '2016'),
(2, '2017'),
(3, '2018'),
(4, '2019'),
(5, '2020'),
(6, '2021'),
(7, '2022'),
(8, '2023'),
(9, '2024'),
(10, '2025'),
(11, '2026'),
(12, '2027'),
(13, '2028'),
(14, '2029'),
(15, '2030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appwebsite_categoriatra`
--

DROP TABLE IF EXISTS `appwebsite_categoriatra`;
CREATE TABLE IF NOT EXISTS `appwebsite_categoriatra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombretra` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripciontra` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appwebsite_categoriatra`
--

INSERT INTO `appwebsite_categoriatra` (`id`, `nombretra`, `descripciontra`) VALUES
(1, 'Becas', 'Becas otorgadas por la FIAJNE'),
(2, 'Viáticos', 'Viáticos otorgados por la FIAUNE'),
(3, 'Consolidación de Bienes', 'Consolidados de bienes de la FIAUNE'),
(4, 'Movimiento de Bienes', 'de la FIAUNE'),
(5, 'Ejecución Presupuestaria por Objeto de Gasto', 'de la Fiaune'),
(6, 'Ejecución de Gastos por Mes', 'de la fiaune'),
(7, 'Ejecución Presupuestaria de Ingresos', 'de la fiaune'),
(8, 'Ejecución Presupuestaria por nivel de Gastos (Consolidado)', 'de la fiaune'),
(9, 'Nómina de Funcionarios Permanentes', 'de la Fiaune'),
(10, 'Nómina de Funcionarios Contratados', 'de la Fiaune'),
(11, 'Nómina de Funcionarios Comisionados', 'de la Fiaune'),
(12, 'Actualización Mensual del Movimiento de los Recursos Humanos', 'de la Fiaune'),
(13, 'Nómina de Vacancia', 'de la Fiaune'),
(14, 'Aporte a otras Entidades', 'de la Fiaune'),
(15, 'Resumen Total de Remuneraciones Básicas, Adicionales, Complementarias y Otros', 'de la fiaune'),
(16, 'Resumen Viáticos (230)', 'de la fiaune'),
(17, 'Calificaciones SFP', 'de la fiaune');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appwebsite_mestra`
--

DROP TABLE IF EXISTS `appwebsite_mestra`;
CREATE TABLE IF NOT EXISTS `appwebsite_mestra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombremes` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appwebsite_mestra`
--

INSERT INTO `appwebsite_mestra` (`id`, `nombremes`) VALUES
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Setiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appwebsite_transparencia`
--

DROP TABLE IF EXISTS `appwebsite_transparencia`;
CREATE TABLE IF NOT EXISTS `appwebsite_transparencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `documento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_anhotra_id` int DEFAULT NULL,
  `id_categoriatra_id` int DEFAULT NULL,
  `id_mestra_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AppWebsite_transparencia_id_anhotra_id_84aa83f9` (`id_anhotra_id`),
  KEY `AppWebsite_transparencia_id_categoriatra_id_dd239fab` (`id_categoriatra_id`),
  KEY `AppWebsite_transparencia_id_mestra_id_ad6f97a4` (`id_mestra_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appwebsite_transparencia`
--

INSERT INTO `appwebsite_transparencia` (`id`, `documento`, `id_anhotra_id`, `id_categoriatra_id`, `id_mestra_id`) VALUES
(1, 'documentos/transparencia/2022/01_Planilla_general_de_becas_2022.pdf', 7, 1, 1),
(2, 'documentos/transparencia/2022/01_Planilla_de_Informe_de_Viaticos_2022.pdf', 7, 2, 1),
(3, 'documentos/transparencia/2022/Informe_Consolidado_enero_22.pdf', 7, 3, 1),
(4, 'documentos/transparencia/2022/FC04_y_FC05_ENERO_22.pdf', 7, 4, 1),
(5, 'documentos/transparencia/2022/Ejecucion_de_GASTOS_mes_de_ENERO_2022.pdf', 7, 5, 1),
(6, 'documentos/transparencia/2022/Ejecucion_de_GASTOS_mes_de_ENERO_2022_vNr1A9f.pdf', 7, 6, 1),
(7, 'documentos/transparencia/2022/Ejecucion_de_INGRESOS_mes_de_ENERO_2022.pdf', 7, 7, 1),
(8, 'documentos/transparencia/2022/Ejecucion_por_nivel_del_mes_de_ENERO_2022.pdf', 7, 8, 1),
(9, 'documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Permanentes.pdf', 7, 9, 1),
(10, 'documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Contratados.pdf', 7, 10, 1),
(11, 'documentos/transparencia/2022/01_Planilla_General_de_Comisionados_2022.pdf', 7, 11, 1),
(12, 'documentos/transparencia/2022/01_Formulario_Anexo_B-15-02_Enero.pdf', 7, 12, 1),
(13, 'documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Vacancias.pdf', 7, 13, 1),
(14, 'documentos/transparencia/2022/01_Aportes_Otras_Entidades_2022.pdf', 7, 14, 1),
(15, 'documentos/transparencia/2022/01_Resumen_Total_de_Remuneraciones_Basicas_2022.pdf', 7, 15, 1),
(16, 'documentos/transparencia/2022/01_Resumen_Total_de_Viaticos_y_Movilidad_2022.pdf', 7, 16, 1),
(17, 'documentos/transparencia/2022/100_Enero_2022.pdf', 7, 17, 1),
(18, 'documentos/transparencia/2022/02_Planilla_general_de_becas_2022.pdf', 7, 1, 2),
(19, 'documentos/transparencia/2022/02_Planilla_de_Informe_de_Viaticos_2022.pdf', 7, 2, 2),
(20, 'documentos/transparencia/2022/Consolidado_feb_22.pdf', 7, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_actasmecip`
--

DROP TABLE IF EXISTS `app_actasmecip`;
CREATE TABLE IF NOT EXISTS `app_actasmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acta` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `anho_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_actasmecip_anho_id_id_aaf16f35` (`anho_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_anho`
--

DROP TABLE IF EXISTS `app_anho`;
CREATE TABLE IF NOT EXISTS `app_anho` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_anho`
--

INSERT INTO `app_anho` (`id`, `nombre`) VALUES
(1, '2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_cargodirectivo`
--

DROP TABLE IF EXISTS `app_cargodirectivo`;
CREATE TABLE IF NOT EXISTS `app_cargodirectivo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_cargodirectivo`
--

INSERT INTO `app_cargodirectivo` (`id`, `nombre`) VALUES
(1, 'Decano'),
(2, 'Vice - Decano'),
(3, 'Secretario General'),
(4, 'Presidente del Consejo Directivo'),
(5, 'Representante del Estamento Docente'),
(6, 'Representante del Estamento No Docente'),
(7, 'Representante del Estamento Estudiantil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_categoria`
--

DROP TABLE IF EXISTS `app_categoria`;
CREATE TABLE IF NOT EXISTS `app_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_categoriablog`
--

DROP TABLE IF EXISTS `app_categoriablog`;
CREATE TABLE IF NOT EXISTS `app_categoriablog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_categoriablog`
--

INSERT INTO `app_categoriablog` (`id`, `nombre`) VALUES
(1, 'Académico'),
(2, 'Posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_circularmecip`
--

DROP TABLE IF EXISTS `app_circularmecip`;
CREATE TABLE IF NOT EXISTS `app_circularmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `circular` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `anho_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_circularmecip_anho_id_c7c11ad5` (`anho_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_componentesmecip`
--

DROP TABLE IF EXISTS `app_componentesmecip`;
CREATE TABLE IF NOT EXISTS `app_componentesmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_componentesmecip`
--

INSERT INTO `app_componentesmecip` (`id`, `nombre`) VALUES
(1, 'A. Ambiente de Control'),
(2, 'B. Componente de control de la planificación'),
(3, 'C. Componente de control de la implementación'),
(4, 'D. Componente de control de evaluación'),
(5, 'E. Componente de control para la mejora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_consejodirectivos`
--

DROP TABLE IF EXISTS `app_consejodirectivos`;
CREATE TABLE IF NOT EXISTS `app_consejodirectivos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_consejodirectivos_cargo_id_id_50fded54` (`cargo_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_consejodirectivos`
--

INSERT INTO `app_consejodirectivos` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `imagen`, `cargo_id_id`) VALUES
(1, 'Ing. Agr. José de los Santos', 'Sanchez Martínez', 'decano@fia.une.edu.py', '+9999 999 999', 'documentos/Directivos/IMG_1729_2.jpg', 4),
(2, 'Ing. Agr. Oscar Mario', 'Espinoza Chaparro', 'oscarmario@fia.une.edu.py', '+123456789', 'documentos/Directivos/IMG_1360_UQsrE2N.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_directivos`
--

DROP TABLE IF EXISTS `app_directivos`;
CREATE TABLE IF NOT EXISTS `app_directivos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_directivos_cargo_id_id_bb093b17` (`cargo_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_directivos`
--

INSERT INTO `app_directivos` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `imagen`, `cargo_id_id`) VALUES
(1, 'Ing. Agr. José de los Santos', 'Sanchez Martínez', 'decano@fia.une.edu.py', '+9999 999 999', 'documentos/Directivos/IMG_1729_2_bKbFjzR.jpg', 1),
(2, 'Ing. Agr. Oscar Mario', 'Espinoza Chaparro', 'oscarmario@fia.une.edu.py', '+123456789', 'documentos/Directivos/IMG_1360.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_documentosmecip`
--

DROP TABLE IF EXISTS `app_documentosmecip`;
CREATE TABLE IF NOT EXISTS `app_documentosmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `anho_id` bigint DEFAULT NULL,
  `compomentes_id_id` bigint DEFAULT NULL,
  `elementos_id_id` bigint DEFAULT NULL,
  `principios_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_documentosmecip_anho_id_9bf8c601` (`anho_id`),
  KEY `App_documentosmecip_compomentes_id_id_c7e59641` (`compomentes_id_id`),
  KEY `App_documentosmecip_elementos_id_id_688b8187` (`elementos_id_id`),
  KEY `App_documentosmecip_principios_id_id_b4245a32` (`principios_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_documentosmecip`
--

INSERT INTO `app_documentosmecip` (`id`, `nombre`, `descripcion`, `archivo`, `status`, `anho_id`, `compomentes_id_id`, `elementos_id_id`, `principios_id_id`) VALUES
(1, 'Res. N 00 Compromiso', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica', 'documentos/MECIP/modelos/01-Marco-Conceptual-Mecip-Parte-1.pdf', 0, 1, 1, NULL, 1),
(2, 'Res. N 00 Buen gobierno', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica', 'documentos/MECIP/modelos/1_Acta_de_compromiso_MECIP.pdf', 0, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_documentos_ley`
--

DROP TABLE IF EXISTS `app_documentos_ley`;
CREATE TABLE IF NOT EXISTS `app_documentos_ley` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `anho_id_id` bigint DEFAULT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `mes_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_documentos_ley_anho_id_id_018127f3` (`anho_id_id`),
  KEY `App_documentos_ley_categoria_id_id_30dd7786` (`categoria_id`),
  KEY `App_documentos_ley_mes_id_id_6fb2d965` (`mes_id_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_documentos_ley_anuales`
--

DROP TABLE IF EXISTS `app_documentos_ley_anuales`;
CREATE TABLE IF NOT EXISTS `app_documentos_ley_anuales` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anho_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_documentos_ley_anuales_anho_id_id_8151e3c9` (`anho_id_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_elementosmecip`
--

DROP TABLE IF EXISTS `app_elementosmecip`;
CREATE TABLE IF NOT EXISTS `app_elementosmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `principios_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_elementosmecip_principios_id_id_a40d8bd1` (`principios_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_elementosmecip`
--

INSERT INTO `app_elementosmecip` (`id`, `nombre`, `principios_id_id`) VALUES
(1, '1.1. Política de control interno', 1),
(2, '1.1. Políticas operacionales', 9),
(3, '1.2. Procedimientos', 9),
(4, '1.3. Controles', 9),
(5, '3.1. Sistema de información', 11),
(6, '3.2. Control de documentos', 11),
(7, '4.1. Comunicación interna', 12),
(8, '4.2. Comunicación externa', 12),
(9, '4.3. Rendición de cuentas', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_marcolegal`
--

DROP TABLE IF EXISTS `app_marcolegal`;
CREATE TABLE IF NOT EXISTS `app_marcolegal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `tipo_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_marcolegal_tipo_id_id_9d2c9a9f` (`tipo_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_marcolegal`
--

INSERT INTO `app_marcolegal` (`id`, `nombre`, `archivo`, `status`, `tipo_id_id`) VALUES
(1, 'Ley N 5189/2014 - Ley de Transparencia', 'documentos/MarcoLegal/ley-5189.pdf', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_meses`
--

DROP TABLE IF EXISTS `app_meses`;
CREATE TABLE IF NOT EXISTS `app_meses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_postblog`
--

DROP TABLE IF EXISTS `app_postblog`;
CREATE TABLE IF NOT EXISTS `app_postblog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extracto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `publicado` datetime(6) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `autor_id` int DEFAULT NULL,
  `categoria_id_id` bigint DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publicado_fin` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `App_postblog_autor_id_44e44a9d` (`autor_id`),
  KEY `App_postblog_categoria_id_id_e9891dea` (`categoria_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_postblog`
--

INSERT INTO `app_postblog` (`id`, `titulo`, `extracto`, `contenido`, `slug`, `publicado`, `status`, `autor_id`, `categoria_id_id`, `imagen`, `publicado_fin`) VALUES
(1, 'Prueba de Post', 'Este es un Prueba', '<p><em>What is Lorem Ipsum?</em></p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'prueba-de-post', '2022-08-07 13:41:44.000000', 'publicado', 1, 1, 'documentos/noticias/deforestacion5.jpeg', '2022-08-07 19:12:13.000000');
INSERT INTO `app_postblog` (`id`, `titulo`, `extracto`, `contenido`, `slug`, `publicado`, `status`, `autor_id`, `categoria_id_id`, `imagen`, `publicado_fin`) VALUES
(2, 'Prueba para posgrado', 'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>What is Lorem Ipsum?</strong></p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Why do we use it?</em></p>\r\n\r\n<p><img src=\"data:image/jpeg;base64,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AAAAAALPHJPOoDCKMDFOAAAAAAAAAAAAAAAAAAAMNGGNKIAGGGMAAAAAAAAAAP/EAAL/2gAMAwEAAgADAAAAEPPPPPPPPPPOJGFFDMOHPGMPPPPPPPPPPPPPPPPPPMCHANJGLNIpHDJCPPPPPPPPPPPPPPPPGMGKOAw2LlgHwmMOjkPPPPPPPPPPPPPJOGrGoKiEPGKgRbCVSoMOPPPPPPPPPJLBPhMNfyd7nCAv63LpZoHqPPPPPPPPPFPMkbxhQzqg88EtETDabeDIuHPPPPPOABnAyY0xQl+sdIhO0BfoA9afjAPPPPPOGvI8owx5hnfPj70fLQFwww9KvhFPPPPLNm5wwwtLvPPPGxLfft1Lww05SLKPPPDJAsAwx4D/ADzd9Qme/mR8fecMMaY4pjzwQRBIMOybzidgFXi8a+vKH7EMMOlMZTTRQAasNWfzyZ1xQ4qLLiM17xVwMPIp6jhxQROoNJfyfQfz31fLu00OmUH8sMNpjjQA5+ENXh6x8z73yuX2rB2q/WDs4MPFcQAzj2kNZbyuWZ3Kld32yqDuCeGy0MNcFLDQCCsNV3w3eB1eTzz33pQIeoTzEMNaZrDxiykNdbx7s80MWp3XXUF+PFL1wMNfeTBTj+MNdXzq2b2IN8eeRWwVCa3nIMNQdCjyKMkNP7yQyna41Jkw1/nruRzkkMNhvxCSChAoOP8A/SpuE3vtidsl+xG8cjDDh+qccwCMCDDV8Keiwz1hz+79RU853DDDugsks8kTsDTo58pf+q273CAt888xwDDd26oU8Ik+5DDiBas8QkPoHc8884yIDDHzuuI8848QMlDd5tEIeOM6sc8s0Eb8BDG2kQc888sgYNQ4jC4oQkUQwAEQc0sfpOYA8s8888s8Imjj4CwyQqUoSECgoeWr7DMo88888888s8vcIEe+KSCgySqey24HP3sok8888888sEocA8cc888888sscsYH5gwk888888888cUEW2888888888888gQE40888888888888oceSkw088884++ykyEc88888888888888c4EwUusGys4Oe2Yc888888888888888888socQ4s4kYwk88888888888/8QAOBEAAgEDAgQFAQYEBgMAAAAAAQIDAAQRBSEQEjFRBhMgIkEyFDBAQmFxFTRygRYzQ1BSYiMlY//aAAgBAgEB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\" style=\"height:100px; margin:20px; width:100px\" /></p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', 'prueba-para-posgrado', '2022-08-07 14:53:30.000000', 'publicado', 1, 2, 'documentos/noticias/templat.jpg', '2022-08-07 14:09:58.000000');
INSERT INTO `app_postblog` (`id`, `titulo`, `extracto`, `contenido`, `slug`, `publicado`, `status`, `autor_id`, `categoria_id_id`, `imagen`, `publicado_fin`) VALUES
(3, 'Prueba 3', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"No hay nadie que ame el dolor mismo, que lo busque, lo encuentre y lo quiera, simplemente porque es el dolor.\"', '<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>', 'prueba-3', '2022-08-09 13:09:24.000000', 'destacado', 1, 1, 'documentos/noticias/grafic.jpg', '2022-08-09 13:09:24.000000'),
(4, 'Prueba 4', 'El pasaje estándar Lorem Ipsum, usado desde el año 1500.', '<h2>&iquest;D&oacute;nde puedo conseguirlo?</h2>\r\n\r\n<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.</p>', 'prueba-4', '2022-08-09 13:14:54.000000', 'destacado', 1, 2, 'documentos/noticias/WhatsApp_Image_2019-09-05_at_110113.jpeg', '2022-08-09 13:14:54.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_principiosmecip`
--

DROP TABLE IF EXISTS `app_principiosmecip`;
CREATE TABLE IF NOT EXISTS `app_principiosmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `componentes_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_principiosmecip_componentes_id_7a6936f2` (`componentes_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_principiosmecip`
--

INSERT INTO `app_principiosmecip` (`id`, `nombre`, `componentes_id_id`) VALUES
(1, '1. Compromisos de la alta dirección', 1),
(2, '2. Acuerdos y compromisos éticos', 1),
(3, '3. Protocolo de buen gobierno', 1),
(4, '4. Política de gestión del talento humano', 1),
(5, '1. Direccionamiento estratégico', 2),
(6, '2. Gestión por procesos', 2),
(7, '3. Estructura organizacional', 2),
(8, '4. Identificación y evaluación de riesgos', 2),
(9, '1. Control operacional', 3),
(10, '2. Competencia, formación y toma de conciencia', 3),
(11, '3. Gestión de la información', 3),
(12, '4. Comunicación', 3),
(13, '1. Seguimiento y medición del control interno', 4),
(14, '2. Auditoria interna', 4),
(15, '1. Análisis crítico del sistema de control interno', 5),
(16, '2. Mejora continua', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_resolucionesmecip`
--

DROP TABLE IF EXISTS `app_resolucionesmecip`;
CREATE TABLE IF NOT EXISTS `app_resolucionesmecip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resolucion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `anho_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `App_resolucionesmecip_anho_id_id_c5f6eb58` (`anho_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_tiposdocumentos`
--

DROP TABLE IF EXISTS `app_tiposdocumentos`;
CREATE TABLE IF NOT EXISTS `app_tiposdocumentos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `app_tiposdocumentos`
--

INSERT INTO `app_tiposdocumentos` (`id`, `nombre`) VALUES
(1, 'Reglamentos'),
(2, 'Decretos'),
(3, 'Leyes'),
(4, 'Planes Intitucionales'),
(5, 'Arancel Cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

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
(25, 'Can add anhotra', 7, 'add_anhotra'),
(26, 'Can change anhotra', 7, 'change_anhotra'),
(27, 'Can delete anhotra', 7, 'delete_anhotra'),
(28, 'Can view anhotra', 7, 'view_anhotra'),
(29, 'Can add categoriatra', 8, 'add_categoriatra'),
(30, 'Can change categoriatra', 8, 'change_categoriatra'),
(31, 'Can delete categoriatra', 8, 'delete_categoriatra'),
(32, 'Can view categoriatra', 8, 'view_categoriatra'),
(33, 'Can add mestra', 9, 'add_mestra'),
(34, 'Can change mestra', 9, 'change_mestra'),
(35, 'Can delete mestra', 9, 'delete_mestra'),
(36, 'Can view mestra', 9, 'view_mestra'),
(37, 'Can add transparencia', 10, 'add_transparencia'),
(38, 'Can change transparencia', 10, 'change_transparencia'),
(39, 'Can delete transparencia', 10, 'delete_transparencia'),
(40, 'Can view transparencia', 10, 'view_transparencia'),
(41, 'Can add anho', 11, 'add_anho'),
(42, 'Can change anho', 11, 'change_anho'),
(43, 'Can delete anho', 11, 'delete_anho'),
(44, 'Can view anho', 11, 'view_anho'),
(45, 'Can add categoria', 12, 'add_categoria'),
(46, 'Can change categoria', 12, 'change_categoria'),
(47, 'Can delete categoria', 12, 'delete_categoria'),
(48, 'Can view categoria', 12, 'view_categoria'),
(49, 'Can add documentos_ ley', 13, 'add_documentos_ley'),
(50, 'Can change documentos_ ley', 13, 'change_documentos_ley'),
(51, 'Can delete documentos_ ley', 13, 'delete_documentos_ley'),
(52, 'Can view documentos_ ley', 13, 'view_documentos_ley'),
(53, 'Can add meses', 14, 'add_meses'),
(54, 'Can change meses', 14, 'change_meses'),
(55, 'Can delete meses', 14, 'delete_meses'),
(56, 'Can view meses', 14, 'view_meses'),
(57, 'Can add resoluciones mecip', 15, 'add_resolucionesmecip'),
(58, 'Can change resoluciones mecip', 15, 'change_resolucionesmecip'),
(59, 'Can delete resoluciones mecip', 15, 'delete_resolucionesmecip'),
(60, 'Can view resoluciones mecip', 15, 'view_resolucionesmecip'),
(61, 'Can add circular mecip', 16, 'add_circularmecip'),
(62, 'Can change circular mecip', 16, 'change_circularmecip'),
(63, 'Can delete circular mecip', 16, 'delete_circularmecip'),
(64, 'Can view circular mecip', 16, 'view_circularmecip'),
(65, 'Can add actas mecip', 17, 'add_actasmecip'),
(66, 'Can change actas mecip', 17, 'change_actasmecip'),
(67, 'Can delete actas mecip', 17, 'delete_actasmecip'),
(68, 'Can view actas mecip', 17, 'view_actasmecip'),
(69, 'Can add elementos mecip', 18, 'add_elementosmecip'),
(70, 'Can change elementos mecip', 18, 'change_elementosmecip'),
(71, 'Can delete elementos mecip', 18, 'delete_elementosmecip'),
(72, 'Can view elementos mecip', 18, 'view_elementosmecip'),
(73, 'Can add principios mecip', 19, 'add_principiosmecip'),
(74, 'Can change principios mecip', 19, 'change_principiosmecip'),
(75, 'Can delete principios mecip', 19, 'delete_principiosmecip'),
(76, 'Can view principios mecip', 19, 'view_principiosmecip'),
(77, 'Can add componentes mecip', 20, 'add_componentesmecip'),
(78, 'Can change componentes mecip', 20, 'change_componentesmecip'),
(79, 'Can delete componentes mecip', 20, 'delete_componentesmecip'),
(80, 'Can view componentes mecip', 20, 'view_componentesmecip'),
(81, 'Can add documentos_ley_anuales', 21, 'add_documentos_ley_anuales'),
(82, 'Can change documentos_ley_anuales', 21, 'change_documentos_ley_anuales'),
(83, 'Can delete documentos_ley_anuales', 21, 'delete_documentos_ley_anuales'),
(84, 'Can view documentos_ley_anuales', 21, 'view_documentos_ley_anuales'),
(85, 'Can add documentos mecip', 22, 'add_documentosmecip'),
(86, 'Can change documentos mecip', 22, 'change_documentosmecip'),
(87, 'Can delete documentos mecip', 22, 'delete_documentosmecip'),
(88, 'Can view documentos mecip', 22, 'view_documentosmecip'),
(89, 'Can add categoria blog', 23, 'add_categoriablog'),
(90, 'Can change categoria blog', 23, 'change_categoriablog'),
(91, 'Can delete categoria blog', 23, 'delete_categoriablog'),
(92, 'Can view categoria blog', 23, 'view_categoriablog'),
(93, 'Can add post blog', 24, 'add_postblog'),
(94, 'Can change post blog', 24, 'change_postblog'),
(95, 'Can delete post blog', 24, 'delete_postblog'),
(96, 'Can view post blog', 24, 'view_postblog'),
(97, 'Can add marco legal', 25, 'add_marcolegal'),
(98, 'Can change marco legal', 25, 'change_marcolegal'),
(99, 'Can delete marco legal', 25, 'delete_marcolegal'),
(100, 'Can view marco legal', 25, 'view_marcolegal'),
(101, 'Can add tipos documentos', 26, 'add_tiposdocumentos'),
(102, 'Can change tipos documentos', 26, 'change_tiposdocumentos'),
(103, 'Can delete tipos documentos', 26, 'delete_tiposdocumentos'),
(104, 'Can view tipos documentos', 26, 'view_tiposdocumentos'),
(105, 'Can add cargo directivo', 27, 'add_cargodirectivo'),
(106, 'Can change cargo directivo', 27, 'change_cargodirectivo'),
(107, 'Can delete cargo directivo', 27, 'delete_cargodirectivo'),
(108, 'Can view cargo directivo', 27, 'view_cargodirectivo'),
(109, 'Can add directivos', 28, 'add_directivos'),
(110, 'Can change directivos', 28, 'change_directivos'),
(111, 'Can delete directivos', 28, 'delete_directivos'),
(112, 'Can view directivos', 28, 'view_directivos'),
(113, 'Can add consejo directivos', 29, 'add_consejodirectivos'),
(114, 'Can change consejo directivos', 29, 'change_consejodirectivos'),
(115, 'Can delete consejo directivos', 29, 'delete_consejodirectivos'),
(116, 'Can view consejo directivos', 29, 'view_consejodirectivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$K1hH1ONeuMwnKQrtP1LJO3$aiynIagirTt/r7q8ody8P2A8Fq4aw3sJ5RvZOQ2iuXs=', '2022-08-07 18:22:39.665054', 1, 'wonder', '', '', 'wearwonder.dcp@gmail.com', 1, 1, '2022-05-23 15:25:18.439225');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-25 14:41:25.243210', '1', 'Año: 2016', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-05-25 14:41:34.191182', '2', 'Año: 2017', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-05-25 14:41:38.700532', '3', 'Año: 2018', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-05-25 14:41:42.597400', '4', 'Año: 2019', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-05-25 14:41:48.029058', '5', 'Año: 2020', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-05-25 14:41:53.391090', '6', 'Año: 2021', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-05-25 14:41:57.127109', '7', 'Año: 2022', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-05-25 14:42:00.871122', '8', 'Año: 2023', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-05-25 14:42:04.736994', '9', 'Año: 2024', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-05-25 14:42:08.063123', '10', 'Año: 2025', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-05-25 14:42:11.669162', '11', 'Año: 2026', 1, '[{\"added\": {}}]', 7, 1),
(12, '2022-05-25 14:42:15.555469', '12', 'Año: 2027', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-05-25 14:42:19.335037', '13', 'Año: 2028', 1, '[{\"added\": {}}]', 7, 1),
(14, '2022-05-25 14:42:23.219163', '14', 'Año: 2029', 1, '[{\"added\": {}}]', 7, 1),
(15, '2022-05-25 14:42:27.233194', '15', 'Año: 2030', 1, '[{\"added\": {}}]', 7, 1),
(16, '2022-05-25 14:42:49.042912', '1', 'Mes: Enero', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-05-25 14:42:53.192168', '2', 'Mes: Febrero', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-05-25 14:42:56.934058', '3', 'Mes: Marzo', 1, '[{\"added\": {}}]', 9, 1),
(19, '2022-05-25 14:43:02.065293', '4', 'Mes: Abril', 1, '[{\"added\": {}}]', 9, 1),
(20, '2022-05-25 14:43:07.423203', '5', 'Mes: Mayo', 1, '[{\"added\": {}}]', 9, 1),
(21, '2022-05-25 14:43:12.275918', '6', 'Mes: Junio', 1, '[{\"added\": {}}]', 9, 1),
(22, '2022-05-25 14:43:17.063931', '7', 'Mes: Julio', 1, '[{\"added\": {}}]', 9, 1),
(23, '2022-05-25 14:43:21.649584', '8', 'Mes: Agosto', 1, '[{\"added\": {}}]', 9, 1),
(24, '2022-05-25 14:43:24.993315', '9', 'Mes: Setiembre', 1, '[{\"added\": {}}]', 9, 1),
(25, '2022-05-25 14:43:29.658898', '10', 'Mes: Octubre', 1, '[{\"added\": {}}]', 9, 1),
(26, '2022-05-25 14:43:33.732149', '11', 'Mes: Noviembre', 1, '[{\"added\": {}}]', 9, 1),
(27, '2022-05-25 14:43:38.321212', '12', 'Mes: Diciembre', 1, '[{\"added\": {}}]', 9, 1),
(28, '2022-05-25 14:45:27.761698', '1', 'Nombre de la Categoria: Becas - Descripcion: Becas otorgadas por la FIAJNE', 1, '[{\"added\": {}}]', 8, 1),
(29, '2022-05-25 14:45:56.256053', '2', 'Nombre de la Categoria: Viáticos - Descripcion: Viáticos otorgados por la FIAUNE', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-05-25 14:46:34.493352', '3', 'Nombre de la Categoria: Consolidación de Bienes - Descripcion: Consolidados de bienes de la FIAUNE', 1, '[{\"added\": {}}]', 8, 1),
(31, '2022-05-25 14:46:44.861244', '4', 'Nombre de la Categoria: Movimiento de Bienes - Descripcion: de la FIAUNE', 1, '[{\"added\": {}}]', 8, 1),
(32, '2022-05-25 14:46:56.131264', '5', 'Nombre de la Categoria: Ejecución Presupuestaria por Objeto de Gasto - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(33, '2022-05-25 14:47:08.856031', '6', 'Nombre de la Categoria: Ejecución de Gastos por Mes - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(34, '2022-05-25 14:47:20.604991', '7', 'Nombre de la Categoria: Ejecución Presupuestaria de Ingresos - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(35, '2022-05-25 14:47:34.711597', '8', 'Nombre de la Categoria: Ejecución Presupuestaria por nivel de Gastos (Consolidado) - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(36, '2022-05-25 14:47:52.019716', '9', 'Nombre de la Categoria: Nómina de Funcionarios Permanentes - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(37, '2022-05-25 14:48:12.529777', '10', 'Nombre de la Categoria: Nómina de Funcionarios Contratados - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(38, '2022-05-25 14:48:24.509815', '11', 'Nombre de la Categoria: Nómina de Funcionarios Comisionados - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(39, '2022-05-25 14:48:44.699786', '12', 'Nombre de la Categoria: Actualización Mensual del Movimiento de los Recursos Humanos - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(40, '2022-05-25 14:48:52.911868', '13', 'Nombre de la Categoria: Nómina de Vacancia - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(41, '2022-05-25 14:49:03.893738', '14', 'Nombre de la Categoria: Aporte a otras Entidades - Descripcion: de la Fiaune', 1, '[{\"added\": {}}]', 8, 1),
(42, '2022-05-25 14:49:18.817846', '15', 'Nombre de la Categoria: Resumen Total de Remuneraciones Básicas, Adicionales, Complementarias y Otros - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(43, '2022-05-25 14:49:27.864088', '16', 'Nombre de la Categoria: Resumen Viáticos (230) - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(44, '2022-05-25 14:49:36.759348', '17', 'Nombre de la Categoria: Calificaciones SFP - Descripcion: de la fiaune', 1, '[{\"added\": {}}]', 8, 1),
(45, '2022-05-25 14:50:51.711369', '1', '(Año: 2022) (Mes: Enero) (Nombre de la Categoria: Becas - Descripcion: Becas otorgadas por la FIAJNE) documentos/transparencia/2022/01_Planilla_general_de_becas_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(46, '2022-05-25 16:54:18.795321', '1', '(Año: 2022) (Mes: Enero) (Nombre de la Categoria: Becas - Descripcion: Becas otorgadas por la FIAJNE) documentos/transparencia/2022/01_Planilla_general_de_becas_2022_5go1gjS.pdf', 2, '[{\"changed\": {\"fields\": [\"Documentos\"]}}]', 10, 1),
(47, '2022-05-25 16:58:52.012859', '1', '(Año: 2022) (Mes: Enero) (Nombre de la Categoria: Becas - Descripcion: Becas otorgadas por la FIAJNE) documentos/transparencia/2022/01_Planilla_general_de_becas_2022.pdf', 2, '[{\"changed\": {\"fields\": [\"Documentos\"]}}]', 10, 1),
(48, '2022-05-26 14:10:23.891674', '2', '(Año: 2022) (Mes: Enero) ((Nombre: Viáticos)(Descripcion: Viáticos otorgados por la FIAUNE)) documentos/transparencia/2022/01_Planilla_de_Informe_de_Viaticos_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(49, '2022-05-26 14:23:06.646923', '3', '(Año: 2022) (Mes: Enero) ((Nombre: Consolidación de Bienes)(Descripcion: Consolidados de bienes de la FIAUNE)) documentos/transparencia/2022/Informe_Consolidado_enero_22.pdf', 1, '[{\"added\": {}}]', 10, 1),
(50, '2022-05-26 14:32:45.243537', '4', '(Año: 2022) (Mes: Enero) ((Nombre: Movimiento de Bienes)(Descripcion: de la FIAUNE)) documentos/transparencia/2022/FC04_y_FC05_ENERO_22.pdf', 1, '[{\"added\": {}}]', 10, 1),
(51, '2022-05-26 14:35:00.719119', '5', '(Año: 2022) (Mes: Enero) ((Nombre: Ejecución Presupuestaria por Objeto de Gasto)(Descripcion: de la Fiaune)) documentos/transparencia/2022/Ejecucion_de_GASTOS_mes_de_ENERO_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(52, '2022-05-26 14:35:30.318349', '6', '(Año: 2022) (Mes: Enero) ((Nombre: Ejecución de Gastos por Mes)(Descripcion: de la fiaune)) documentos/transparencia/2022/Ejecucion_de_GASTOS_mes_de_ENERO_2022_vNr1A9f.pdf', 1, '[{\"added\": {}}]', 10, 1),
(53, '2022-05-26 14:36:06.102131', '7', '(Año: 2022) (Mes: Enero) ((Nombre: Ejecución Presupuestaria de Ingresos)(Descripcion: de la fiaune)) documentos/transparencia/2022/Ejecucion_de_INGRESOS_mes_de_ENERO_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(54, '2022-05-26 14:36:30.593944', '8', '(Año: 2022) (Mes: Enero) ((Nombre: Ejecución Presupuestaria por nivel de Gastos (Consolidado))(Descripcion: de la fiaune)) documentos/transparencia/2022/Ejecucion_por_nivel_del_mes_de_ENERO_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(55, '2022-05-26 14:40:00.351592', '9', '(Año: 2022) (Mes: Enero) ((Nombre: Nómina de Funcionarios Permanentes)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Permanentes.pdf', 1, '[{\"added\": {}}]', 10, 1),
(56, '2022-05-26 14:40:14.599650', '10', '(Año: 2022) (Mes: Enero) ((Nombre: Nómina de Funcionarios Contratados)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Contratados.pdf', 1, '[{\"added\": {}}]', 10, 1),
(57, '2022-05-26 14:41:10.136778', '11', '(Año: 2022) (Mes: Enero) ((Nombre: Nómina de Funcionarios Comisionados)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Planilla_General_de_Comisionados_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(58, '2022-05-26 14:41:37.193289', '12', '(Año: 2022) (Mes: Enero) ((Nombre: Actualización Mensual del Movimiento de los Recursos Humanos)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Formulario_Anexo_B-15-02_Enero.pdf', 1, '[{\"added\": {}}]', 10, 1),
(59, '2022-05-26 14:41:57.081457', '13', '(Año: 2022) (Mes: Enero) ((Nombre: Nómina de Vacancia)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Nomina_formato_SFP_2022_Vacancias.pdf', 1, '[{\"added\": {}}]', 10, 1),
(60, '2022-05-26 14:42:33.839660', '14', '(Año: 2022) (Mes: Enero) ((Nombre: Aporte a otras Entidades)(Descripcion: de la Fiaune)) documentos/transparencia/2022/01_Aportes_Otras_Entidades_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(61, '2022-05-26 14:43:13.052372', '15', '(Año: 2022) (Mes: Enero) ((Nombre: Resumen Total de Remuneraciones Básicas, Adicionales, Complementarias y Otros)(Descripcion: de la fiaune)) documentos/transparencia/2022/01_Resumen_Total_de_Remunera', 1, '[{\"added\": {}}]', 10, 1),
(62, '2022-05-26 14:43:39.461592', '16', '(Año: 2022) (Mes: Enero) ((Nombre: Resumen Viáticos (230))(Descripcion: de la fiaune)) documentos/transparencia/2022/01_Resumen_Total_de_Viaticos_y_Movilidad_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(63, '2022-05-26 14:44:21.776672', '17', '(Año: 2022) (Mes: Enero) ((Nombre: Calificaciones SFP)(Descripcion: de la fiaune)) documentos/transparencia/2022/100_Enero_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(64, '2022-05-26 15:17:02.111688', '18', '(Año: 2022) (Mes: Febrero) ((Nombre: Becas)(Descripcion: Becas otorgadas por la FIAJNE)) documentos/transparencia/2022/02_Planilla_general_de_becas_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(65, '2022-05-27 15:23:00.857935', '19', '(Año: 2022) (Mes: Febrero) ((Nombre: Viáticos)(Descripcion: Viáticos otorgados por la FIAUNE)) documentos/transparencia/2022/02_Planilla_de_Informe_de_Viaticos_2022.pdf', 1, '[{\"added\": {}}]', 10, 1),
(66, '2022-05-27 15:44:47.791458', '20', '(Año: 2022) (Mes: Febrero) ((Nombre: Consolidación de Bienes)(Descripcion: Consolidados de bienes de la FIAUNE)) documentos/transparencia/2022/Consolidado_feb_22.pdf', 1, '[{\"added\": {}}]', 10, 1),
(67, '2022-08-07 13:41:28.470560', '1', 'Académico', 1, '[{\"added\": {}}]', 23, 1),
(68, '2022-08-07 13:43:13.056418', '1', 'Prueba de Post', 1, '[{\"added\": {}}]', 24, 1),
(69, '2022-08-07 14:27:00.271112', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 24, 1),
(70, '2022-08-07 14:53:25.156519', '2', 'Posgrado', 1, '[{\"added\": {}}]', 23, 1),
(71, '2022-08-07 14:54:08.187802', '2', 'Prueba para posgrado', 1, '[{\"added\": {}}]', 24, 1),
(72, '2022-08-07 16:27:25.054517', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(73, '2022-08-07 16:28:01.276393', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Extracto\"]}}]', 24, 1),
(74, '2022-08-07 16:49:01.887701', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(75, '2022-08-07 18:00:45.295231', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(76, '2022-08-07 18:18:28.543072', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(77, '2022-08-07 18:24:09.996891', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(78, '2022-08-07 18:33:03.771491', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(79, '2022-08-07 18:36:14.865445', '2', 'Prueba para posgrado', 2, '[]', 24, 1),
(80, '2022-08-07 18:37:14.735041', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(81, '2022-08-07 18:58:40.416284', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Contenido\"]}}]', 24, 1),
(82, '2022-08-07 19:11:46.949032', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Publicado fin\"]}}]', 24, 1),
(83, '2022-08-07 19:12:24.450167', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Publicado fin\"]}}]', 24, 1),
(84, '2022-08-07 19:13:28.264899', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Publicado fin\"]}}]', 24, 1),
(85, '2022-08-07 19:15:36.663931', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(86, '2022-08-07 19:24:03.454207', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(87, '2022-08-07 19:24:18.194138', '2', 'Prueba para posgrado', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(88, '2022-08-07 19:24:29.495475', '1', 'Prueba de Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(89, '2022-08-09 13:11:17.381534', '3', 'Prueba 3', 1, '[{\"added\": {}}]', 24, 1),
(90, '2022-08-09 13:15:45.335556', '4', 'Prueba 4', 1, '[{\"added\": {}}]', 24, 1),
(91, '2022-08-09 13:15:54.086299', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(92, '2022-08-09 13:17:51.722519', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(93, '2022-08-09 13:21:07.616981', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(94, '2022-08-09 13:23:26.881519', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(95, '2022-08-09 13:24:22.952170', '3', 'Prueba 3', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(96, '2022-08-09 13:24:32.979762', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(97, '2022-08-09 13:25:54.195245', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(98, '2022-08-09 13:31:09.500778', '3', 'Prueba 3', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(99, '2022-08-09 16:53:01.003407', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(100, '2022-08-09 16:53:16.327826', '3', 'Prueba 3', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(101, '2022-08-09 17:01:26.063940', '4', 'Prueba 4', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 24, 1),
(102, '2022-08-09 21:21:50.205915', '1', 'Reglamentos', 1, '[{\"added\": {}}]', 26, 1),
(103, '2022-08-09 21:21:59.201316', '2', 'Decretos', 1, '[{\"added\": {}}]', 26, 1),
(104, '2022-08-09 21:22:16.647915', '3', 'Leyes', 1, '[{\"added\": {}}]', 26, 1),
(105, '2022-08-09 21:22:25.804141', '4', 'Planes Intitucionales', 1, '[{\"added\": {}}]', 26, 1),
(106, '2022-08-09 21:22:36.995121', '5', 'Arancel Cero', 1, '[{\"added\": {}}]', 26, 1),
(107, '2022-08-09 21:50:47.956142', '1', 'Ley N 00', 1, '[{\"added\": {}}]', 25, 1),
(108, '2022-08-09 21:51:36.026644', '1', 'Ley N 00 - Ley de Transparencia', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 25, 1),
(109, '2022-08-09 21:52:15.010153', '1', 'Ley N 5189/2014 - Ley de Transparencia', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 25, 1),
(110, '2022-08-09 21:52:32.714771', '1', 'Ley N 5189/2014 - Ley de Transparencia', 2, '[{\"changed\": {\"fields\": [\"Tipo de Dcoumento\"]}}]', 25, 1),
(111, '2022-08-09 21:53:07.179508', '1', 'Ley N 5189/2014 - Ley de Transparencia', 2, '[{\"changed\": {\"fields\": [\"Tipo de Dcoumento\"]}}]', 25, 1),
(112, '2022-08-09 22:04:44.203133', '1', 'Decano', 1, '[{\"added\": {}}]', 27, 1),
(113, '2022-08-09 22:04:58.339986', '2', 'Vice - Decano', 1, '[{\"added\": {}}]', 27, 1),
(114, '2022-08-09 22:05:09.315236', '3', 'Secretario General', 1, '[{\"added\": {}}]', 27, 1),
(115, '2022-08-09 22:45:40.745348', '1', 'Ing. Agr. José de los Santos', 1, '[{\"added\": {}}]', 28, 1),
(116, '2022-08-09 22:55:26.986524', '2', 'Ing. Agr. Oscar Mario', 1, '[{\"added\": {}}]', 28, 1),
(117, '2022-08-09 22:55:50.061236', '1', 'Ing. Agr. José de los Santos', 2, '[{\"changed\": {\"fields\": [\"Directivos\"]}}]', 28, 1),
(118, '2022-08-09 22:56:40.863181', '1', 'Ing. Agr. José de los Santos', 2, '[{\"changed\": {\"fields\": [\"Directivos\"]}}]', 28, 1),
(119, '2022-08-09 23:35:31.217596', '4', 'Presidente del Consejo Directivo', 1, '[{\"added\": {}}]', 27, 1),
(120, '2022-08-09 23:36:21.181955', '1', 'Ing. Agr. José de los Santos', 1, '[{\"added\": {}}]', 29, 1),
(121, '2022-08-09 23:37:44.982487', '2', 'Ing. Agr. Oscar Mario', 1, '[{\"added\": {}}]', 29, 1),
(122, '2022-08-09 23:38:58.595807', '5', 'Representante del Estamento Docente', 1, '[{\"added\": {}}]', 27, 1),
(123, '2022-08-09 23:39:13.217521', '6', 'Representante del Estamento No Docente', 1, '[{\"added\": {}}]', 27, 1),
(124, '2022-08-09 23:39:34.127757', '7', 'Representante del Estamento Estudiantil', 1, '[{\"added\": {}}]', 27, 1),
(125, '2022-08-09 23:49:15.616184', '1', 'A. Ambiente de Control', 1, '[{\"added\": {}}]', 20, 1),
(126, '2022-08-09 23:49:22.702067', '2', 'B. Componente de control de la planificación', 1, '[{\"added\": {}}]', 20, 1),
(127, '2022-08-09 23:49:29.109314', '3', 'C. Componente de control de la implementación', 1, '[{\"added\": {}}]', 20, 1),
(128, '2022-08-09 23:49:37.148079', '4', 'D. Componente de control de evaluación', 1, '[{\"added\": {}}]', 20, 1),
(129, '2022-08-09 23:49:48.182049', '5', 'E. Componente de control para la mejora', 1, '[{\"added\": {}}]', 20, 1),
(130, '2022-08-09 23:51:38.714792', '1', '1. Compromisos de la alta dirección', 1, '[{\"added\": {}}]', 19, 1),
(131, '2022-08-09 23:51:56.955925', '2', '2. Acuerdos y compromisos éticos', 1, '[{\"added\": {}}]', 19, 1),
(132, '2022-08-09 23:52:07.735869', '3', '3. Protocolo de buen gobierno', 1, '[{\"added\": {}}]', 19, 1),
(133, '2022-08-09 23:52:16.648747', '4', '4. Política de gestión del talento humano', 1, '[{\"added\": {}}]', 19, 1),
(134, '2022-08-09 23:52:51.878728', '1', '1.1. Política de control interno', 1, '[{\"added\": {}}]', 18, 1),
(135, '2022-08-09 23:56:40.534089', '5', '1. Direccionamiento estratégico', 1, '[{\"added\": {}}]', 19, 1),
(136, '2022-08-09 23:56:47.986575', '6', '2. Gestión por procesos', 1, '[{\"added\": {}}]', 19, 1),
(137, '2022-08-09 23:57:00.408127', '7', '3. Estructura organizacional', 1, '[{\"added\": {}}]', 19, 1),
(138, '2022-08-09 23:57:16.882581', '8', '4. Identificación y evaluación de riesgos', 1, '[{\"added\": {}}]', 19, 1),
(139, '2022-08-09 23:57:49.463518', '9', '1. Control operacional', 1, '[{\"added\": {}}]', 19, 1),
(140, '2022-08-09 23:58:02.586710', '10', '2. Competencia, formación y toma de conciencia', 1, '[{\"added\": {}}]', 19, 1),
(141, '2022-08-09 23:58:14.663409', '11', '3. Gestión de la información', 1, '[{\"added\": {}}]', 19, 1),
(142, '2022-08-09 23:58:30.099534', '12', '4. Comunicación', 1, '[{\"added\": {}}]', 19, 1),
(143, '2022-08-09 23:59:01.315207', '2', '1.1. Políticas operacionales', 1, '[{\"added\": {}}]', 18, 1),
(144, '2022-08-09 23:59:16.034433', '3', '1.2. Procedimientos', 1, '[{\"added\": {}}]', 18, 1),
(145, '2022-08-09 23:59:35.073326', '4', '1.3. Controles', 1, '[{\"added\": {}}]', 18, 1),
(146, '2022-08-09 23:59:45.312374', '5', '3.1. Sistema de información', 1, '[{\"added\": {}}]', 18, 1),
(147, '2022-08-09 23:59:56.858382', '6', '3.2. Control de documentos', 1, '[{\"added\": {}}]', 18, 1),
(148, '2022-08-10 00:00:06.330393', '7', '4.1. Comunicación interna', 1, '[{\"added\": {}}]', 18, 1),
(149, '2022-08-10 00:00:15.064353', '8', '4.2. Comunicación externa', 1, '[{\"added\": {}}]', 18, 1),
(150, '2022-08-10 00:00:35.162464', '9', '4.3. Rendición de cuentas', 1, '[{\"added\": {}}]', 18, 1),
(151, '2022-08-10 00:01:36.366522', '13', '1. Seguimiento y medición del control interno', 1, '[{\"added\": {}}]', 19, 1),
(152, '2022-08-10 00:01:47.386459', '14', '2. Auditoria interna', 1, '[{\"added\": {}}]', 19, 1),
(153, '2022-08-10 00:02:29.080078', '15', '1. Análisis crítico del sistema de control interno', 1, '[{\"added\": {}}]', 19, 1),
(154, '2022-08-10 00:02:38.897435', '16', '2. Mejora continua', 1, '[{\"added\": {}}]', 19, 1),
(155, '2022-08-10 00:12:46.401030', '1', '2022', 1, '[{\"added\": {}}]', 11, 1),
(156, '2022-08-10 00:13:15.542286', '1', 'DocumentosMECIP object (1)', 1, '[{\"added\": {}}]', 22, 1),
(157, '2022-08-10 00:27:24.964180', '2', 'DocumentosMECIP object (2)', 1, '[{\"added\": {}}]', 22, 1),
(158, '2022-08-10 00:31:01.890162', '2', 'DocumentosMECIP object (2)', 2, '[]', 22, 1),
(159, '2022-08-10 01:08:04.477728', '2', 'DocumentosMECIP object (2)', 2, '[{\"changed\": {\"fields\": [\"Principios\"]}}]', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'AppWebsite', 'anhotra'),
(8, 'AppWebsite', 'categoriatra'),
(9, 'AppWebsite', 'mestra'),
(10, 'AppWebsite', 'transparencia'),
(11, 'App', 'anho'),
(12, 'App', 'categoria'),
(13, 'App', 'documentos_ley'),
(14, 'App', 'meses'),
(15, 'App', 'resolucionesmecip'),
(16, 'App', 'circularmecip'),
(17, 'App', 'actasmecip'),
(18, 'App', 'elementosmecip'),
(19, 'App', 'principiosmecip'),
(20, 'App', 'componentesmecip'),
(21, 'App', 'documentos_ley_anuales'),
(22, 'App', 'documentosmecip'),
(23, 'App', 'categoriablog'),
(24, 'App', 'postblog'),
(25, 'App', 'marcolegal'),
(26, 'App', 'tiposdocumentos'),
(27, 'App', 'cargodirectivo'),
(28, 'App', 'directivos'),
(29, 'App', 'consejodirectivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'AppWebsite', '0001_initial', '2022-05-23 15:21:38.709367'),
(2, 'contenttypes', '0001_initial', '2022-05-23 15:21:38.783411'),
(3, 'auth', '0001_initial', '2022-05-23 15:21:39.881439'),
(4, 'admin', '0001_initial', '2022-05-23 15:21:40.178588'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-05-23 15:21:40.195387'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-23 15:21:40.213376'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-05-23 15:21:40.338266'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-05-23 15:21:40.420738'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-05-23 15:21:40.504617'),
(10, 'auth', '0004_alter_user_username_opts', '2022-05-23 15:21:40.522372'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-05-23 15:21:40.579744'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-05-23 15:21:40.582852'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-05-23 15:21:40.594846'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-05-23 15:21:40.649590'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-05-23 15:21:40.701713'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-05-23 15:21:40.758706'),
(17, 'auth', '0011_update_proxy_permissions', '2022-05-23 15:21:40.769698'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-05-23 15:21:40.944550'),
(19, 'sessions', '0001_initial', '2022-05-23 15:21:41.034544'),
(20, 'AppWebsite', '0002_alter_categoriatra_nombretra', '2022-05-26 12:44:16.619265'),
(21, 'AppWebsite', '0003_alter_categoriatra_nombretra', '2022-05-26 12:47:36.005265'),
(22, 'AppWebsite', '0004_alter_categoriatra_nombretra', '2022-05-26 12:50:39.327522'),
(23, 'App', '0001_initial', '2022-08-05 20:05:41.685022'),
(24, 'App', '0002_rename_mes_meses', '2022-08-05 20:05:42.105929'),
(25, 'App', '0003_rename_anho_id_documentos_ley_año_and_more', '2022-08-05 20:05:42.378866'),
(26, 'App', '0004_remove_documentos_ley_año_and_more', '2022-08-05 20:05:43.069132'),
(27, 'App', '0005_alter_anho_nombre_alter_meses_nombre', '2022-08-05 20:05:43.078126'),
(28, 'App', '0006_rename_categoria_id_documentos_ley_categoria_and_more', '2022-08-05 20:05:43.482391'),
(29, 'App', '0007_rename_anho_id_actasmecip_anho_and_more', '2022-08-05 20:05:43.580750'),
(30, 'App', '0008_alter_circularmecip_status', '2022-08-05 20:05:43.651712'),
(31, 'App', '0009_alter_circularmecip_status_and_more', '2022-08-05 20:05:43.913315'),
(32, 'App', '0010_alter_circularmecip_circular', '2022-08-05 20:05:43.921498'),
(33, 'App', '0011_elementosmecip_principiosmecip_componentesmecip', '2022-08-05 20:05:44.180162'),
(34, 'App', '0012_remove_componentesmecip_princiopios_id_and_more', '2022-08-05 20:05:44.316946'),
(35, 'App', '0013_principiosmecip_componentes', '2022-08-05 20:05:44.462217'),
(36, 'App', '0014_rename_componentes_principiosmecip_componentes_id', '2022-08-05 20:05:44.499195'),
(37, 'App', '0015_elementosmecip_principios_id', '2022-08-05 20:05:44.638589'),
(38, 'App', '0016_documentos_ley_anuales', '2022-08-05 20:05:44.797966'),
(39, 'App', '0017_documentosmecip', '2022-08-05 20:05:45.226839'),
(40, 'App', '0018_alter_documentosmecip_elementos_id', '2022-08-05 20:05:45.245829'),
(41, 'App', '0019_categoriablog_postblog', '2022-08-07 13:12:04.476377'),
(42, 'App', '0020_postblog_imagen', '2022-08-07 14:26:18.508775'),
(43, 'App', '0021_alter_postblog_contenido', '2022-08-07 17:57:55.459092'),
(44, 'App', '0022_postblog_publicado_fin', '2022-08-07 19:09:58.826850'),
(45, 'App', '0023_alter_postblog_status', '2022-08-09 13:23:12.084119'),
(46, 'App', '0024_tiposdocumentos_marcolegal', '2022-08-09 21:19:31.764933'),
(47, 'App', '0025_cargodirectivo_directivos', '2022-08-09 22:03:13.413633'),
(48, 'App', '0026_alter_directivos_telefono', '2022-08-09 22:45:03.987207'),
(49, 'App', '0027_consejodirectivos', '2022-08-09 23:07:15.683852'),
(50, 'App', '0028_alter_elementosmecip_principios_id_and_more', '2022-08-09 23:55:58.634184'),
(51, 'App', '0029_alter_documentosmecip_principios_id', '2022-08-10 00:41:29.478460');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wekjqa4kg3c7p5dyw3rka5jqb88hrgr3', '.eJxVjEEOwiAQRe_C2hAYCoJL9z0DmYGpVA0kpV0Z765NutDtf-_9l4i4rSVunZc4Z3ERWpx-N8L04LqDfMd6azK1ui4zyV2RB-1ybJmf18P9OyjYy7f2Vik1AGnnCQwl0DZDQD8xEDjCwbIzlM8IKQU0SlN2ZgDtLYYpMYv3B8uaN-I:1ntZa6:R5NMGlE1NOUAfLvoz-bQRmL9enc_tig6TyMJts8lDyU', '2022-06-07 18:48:34.136634'),
('jrpdth3uspefq9t31gpoa6o7i5n381ba', '.eJxVjDsOwjAQBe_iGll4_VmWkp4zWP6scQDZUpxUiLtDpBTQvpl5L-HDulS_Dp79lMVZKHH43WJID24byPfQbl2m3pZ5inJT5E6HvPbMz8vu_h3UMOq31kjkLEcu4ACDJYBMQOlkUkBSmhRoh6YkU0wyaC0gImjl2B2tySzeH7erNng:1o5Dhu:5WavBadgo6OEszjOdFKuJ_TFyRE48k_jKi2QmCY3xt0', '2022-07-09 21:52:46.093759'),
('f7ivdkhqfrho25sx1657mzdcwk501iyo', '.eJxVjDsOwjAQBe_iGll4_VmWkp4zWP6scQDZUpxUiLtDpBTQvpl5L-HDulS_Dp79lMVZKHH43WJID24byPfQbl2m3pZ5inJT5E6HvPbMz8vu_h3UMOq31kjkLEcu4ACDJYBMQOlkUkBSmhRoh6YkU0wyaC0gImjl2B2tySzeH7erNng:1nuCt1:FJuggM8qYUuYWAanlCmSbwX-WPXOWjY2jWqg-uG-fyo', '2022-06-09 12:46:43.929815'),
('y1yi0cl1qcnmy7c6sbz3qnkvykql6wjp', '.eJxVjMsOwiAQRf-FtSFAeYhL935DM8wMUjWQlHZl_HdD0oVu7znnvsUM-1bmvfM6LyQuQovT75YAn1wHoAfUe5PY6rYuSQ5FHrTLWyN-XQ_376BAL6NGFcmd2QdCYObgpugta2BkTTajCT6xdsEqFTVRRJ5SyMapnIyySXy-D0w4wg:1oKg7x:D_0Udsved1oxObA8SPNGRQ5_gmA8d3-KgG-PZj7nbZY', '2022-08-21 13:15:33.973568'),
('lzwufrnex5wp8g51vmxv5drk4z2ctfxl', '.eJxVjMsOwiAQRf-FtSFAeYhL935DM8wMUjWQlHZl_HdD0oVu7znnvsUM-1bmvfM6LyQuQovT75YAn1wHoAfUe5PY6rYuSQ5FHrTLWyN-XQ_376BAL6NGFcmd2QdCYObgpugta2BkTTajCT6xdsEqFTVRRJ5SyMapnIyySXy-D0w4wg:1oKkv9:zB3jOGn0m_p2FDisVoWdQ4Wqp2f0ulO2dEwyN2MOeRI', '2022-08-21 18:22:39.672060');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
