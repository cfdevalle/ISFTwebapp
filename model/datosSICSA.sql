--
-- ALUMNO DE TESTEO
--



INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(6360, 'Nicolas', 'Garcia', 'Brasil 1935', 'Merlo', '1722', '2010', 'M', '6360', 10);


--
-- NOTAS DE FINAL
--

INSERT INTO `nota_examen` (`Fecha_Examen`, `Nota_Final`, `Asistencia`, `Fecha_inscripcion`, `LibroActExamen`, `FolioActExamen`, `SemiPresencial`, `Turno`, `ModalidadInscripcion`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) VALUES
('2013-11-15', 5, 1, '2013-11-07', 1, 1, 0, 'TM', 'PR', 107, 10, 6360),
('2013-11-16', 2, 1, '2013-11-07', 2, 1, 0, 'TM', 'PR', 106, 10, 6360);



--
-- RESPUESTAS y MENSAJES
--

INSERT INTO `mensaje` (`id_mensaje`, `titulo`, `mensaje`, `fecha`, `respondido`, `Legajo`, `Cod_Carrera`) VALUES
(4, 'Mensaje test', 'Mensaje test', '2013-11-07 09:59:17', 1, 6360, 10);


INSERT INTO `respuesta_mensaje` (`id_respuesta`, `id_mensaje`, `respuesta`, `fecha_respuesta`) VALUES
(3, 4, 'Respuesta mensaje\r\n', '2013-11-07 10:18:28');