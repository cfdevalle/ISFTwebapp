DELETE FROM libro_matriz;
DELETE FROM materia;
DELETE FROM carrera;
DELETE FROM alumnos;

INSERT INTO carrera(Cod_carrera,Nombre,Descripcion) VALUES (10,"Sistemas","Tecnico en sistemas de informacion");

INSERT INTO materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) VAlUES (123,"Practica Profesional","SI",10);
INSERT INTO materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) VAlUES (122,"EDI3","SI",10);
INSERT INTO materia(Cod_Materia,Nombre,ModalidadInscripcion,Cod_Carrera) VAlUES (121,"Programacion II","SI",10);

INSERT INTO alumnos(Legajo,Nombre,Apellido,Direccion,Localidad,CP,Lectivo,Sexo,pwd,Cod_carrera) VALUES (1234,"Nicolas","Callejas","Bolivia 4829","Moreno","1744","2013","M","123456",10);
INSERT INTO alumnos(Legajo,Nombre,Apellido,Direccion,Localidad,CP,Lectivo,Sexo,pwd,Cod_carrera) VALUES (1111,"Facundo","Devalle","Trucha 123","Moreno","1744","2013","M","123456",10);

INSERT INTO libro_matriz(Regularizado,Fecha_Reg,Nota_Final,Fecha_Final,LibroActExamen,FolioActExamen,Folio_Matriz,Libro_Matriz,Cod_Materia,Cod_Carrera,Legajo) 
VALUES (1,"2013-12-30",4,"2013-12-14",20,20,20,20,122,10,1234);
INSERT INTO libro_matriz(Regularizado,Fecha_Reg,Nota_Final,Fecha_Final,LibroActExamen,FolioActExamen,Folio_Matriz,Libro_Matriz,Cod_Materia,Cod_Carrera,Legajo) 
VALUES (1,"2013-12-30",7,"2013-12-14",20,20,20,20,123,10,1234);
INSERT INTO libro_matriz(Regularizado,Fecha_Reg,Nota_Final,Fecha_Final,LibroActExamen,FolioActExamen,Folio_Matriz,Libro_Matriz,Cod_Materia,Cod_Carrera,Legajo) 
VALUES (0,"2013-12-30",7,"2013-12-14",20,20,20,20,121,10,1234);

INSERT INTO libro_matriz(Regularizado,Fecha_Reg,Nota_Final,Fecha_Final,LibroActExamen,FolioActExamen,Folio_Matriz,Libro_Matriz,Cod_Materia,Cod_Carrera,Legajo) 
VALUES (1,"2013-12-30",5,"2013-12-14",20,20,20,20,123,10,1111);
