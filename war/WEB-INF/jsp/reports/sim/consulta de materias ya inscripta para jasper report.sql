SELECT ca.Cod_Materia, ma.Nombre, ca.SituacionAcademica, ca.ModalidadInscripcion, cu.Descripcion, ca.Turno
FROM  cursos_alumnos ca, curso cu,  materia ma
WHERE ca.Cod_Carrera=$P{p_cod_carrera}
AND ca.Legajo=$P{p_legajo}
AND ca.Cod_Curso=cu.Cod_Curso
AND ca.Cod_Materia=ma.Cod_Materia
AND ca.Lectivo=$P{p_anio_actual}