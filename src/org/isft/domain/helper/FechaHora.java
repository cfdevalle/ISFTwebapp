/**
 * @author Team SIM.
 */
package org.isft.domain.helper;
import java.util.Calendar;
import java.util.StringTokenizer;

public class FechaHora {
 private int dia, mes, anio;
 private int hora, minutos, segundos;
 
 public FechaHora(){
 }
 
 public String getFecha(){
     Calendar calendar=Calendar.getInstance();
     String fecha;
     String aux1;
     String aux2;
     dia=calendar.get(Calendar.DATE);
     mes=calendar.get(Calendar.MONTH)+1;
     anio=calendar.get(Calendar.YEAR);
     
     if (dia < 10){
         aux1= "0";
     }
     else {
         aux1="";
     }
     
     if (mes < 10){
         aux2= "0";
     }
     else {
         aux2="";
     }
     
     fecha=aux1+dia+"/"+aux2+mes+"/"+anio;
     return fecha;
 }
 
  public String getHora(){
     Calendar calendar=Calendar.getInstance();
     String tiempo;
     String aux1;
     String aux2;
     String aux3;
     hora=calendar.get(Calendar.HOUR_OF_DAY);
     minutos=calendar.get(Calendar.MINUTE);
     segundos=calendar.get(Calendar.SECOND);
     
     if (hora < 10){
         aux1= "0";
     }
     else {
         aux1="";
     }
     
     if (minutos < 10){
         aux2= "0";
     }
     else {
         aux2="";
     }
     
     if (segundos < 10){
         aux3= "0";
     }
     else {
         aux3="";
     }
     
     tiempo=aux1+hora+":"+aux2+minutos+":"+aux3+segundos;
     return tiempo;
 }
  
  public String getFechaIso(){
     Calendar calendar=Calendar.getInstance();
     String fechaIso;
     String aux1;
     String aux2;
     dia=calendar.get(Calendar.DATE);
     mes=calendar.get(Calendar.MONTH)+1;
     anio=calendar.get(Calendar.YEAR);
     
     if (dia < 10){
         aux1= "0";
     }
     else {
         aux1="";
     }
     
     if (mes < 10){
         aux2= "0";
     }
     else {
         aux2="";
     }
     
     fechaIso=anio+aux2+mes+aux1+dia;
     return fechaIso;
 }
  
  public String getHoraIso(){
     Calendar calendar=Calendar.getInstance();
     String tiempoIso;
     String aux1;
     String aux2;
     String aux3;
     hora=calendar.get(Calendar.HOUR_OF_DAY);
     minutos=calendar.get(Calendar.MINUTE);
     segundos=calendar.get(Calendar.SECOND);
     
     if (hora < 10){
         aux1= "0";
     }
     else {
         aux1="";
     }
     
     if (minutos < 10){
         aux2= "0";
     }
     else {
         aux2="";
     }
     
     if (segundos < 10){
         aux3= "0";
     }
     else {
         aux3="";
     }
     
     tiempoIso=aux1+hora+aux2+minutos+aux3+segundos;
     
     return tiempoIso;
 }
  
  public int getFechaInt(String fecha){
      StringTokenizer stFecha= new StringTokenizer(fecha,"/");
      
      String aux1=stFecha.nextToken();
      String aux2=stFecha.nextToken();
      String aux3=stFecha.nextToken();
      String aux4=aux3+aux2+aux1;
      int fechaInt=Integer.parseInt(aux4);
      
      return fechaInt;
 }
  
  public int getHoraInt(String hora){
      StringTokenizer stHora= new StringTokenizer(hora,":");
      
      int aux1=Integer.parseInt(stHora.nextToken());
      int aux2=Integer.parseInt(stHora.nextToken());
      int aux3=Integer.parseInt(stHora.nextToken());
      int horaInt=aux1+aux2+aux3;
      
      return horaInt;
 }
}
