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
