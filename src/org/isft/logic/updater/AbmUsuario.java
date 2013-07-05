package org.isft.logic.updater;

import java.util.HashMap;

/**
 *
 * @author jcafferata
 */
public class AbmUsuario extends UpdaterManager implements UpdaterInterface{

    @Override
    public void insert(HashMap parameters) throws Exception {
        try{
            String sql_insert="INSERT INTO USUARIO (USUARIO, PASSWORD, APELLIDO, NOMBRE) values('"+(String)parameters.get("usuario")+"','"+(String)parameters.get("password")+"', '"+(String)parameters.get("apellido")+"', '"+(String)parameters.get("nombre")+"')";
            System.out.println("Cadena de insercion: " + sql_insert);
            execute(sql_insert);
        }
        catch(Exception exc){
           throw new Exception(exc.getMessage());
        }       
    }

    @Override
    public void delete(HashMap parameters) throws Exception {
        try{
            String sql_delete="DELETE FROM USUARIO WHERE USUARIO='"+(String)parameters.get("usuario")+"'";
            execute(sql_delete);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }        
    }

    @Override
    public void update(HashMap parameters) throws Exception {
        try{
            String sql_update="UPDATE USUARIO set PASSWORD='"+(String)parameters.get("password")+"', APELLIDO='"+(String)parameters.get("apellido")+"', NOMBRE='"+(String)parameters.get("nombre")+"' where USUARIO='"+(String)parameters.get("usuario")+"'";
            execute(sql_update);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }       
    }

}
