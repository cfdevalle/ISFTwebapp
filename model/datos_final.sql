

--
-- Volcar la base de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(1234, 'Dante', 'Mendoza', 'Barnacle 1998', 'Merlo', '1945', '1992', 'M', '1234', 10),
(6030, 'Sebastian', 'Marquez', 'Calalunia 5766', 'Moreno', '1744', '2013', 'H', '6030', 2),
(6030, 'Sebastian', 'Marquez', 'Calalunia 5766', 'Moreno', '1744', '2013', 'H', '6030', 10),
(6999, 'Aldana', 'Ojeda', 'Matoya 1987', 'Merlo', '1722', '1998', 'F', '6999', 10);

insert into alumnos (legajo,nombre,apellido,direccion,localidad,cp,lectivo,sexo,pwd,cod_carrera) values (6869,'facundo','devalle','Abello2176','1744','2013','masculino','facu1102',10);

--
-- Volcar la base de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Cod_Carrera`, `Nombre`, `Descripcion`) VALUES
(1, 'Servicios Gastronomicos', 'Servicios Gastronomicos'),
(2, 'Instalacion y Manteminiento', 'Instalacion y Manteminiento'),
(3, 'Industria y Textil', 'Industria y Textil'),
(4, 'Turismo', 'Turismo'),
(5, 'Administracion General', 'Administracion General'),
(6, 'Seguridad e Higiene Industrial', 'Seguridad e Higiene Industrial'),
(7, 'Logistica', 'Logistica'),
(8, 'Desarrollo de Aplicaciones', 'Desarrollo de Aplicaciones'),
(9, 'Automatizacion y Robotica', 'Automatizacion y Robotica'),
(10, 'Analista de Sistemas', 'Tecnicatura Superior en Analisis de Sistemas');
--
-- Volcar la base de datos para la tabla `materia`
--

INSERT INTO `materia` (`Cod_Materia`, `Nombre`, `ModalidadInscripcion`, `Cod_Carrera`) VALUES
(101, 'Analisis Matematico I', 'LI', 10),
(102, 'Algebra', 'LI', 10),
(103, 'Programacion I', 'LI', 10),
(104, 'Introduccion a Los Sistemas de Informacion', 'LI', 10),
(106, 'Administracion de Las Organizaciones', 'LI', 10),
(107, 'Ingles Tecnico I', 'LI', 10),
(109, 'Arquitectura del Computador', 'LI', 10),
(110, 'Metodologia de La Investigacion', 'LI', 10),
(111, 'EDI 1', 'LI', 10),
(201, 'Analisis Matematico II', 'LI', 10),
(202, 'Probabilidad y Estadistica', 'LI', 10),
(203, 'Programacion II', 'LI', 10),
(204, 'Sistemas Operativos', 'LI', 10),
(205, 'Sistemas de Informacion I', 'LI', 10),
(207, 'Ingles Tecnico II', 'LI', 10),
(208, 'Bases de Datos', 'LI', 10),
(209, 'EDI 2', 'LI', 10),
(301, 'Sistemas de Informacion II', 'LI', 10),
(304, 'Teleinformatica', 'LI', 10),
(305, 'Investigacion Operativa', 'LI', 10),
(306, 'Economia Empresarial', 'LI', 10),
(307, 'Practica Profesional', 'PR', 10),
(308, 'EDI 3', 'LI', 10);
--
-- Volcar la base de datos para la tabla `correlativa`
--

INSERT INTO `correlativa` (`Cod_Correlativa`, `Cod_Materia`, `Cod_Carrera`) VALUES
(101, 201, 10),
(101, 202, 10),
(102, 202, 10),
(103, 203, 10),
(109, 204, 10),
(104, 205, 10),
(106, 205, 10),
(107, 207, 10),
(103, 208, 10),
(111, 209, 10),
(205, 301, 10),
(204, 304, 10),
(201, 305, 10),
(202, 305, 10),
(203, 305, 10),
(205, 306, 10),
(110, 307, 10),
(203, 307, 10),
(205, 307, 10),
(208, 307, 10),
(209, 308, 10);

--
-- Volcar la base de datos para la tabla `curso`
--

INSERT INTO `curso` (`Descripcion`, `Turno`, `Cod_Curso`, `Cod_Carrera`) VALUES
('Primero A', 'M', 11, 10),
('Primero B', 'M', 12, 10),
('Primero A', 'T', 13, 10),
('Primero B', 'T', 14, 10),
('Segundo A', 'M', 21, 10),
('Segundo B', 'M', 22, 10),
('Segundo A', 'T', 23, 10),
('Segundo B', 'T', 24, 10),
('Tercero A', 'M', 31, 10),
('Tercero B', 'M', 32, 10),
('Tercero A', 'T', 33, 10),
('Tercero B', 'T', 34, 10);


--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 1, 9, 'PR', 'M', 'CO', 101, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 102, 10, 1234, 11, 2011),
(1, 1, 10, 'PR', 'M', 'CO', 103, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 104, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 106, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 107, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 109, 10, 1234, 11, 2011),
(1, 1, 9, 'PR', 'M', 'CO', 110, 10, 1234, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 111, 10, 1234, 11, 2011),
(1, 1, 9, 'PR', 'M', 'CO', 201, 10, 1234, 21, 2012),
(1, 1, 10, 'PR', 'M', 'CO', 202, 10, 1234, 21, 2012),
(1, 1, 10, 'PR', 'M', 'CO', 203, 10, 1234, 21, 2012),
(1, 1, 10, 'PR', 'M', 'CO', 204, 10, 1234, 21, 2012),
(1, 1, 8, 'PR', 'M', 'CO', 205, 10, 1234, 21, 2012),
(1, 1, 8, 'PR', 'M', 'CO', 207, 10, 1234, 21, 2012),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 1234, 21, 2012),
(1, 1, 9, 'PR', 'M', 'CO', 209, 10, 1234, 21, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 301, 10, 1234, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 304, 10, 1234, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 305, 10, 1234, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 6030, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 6030, 31, 2012),
(NULL, NULL, NULL, 'LI', 'M', 'CO', 308, 10, 1234, 32, 2013),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 6030, 31, 2012);



--
-- Volcar la base de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`ModalidadInscripcion`, `Fecha1`, `Fecha2`, `Turno`, `Cod_Materia`, `Cod_Carrera`) VALUES
(NULL, '2013-11-15', '2013-11-12', 'TM', 111, 10),
(NULL, '2013-11-14', '2013-11-13', 'TM', 110, 10),
(NULL, '2013-11-14', '2013-11-13', 'TM', 209, 10),
(NULL, '2013-11-13', '2013-11-14', 'TM', 109, 10),
(NULL, '2013-11-13', '2013-11-14', 'TM', 208, 10),
(NULL, '2013-11-12', '2013-11-15', 'TM', 107, 10),
(NULL, '2013-11-12', '2013-11-15', 'TM', 207, 10),
(NULL, '2013-11-12', '2013-11-15', 'TM', 308, 10),
(NULL, '2013-11-09', '2013-11-16', 'TM', 106, 10),
(NULL, '2013-11-09', '2013-11-16', 'TM', 205, 10),
(NULL, '2013-11-09', '2013-11-16', 'TM', 307, 10),
(NULL, '2013-11-08', '2013-11-19', 'TM', 104, 10),
(NULL, '2013-11-08', '2013-11-19', 'TM', 204, 10),
(NULL, '2013-11-08', '2013-11-19', 'TM', 306, 10),
(NULL, '2013-11-07', '2013-11-20', 'TM', 103, 10),
(NULL, '2013-11-07', '2013-11-20', 'TM', 203, 10),
(NULL, '2013-11-07', '2013-11-20', 'TM', 305, 10),
(NULL, '2013-11-06', '2013-11-21', 'TM', 102, 10),
(NULL, '2013-11-06', '2013-11-21', 'TM', 202, 10),
(NULL, '2013-11-06', '2013-11-21', 'TM', 304, 10),
(NULL, '2013-11-05', '2013-11-22', 'TM', 101, 10),
(NULL, '2013-11-05', '2013-11-22', 'TM', 201, 10),
(NULL, '2013-11-05', '2013-11-22', 'TM', 301, 10),
(NULL, '2013-11-15', '2013-11-12', 'TN', 103, 10),
(NULL, '2013-11-14', '2013-11-13', 'TN', 110, 10),
(NULL, '2013-11-14', '2013-11-13', 'TN', 209, 10),
(NULL, '2013-11-13', '2013-11-14', 'TN', 109, 10),
(NULL, '2013-11-13', '2013-11-14', 'TN', 208, 10),
(NULL, '2013-11-12', '2013-11-15', 'TN', 102, 10),
(NULL, '2013-11-12', '2013-11-15', 'TN', 207, 10),
(NULL, '2013-11-12', '2013-11-15', 'TN', 308, 10),
(NULL, '2013-11-09', '2013-11-16', 'TN', 106, 10),
(NULL, '2013-11-09', '2013-11-16', 'TN', 205, 10),
(NULL, '2013-11-09', '2013-11-16', 'TN', 307, 10),
(NULL, '2013-11-08', '2013-11-19', 'TN', 101, 10),
(NULL, '2013-11-08', '2013-11-19', 'TN', 204, 10),
(NULL, '2013-11-08', '2013-11-19', 'TN', 306, 10),
(NULL, '2013-11-07', '2013-11-20', 'TN', 111, 10),
(NULL, '2013-11-07', '2013-11-20', 'TN', 203, 10),
(NULL, '2013-11-07', '2013-11-20', 'TN', 305, 10),
(NULL, '2013-11-06', '2013-11-21', 'TN', 107, 10),
(NULL, '2013-11-06', '2013-11-21', 'TN', 202, 10),
(NULL, '2013-11-06', '2013-11-21', 'TN', 304, 10),
(NULL, '2013-11-05', '2013-11-22', 'TN', 104, 10),
(NULL, '2013-11-05', '2013-11-22', 'TN', 201, 10),
(NULL, '2013-11-05', '2013-11-22', 'TN', 301, 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', 6, '2011-12-01', 111, 222, 83, 5, 101, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 41, 5, 102, 10, 1234),
(1, '2011-11-01', 10, '2011-12-01', 111, 222, 43, 5, 103, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 69, 5, 104, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 46, 15, 106, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 34, 5, 107, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 38, 5, 109, 10, 1234),
(1, '2011-11-01', 6, '2011-12-01', 111, 222, 82, 5, 110, 10, 1234),
(1, '2011-11-01', 8, '2011-12-01', 111, 222, 29, 5, 111, 10, 1234),
(1, '2012-11-01', 9, '2012-12-01', 111, 222, 166, 19, 201, 10, 1234),
(1, '2012-11-01', 10, '2012-12-01', 111, 222, 193, 19, 202, 10, 1234),
(1, '2012-11-01', 10, '2012-12-01', 111, 222, 132, 19, 203, 10, 1234),
(1, '2012-11-01', 10, '2012-12-01', 111, 222, 158, 19, 204, 10, 1234),
(1, '2012-11-01', 8, '2012-12-01', 111, 222, 144, 19, 205, 10, 1234),
(1, '2012-11-01', NULL, '2012-12-01', 111, 222, 147, 19, 207, 10, 1234),
(1, '2012-11-01', NULL, '2012-12-01', 111, 222, 197, 19, 208, 10, 1234),
(1, '2012-11-01', NULL, '2012-12-01', 111, 222, 174, 19, 209, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 301, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 304, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 305, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 306, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 307, 10, 1234),
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 308, 10, 1234);


--
-- Volcar la base de datos para la tabla `nota_examen`
--

INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-12', NULL, 1, '2013-11-02', NULL, NULL, 0, 'TM', 'PR', 207, 10, 1234);


