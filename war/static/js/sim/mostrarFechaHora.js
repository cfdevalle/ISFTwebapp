function mostrarFecha(){
						var fecha
						fecha=new Date();
						document.write(fecha.getDate()+'/');
						document.write((fecha.getMonth()+1)+'/');
						document.write(fecha.getFullYear()); 
}
  
function mostrarHora(){
						var hora
						hora=new Date();
						document.write(hora.getHours()+':');
						document.write(hora.getMinutes()+':');
						document.write(hora.getSeconds()); 
}