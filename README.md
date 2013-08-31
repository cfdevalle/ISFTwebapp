ISFTwebapp
==========

Proyecto de alumnos de 3er año de la carrera de Analista de Sistemas del ISFT Nº 179 de Moreno, Bs. As.

El fin del mismo es desarrollar un sistema que permita realizar inscripciones a finales, inscripciones a materias,
ingreso de notas por parte de los docentes y consultas del estado académico del alumno para dicho Instituto.

================================================================================================================

Instrucciones importantes para el desarrollo:

Una vez clonado el repositorio se deben copiar los archivos .dist en la misma carpeta donde se encuentra y eliminar
esa extensión.

Por ejemplo:

el archivo ant-enviroment.properties.dist que se encuentra dentro de la carpeta properties del proyecto, debe ser 
copiado y quitarle el .dist, por lo que quedarían 2 archivos dentro de la carpeta properties, el archivo mencionado y
el nuevo archivo ant-enviroment.properties (sin .dist).


Al hacer esto nos aseguramos que los cambios locales en archivos de configuración que dependen de cada desarrollador,
no alterarán el repositorio.

Se debe hacer esto con todos los archivos .dist antes de empezar a desarrollar. Esta es la lista de los archivos que 
se deben copiar:

/properties/ant-enviroment.properties.dist

build.xml.dist
/**
 * FIXME: ingnorar del git
 */
/netbeans.dist (es una carpeta)


======================================================================================================================

NO MODIFICAR NI ELIMINAR LOS ARCHIVOS/CARPETAS .dist NI CAMBIAR LA EXTENSIÓN DE ESOS ARCHIVOS/CARPETAS. COPIARLOS Y
AL ARCHIVO/CARPETA COPIADA ELIMINARLE LA EXTENSIÓN .dist

======================================================================================================================

NUEVAS CONFIGURACIONES 24.08.2013 By Sebastian Marquez:

JASPER REPORT:
se agregraon lineas de configuracion para el JasperReport en el archivo /build.xml.dist (cada desarollador debe actualizar su build.xml)
hay 2 configuraciones nuevas que tiene un comentario html:
<!-- NUEVO CONFIG JASPER -->
//... codigo nuevo
<!-- fin NUEVO CONFIG JASPER -->

CONEXION A BASE DE DATOS:
se agregó el archivo /src/org/isft/web/conexionDb.properties.dist
cada desarrollador tiene que copiar este archivo y crear uno nuevo llamado /src/org/isft/web/conexionDb.properties
En este archivo vamos a configurar nuestro acceso a labase de datos:

origen_datos=isftwebappfinal
user=root
password=

En general si importamos el archivo /model/isftwebappFinal.sql se crea la db "isftwebappfinal" con todas las tablas
por ahora sin datos insertados. esta base de datos coincide con la propiedad "origen_datos",
hacer lo mismo con usuario y contraseña

FIXME: AL GRUPO QUE SE ENCARGA DE IGNORAR LOS ARCHIVOS, POR FAVOR ELIMINAR /src/org/isft/web/conexionDb.properties Y desversionarlo del git.
dejar solo /src/org/isft/web/conexionDb.properties.dist





