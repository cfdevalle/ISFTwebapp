-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-07-2013 a las 17:56:59
-- Versión del servidor: 5.1.53
-- Versión de PHP: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `isftwebappfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `Legajo` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `CP` varchar(45) DEFAULT NULL,
  `Lectivo` varchar(45) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  PRIMARY KEY (`Legajo`,`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `Cod_Carrera` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Cant_Mat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativa`
--

CREATE TABLE IF NOT EXISTS `correlativa` (
  `Cod_Correlativa` int(11) NOT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Correlativa`,`Cod_Materia`,`Cod_Carrera`),
  KEY `fk_correlativa_materia1_idx` (`Cod_Materia`),
  KEY `fk_correlativa_carrera1_idx` (`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `Descripcion` varchar(45) DEFAULT NULL,
  `Turno` varchar(45) NOT NULL,
  `Cod_Curso` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Curso`,`Cod_Carrera`),
  KEY `fk_curso_carrera1_idx` (`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosalumnos`
--

CREATE TABLE IF NOT EXISTS `cursosalumnos` (
  `Asistencia` int(11) DEFAULT NULL,
  `Regularizado` varchar(45) DEFAULT NULL,
  `Notareg` int(11) DEFAULT NULL,
  `ModalidadInscripcion` varchar(45) DEFAULT NULL,
  `Turno` varchar(45) DEFAULT NULL,
  `SituacionAcademica` varchar(45) DEFAULT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  `Alumnos_Legajo` int(11) NOT NULL,
  `Cod_Curso` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Materia`,`Cod_Carrera`,`Alumnos_Legajo`,`Cod_Curso`),
  KEY `fk_cursosAlumnos_materia1_idx` (`Cod_Materia`),
  KEY `fk_cursosAlumnos_carrera1_idx` (`Cod_Carrera`),
  KEY `fk_cursosAlumnos_Alumnos1_idx` (`Alumnos_Legajo`),
  KEY `fk_cursosAlumnos_curso1_idx` (`Cod_Curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursoscantidad`
--

CREATE TABLE IF NOT EXISTS `cursoscantidad` (
  `Lectivo` int(11) NOT NULL,
  `Cant_Alumnos` int(11) DEFAULT NULL,
  `legajoProfesor` int(11) NOT NULL,
  `Cod_Curso` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  `Cod_Materia` int(11) NOT NULL,
  PRIMARY KEY (`legajoProfesor`,`Cod_Curso`,`Cod_Carrera`,`Cod_Materia`,`Lectivo`),
  KEY `fk_cursoscantidad_profesor1_idx` (`legajoProfesor`),
  KEY `fk_cursoscantidad_curso1_idx` (`Cod_Curso`,`Cod_Carrera`),
  KEY `fk_cursoscantidad_materia1_idx` (`Cod_Materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE IF NOT EXISTS `dia` (
  `Dia` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`Dia`,`Descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE IF NOT EXISTS `examenes` (
  `ModalidadInscripcion` int(11) DEFAULT NULL,
  `Fecha1` date NOT NULL,
  `Fecha2` date NOT NULL,
  `Turno` varchar(45) NOT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  PRIMARY KEY (`Turno`,`Fecha2`,`Fecha1`,`Cod_Materia`,`Cod_Carrera`),
  KEY `fk_examenes_materia1_idx` (`Cod_Materia`,`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE IF NOT EXISTS `hora` (
  `Hora_desde` time NOT NULL,
  `Hora_hasta` time NOT NULL,
  PRIMARY KEY (`Hora_desde`,`Hora_hasta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `Dia` varchar(45) NOT NULL,
  `Hora_desde` time NOT NULL,
  `Hora_hasta` time NOT NULL,
  `legajoProfesor` int(11) NOT NULL,
  `Cod_Curso` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Lectivo` int(11) NOT NULL,
  PRIMARY KEY (`Dia`,`Hora_desde`,`Hora_hasta`,`legajoProfesor`,`Cod_Curso`,`Cod_Carrera`,`Cod_Materia`,`Lectivo`),
  KEY `fk_horario_hora1_idx` (`Hora_desde`,`Hora_hasta`),
  KEY `fk_horario_cursoscantidad1_idx` (`legajoProfesor`,`Cod_Curso`,`Cod_Carrera`,`Cod_Materia`,`Lectivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libromatriz`
--

CREATE TABLE IF NOT EXISTS `libromatriz` (
  `Regularizado` varchar(45) DEFAULT NULL,
  `Fecha_Reg` date DEFAULT NULL,
  `Nota_Final` int(11) DEFAULT NULL,
  `Fecha_Final` date DEFAULT NULL,
  `LibroActExamen` int(11) DEFAULT NULL,
  `FolioActExamen` int(11) DEFAULT NULL,
  `Folio_Matriz` int(11) DEFAULT NULL,
  `Libro_Matriz` int(11) DEFAULT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  `Alumnos_Legajo` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Materia`,`Cod_Carrera`,`Alumnos_Legajo`),
  KEY `fk_LibroMatriz_Alumnos1_idx` (`Alumnos_Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `Cod_Materia` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `ModalidadCursada` varchar(45) DEFAULT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Materia`,`Cod_Carrera`),
  KEY `fk_materia_carrera1_idx` (`Cod_Carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_examenes`
--

CREATE TABLE IF NOT EXISTS `nota_examenes` (
  `Fecha_Examen` date NOT NULL,
  `Nota_Final` int(11) DEFAULT NULL,
  `Asistencia` varchar(45) DEFAULT NULL,
  `Fecha_inscripcion` date NOT NULL,
  `LibroActExamen` int(11) DEFAULT NULL,
  `FolioActExamen` int(11) DEFAULT NULL,
  `SemiPresencial` varchar(45) DEFAULT NULL,
  `Turno` varchar(45) DEFAULT NULL,
  `ModalidadInscripcion` varchar(45) DEFAULT NULL,
  `Cod_Materia` int(11) NOT NULL,
  `Cod_Carrera` int(11) NOT NULL,
  `Alumnos_Legajo` int(11) NOT NULL,
  PRIMARY KEY (`Fecha_Examen`,`Cod_Materia`,`Cod_Carrera`,`Alumnos_Legajo`),
  KEY `fk_Nota_Examenes_materia1_idx` (`Cod_Materia`,`Cod_Carrera`),
  KEY `fk_Nota_Examenes_Alumnos1_idx` (`Alumnos_Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `legajoProfesor` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `CP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`legajoProfesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `correlativa`
--
ALTER TABLE `correlativa`
  ADD CONSTRAINT `fk_correlativa_materia1` FOREIGN KEY (`Cod_Materia`) REFERENCES `materia` (`Cod_Materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_correlativa_carrera1` FOREIGN KEY (`Cod_Carrera`) REFERENCES `carrera` (`Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_carrera1` FOREIGN KEY (`Cod_Carrera`) REFERENCES `carrera` (`Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cursosalumnos`
--
ALTER TABLE `cursosalumnos`
  ADD CONSTRAINT `fk_cursosAlumnos_materia1` FOREIGN KEY (`Cod_Materia`) REFERENCES `materia` (`Cod_Materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cursosAlumnos_carrera1` FOREIGN KEY (`Cod_Carrera`) REFERENCES `carrera` (`Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cursosAlumnos_Alumnos1` FOREIGN KEY (`Alumnos_Legajo`) REFERENCES `alumnos` (`Legajo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cursosAlumnos_curso1` FOREIGN KEY (`Cod_Curso`) REFERENCES `curso` (`Cod_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `fk_examenes_materia1` FOREIGN KEY (`Cod_Materia`, `Cod_Carrera`) REFERENCES `materia` (`Cod_Materia`, `Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`legajoProfesor`) REFERENCES `cursoscantidad` (`legajoProfesor`),
  ADD CONSTRAINT `fk_horarios_dia` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_horario_cursoscantidad1` FOREIGN KEY (`legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`, `Lectivo`) REFERENCES `cursoscantidad` (`legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`, `Lectivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_horario_hora1` FOREIGN KEY (`Hora_desde`, `Hora_hasta`) REFERENCES `hora` (`Hora_desde`, `Hora_hasta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `libromatriz`
--
ALTER TABLE `libromatriz`
  ADD CONSTRAINT `fk_LibroMatriz_materia1` FOREIGN KEY (`Cod_Materia`, `Cod_Carrera`) REFERENCES `materia` (`Cod_Materia`, `Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LibroMatriz_Alumnos1` FOREIGN KEY (`Alumnos_Legajo`) REFERENCES `alumnos` (`Legajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `fk_materia_carrera1` FOREIGN KEY (`Cod_Carrera`) REFERENCES `carrera` (`Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nota_examenes`
--
ALTER TABLE `nota_examenes`
  ADD CONSTRAINT `fk_Nota_Examenes_materia1` FOREIGN KEY (`Cod_Materia`, `Cod_Carrera`) REFERENCES `materia` (`Cod_Materia`, `Cod_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Nota_Examenes_Alumnos1` FOREIGN KEY (`Alumnos_Legajo`) REFERENCES `alumnos` (`Legajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
