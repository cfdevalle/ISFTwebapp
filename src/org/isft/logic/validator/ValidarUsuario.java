/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SEBASTIAN
 */
package org.isft.logic.validator;
//import org.isft.domain.Usuario;
import org.isft.domain.Alumnos;
import org.isft.logic.collection.EjemploConexion;
import java.util.Vector;
import java.util.HashMap;
//import org.isft.domain.Rol;
public class ValidarUsuario {
    public ValidarUsuario(){};
    /**
     * validacion simple
    
    public boolean isUsuarioValido(Alumnos alumno){
        boolean returnValue = false;
        try{
            int txt_usuario = alumno.getLegajo();
            String txt_password = alumno.getPwd();
            boolean user = false;
            boolean pass = false;
            
            if(txt_usuario.equals("jlopez"))
                user = true;
            
            if(txt_password.equals("lopezj"))
                pass = true;
            if(user && pass)
                returnValue=true;


            System.out.println("RESULTADO: "+returnValue);
        } catch(Exception exc){
            System.out.println(exc.getMessage());
        }
        return returnValue;
    }*/

    public boolean isUsuarioValidoBySql(Alumnos alumno){
        boolean returnValue = false;
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.usuarioValido(alumno);
            System.out.println("USUARIO VALIDO: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }
        return returnValue;
    }
    public boolean updatePasswordUsuario(Alumnos alumno){
        boolean returnValue = false;
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.updatePasswordUsuario(alumno);
			System.out.println("updatePasswordUsuario: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
			System.out.println("updatePasswordUsuario: error!");
        }
        return returnValue;
    }
    public boolean updateUsuario(Alumnos alumno){
        boolean returnValue = false;
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.updateAlumno(alumno);
			System.out.println("updatePasswordUsuario: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
			System.out.println("updatePasswordUsuario: error!");
        }
        return returnValue;
    }
    public boolean isUsuarioValidoByLegajo(Alumnos alumno){
        boolean returnValue = false;
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.usuarioValidoByLegajo(alumno);
            System.out.println("USUARIO VALIDO: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }
        return returnValue;
    }
    public Alumnos getFullUsuario(Alumnos alumno){
        Alumnos returnValue=new Alumnos();
        try{
            EjemploConexion ejemplo=new EjemploConexion();

            returnValue=ejemplo.getFullUsuario(alumno);
           //System.out.println("USUARIO VALIDO: "+returnValue);
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        return returnValue;
    }
}
