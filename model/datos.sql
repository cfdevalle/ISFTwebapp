-- CARRERAS 
-- insert into carrera(Cod_Carrera,Nombre,Descripcion) values(1,'sistemas','Carrera para hacer sistemas informaticos');
-- insert into carrera(Cod_Carrera,Nombre,Descripcion) values(2,'mantenimiento','Carrera para reperar pc');

INSERT INTO `carrera` (`Cod_Carrera`, `Nombre`, `Descripcion`) VALUES
(1, 'Analista de Sistemas', 'Analista de Sistemas'),
(2, 'Instalacion y Manteminiento', 'Instalacion y Manteminiento'),
(3, 'Industria y Textil', 'Industria y Textil'),
(4, 'Turismo', 'Turismo'),
(5, 'Administracion General', 'Administracion General'),
(6, 'Seguridad e Higiene Industrial', 'Seguridad e Higiene Industrial'),
(7, 'Logistica', 'Logistica'),
(8, 'Desarrollo de Aplicaciones', 'Desarrollo de Aplicaciones'),
(9, 'Automatizacion y Robotica', 'Automatizacion y Robotica'),
(10, 'Servicios Gastronomicos', 'Servicios Gastronomicos');
-- ALUMNOS
INSERT INTO `alumnos` (`Legajo`, `Nombre`, `Apellido`, `Direccion`, `Localidad`, `CP`, `Lectivo`, `Sexo`, `pwd`, `Cod_Carrera`) VALUES
(6030, 'Sebastian', 'Marquez', 'Calaluña 5766', 'Moreno', '1744', '2013', 'H', '6030', 1),
(6030, 'Sebastian', 'Marquez', 'Calaluña 5766', 'Moreno', '1744', '2013', 'H', '6030', 2),
(6032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6032', 1),
(6033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6033', 2),
(6034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6034', 1);
-- CAMBIAR ModalidadCursada por ModalidadInscripcion
-- MATERIAS
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(101,'Analisis Matematico','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(102,'Algebra','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(103,'Programacion 1','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(104,'Introduccion a los sistemas de informacion','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(106,'Administracion de las organizaciones','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(107,'Ingles Tecnico 1','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(109,'Arquitectura del Computador','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(110,'Metodologia de la investigacion','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(111,'Espacio Insitucional 1','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(201,'Analisis Matematico 2','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(202,'Probabilidad y Estadistica','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(203,'Programacion 2','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(204,'Sistemas Operativos','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(205,'Sistemas de informacion 1','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(207,'Ingles tenico 2','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(208,'Base de datos','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(209,'Espacio Institucional 2','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(301,'Sistemas de informacion 2','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(304,'Teleinformatica','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(305,'Investigacion Operativa','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(306,'Economia Empresarial','LI',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(307,'Practica Profesional','PR',1);
insert into materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) values(308,'Espacio Institucional 3','LI',1);
-- EXAMENES
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TM',101,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TM',102,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TM',103,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TM',104,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TM',106,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TM',107,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-13','2013-11-14','TM',109,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-14','2013-11-13','TM',110,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-15','2013-11-12','TM',111,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TM',201,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TM',202,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TM',203,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TM',204,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TM',205,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TM',207,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-13','2013-11-14','TM',208,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-14','2013-11-13','TM',209,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TM',301,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TM',304,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TM',305,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TM',306,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TM',307,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TM',308,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TN',104,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TN',107,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TN',111,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TN',101,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TN',106,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TN',102,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-13','2013-11-14','TN',109,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-14','2013-11-13','TN',110,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-15','2013-11-12','TN',103,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TN',201,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TN',202,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TN',203,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TN',204,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TN',205,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TN',207,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-13','2013-11-14','TN',208,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-14','2013-11-13','TN',209,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-05','2013-11-22','TN',301,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-06','2013-11-21','TN',304,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-07','2013-11-20','TN',305,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-08','2013-11-19','TN',306,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-09','2013-11-16','TN',307,1);
insert into examenes (Fecha1,Fecha2,Turno,Cod_Materia,Cod_Carrera) values ('2013-11-12','2013-11-15','TN',308,1);
-- LIBRO MATRIZ
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,101,TRUE,'2010-11-15',1);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,102,TRUE,'2010-11-15',2);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,103,TRUE,'2010-11-15',3);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,104,TRUE,'2010-11-15',4);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,106,TRUE,'2010-11-15',5);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,107,TRUE,'2010-11-15',6);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,109,TRUE,'2010-11-15',7);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,110,TRUE,'2010-11-15',8);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,111,TRUE,'2010-11-15',10);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,201,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,202,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,203,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,204,TRUE,'2010-11-15',4);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,205,TRUE,'2010-11-15',5);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,207,TRUE,'2010-11-15',6);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,208,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,209,TRUE,'2010-11-15',8);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,301,TRUE,'2010-11-15',1);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,304,TRUE,'2010-11-15',2);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,305,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,306,TRUE,'2010-11-15',4);
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg) 
values (6030,1,307,TRUE,'2010-11-15');
insert into libro_matriz (Legajo,Cod_Carrera,Cod_Materia,Regularizado,Fecha_Reg,Nota_Final) 
values (6030,1,308,TRUE,'2010-11-15',5);
-- CORRELATIVA
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,201,101);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,202,101);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,202,102);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,203,103);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,204,109);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,205,104);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,205,106);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,207,107);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,208,103);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,209,111);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,301,205);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,304,204);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,305,201);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,305,202);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,305,203);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,306,205);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,307,110);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,307,203);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,307,205);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,307,208);
insert into correlativa (Cod_Carrera,Cod_Materia,Cod_Correlativa) values (1,308,209);
insert into curso (Descripcion,Turno,Cod_Curso,Cod_Carrera) values ('primer curso creado','N',1,1);
-- FALTA AGREGAR LECTIVO AL MODELO
-- CURSO ALUMNOS
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,101,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,102,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,103,'PR','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,104,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,106,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,107,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,109,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,110,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,111,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,201,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,202,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,203,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,204,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,205,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,207,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,208,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,209,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,301,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,304,'PR','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,305,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,306,'LI','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,307,'PR','CO',2012);
insert into cursos_alumnos (Cod_Curso,Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,SituacionAcademica,Lectivo) 
values (1,6030,1,308,'LI','CO',2012);