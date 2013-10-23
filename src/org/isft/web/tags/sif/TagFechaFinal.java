/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags.sif;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.Examenes;
import org.isft.logic.collection.CollectionFechaFinal;
import org.isft.web.tags.TagGrilla;

/**
 *
 * @author Administrador
 */
public class TagFechaFinal extends TagGrilla{

    public int doStartTag() throws JspException {
            try {
                super.doStartTag(); 
                HashMap hm=new HashMap();
                hm.put("alumno", pageContext.getSession().getAttribute("alumno"));// linea magica que hizo que todo funcione
                CollectionFechaFinal cff=new CollectionFechaFinal();
                Vector<Examenes> examenes=cff.select(hm);
                Vector<Examenes> examenes_1=new Vector();
                Vector<Examenes> examenes_2=new Vector();
                Vector<Examenes> examenes_3=new Vector();
                String tabla="";
                int i,cant_anio1=0,cant_anio2=0,cant_anio3=0,aux=0;
                //CAPTURAR LA CANTIDAD ED MATERIAS QUE TIENE CADA AÑO
                for(int f=0;f<examenes.size();f++){
                    int num_materia=examenes.elementAt(f).getMateria().getCod_materia()/100;
                    if(num_materia==1){
                        cant_anio1++;
                        examenes_1.add(examenes.elementAt(f));
                    }else if(num_materia==2){
                        cant_anio2++;
                        examenes_2.add(examenes.elementAt(f));
                    }else{
                        cant_anio3++;
                        examenes_3.add(examenes.elementAt(f));
                    }     
                }
                int total=cant_anio1+cant_anio2+cant_anio3;
                tabla+=generarAnio(examenes_1,1,cant_anio1);
                tabla+=generarAnio(examenes_2,2,cant_anio2);  
                tabla+=generarAnio(examenes_3,3,cant_anio3);  
                
                tabla+="<input type=\"hidden\" value=\""+total+"\" name=\"cantidad_materias\" />";
                pageContext.getOut().print(tabla);
                } catch(Exception exc){
                    exc.printStackTrace();
                    throw new JspException(exc.getMessage());
                }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspException {
        super.doEndTag();
        return EVAL_PAGE;
    }
    

    
    
    private String generarAnio(Vector<Examenes> exa, int anio, int cant_materias){
        String tabla="<tr><td colspan=\"3\"><h4>A&ntildeo "+anio+"</h4></td></tr>";
        for(int i=1;i<cant_materias;i=i+2){
            int j=i-1;
            tabla+=generarMateria(exa.elementAt(j),exa.elementAt(i),i,anio);
        }
        return tabla;
    }
    
    private String generarMateria(Examenes exa1,Examenes exa2,int i, int anio) {
        i++;
        String materia="<tr><td width=\"40%\"><div id=mat_"+i+">";
        //  <input type="button" onclick="inscribir()" class="btn btn-default" value="Inscribir">
        if(anio==1){
            materia+="<input type=\"button\" onclick=\"mostrar(1,"+i+")\" style=\"width: 300px\" class=\"btn btn-default\"  value=\""+exa1.getMateria().getNombre()+"\">";
            materia+="</td><td width=\"60%\"><div id=div_1_"+i+"><table>";
        }else if(anio==2){
            materia+="<input type=\"button\" onclick=\"mostrar(2,"+i+")\" style=\"width: 300px\" class=\"btn btn-default\"  value=\""+exa1.getMateria().getNombre()+"\">";
            materia+="</td><td width=\"60%\"><div id=div_2_"+i+"><table>";
        }else {
            materia+="<input type=\"button\" onclick=\"mostrar(3,"+i+")\" style=\"width: 300px\" class=\"btn btn-default\"  value=\""+exa1.getMateria().getNombre()+"\">";
            materia+="</td><td width=\"60%\"><div id=div_3_"+i+"><table>";
        }
        
        
        materia+=generarTurno(exa1);
        materia+=generarTurno(exa2);
        materia+="</table></div></td></tr>";
        return materia;        
    }
    private String generarTurno(Examenes exa){
        String turno="<tr><td rowspan=\"2\"><h5>"+exa.getTurno()+"</h4>";
        turno+=generarFecha(exa);
        return turno;
    }
    private String generarFecha(Examenes exa){
        Date dff1 = exa.getFecha1();
        DateFormat ff1 = DateFormat.getDateInstance(DateFormat.FULL);
        String fecha1 = ff1.format(dff1);
        Date dff2 = exa.getFecha2();
        DateFormat ff2 = DateFormat.getDateInstance(DateFormat.FULL);
        String fecha2 = ff2.format(dff2);
        String fecha="</td><td><h6>"+fecha1+"</h5></td></tr>"+
                     "<tr><td><h6>"+fecha2+"</h5></td></tr>";
        return fecha;   
    }
    
 
}
//DateFormat df4 = DateFormat.getDateInstance(DateFormat.FULL);
//String s4 = df4.format(now);

