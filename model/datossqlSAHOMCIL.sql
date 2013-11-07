-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-11-2013 a las 17:33:15
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `isftwebappfinal`
--
CREATE DATABASE IF NOT EXISTS `isftwebappfinal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `isftwebappfinal`;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Cod_Carrera`, `Nombre`, `Descripcion`) VALUES
(9, 'tecnico superior en turismo', 'lallaa'),
(10, 'analisis de sistemas ', 'llalala');

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Descripcion`, `Turno`, `Cod_Curso`, `Cod_Carrera`) VALUES
('1-a', 'n', 11, 10),
('1-b', 'm', 12, 10),
('2-a', 'm', 21, 10),
('3-b', 'm', 32, 10);

--
-- Volcado de datos para la tabla `cursoscantidad`
--

INSERT INTO `cursoscantidad` (`Lectivo`, `Cant_Alumnos`, `legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) VALUES
(2013, 0, 1, 11, 10, 101),
(2013, 0, 1, 11, 10, 103),
(2013, 1, 1, 11, 10, 106),
(2013, 0, 1, 11, 10, 107),
(2013, 0, 1, 11, 10, 110),
(2013, 0, 1, 12, 10, 101),
(2014, 0, 1, 12, 10, 101),
(2013, 0, 1, 12, 10, 106),
(2013, 0, 1, 21, 10, 201),
(2013, 0, 2, 11, 10, 103),
(2013, 0, 2, 32, 10, 307),
(2013, 0, 3, 11, 10, 104),
(2013, 0, 3, 11, 10, 110),
(2013, 0, 3, 12, 10, 104);

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`Dia`, `Descripcion`) VALUES
(1, 'lunes'),
(2, 'martes'),
(3, 'miercoles'),
(4, 'jueves'),
(5, 'viernes'),
(6, 'sabado');

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`Hora_desde`, `Hora_hasta`) VALUES
('08:00:00', '09:00:00'),
('09:00:00', '10:00:00'),
('10:00:00', '11:00:00'),
('11:00:00', '12:00:00'),
('18:20:00', '19:20:00'),
('19:20:00', '20:20:00'),
('20:20:00', '21:20:00'),
('21:20:00', '22:20:00');

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Dia`, `Hora_desde`, `Hora_hasta`, `lectivo`, `legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) VALUES
(1, '08:00:00', '09:00:00', 2013, 1, 21, 10, 201),
(1, '08:00:00', '09:00:00', 2013, 4, 32, 10, 301),
(2, '08:00:00', '09:00:00', 2013, 1, 11, 10, 101),
(2, '08:00:00', '09:00:00', 2013, 3, 32, 10, 305),
(3, '08:00:00', '09:00:00', 2013, 1, 11, 10, 101),
(3, '08:00:00', '09:00:00', 2013, 6, 32, 10, 304),
(4, '08:00:00', '09:00:00', 2013, 1, 11, 10, 101),
(5, '08:00:00', '09:00:00', 2013, 1, 11, 10, 107),
(6, '08:00:00', '09:00:00', 2013, 1, 11, 10, 101),
(6, '08:00:00', '09:00:00', 2013, 1, 32, 10, 307),
(1, '09:00:00', '10:00:00', 2013, 1, 11, 10, 103),
(1, '09:00:00', '10:00:00', 2013, 4, 32, 10, 301),
(2, '09:00:00', '10:00:00', 2013, 3, 11, 10, 104),
(2, '09:00:00', '10:00:00', 2013, 3, 32, 10, 305),
(3, '09:00:00', '10:00:00', 2013, 3, 11, 10, 104),
(3, '09:00:00', '10:00:00', 2013, 6, 32, 10, 304),
(4, '09:00:00', '10:00:00', 2013, 2, 11, 10, 103),
(5, '09:00:00', '10:00:00', 2013, 1, 11, 10, 101),
(6, '09:00:00', '10:00:00', 2013, 1, 32, 10, 307),
(6, '09:00:00', '10:00:00', 2013, 2, 11, 10, 111),
(1, '10:00:00', '11:00:00', 2013, 1, 11, 10, 110),
(1, '10:00:00', '11:00:00', 2013, 4, 32, 10, 301),
(2, '10:00:00', '11:00:00', 2013, 2, 11, 10, 110),
(2, '10:00:00', '11:00:00', 2013, 5, 32, 10, 306),
(3, '10:00:00', '11:00:00', 2013, 3, 11, 10, 110),
(6, '10:00:00', '11:00:00', 2013, 1, 32, 10, 307),
(1, '11:00:00', '12:00:00', 2013, 1, 11, 10, 101),
(2, '11:00:00', '12:00:00', 2013, 5, 32, 10, 306),
(6, '11:00:00', '12:00:00', 2013, 1, 32, 10, 307),
(4, '18:20:00', '19:20:00', 2013, 1, 32, 10, 307),
(4, '19:20:00', '20:20:00', 2013, 1, 32, 10, 307),
(4, '20:20:00', '21:20:00', 2013, 7, 32, 10, 308),
(4, '21:20:00', '22:20:00', 2013, 7, 32, 10, 308);

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`Cod_Materia`, `Nombre`, `ModalidadCursada`, `Cod_Carrera`) VALUES
(101, 'Analisis Matematico I', 'pr', 10),
(102, 'Algebra', 'Pr', 10),
(103, 'programacion I', 'pr', 10),
(104, 'int a los sistemas de informacion', 'Pr', 10),
(106, 'Administracion de las organizaciones', 'Pr', 10),
(107, 'Ingles Tecnico I', 'Pr', 10),
(109, 'Arquitectura del Computador', 'Pr', 10),
(110, 'Metodologia de la investigacion', 'Pr', 10),
(111, 'E.D.I. I', 'Pr', 10),
(201, 'Analisis Matematico II', 'pr', 10),
(202, 'Probabilidad y Estadistica', 'Pr', 10),
(203, 'Programacion II', 'Pr', 10),
(204, 'Sistemas Operativos', 'Pr', 10),
(205, 'Sistemas de Informacion I', 'Pr', 10),
(207, 'Ingles Tecnico II', 'Pr', 10),
(208, 'Bases de datos', 'Pr', 10),
(209, 'E.D.I II', 'Pr', 10),
(301, 'Sistemas de Informacion II', 'pr', 10),
(304, 'Teleinformatica', 'Pr', 10),
(305, 'Investigacion Operativa', 'Pr', 10),
(306, 'Economia Empresarial', 'Pr', 10),
(307, 'Practica Profesional', 'Pr', 10),
(308, 'E.D.I. III', 'Pr', 10);

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`legajoProfesor`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`) VALUES
(1, 'Jose Luis', 'Caferatta', 'lalala', 'lalala', '1231'),
(2, 'Ana maria', 'Clos', 'kakak', 'kakaka', '123'),
(3, 'alberto', 'passarelli', 'holgura 69', 'moreno', '6969'),
(4, 'Rocio', 'Gonzalez', 'calle falsa', '123', '4444'),
(5, 'Elizabeth ', 'Amaya', 'falsa muy falsa', '1234', '1234'),
(6, 'Miguel', 'Trinidad', 'lalalal', 'lalalal', '1234'),
(7, 'jose', 'hansen', 'akakakak', 'kakakaka', '23112');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
