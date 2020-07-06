
package Dao;
        
    import Config.Conexion;
    import java.sql.*;
    import java.util.ArrayList;
    import java.util.List;

    public class PelucheBD{
        
        //atributos SQL 
        private static final String listado="select peluche.id_peluche, peluche.nombre,"
                + "peluche.precio,peluche.material,peluche.piezas, catalogo.nombre_tipo from peluche inner join catalogo "
                + "on peluche.id_peluche=catalogo.id_tipo_peluche";
        
       
        
        private static final String insertar="INSERT INTO peluche SET (nombre=?,precio=?,material=?,piezas=?)";
        private static final String eliminar="DELETE FROM peluche WHERE id_peluche=?";
        private static final String editar= "UPDATE peluche SET peluche=? WHERE id_peluche=?";

    
        //atributos de conexion
        private Connection conexion = new Conexion().getConexion();
        private PreparedStatement stmt;
        private ResultSet rs;
        
       public List<Peluche> listadoPeluches() throws SQLException {
                List<Peluche> peluches = new ArrayList<>();
                this.stmt = this.conexion.prepareStatement(this.listado);
                this.rs = this.stmt.executeQuery();
                while (this.rs.next()){
                    peluches.add(new Peluche(this.rs.getInt("id_peluche"),this.rs.getString("nombre"), this.rs.getInt("precio"),this.rs.getString("material"),this.rs.getInt("piezas")));

                }
                return peluches;
            }

       public boolean insertarPeluche(Peluche peluches) throws SQLException {
         this.stmt=this.conexion.prepareStatement(this.insertar);
       
             this.stmt.setInt(1, peluches.getId_peluche());
             this.stmt.setString(2, peluches.getNombre());
             this.stmt.setInt(3, peluches.getPrecio());
             this.stmt.setString(2, peluches.getMaterial());
             this.stmt.setInt(3, peluches.getPiezas());
           
            if(this.stmt.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
        } 
       
        public boolean editarPeluche(Peluche peluches) throws SQLException {
         this.stmt=this.conexion.prepareStatement(this.editar);
       
             this.stmt.setInt(1, peluches.getId_peluche());
             this.stmt.setString(2, peluches.getNombre());
             this.stmt.setInt(3, peluches.getPrecio());
             this.stmt.setString(2, peluches.getMaterial());
             this.stmt.setInt(3, peluches.getPiezas());
           
            if(this.stmt.executeUpdate()>0){
                return true;
            }else{
                return false;
            }
        } 
       
       
    }

   

       
        
        
        
