/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;
import org.isft.domain.Materia;
import org.isft.domain.Examenes;

/**
 *
 * @author Asus
 */
public class CollectionExamenes implements org.isft.logic.AccessInterface{

    public Vector selectTurno(HashMap parameters) throws Exception {
        
		String campos  = (String)parameters.get("campos");
		String materia = (String)parameters.get("materia");
		String carrera = (String)parameters.get("carrera"); 

		 //System.out.println("campos:"+campos);

		ResultSet rs =null;
		AccessManager am = new AccessManager();
      
		/*
		 * By SICNOD: que me traiga todas las materias de la carrera
		 */
		try{
			String sql ="SELECT "+campos+" " +
						"FROM  `examenes` " +
						"WHERE  `Cod_Materia` = '"+materia+"' " +
						"AND  `Cod_Carrera` = '"+carrera+"' " +
						"GROUP BY  `Turno`;";
			System.out.println("get turnos: "+sql);
			rs = am.execute(sql);
		}catch (Exception e){
			System.out.println("error"+e.getMessage());
		}
		
     
		Vector vec = new Vector();
		/*
		 * By Sicnod: para mantener el mismo compotamiento si curso es TODOS (todas las materias)
		 */
			while (rs.next()){
				vec.add(rs.getString("Turno"));
			}
		
       return vec;       
    }
    public Vector selectLectivo(HashMap parameters) throws Exception {
        
		//String campos  = (String)parameters.get("campos");
		String materia = (String)parameters.get("materia");
		String carrera = (String)parameters.get("carrera"); 
		String turno   = (String)parameters.get("turno"); 

		 //System.out.println("campos:"+campos);

		ResultSet rs =null;
		AccessManager am = new AccessManager();
      
		/*
		 * By SICNOD: que me traiga todas las materias de la carrera
		 */
		try{
			String sql ="SELECT YEAR(  `Fecha1` ) AS anio " +
						"FROM  `examenes` " +
						"WHERE  `Cod_Materia` = '"+materia+"' " +
						"AND  `Cod_Carrera` = '"+carrera+"' " +
						"AND  `Turno` = '"+turno+"' " +
						"GROUP BY anio; ";
			System.out.println("get lectivo: "+sql);
			rs = am.execute(sql);
		}catch (Exception e){
			System.out.println("error"+e.getMessage());
		}
		
     
		Vector vec = new Vector();
		/*
		 * By Sicnod: para mantener el mismo compotamiento si curso es TODOS (todas las materias)
		 */
			while (rs.next()){
				vec.add(rs.getString("anio"));
			}
		
       return vec;       
    }
    public Vector selectFechaExamen(HashMap parameters) throws Exception {
        
		//String campos  = (String)parameters.get("campos");
		String materia = (String)parameters.get("materia");
		String carrera = (String)parameters.get("carrera"); 
		String turno   = (String)parameters.get("turno"); 
		String lectivo = (String)parameters.get("lectivo"); 

		 //System.out.println("campos:"+campos);

		ResultSet rs =null;
		AccessManager am = new AccessManager();
      
		/*
		 * By SICNOD: que me traiga todas las materias de la carrera
		 */
		try{
			String sql ="SELECT YEAR(Fecha1), Fecha1, Fecha2 " +
						"FROM  `examenes` " +
						"WHERE  `Cod_Materia` = '"+materia+"' " +
						"AND  `Cod_Carrera` = '"+carrera+"' " +
						"AND  `Turno` = '"+turno+"' " +
						"AND  (YEAR(Fecha1) >= '"+lectivo+"' OR YEAR(Fecha1) <= '"+lectivo+"');";
			System.out.println("get lectivo: "+sql);
			rs = am.execute(sql);
		}catch (Exception e){
			System.out.println("error"+e.getMessage());
		}
		
     
		Vector vec = new Vector();
		/*
		 * By Sicnod: para mantener el mismo compotamiento si curso es TODOS (todas las materias)
		 */
			while (rs.next()){
				vec.add(rs.getString("Fecha1"));
				vec.add(rs.getString("Fecha2"));
			}
		
       return vec;       
    }
    public Vector select(HashMap parameters) throws Exception {
        
       String campos = (String)parameters.get("campos");
       String curso=(String)parameters.get("curso");
       String carrera=(String)parameters.get("carrera"); 

		System.out.println("campos:"+campos);
		System.out.println("curso:"+curso);
		System.out.println("carrera:"+carrera);
		System.out.println("Curso(0):"+curso.charAt(0));
      ResultSet rs =null;
      AccessManager am = new AccessManager();
      if (curso.charAt(0)=='1'){
          //System.out.println("curso"+curso+curso.charAt(0));
        try{
            System.out.println("anio:1ro");
            String query = "Select "+campos+" from materia, carrera where materia.cod_materia>100&&materia.cod_materia<200&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;";
            System.out.println(query);
            rs = am.execute(query);
            System.out.println("terminado carga de materias");
        }catch (Exception e){
            System.out.println("error: "+e.getMessage());
        }
		}else if (curso.charAt(0)=='2'){
       try{
          System.out.println("anio:2do");
          rs = am.execute("Select "+campos+" from materia, carrera where materia.cod_materia>200&&materia.cod_materia<300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
       
        }catch (Exception e){
          System.out.println("error"+e.getMessage());
        }
		}else if (curso.charAt(0)=='3'){
       try{
           System.out.println("anio:3ro");
           rs = am.execute("Select "+campos+" from materia,carrera where materia.cod_materia>300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
       
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
		}else{
			/*
			 * By SICNOD: que me traiga todas las materias de la carrera
			 */
			try{
				String sql = "SELECT "+campos+" FROM materia, carrera WHERE carrera.cod_carrera='"+carrera+"' AND materia.cod_carrera = carrera.cod_carrera;";
				System.out.println("get todas las materias: "+sql);
				rs = am.execute(sql);
			}catch (Exception e){
				System.out.println("error"+e.getMessage());
			}
		}
     
		Vector vec = new Vector();
		/*
		 * By Sicnod: para mantener el mismo compotamiento si curso es TODOS (todas las materias)
		 */
		if(curso.equals("TODOS")){
			while (rs.next()){
				Materia materia = new Materia();
				materia.setNombre(rs.getString("Nombre"));
				materia.setCod_materia(rs.getInt("Cod_Materia"));
				vec.add(materia);
			}
		}else{
			while (rs.next()){
				Materia m = new Materia();
				m.setNombre(rs.getString("nombre"));
				int cod = (int)rs.getInt(1);
				m.setCod_materia(cod);
				vec.add(m);
			}
		}
       return vec;       
    }
    
    
}
