
package Modelo;


public class Clientes {
    int id;
    String dpi;
    String nom;
    String direccion;
    String estado;

    
    public Clientes(){
        
    }

    public Clientes(int id, String dpi, String nom, String direccion, String estado) {
        this.id = id;
        this.dpi = dpi;
        this.nom = nom;
        this.direccion = direccion;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDpi() {
        return dpi;
    }

    public void setDpi(String dpi) {
        this.dpi = dpi;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
