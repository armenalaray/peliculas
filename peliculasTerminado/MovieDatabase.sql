-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2017 a las 19:57:41
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `moviedatabase`
--
CREATE DATABASE IF NOT EXISTS `moviedatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `moviedatabase`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(50) NOT NULL,
  `genero` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `genero`) VALUES
(1, 'Drama'),
(2, 'Sci-Fi'),
(3, 'Thriller'),
(4, 'Comedy'),
(5, 'Action'),
(6, 'Mystery');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaPub` date NOT NULL,
  `director` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` int(50) NOT NULL,
  `sinopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentRating` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `fechaPub`, `director`, `duracion`, `sinopsis`, `contentRating`, `poster`) VALUES
(1, 'The Circle', '2017-04-28', 'James Ponsoldt', 110, 'A woman lands a dream job at a powerful tech company called the Circle, only to uncover a nefarious agenda that will affect the lives of her friends, family and that of humanity.', 'PG-13', 'img/theCirclePoster.jpg'),
(2, 'How to Be a Latin Lover', '2017-04-28', 'Ken Marino', 100, 'Finding himself dumped after 25 years of marriage, a man who made a career of seducing rich older women must move in with his estranged sister, where he begins to learn the value of family.', 'PG-13', 'img/LatinLover.jpg'),
(3, 'Sleight', '2017-04-28', 'J.D. Dillard', 90, 'A young street magician (Jacob Latimore) is left to care for his little sister after their parents passing and turns to illegal activities to keep a roof over their heads. When he gets in ...', 'R', 'img/Sleight.jpg'),
(4, 'Buster\'s Mal Heart', '2017-04-28', 'Sarah Adina Smith', 96, 'In this bold thriller spiked with dark humor, Rami Malek (Mr. Robot) is a family man whose chance encounter with a conspiracy-obsessed drifter leaves him on the run from the police and an impending event known as The Inversion.', 'f', 'img/Buster.jpg'),
(5, 'Shavua ve Yom', '2016-09-08', 'Asaph Polonsky', 98, 'When Eyal finishes the week of mourning for his late son, his wife urges him to return to their routine but instead he gets high with a young neighbor and sets out to discover that there ...', 'f', 'img/Shavua.jpg\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculascategorias`
--

CREATE TABLE `peliculascategorias` (
  `id` int(50) NOT NULL,
  `idPeliculas` int(50) NOT NULL,
  `idCategorias` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculascategorias`
--

INSERT INTO `peliculascategorias` (`id`, `idPeliculas`, `idCategorias`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 1),
(7, 3, 2),
(8, 4, 1),
(9, 4, 6),
(10, 4, 3),
(11, 5, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculascategorias`
--
ALTER TABLE `peliculascategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `peliculascategorias`
--
ALTER TABLE `peliculascategorias`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
