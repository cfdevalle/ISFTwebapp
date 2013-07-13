    

        <!-- el div que tiene el combo de materias ocupando 3 columnas     -->
        <div class="row-fluid">
            <div class="span3" style="min-height: 70px">
                <h4>Seleccione Materia:</h4>
            </div>
            <div class="span4" style="min-height: 70px">
                <SELECT NAME="materia" SIZE=1 onChange="javascript:alert('prueba');"> 
                    <OPTION VALUE="algebra">algebra</OPTION>
                    <OPTION VALUE="programacion">programacion</OPTION>
                    <OPTION VALUE="arquitectura">arquitectura</OPTION>
                    <OPTION VALUE="administracion">administracion</OPTION> 
                </SELECT> 
            </div>
        </div>

        <!-- el div que tiene el combo de dias ocupando 3 columnas     -->
        <div class="row-fluid">
            <div class="span3" style="min-height: 70px">
                <h4>Selecione Dia:</h4>
            </div>
            <div class="span4" style="min-height: 70px">
                <SELECT NAME="dia" SIZE=1 onChange="javascript:alert('prueba');"> 
                    <OPTION VALUE="lunes">"Lunes"</OPTION>
                    <OPTION VALUE="martes">"Martes"</OPTION>
                    <OPTION VALUE="miercoles">"Miercoles"</OPTION>
                    <OPTION VALUE="jueves">"Jueves"</OPTION> 
                    <OPTION VALUE="viernes">"Viernes"</OPTION>
                    <OPTION VALUE="sabado">"Sabado"</OPTION>
                </SELECT> 
            </div>
        </div>

        <div class="row-fluid">
            <div class="span3" style="min-height: 100px">
                <h4>Selecione Horario:</h4>
            </div>
            <div class="span3" style="min-height: 100px">
                <p>Desde</p><input type="text" name="box_de_desde">
            </div>       
            <div class="span3" style="min-height: 100px">
                <p>Hasta</p><input type="text" name="box_de_hasta">
            </div>  
        </div>
        <div class="row-fluid">
            <div class="span4" style="min-height: 70px">
                <h4>Profesor:</h4>
            </div>
            <div class="span3" style="min-height: 100px">
                <input type="text" name="box_de_hasta">
            </div>
            <div class="span3" style="min-height: 100px">
                <button>
                    <b>ACEPTAR</b>
                </button>
            </div>
        </div>
