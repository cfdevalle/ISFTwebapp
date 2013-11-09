/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain.helper;

import java.util.StringTokenizer;

/**
 *
 * @author st
 */
public class FechaPagSql {
    public String formatoFechaPag(String fecha){
        StringTokenizer strToken=new StringTokenizer(fecha,"-");
        String anio=strToken.nextToken();
        String mes=strToken.nextToken();
        String dia=strToken.nextToken();
        fecha=dia+"-"+mes+"-"+anio;
        return fecha;
    }
    public String formatoFechaSql(String fecha){
        StringTokenizer strToken=new StringTokenizer(fecha,"-");
        String dia=strToken.nextToken();
        String mes=strToken.nextToken();
        String anio=strToken.nextToken();
        fecha=anio+"-"+mes+"-"+dia;
        return fecha;
    }
}
