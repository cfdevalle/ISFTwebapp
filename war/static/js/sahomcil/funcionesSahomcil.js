/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



function enviar(){
              
                carga();
                
            }
            
function carga(){
             var carrera = $("#carrera").val();
             $("#combocurso").load("modulo.go?codPage=5003",{carrera:carrera},5000);
            }
            
function curso(){
             var curso = $("#curso").val();
             var carrera=$("#carrera").val();
            $("#tablahorario").load("modulo.go?codPage=5005",{curso:curso , carrera:carrera});
            
            }
              function horariosincarga(){
        //recupera valor del curso seleccionado   
        var curso=$("#curso").val(); 
              
              //carga en el div principal la tabla y le paso el parametro curso mas un tiempo de recarga 
              $("#principal").load("modulo.go?codPage=5004",{curso:curso},5000);
                
            }
function eliminarMateria(dia, hora,carrera,curso,materia){
        $("#sacarMateria").load("modulo.go?codPage=5010",{dia:dia,hora:hora,curso:curso,carrera:carrera,materia:materia});
    }
     
function celda(dia, hora ,curso, carrera ){
           $("#ventana").load("modulo.go?codPage=5006",{dia:dia,hora:hora,curso:curso,carrera:carrera});
           }
        
function eliminar(dia, hora ,carrera, curso,materia){            
            $("#ventana").load("modulo.go?codPage=5009",{dia:dia,hora:hora,curso:curso,carrera:carrera, materia:materia});    
                
            }
function recargar(){ 
        $("#tablahorario").load("modulo.go?codPage=5005",{curso:curso , carrera:carrera});
    }
 function altahorario(dia, hora , carrera, curso){
        
        var materia = $("#materia").val();
        var profesor= $("#profesor").val();
       
        $("#materias").load("modulo.go?codPage=5007",{dia:dia, hora:hora, carrera:carrera, curso:curso, materia:materia,profesor:profesor});
        $("#footer").empty();
       
    } 