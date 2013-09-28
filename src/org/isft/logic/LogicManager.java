package org.isft.logic;

import java.sql.Connection;
import java.util.HashMap;
import org.isft.jdbc.DataBase;

public class LogicManager {
    private DataBase db=null;
    private Connection cn=null;
    
    public void create_connection() throws Exception{
        try{
        		HashMap parameters=new HashMap();
          
            this.db=new DataBase(parameters);
            this.cn = db.getConnection();
        } catch(Exception exc){
            throw new Exception(exc.getMessage());
        }        
    }

    public void close_connection() throws Exception{
        try{
            if(this.db!=null){
                this.db.closeConection(this.cn);
            }
        }
        catch(Exception exc){
            throw new Exception(exc.getMessage());
        }
    }
    
    public Connection getConnection(){
     		return this.cn;   
    }
}
