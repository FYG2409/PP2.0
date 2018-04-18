/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Angel
 */
public class Mascota {
    private int idMascota;
    private String Nombre;
    private String Sexo;
    private String tipo;
    private String Raza;
    private int Edad;
    private String Descripcion;
    private String Colonia;
    private String Delegacion;
    private String Imagen;

    public Mascota() {
    }

    public Mascota(int idMascota, String Nombre, String Sexo, String tipo, String Raza, int Edad, String Descripcion, String Colonia, String Delegacion, String Imagen) {
        this.idMascota = idMascota;
        this.Nombre = Nombre;
        this.Sexo = Sexo;
        this.tipo = tipo;
        this.Raza = Raza;
        this.Edad = Edad;
        this.Descripcion = Descripcion;
        this.Colonia = Colonia;
        this.Delegacion = Delegacion;
        this.Imagen = Imagen;
    }

    public int getIdMascota() {
        return idMascota;
    }

    public void setIdMascota(int idMascota) {
        this.idMascota = idMascota;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getRaza() {
        return Raza;
    }

    public void setRaza(String Raza) {
        this.Raza = Raza;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getColonia() {
        return Colonia;
    }

    public void setColonia(String Colonia) {
        this.Colonia = Colonia;
    }

    public String getDelegacion() {
        return Delegacion;
    }

    public void setDelegacion(String Delegacion) {
        this.Delegacion = Delegacion;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }
    
    
    
    
    
}
