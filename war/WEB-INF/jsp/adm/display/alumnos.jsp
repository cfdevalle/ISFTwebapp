<%@page import="org.isft.domain.Alumnos,org.isft.domain.Carrera, java.util.HashMap, org.isft.logic.collection.CollectionAlumnos, org.isft.logic.collection.CollectionCarrera,java.util.Vector, java.util.Iterator"%>
<DIV id="aluCar">
    <DIV id="datosAlumno">
        <TABLE id="tableAlumno" class='table table-hover table-bordered' >
        <%
            String legajo=request.getParameter("legajo");
            Alumnos alu=new Alumnos();
            if(legajo!=null){ 
                HashMap param=new HashMap();
                param.put("legajo",legajo);
                CollectionAlumnos collAlu=new CollectionAlumnos();
                Vector vecAlu=collAlu.select(param);
                for( Iterator it = vecAlu.iterator(); it.hasNext(); ) { 
                    alu=(Alumnos)it.next();
            %>      
             <TR>
                 <TD><H5>Legajo</H5></TD>
                 <TD><H5>Apellido</H5></TD>
                 <TD><H5>Nombre</H5></TD>     
            </TR>
            <TR>
                <TD id="legajo"><%=alu.getLegajo()%></TD>
                <TD><%=alu.getNombre()%></TD>
                <TD><%=alu.getApellido()%></TD>
            </TR>
          <%}
          }
        %>
        </TABLE>
    </DIV>
    <DIV id="datosCarrera">
        <TABLE id="tableCarrera" class='table table-hover table-bordered'>
            <%
            HashMap hashCarrera=new HashMap();
            hashCarrera.put("campos","*");
            Carrera carAlum=(Carrera)alu.getCarrera();
            int cod=carAlum.getCod_carrera();
            hashCarrera.put("tablas","carrera WHERE Cod_Carrera="+cod);
            CollectionCarrera colCar=new CollectionCarrera();
            Vector vecCarrera=colCar.select(hashCarrera);
            for( Iterator it = vecCarrera.iterator(); it.hasNext(); ) { 
                    Carrera carrera=(Carrera)it.next();
          %>
          <TR>
              <TD><H5>Codigo</H5></TD>
              <TD><H5>Nombre</H5></TD>
              <TD><H5>Descripcion</H5></TD>
          </TR>
          <TR>
              <TD id="codCarrera"><%=carrera.getCod_carrera()%></TD>
              <TD><%=carrera.getNombre()%></TD>
              <TD><%=carrera.getDescripcion()%></TD>
          </TR>
          <%}%>    

        </TABLE>
    </DIV>
 </DIV>
  <HR>
 <%@ taglib uri="/WEB-INF/tld/LibroMatriz.tld" prefix="tag" %>    
 <tag:LibroMatriz legajo="<%=legajo%>"/>