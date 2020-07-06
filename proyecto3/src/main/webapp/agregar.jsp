<%@page import="Dao.Peluche"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean querySuccess;
   PelucheBD peluches = new PelucheBD();
   querySuccess= peluches.insertarPeluche(new Peluche(request.getParameter("nombre"), Integer.parseInt(request.getParameter("precio")), request.getParameter("material"), Integer.parseInt(request.getParameter("piezas"))));
    %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <body>
        <br>
        <% if(querySuccess = true){ %>
        <div class="alert alert-primary" role="alert" align="center">
            Peluche Agregado Correctamente!
        </div>
        <% }else{ %>
        <div class="alert alert-primary" role="alert" align="center">
            El peluche nose agrego Correctamente!
        </div>
         <% } %>
        <div class="col-lg-4 col-sm-6">
            <td><a class="btn btn-success btn-block" href="index.jsp">Regresar</a></td>
        </div>
        
         <div class="col-lg-4 col-sm-6">
            <td><a class="btn btn-info btn-block" href="formulario.jsp">Agregar Nuevo Peluche</a></td>
        </div>
    </body>
</html>

      
   