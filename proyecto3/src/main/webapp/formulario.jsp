<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.Peluche"%>
<%@page import="Dao.PelucheBD"%>



<%

String titulo ="Agregar Peluche",usuario="usuario",action="agregar.jsp";
int id=0;

if(request.getParameter("id")!=null){
   id=Integer.parseInt(request.getParameter("id"));
   
        titulo="Editar Usuario";
        action = "editarUsuario.jsp";
   
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

try{
      Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/peluches","root","");
         stmt= conexion.prepareStatement("SELECT * FROM peluche WHERE id_peluche=?");
         stmt.setInt(1, id);
         rs=stmt.executeQuery();
         rs.next();
         usuario=rs.getString("usuario");
        
    
    }catch(Exception e){
        System.out.println(e.getMessage()); 
    
    }
}

   //List<Peluche> peluches = new PelucheBD().listadoPeluches();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style>
            /* imagen de fondo */
            body {
                background-image: url('img/ran.jpg');
            }
           
        </style>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario</title>
    </head>
   <body>
    <br>     
    <h1 align="center" class="display-4" style="color:white;">Agregar Peluche</h1>
    <br>
     <br>
    <form action= "agregarPeluche.jsp" method="POST">
        <div class="container" align="center">
            <div class="col-lg-6 col-sm-6">  

                <input type="text" class="form-control" id="nombre" placeholder="nombre" name="nombre" required/>
                <br>
                <input type="text" class="form-control" placeholder="precio" name="precio" required/>
                <br>
                <input type="text" class="form-control" placeholder="material" name="material" required/>
                <br>
                <input type="text" class="form-control" placeholder="piezas" name="piezas" id="piezas" required/>
            </div>
            
            
            <br>
            <div class="col-lg-6 col-sm-6">
                <input type="submit" class="btn btn-info  btn-block" value="enviar">
            </div>
    </form>          
    </body>
</html>
