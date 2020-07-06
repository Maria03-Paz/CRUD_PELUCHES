<%-- 
    Document   : agregarUsuario
    Created on : 12/06/2020, 09:19:29
    Author     : usuario
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/peluches","root","");
         //colocar los demas atributos
        stmt= conexion.prepareStatement("INSERT INTO peluches SET nombre=?");
        stmt.setString(1,request.getParameter("nombre"));
        stmt.executeQuery();
            
   
    }catch(Exception e){
        out.println("Error" +e);
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <body>
        <h1>Agrega un Usuario!</h1>
    </body>
</html>
