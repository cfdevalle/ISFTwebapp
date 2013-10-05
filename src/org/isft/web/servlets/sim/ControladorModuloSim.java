/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * @author TEAM SIM
 */

package org.isft.web.servlets.sim;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.StringTokenizer;
import java.util.HashMap;
import org.isft.logic.updater.sim.AbmSim;

public class ControladorModuloSim  extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String consulta = request.getParameter("consulta");
        String accion = request.getParameter("accion");
        String [] splitConsulta=consulta.split("@");
        
        for (int i = 0; i < splitConsulta.length; i++) {
            StringTokenizer stConsulta = new StringTokenizer(splitConsulta[i], "-");

            HashMap param = new HashMap();
            param.put("cod_carrera", stConsulta.nextToken());
            param.put("cod_materia", stConsulta.nextToken());
            param.put("situacionAcademica", stConsulta.nextToken());
            param.put("legajo", stConsulta.nextToken());
            param.put("lectivo", stConsulta.nextToken());
            param.put("modalidadInscripcion", stConsulta.nextToken());
            param.put("turno", stConsulta.nextToken());
            param.put("Cod_Curso", stConsulta.nextToken());

            AbmSim abm = new AbmSim();
            try {
                if (accion.equals("A")) {
                    abm.insert(param);
                } else if (accion.equals("B")) {
                    abm.delete(param);
                } else if (accion.equals("M")) {
                    abm.update(param);
                }
            } catch (ServletException exc) {
                throw new ServletException(exc.getMessage());
            } catch (Exception exc) {
                throw new ServletException(exc.getMessage());
            }
        }
    }
}
