/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import java.util.Iterator;
import java.util.StringTokenizer;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;

import org.isft.logic.collection.CollectionLibroMatriz;
import org.isft.logic.collection.CollectionMateria;
import org.isft.domain.helper.FechaPagSql;
import org.isft.domain.Libro_matriz;
import org.isft.domain.Materia;
/**
 *
 * @author st
 */
public class TagGrillaLibroMatriz extends TagGrilla{
    private String legajo="";
    public int doStartTag() throws JspException {
            super.doStartTag();
            String table="<tr>";
            table+="<td><h5>Cod Materia</h5></td>";
            table+="<td><h5>Materia</h5></td>";
            table+="<td><h5>Lib Matriz</h5></td>";
            table+="<td><h5>Fol Matriz</h5></td>";
            table+="<td><h5>Lib Act Examen</h5></td>";
            table+="<td><h5>Fol Act Examen</h5></td>";
            table+="<td><h5>Fecha Reg</h5></td>";
            table+="<td><h5>Regularizado</h5></td>";
            table+="<td><h5>Fecha Final</h5></td>";
            table+="<td><h5>Nota Final</h5></td>";   
            table+="<TD><H5>Modificar</H5></TD>";
            table+="<TD><H5></H5></TD>";
            table+="</tr>";
            HashMap param=new HashMap();
            Vector vecLibro=new Vector();
            CollectionLibroMatriz colLibro=new CollectionLibroMatriz();
            param.put("legajo", getLegajo());
            try {
                vecLibro=colLibro.select(param);
                pageContext.getOut().print(table);
                String aux="";
                int nTr=0;
                for( Iterator it = vecLibro.iterator(); it.hasNext(); ) { 
                    Libro_matriz libro=(Libro_matriz)it.next();
                    String cod_materia=String.valueOf(libro.getMateria().getCod_materia());
                    HashMap materiaParam=new HashMap();
                    materiaParam.put("cod_materia",cod_materia);
                    //System.out.println("CODIGO MATERIA: "+cod_materia);
                    Vector vecMat=getMateriaAlumno(materiaParam);
                    Materia materia=new Materia();
                 //   for( Iterator i = vecMat.iterator(); i.hasNext(); ) {
                    for (int i=0;i<vecMat.size();i++){
                        materia=(Materia)vecMat.get(i);                        
                    }
                  
                    aux+="<TR id='tr"+nTr+"'>";     
                    aux+="<TD id=\"txt_codMateria"+nTr+"\">"+materia.getCod_materia()+"</TD>";
                    aux+="<TD id='td1"+nTr+"'>"+materia.getNombre()+"</TD>";
                    aux+="<TD id='td2"+nTr+"'>"+libro.getLibro_Matriz()+"</TD>";
                    aux+="<TD id='td3"+nTr+"'>"+libro.getFolio_matriz()+"</TD>";
                    aux+="<TD id='td4"+nTr+"'>"+libro.getLibroActExamen()+"</TD>";
                    aux+="<TD id='td5"+nTr+"'>"+libro.getFolioActExamen()+"</TD>";
                    FechaPagSql auxFecha= new FechaPagSql();
                    //aux+="<TD id='td6"+nTr+"'>"+formatoFechaPag(libro.getFecha_reg())+"</TD>";
                    aux+="<TD id='td6"+nTr+"'>"+auxFecha.formatoFechaPag(libro.getFecha_reg())+"</TD>";
                    if (libro.isRegularizado()){
                       aux+="<TD id='td7"+nTr+"'><INPUT type='checkBox' id='regular"+nTr+"' name='regular"+nTr+"' onClick=\"veriCheck(this);\" checked></TD>";                 
                    }else{
                       aux+="<TD id='td7"+nTr+"'><INPUT type='checkBox' id='regular"+nTr+"' name='regular"+nTr+"' onClick=\"veriCheck(this);\"></TD>"; 
                    }
                    //aux+="<TD id='td8"+nTr+"'>"+formatoFechaPag(libro.getFecha_final())+"</TD>";
                    aux+="<TD id='td8"+nTr+"'>"+auxFecha.formatoFechaPag(libro.getFecha_final())+"</TD>";
                    aux+="<TD id='td9"+nTr+"'>"+libro.getNota_final()+"</TD>";
                    aux+="<TD id='td10"+nTr+"'><INPUT type=\"checkBox\" id='check"+nTr+"' name='mod"+nTr+"' onClick=\"accion(this);\"></TD>";
                    //aux+="<TD id='td11"+nTr+"'><INPUT type=\"button\" value='Eliminar' id='eli"+nTr+"' name='eli"+nTr+"' onClick=\"eliminar(this);\"></TD>";
                    aux+="<TD id='td11"+nTr+"'></TD>";
                    nTr++;
                }
                pageContext.getOut().print(aux);
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
    
    
    /*public String formatoFechaPag(String fecha){
        StringTokenizer strToken=new StringTokenizer(fecha,"-");
        String anio=strToken.nextToken();
        String mes=strToken.nextToken();
        String dia=strToken.nextToken();
        fecha=dia+"-"+mes+"-"+anio;
        return fecha;
    }/*
    /**
     * @return the legajo
     */
    public String getLegajo() {
        return legajo;
    }

    /**
     * @param legajo the legajo to set
     */
    public void setLegajo(String legajo) {
        this.legajo = legajo;
    }
    public  Vector getMateriaAlumno(HashMap param){
        CollectionMateria colMateria=new CollectionMateria();  
        Vector vecMateria=new Vector();
        try{
            
            vecMateria=colMateria.select(param);
        } catch(Exception exc){
            exc.printStackTrace();
        }
        return vecMateria;
    }
}
