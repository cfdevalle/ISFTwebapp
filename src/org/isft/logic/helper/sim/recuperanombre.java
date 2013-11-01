/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.helper.sim;

import java.sql.ResultSet;
import java.util.HashMap;
import org.isft.logic.AccessManager;

/**
 *
 * @author Ariel
 */
public class recuperanombre {
    public String getnombre(HashMap  hm) throws Exception{
    String cod=(String) hm.get("cod");
    String campo=(String) hm.get("campo");
    String where=(String) hm.get("where");
    String tabla=(String) hm.get("tabla");
    String nombre="";
    AccessManager am = new AccessManager();
        ResultSet rs = am.execute("select "+campo+" from "+tabla+" where "+where+"= '"+cod+"';");
    while (rs.next()){
    nombre=rs.getString(campo);
    }
    return nombre;
    }
}
