
package Dao;

import Config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


    public class CatalogoBD {
   
       
        private static final String listadoCatalogo="SELECT * FROM peluche";

    
        //atributos de conexion
        private Connection conexion = new Conexion().getConexion();
        private PreparedStatement stmt;
        private ResultSet rs;
        
        public List<Catalogo> listadoCatalogo() throws SQLException {
            List<Catalogo> catalogos = new ArrayList<>();
            this.stmt = this.conexion.prepareStatement(this.listadoCatalogo);
            this.rs = this.stmt.executeQuery();
            while (this.rs.next()) {
                catalogos.add(new Catalogo(this.rs.getInt("id_tipo_peluche") ,this.rs.getString("nombre_tipo")));
            }
            return catalogos;
        }
        
      
    
}
