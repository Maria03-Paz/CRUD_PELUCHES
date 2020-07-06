
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.Peluche"%>
<%@page import="Dao.PelucheBD"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   List<Peluche> peluches = new PelucheBD().listadoPeluches();
%>



<html>
    <head>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            /* imagen de fondo */
            body {
                background-image: url('img/ran.jpg'); 
            }
            
                 
            h1 {
          font-size: 60px;
          color: white;
        }
        

        </style>
        <title>CRUD</title>
    </head>
    <body>
            
      <div class="jumbotron container p-3 my-3 bg-dark text-white">
          <h1 class="display-1"align="center"><em>CRUD Peluches</em></h1>
          <hr class="my-4">
        </div>
        <br>        
        <br>
        <div class="container" >
            <table  class="table table-hover table-dark" table-responsive-sm align="center" style="width:55%">
                <thread class="thread-dark">
                    <tr>
                        <td colspan="2"><h2>Peluches</h2></td>
                        <td><a class= "btn btn-success" href="formulario.jsp"><i class="fa fa-plus-square" aria-hidden="true"></i></a></td>
                        <td><a class="btn btn-info" href="catalogo.jsp"><i class="fa fa-book" aria-hidden="true"></i></a> </td>
                        <td>  </td>
                    </tr>

           <tr>
                <th>#</th>
                <th>Nombre</th>
               <th>Precio</th>   
               <th>Material</th> 
               <th>Piezas</th> 
               <th>Tipo</th>   
               <th>  </th>
            </tr>
            
       
            
              
         <%  //  stmt= conexion.prepareStatement("select peluche.id_peluche, pelu<%che.nombre,peluche.precio,peluche.material,peluche.piezas, catalogo.nombre_tipo from peluche inner join catalogo on peluche.id_peluche=catalogo.id_tipo_peluche;");
             // for(Usuario usuario:usuarios){
           for(Peluche peluche:peluches){%>     
          
            
            <tr>
           <th scope="row"><%=peluche.getId_peluche()%></th>
           <td><%=peluche.getNombre()%></td>
           <td><%=peluche.getPrecio() %></td>
            <td><%=peluche.getMaterial() %></td>
            <td><%=peluche.getPiezas() %></td>
           </td>
           
                     <td><a class="btn btn-primary" href="formulario.jsp?id=<%=peluche.getId_peluche()%>"><i class="fa fa-pencil" aria-hidden="true"></i></a> </td>
                    <td><a class="btn btn-danger" href="eliminar.jsp?id=<%=peluche.getId_peluche()%>"><i class="fa fa-trash" aria-hidden="true"></a></td>
         
           </tr>
       <%}%>  
      </table>
         
      <br>
      <br>
       <br>
                   
     
    </body>
</html>
