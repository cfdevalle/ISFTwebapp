package org.isft.logic;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

/**
 *
 * @author jcafferata
 */
public class AccessManager extends LogicManager{ 
    public ResultSet execute(String sql_statement) throws Exception{
    	ResultSet rst = null;
        try{
            create_connection();
            Statement s = getConnection().createStatement();
            rst = s.executeQuery(sql_statement);                    
        } catch(Exception exc){
            throw new Exception(exc.getMessage());
        }               
        return rst;   
    }  
}
