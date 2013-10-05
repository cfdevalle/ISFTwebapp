/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.helper.sim;
/**
 * @author TEAM SIM
 */
public class DatosGrilla {
    private int codigo;
    private String materia;
    private String situacionAcademica;
    private String modalidad;
    private String turno;
    private String seleccion;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getSituacionAcademica() {
        return situacionAcademica;
    }

    public void setSituacionAcademica(String situacionAcademica) {
        if (situacionAcademica.equalsIgnoreCase("CO")){
            this.situacionAcademica="Cohorte";
        }
        else if (situacionAcademica.equalsIgnoreCase("AA")){
            this.situacionAcademica="Atraso Academico";            
        }
        else {
            this.situacionAcademica="Recursante";
        }
    }

    public String getModalidad() {
        return modalidad;
    }

    public void setModalidad(String modalidad, int id, String accion) {
        if ((modalidad.equalsIgnoreCase("LI") && accion.equalsIgnoreCase("eliminar")) || (modalidad.equalsIgnoreCase("LI") && accion.equalsIgnoreCase("comprobante"))) {
            this.modalidad = "Libre";
        }
        else if ((modalidad.equalsIgnoreCase("PR") && accion.equalsIgnoreCase("eliminar")) || (modalidad.equalsIgnoreCase("PR") && accion.equalsIgnoreCase("comprobante"))) {
            this.modalidad = "Presencial";
        }
        else if (modalidad.equalsIgnoreCase("LI")) {
            this.modalidad = "<select id=\"cbo_modalidad_" + id + "\"><option value=\"PR\">Presencial</option><option value=\"LI\">Libre</option></Select>";
        } 
        else {
            this.modalidad = "<select id=\"cbo_modalidad_" + id + "\"><option value=\""+modalidad+"\">Presencial</option></Select>";
        }
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno=turno;       
    }
    
    public String getSeleccion() {
        return seleccion;
    }

    public void setSeleccion(String seleccion) {
        this.seleccion = seleccion;
    }
}
