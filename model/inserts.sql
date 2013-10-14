-- Volcar la base de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Cod_Carrera`, `Nombre`, `Descripcion`) VALUES
(5, 'Administracion General', 'Administracion General'),
(10, 'Analista de Sistemas', 'Analista de Sistemas');
-- Volcar la base de datos para la tabla `alumnos`
--
INSERT INTO  `isftwebappfinal`.`alumnos` (
`Legajo` ,
`Nombre` ,
`Apellido` ,
`Direccion` ,
`Localidad` ,
`CP` ,
`Lectivo` ,
`Sexo` ,
`pwd` ,
`Cod_Carrera`
)
VALUES (
'5546',  'Sebastian',  'Marquez',  'Calaluña 5766',  'Moreno',  '1744',  '2013',  'H',  '123456',  '10'
);
INSERT INTO  `isftwebappfinal`.`alumnos` (
`Legajo` ,
`Nombre` ,
`Apellido` ,
`Direccion` ,
`Localidad` ,
`CP` ,
`Lectivo` ,
`Sexo` ,
`pwd` ,
`Cod_Carrera`
)
VALUES (
'5546',  'Sebastian',  'Marquez',  'Calaluña 5766',  'Moreno',  '1744',  '2013',  'H',  '123456',  '5'
);

--
-- Volcar la base de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Cod_Carrera`, `Nombre`, `Descripcion`) VALUES
(1, 'Servicios Gastronomicos', 'Servicios Gastronomicos'),
(2, 'Industria y Textil', 'Industria y Textil'),
(3, 'Instalacion y Manteminiento', 'Instalacion y Manteminiento'),
(4, 'Turismo', 'Turismo'),
(5, 'Administracion General', 'Administracion General'),
(6, 'Seguridad e Higiene Industrial', 'Seguridad e Higiene Industrial'),
(7, 'Logistica', 'Logistica'),
(8, 'Desarrollo de Aplicaciones', 'Desarrollo de Aplicaciones'),
(9, 'Automatizacion y Robotica', 'Automatizacion y Robotica'),
(10, 'Analista de Sistemas', 'Analista de Sistemas');
