
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7000, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7000),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7000),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7000),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7000);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7000, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7000, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7000, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7000, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7000, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7000, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7000, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7001, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7001),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7001),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7001),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7001);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7001, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7001, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7001, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7001, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7001, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7001, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7001, 31, 2012);

--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7002, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7002),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7002),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7002),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7002);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7002, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7002, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7002, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7002, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7002, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7002, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7002, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7003, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7003),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7003),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7003),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7003);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7003, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7003, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7003, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7003, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7003, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7003, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7003, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7004, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7004),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7004),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7004),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7004);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7004, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7004, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7004, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7004, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7004, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7004, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7004, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7005, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7005),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7005),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7005),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7005);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7005, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7005, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7005, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7005, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7005, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7005, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7005, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7006, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7006),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7006),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7006),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7006);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7006, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7006, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7006, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7006, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7006, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7006, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7006, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7007, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7007),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7007),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7007),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7007);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7007, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7007, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7007, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7007, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7007, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7007, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7007, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7008, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7008),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7008),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7008),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7008);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7008, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7008, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7008, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7008, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7008, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7008, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7008, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7009, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7009),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7009),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7009),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7009);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7009, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7009, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7009, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7009, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7009, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7009, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7009, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7010, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7010),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7010),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7010),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7010);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7010, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7010, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7010, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7010, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7010, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7010, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7010, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7011, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7011),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7011),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7011),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7011);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7011, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7011, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7011, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7011, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7011, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7011, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7011, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7012, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7012),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7012),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7012),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7012);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7012, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7012, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7012, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7012, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7012, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7012, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7012, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7013, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7013),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7013),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7013),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7013);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7013, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7013, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7013, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7013, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7013, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7013, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7013, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7014, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7014),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7014),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7014),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7014);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7014, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7014, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7014, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7014, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7014, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7014, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7014, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7015, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7015),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7015),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7015),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7015);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7015, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7015, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7015, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7015, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7015, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7015, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7015, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7016, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7016),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7016),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7016),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7016);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7016, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7016, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7016, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7016, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7016, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7016, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7016, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7017, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7017),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7017),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7017),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7017);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7017, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7017, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7017, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7017, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7017, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7017, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7017, 31, 2012);
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7018, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7018),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7018),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7018),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7018);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7018, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7018, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7018, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7018, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7018, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7018, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7018, 31, 2012);

--
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7019, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7019),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7019),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7019),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7019);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7019, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7019, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7019, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7019, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7019, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7019, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7019, 31, 2012);
--
--
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(7020, 'NOMBRE ', 'APELLIDO', 'DIRECCION', 'Moreno', '1744', '2013', 'H', '123456', 10);

--
-- Volcar la base de datos para la tabla `libro_matriz`
--

INSERT INTO `libro_matriz` (`Regularizado`, `Fecha_Reg`, `Nota_Final`, `Fecha_Final`, `LibroActExamen`, `FolioActExamen`, `Folio_Matriz`, `Libro_Matriz`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 43, 5, 103, 10, 7020),
(1, '2011-11-01', 7, '2013-11-12', 110, 220, 83, 5, 207, 10, 7020),
(1, '2012-11-01', NULL, '2011-12-01', 122, 333, 197, 19, 208, 10, 7020),
(1, '2011-11-01', NULL, '2011-12-01', 111, 222, 41, 5, 209, 10, 7020);
--
-- Volcar la base de datos para la tabla `cursos_alumnos`
--

INSERT INTO `cursos_alumnos` (`Asistencia`, `Regularizado`, `Notareg`, `ModalidadInscripcion`, `Turno`, `SituacionAcademica`, `Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`, `Lectivo`) VALUES
(1, 7, 10, 'PR', 'M', 'CO', 103, 10, 7020, 11, 2011),
(1, 1, 5, 'PR', 'M', 'CO', 207, 10, 7020, 11, 2011),
(1, 1, 8, 'PR', 'M', 'CO', 208, 10, 7020, 21, 2011),
(1, 1, 6, 'PR', 'M', 'CO', 209, 10, 7020, 11, 2011),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 306, 10, 7020, 31, 2012),
(NULL, NULL, NULL, 'PR', NULL, 'CO', 307, 10, 7020, 31, 2012),
(NULL, NULL, NULL, 'LI', NULL, 'CO', 308, 10, 7020, 31, 2012);
--
-- Volcar la base de datos para la tabla `nota_examen`
--

INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7000),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7000),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7000);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7001),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7001),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7001);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7002),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7002),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7002);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7003),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7003),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7003);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7004),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7004),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7004);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7005),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7005),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7005);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7006),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7006),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7006);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7007),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7007),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7007);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7008),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7008),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7008);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7009),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7009),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7009);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7010),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7010),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7010);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7011),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7011),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7011);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7012),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7012),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7012);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7013),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7013),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7013);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7014),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7014),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7014);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7015),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7015),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7015);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7016),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7016),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7016);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7017),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7017),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7017);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7018),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7018),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7018);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7019),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7019),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7019);
INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-07', NULL, 1, '2013-11-07', NULL, NULL, 0, 'TM', 'PR', 103, 10, 7020),
('2013-11-12', 7, 1, '2013-11-04', 110, 220, 0, 'TM', 'PR', 207, 10, 7020),
('2013-11-14', NULL, 1, '2013-11-04', NULL, NULL, 0, 'TM', 'PR', 209, 10, 7020);