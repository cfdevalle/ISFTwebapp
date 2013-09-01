package org.isft.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;

public class DataBase {
    private org.isft.domain.DataBase dataBaseDomain=null;
    private Connection cn=null;

    public DataBase(HashMap parameters) throws Exception{
        dataBaseDomain=new org.isft.domain.DataBase(parameters);
        try{
            if(dataBaseDomain.getMotor().equals("access")){
               access_connect();
            } else { 
               mysql_connect();
            }
        } catch(Exception exc){
                    throw new Exception(exc.getMessage());
        }
    }
    
    public void access_connect() throws Exception{
       String url = "jdbc:odbc:"+dataBaseDomain.getOrigenDatos();
       try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn = DriverManager.getConnection(url,dataBaseDomain.getUser(),dataBaseDomain.getPassword());     
            System.out.println("Conexion establecida exitosamente a base de datos");
        }catch(SQLException e){ throw new Exception(e.getMessage()); }
         catch(Exception e){ throw new Exception(e.getMessage()); }      
    }
    
    public void mysql_connect() throws Exception{
    	String url = "jdbc:mysql://localhost:3306/"+dataBaseDomain.getOrigenDatos();
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();     
            System.out.println(url+":: "+dataBaseDomain.getUser()+":: "+dataBaseDomain.getPassword());
            cn = DriverManager.getConnection(url, dataBaseDomain.getUser(), dataBaseDomain.getPassword());
            System.out.println("Conexion establecida exitosamente a base de datos");
        }catch(SQLException e){ throw new Exception(e.getMessage());}
        catch(Exception e){ throw new Exception(e.getMessage()); }
    }
    
    public void closeConection(Connection cn) throws Exception{
        try{
           cn.close();
           System.out.println("Conexion cerrada con exito");
        }
        catch(Exception exc){
           throw new Exception(exc.getMessage());
        }
    }

    public Connection getConnection(){
	return this.cn;
    }
    
}
