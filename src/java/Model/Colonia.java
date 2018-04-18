/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author angel
 */
public class Colonia {
    private int idColonia;
    private String Nom_Colonia;
    private int idDelegacion;
    
    public Colonia() {
    }

    public Colonia(int idColonia, String Nom_Colonia, int idDelegacion) {
        this.idColonia = idColonia;
        this.Nom_Colonia = Nom_Colonia;
        this.idDelegacion = idDelegacion;
    }

    public int getIdColonia() {
        return idColonia;
    }

    public void setIdColonia(int idColonia) {
        this.idColonia = idColonia;
    }

    public String getNom_Colonia() {
        return Nom_Colonia;
    }

    public void setNom_Colonia(String Nom_Colonia) {
        this.Nom_Colonia = Nom_Colonia;
    }

    public int getIdDelegacion() {
        return idDelegacion;
    }

    public void setIdDelegacion(int idDelegacion) {
        this.idDelegacion = idDelegacion;
    }
   
    
    
}
