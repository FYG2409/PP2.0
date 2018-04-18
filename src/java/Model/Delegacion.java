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
public class Delegacion {
    private int idDelegacion;
    private String Nom_Delegacion;
    
    public Delegacion() {
        
    }

    public Delegacion(int idDelegacion, String Nom_Delegacion) {
        this.idDelegacion = idDelegacion;
        this.Nom_Delegacion = Nom_Delegacion;
    }

    public int getIdDelegacion() {
        return idDelegacion;
    }

    public void setIdDelegacion(int idDelegacion) {
        this.idDelegacion = idDelegacion;
    }

    public String getNom_Delegacion() {
        return Nom_Delegacion;
    }

    public void setNom_Delegacion(String Nom_Delegacion) {
        this.Nom_Delegacion = Nom_Delegacion;
    }
    
    
    
    
}
