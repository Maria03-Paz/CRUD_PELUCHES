

package Dao;


public class Catalogo {
    
    private int id_tipo_peluche;
    private String nombre_tipo;

    public Catalogo() {
    }

    public Catalogo(int id_tipo_peluche, String nombre_tipo) {
        this.id_tipo_peluche = id_tipo_peluche;
        this.nombre_tipo = nombre_tipo;
    }

    public Catalogo(String nombre_tipo) {
        this.nombre_tipo = nombre_tipo;
    }

    public int getId_tipo_peluche() {
        return id_tipo_peluche;
    }

    public void setId_tipo_peluche(int id_tipo_peluche) {
        this.id_tipo_peluche = id_tipo_peluche;
    }

    public String getNombre_tipo() {
        return nombre_tipo;
    }

    public void setNombre_tipo(String nombre_tipo) {
        this.nombre_tipo = nombre_tipo;
    }

    @Override
    public String toString() {
        return "Catalogo{" + "id_tipo_peluche=" + id_tipo_peluche + ", nombre_tipo=" + nombre_tipo + '}';
    }
    
    
    
}
