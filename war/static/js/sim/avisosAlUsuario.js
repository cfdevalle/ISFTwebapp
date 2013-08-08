function confirmarCambios(){
							alert("Se ha inscripto satifactoriamente");		
}

function pdf() {
	var fecha
	var doc = new jsPDF();
	doc.setFontSize(22);
	doc.text(20, 20, 'Prueba de Comprobante de Inscripcion');
	
	doc.setFontSize(16);
	doc.text(20, 30, 'Carrera: Tecnicatura Superior en Analisis de Sistemas');
	doc.text(20, 40, 'Estudiante: Aldana Ojeda.');
	doc.text(20, 50, 'Legajo: 6999');
	doc.setFontSize(18);
	doc.text(20, 70, 'Prueba de fontsize:');
	doc.setFontSize(16);
	doc.text(20, 80, '"...y en ese momento observe como empujaban a esa chica, ella cayo en la');
	doc.text(20, 90, 'puerta del tren mientras su pareja solo se limitaba a observar, sin hacer');
	doc.text(20, 100, 'nada era la actitud de un sujeto miedoso por que temia salir en defensa');
	doc.text(20, 110, 'de ella, era la actitud de un hombre sin honor, la actitud de un cobarde..."');
	doc.text(20, 120, 'Parrafo extraido de "El Relato de un Cobarde"');
	doc.text(20, 130, 'para la columna "hoy en dia" escrito por Aldana Ojeda para el diario escolar');
	doc.text(20, 140, '"El Despertar."');
	doc.text(20, 150, 'FIN DE PRUEBAS.');
	
	
	// Output as Data URI
	doc.output('datauri');
}