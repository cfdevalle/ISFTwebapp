package org.isft.web.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.isft.domain.Alumnos;
import org.isft.domain.Carrera;
import org.isft.logic.updater.AbmInscripcionFinales;
import org.isft.logic.validator.ValidarSituacionMateria;

public class ControladorInscripcionFinales  extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	doGet(request, response);
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param=request.getParameter("param");
        String accion=request.getParameter("accion");
        AbmInscripcionFinales abm=new AbmInscripcionFinales();
        HashMap hash=new HashMap();
        String[] p_split=param.split("@");
        Alumnos alumno_sesion=(Alumnos) request.getSession(false).getAttribute("alumno");
        Carrera car_sesion=(Carrera)alumno_sesion.getCarreras().elementAt(0);
        //fecha hoy
        Calendar currentDate = Calendar.getInstance();
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy/MM/dd"); 
        String fecha_actual = formatter.format(currentDate.getTime());
        response.setContentType("html/text");
        try{
            //ACA SE SEPARA POR SPLIT Y SE ARMAN LOS HASHMAP, TAMBIEN SE VALIDA SI HAY ALGUN ERROR Y LO DEVUELVE
            Vector<HashMap> vectorAltas=new Vector();
            Vector<HashMap> vectorModificaciones=new Vector();
            Vector<HashMap> vectorBajas=new Vector();
            if(accion.equals("B")){
                for(int i=0; i<p_split.length; i++){
                    ValidarSituacionMateria vsm=new ValidarSituacionMateria();
                    String[] p_split_interno=p_split[i].split("-");
                    hash=new HashMap();
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera", Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    String borrable=vsm.validarBaja(hash);
                    if(borrable.equals("")){
                        vectorBajas.add(hash);
                    }else{
                        response.getWriter().write("ERROR:"+borrable);
                        return;
                    } 
                }
                
            }else if(accion.equals("A")){
                for(int i=0;i<p_split.length;i++){
                    ValidarSituacionMateria vsm=new ValidarSituacionMateria();
                    String[] p_split_interno=p_split[i].split("-");
                    hash=new HashMap();
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera",Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    hash.put("modadlidad_inscripcion", p_split_interno[3]);
                    hash.put("fecha_actual", fecha_actual);
                    hash.put("fecha_final", p_split_interno[5]);
                    hash.put("turno", p_split_interno[6]);
                    String inscribible=vsm.validarAlta(hash);
                    if(inscribible.equals("")){
                        vectorAltas.add(hash);
                    }else{
                        response.getWriter().write("ERROR:"+inscribible);
                        return;
                    }
                        
                }
            } else if(accion.equals("U")){
                for(int i=0;i<p_split.length;i++){
                    ValidarSituacionMateria vsm=new ValidarSituacionMateria();
                    String[] p_split_interno=p_split[i].split("-");
                    hash=new HashMap();
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera", Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    hash.put("modadlidad_inscripcion", p_split_interno[3]);
                    hash.put("fecha_actual", fecha_actual);
                    hash.put("fecha_final", p_split_interno[5]);
                    hash.put("turno", p_split_interno[6]);
                    String modificable=vsm.validarUpdate(hash);
                    if(modificable.equals("")){
                        vectorModificaciones.add(hash);
                    }else{
                        response.getWriter().write("ERROR:"+modificable);
                        return;
                    }   
                }           
            }
            //AHORA SE REALIZA LA ACCION, SI HUBO ALGUN ERROR SE TIRA RETURN POR ESO NO LLEGA ACA
            for(int f=0;f<vectorBajas.size();f++){
                abm.delete(vectorBajas.elementAt(f));
            }
            if(!vectorBajas.isEmpty()){
                response.getWriter().write("Desinscripcion realizada con exito.");
                return;
            }
            for(int v=0;v<vectorAltas.size();v++){
                abm.insert(vectorAltas.elementAt(v));
            }
            if(vectorModificaciones.isEmpty()){
                response.getWriter().write("El proceso de inscripcion se realizo con exito.");
                return;
            }
            
            for(int i=0;i<vectorModificaciones.size();i++){
                abm.update((HashMap)vectorModificaciones.elementAt(i));
            }
            if(vectorAltas.isEmpty()){
                response.getWriter().write("El proceso de modificacion se realizo con exito.");
                return;
            }
            
            
            
            
        } catch(Exception exc){
            System.out.println("Error de controlador SIF");
  	}
   }
}
