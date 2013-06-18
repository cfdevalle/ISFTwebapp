ISFTwebapp
==========

Proyecto de alumnos de 3er año de la carrera de Analista de Sistemas del ISFT Nº 179 de Moreno, Bs. As.

El fin del mismo es desarollar un sistema que permita realizar inscripciones a finales, inscripciones a materias,
ingreso de notas por parte de los docentes y consultas del estado académico del alumno para dicho Instituto.

================================================================================================================

Instrucciones importantes para el desarrollo:

Una vez clonado el repositorio se deben copiar los archivos .dist en la misma carpeta donde se encuentra y eliminar
esa extensión.

Por ejemplo:

el archivo ant-enviroment.properties.dist que se encuentra dentro de la carpeta properties del proyecto, debe ser 
copiado y quitarle el .dist, por lo que quedrían 2 archivos dentro de la carpeta properties, el archivo mencionado y
el nuevo archivo ant-enviroment.properties (sin .dist).


Al hacer esto nos aseguramos que los cambios locales en archivos de configuración que dependen de cada desarrollador,
no alterarán el repositorio.

Se debe hacer esto con todos los archivos .dist antes de empezar a desarrollar. Esta es la lista de los archivos que 
se deben copiar:

/properties/ant-enviroment.properties.dist
build.xml.dist
/netbeans.dist (es una carpeta)


NO MODIFICAR NI ELIMINAR LOS ARCHIVOS/CARPETAS .dist NI CAMBIAR LA EXTENSIÓN DE ESOS ARCHIVOS/CARPETAS. COPIARLOS Y
AL ARCHIVO/CARPETA COPIADA ELIMINARLE LA EXTENSIÓN .dist
