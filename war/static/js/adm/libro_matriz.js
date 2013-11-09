var isIngresando=false;
var filaMod="";
var vecTabla=new Array("","txt_codMateria","txt_libroMatriz","txt_folioMatriz","txt_libroActExamen","txt_folioActExamen","txt_fechaReg","txt_regulariado","txt_fechaFinal","txt_notaFinal");
function buscarAlumno(legajo){
	$('#div_alumnos').load("adm.go?codPage=7001&legajo="+legajo);
}
function enviar(){
	legajo=document.getElementById('txt_legajo').value;
	buscarAlumno(legajo);
}
function checkKey(key){
	var unicode
	if (key.charCode)
		{unicode=key.charCode;}
	else
		{unicode=key.keyCode;}
			//alert(unicode); // Para saber que codigo de tecla presiono , descomentar
	if (unicode == 13){
		legajo=document.getElementById('txt_legajo').value;
		buscarAlumno(legajo);
	}
}
function accion(check){
	
	if (check.checked==true){
		opc=check.name.substr(0,3);
		if ((opc=="mod") && (!isIngresando)){
			isIngresando=true;
			fila=opc=check.name.substr(3,4);
			modificar(fila);
		}
		if ((opc=="eli") && (!isIngresando)){
			fila=opc=check.name.substr(3,4);
			eliminar(check);
		}
	}
}
function cancelar(){
	var am_legajo=document.getElementById("legajo").innerHTML;
	buscarAlumno(am_legajo);
	isIngresando=false;
}
function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}
function validarFecha(str){
	var vec=str.split("-");
	var ban=true;
	//console.log("Dia: "+vec[0]+"-Mes: "+vec[1]+"-Anio: "+vec[2]);
	var dia=((isNumber(vec[0]))&&(vec[0]<=31)) ? parseInt(vec[0]) : ban=false;
	var mes=((isNumber(vec[1]))&&(vec[1]<=12)) ? parseInt(vec[1]) : ban=false;
	var anio=((isNumber(vec[2]))&&((vec[2]<=2100)&&(vec[2]>=1950))) ? parseInt(vec[2]) : ban=false;
	if (ban){
		switch(mes){
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			ban=((dia<1)||(dia>31)) ? false : true;
		break;
		case 4:
		case 6:
		case 9:
		case 11:
			ban=((dia<1)||(dia>30)) ? false : true;
		break;
		case 2:
			if (anio%4==0){
				ban=((dia<1)||(dia>29)) ? false : true;
			}else{
				ban=((dia<1)||(dia>28)) ? false : true;
			}
		break;
		}	
	}
	return ban;
}
function modificar(fila){
	//console.log("Fila a modificar: "+fila);
	filaMod=fila;
	max=10;
	for (i=2;i<max;i++){
		if (i!=7){
			td=document.getElementById('td'+i+fila);
			td.innerHTML="<INPUT id='"+vecTabla[i]+"' name='"+vecTabla[i]+"' type='text' value='"+td.innerHTML+"'>";
		}
	}	
/*	td=document.getElementById('td6'+fila);
	td.innerHTML="<INPUT type='text'  id='datepicker'>";*/
	td=document.getElementById('td10'+fila);
	td.innerHTML="<INPUT type='button' name='guardar"+fila+"' value='Guardar' onClick='guardar("+fila+");'>";
	td=document.getElementById('td11'+fila);
	td.innerHTML="<INPUT type='button' name='cancelar"+fila+"' value='Cancelar' onClick='cancelar();'>";
}
function guardar(fila){
	var mensaje="";
	var am_codMateria=document.getElementById("txt_codMateria"+fila).innerHTML;
	var am_codCarrera=document.getElementById("codCarrera").innerHTML;
	var am_libroMatriz=(isNumber($("#txt_libroMatriz").val())) ? $("#txt_libroMatriz").val() : mensaje+="\nLIBRO matriz no es un numero \n";
	var am_folioMatriz=(isNumber($("#txt_folioMatriz").val())) ? $("#txt_folioMatriz").val() : mensaje+="\nFOLIO matriz no es un numero \n";
	var am_libroActExamen=(isNumber($("#txt_libroActExamen").val())) ? $("#txt_libroActExamen").val() : mensaje+="\nLIBRO ACT EXAMEN no es un numero \n";
	var am_folioActExamen=(isNumber($("#txt_folioActExamen").val())) ? $("#txt_folioActExamen").val() : mensaje+="\nFOLIO ACT EXAMEN no es un numero \n";
	var am_regularizado="";
	regular=document.getElementById("regular"+fila);
	if (regular.checked){
		am_regularizado=1;	
	}else{
		am_regularizado=0;	
	}
	//var am_fechaReg=$("#txt_fechaReg").val();
	var am_fechaReg=(validarFecha($("#txt_fechaReg").val())) ? $("#txt_fechaReg").val() : mensaje+="\nFecha Registro Invalida\n";
	var am_fechaFinal=(validarFecha($("#txt_fechaFinal").val())) ? $("#txt_fechaFinal").val() : mensaje+="\nFecha Final Invalida\n";;
	var am_notaFinal=(isNumber($("#txt_notaFinal").val())) ? parseInt($("#txt_notaFinal").val()) : mensaje+="\nNOTA FINAL no es un numero \n";
	mensaje+=((am_notaFinal>10) || (am_notaFinal<4)) ? "\nNOTA FINAL no es valida" : "";
	var am_legajo=document.getElementById("legajo").innerHTML;
	var am_codCarrera=document.getElementById("codCarrera").innerHTML;
	var am_accion="mod";
	if (mensaje==""){
		var param={
			//codMateria: am_codMateria,
			codMateria: am_codMateria,
			libroMatriz: am_libroMatriz,
			folioMatriz: am_folioMatriz,
			libroActExamen: am_libroActExamen,
			
			folioActExamen: am_folioActExamen,
			fechaReg: am_fechaReg,
			regularizado: am_regularizado,
			fechaFinal: am_fechaFinal,
			
			notaFinal: am_notaFinal,
			legajo: am_legajo,
			codCarrera: am_codCarrera,
			accion: am_accion
		};
		$.ajax({
		  type: 'POST',
		  url: 'u.libro',
		  data: param,
		  success: function(response){
				Notifier.success('\n Cambio efectuado con exitoso ');
		  //		console.log("Modificacion realizada");
				buscarAlumno(am_legajo);
				isIngresando=false;
				//buscarAlumno(am_legajo);						
		  },
		  error: function(response){
			Notifier.error("Ha ocurrido un error");	
		  //	console.log("Response: "+response.statusText);
			isIngresando=false;
		  }
		});
	}else{
		Notifier.error(mensaje);
	}
}
function eliminar(check){
	var ban=confirm("Desea eliminar?");
	
	var fila=check.name.substr(3,4);
	var am_legajo=document.getElementById("legajo").innerHTML;
	var am_codMateria=document.getElementById("txt_codMateria"+fila).innerHTML;
	
	if (ban){
		var param={
		codMateria: am_codMateria,
		legajo: am_legajo,
		accion: "eli"
		};
		$.ajax({
		  type: 'POST',
		  url: 'u.libro',
		  data: param,
		  success: function(response){
				Notifier.success('\n Eliminacion realizada ');
				//console.log("Eliminacion realizada");
				buscarAlumno(am_legajo);
				//buscarAlumno(am_legajo);						
		  },
		  error: function(response){
			Notifier.error("\n No se pudo eliminar");	
			//console.log("Response: "+response.statusText);
			isIngresando=false;
		  }
		});		
		//console.log("Eliminar Materia:"+param["codMateria"]+" Legajo:"+param["legajo"]+" Accion:"+param["accion"]);
	}
}
function veriCheck(check){
	n=check.id.substr(7,8);
//	console.log(filaMod,n);
	//if ((!isIngresando) && (filaMod==n)){
	if (!isIngresando){
		if (check.checked){
			check.checked=false;
		}else{
			check.checked=true;
		}
	}else{
		if (filaMod!=n){
			if (check.checked){
				check.checked=false;
			}else{
				check.checked=true;
			}
		}
	}
}
