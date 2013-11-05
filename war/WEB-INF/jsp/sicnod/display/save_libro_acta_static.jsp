<%@page import="org.isft.logic.updater.AbmLibroMatriz"%>
<%@page import="org.isft.logic.updater.AbmNotaExamen"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="org.isft.web.servlets.frontController, org.isft.logic.updater.AbmAlumno"%>
<%@page import="org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>
<%

String carrera = request.getParameter("carrera");
String materia = request.getParameter("materia");
String fecha_examen = request.getParameter("fecha_examen");
String returnValue = "";
try {
	String[] LegajoList;
	LegajoList = (String[])request.getParameterValues("Legajo");
	String[] CalificacionList;
	CalificacionList = (String[])request.getParameterValues("Calificacion");
	String[] LibroList;
	LibroList = (String[])request.getParameterValues("Libro");
	String[] FolioList;
	FolioList = (String[])request.getParameterValues("Folio");
	System.out.println("TRY");
	if(CalificacionList.length > 0){
		for(int i = 0; i < CalificacionList.length; i++){

			HashMap hm = new HashMap();
			hm.put("materia", materia);
			hm.put("carrera", carrera);
			hm.put("fecha_examen", fecha_examen);

			hm.put("legajo", LegajoList[i]);
			hm.put("calificacion", CalificacionList[i]);
			hm.put("libro", LibroList[0]);
			hm.put("folio", FolioList[0]);

			AbmNotaExamen notaExamen = new AbmNotaExamen();
			notaExamen.update(hm);

			AbmLibroMatriz libroMatriz = new AbmLibroMatriz();
			libroMatriz.update(hm);		
			returnValue = "OK";
		}
	}else{
		returnValue = "NO_RESULT";
	}
} catch (Exception exc) {
	returnValue = "ERROR";
	System.out.println("CATCH!");
	throw new Exception(exc);
}
%>
<%=returnValue%>
