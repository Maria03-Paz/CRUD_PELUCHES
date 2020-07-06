
package Dao;

public class Peluche {

    private int id_peluche;
    private String nombre;
    private int precio;
    private String material;
    private int piezas;

    public Peluche() {
    }

   

    public Peluche(int id_peluche, String nombre, int precio, String material, int piezas) {
        this.id_peluche = id_peluche;
        this.nombre = nombre;
        this.precio = precio;
        this.material = material;
        this.piezas = piezas;
    }

    public Peluche(String nombre, int precio, String material, int piezas) {
        this.nombre = nombre;
        this.precio = precio;
        this.material = material;
        this.piezas = piezas;
    }

    public int getId_peluche() {
        return id_peluche;
    }

    public void setId_peluche(int id_peluche) {
        this.id_peluche = id_peluche;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public int getPiezas() {
        return piezas;
    }

    public void setPiezas(int piezas) {
        this.piezas = piezas;
    }

    @Override
    public String toString() {
        return "Peluche{" + "id_peluche=" + id_peluche + ", nombre=" + nombre + ", precio=" + precio + ", material=" + material + ", piezas=" + piezas + '}';
    }
}
