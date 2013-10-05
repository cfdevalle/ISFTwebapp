function abmSimInsert() {
	var valuesDelCheckBox = "";
	var consulta = "";
	var isCheked = false;
	var vec = document.getElementsByName("chk_seleccion");
	
	for (var i = 0; i < vec.length; i++){
		if (vec[i].checked) {
			isCheked = true;
			var modalidad = document.getElementById("cbo_modalidad_"+i).value;
			var turno = document.getElementById("cbo_turno_"+i).value;
			
			valuesDelCheckBox = vec[i].value + "-"  + modalidad + "-" + turno + "@";
			consulta+= valuesDelCheckBox;
		}
	}
	
	if (isCheked) {
		$("#div_resultado").load("alta.sim?consulta="+consulta+"&accion=A");
		$.ajax({
		  type: 'POST',
		  //url: 'goPage(1004)',
		  success: function(){
			goPage(1004);
		  },
		  error: function(){
			$('#alertaMaximoDeMateriasLibres').modal('toggle');
		  }
		});
	}
	else {
		$('#avisoCheckBox').modal('toggle');
	}
}

function abmSimDelete() {
	var valuesDelCheckBox = "";
	var consulta = "";
	var isCheked = false;
	var vec = document.getElementsByName("chk_seleccion");
	
	for (var i = 0; i < vec.length; i++){
		if (vec[i].checked) {
			isCheked = true;			
			valuesDelCheckBox = vec[i].value + "@";
			consulta+= valuesDelCheckBox;
		}
	}
	
	if (isCheked) {
		$("#div_resultado").load("alta.sim?consulta="+consulta+"&accion=B");
		$.ajax({
		  type: 'POST',
		  //url: 'goPage(1004)',
		  success: function(){
			goPage(1004);
		  },
		  error: function(){
			$('#alertaMaximoDeMateriasLibres').modal('toggle');
		  }
		});
	}
	else {
		$('#avisoCheckBox').modal('toggle');
	}
}