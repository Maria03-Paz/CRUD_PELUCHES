<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <body>
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

        </style>
        <title>CRUD</title>
    </head>
    <body>
       <br>
      <br>
       <br>
      <br>
    
      <h1 align="center" class="display-1" style="color:olive;"><em>Catalogo</em></h1>
        <br>
      <br>
       
      <div align="center" > 
          <a class= "btn btn-success" href="formulario.jsp">Agregar <i class="fa fa-plus-square" aria-hidden="true"></i></a>
          <a class="btn btn-dark" href="index.jsp"> Regresar <i class="fa fa-reply" aria-hidden="true"></i></i></a>
       <br>
       <br>
      <br>
     </div>

         
      <div class="container" >
          <br>                
        <table  class="table table-hover table-dark table-responsive-sm " align="center" style="width:55%">
             <thread class="thread-dark">
                    <tr>
                        <td colspan="2"><h3 class="display-4" style="color:white;">Animales</h3></td>
                        <td><a class="btn btn-danger" href="eliminar.jsp"><i class="fa fa-trash" aria-hidden="true"></i></a> </td>
                         <td><a class="btn btn-info" href="eliminar.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                    </tr>
         
        <tr> 
             <th><p>Oso Gigante</p></th>
             <th><p>Pinguino Con Bufanda </p></th>
             <th><p>Pollito</p></th>
             <th><p>Gato</p></th>     
            </tr>
          
            <td><img src="img/osi.jpg" align="center" style="width:150px;height:150px;"></td>
            <td><img src="img/pingui.jpg" align="center" style="width:150px;height:150px;"></td>
            <td><img src="img/pollito.jpg" align="center" style="width:150px;height:150px;"></td>
             <td><img src="img/gato.jpg" align="center" style="width:150px;height:150px;"></td>
     </table>
      
      <br>
       <br>
      <br>
     
     <div class="container" >
        <table  class="table table-hover table-dark table-responsive-sm " align="center" style="width:55%">
            <thread class="thread-dark">
                    <tr>
                        <td colspan="2"><h2 align="center"  class="display-4" style="color:white;">Video Juegos</h2></td>
                        <td><a class="btn btn-danger" href="eliminar.jsp"><i class="fa fa-trash" aria-hidden="true"></i></a> </td>
                         <td><a class="btn btn-info" href="eliminar.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                    </tr>
        <tr>   
             <th><p>Yoshi</p></th>
             <th><p>Angry Birds</p></th>
             <th><p>Packman</p></th>
             <th><p>Mario Bros</p></th>
            </tr>
          
            <td><img src="img/yoshi.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/angry.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/pac.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/bros.jpg" align="center" style="width:150px;height:150px;" > </td>
     </table>
     
       <br>
       <br>
      <br>
     
      <div class="container" >
        <table  class="table table-hover table-dark table-responsive-sm " align="center" style="width:55%">
             <thread class="thread-dark">
                    <tr>
                        <td colspan="2"><h2 align="center" class="display-4" style="color:white;">Caricaturas</h2></td>
                        <td><a class="btn btn-danger" href="eliminar.jsp"><i class="fa fa-trash" aria-hidden="true"></i></a> </td>
                         <td><a class="btn btn-info" href="eliminar.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                    </tr>
  
        <tr>
             
             <th><p>Mickey</p></th>
             <th><p>Stitch</p></th>
             <th><p>Osos Escandalosos</p></th>
             <th><p>Garfield</p></th>
            </tr>
          
            <td><img src="img/mickey.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/stich.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/escandalosos.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/garfield.jpg" align="center" style="width:150px;height:150px;" > </td>
         
     </table>
      
       <br>
       <br>
      <br>
     
       <div class="container" >
        <table  class="table table-hover table-dark table-responsive-sm " align="center" style="width:55%">
            <thread class="thread-dark">
                    <tr>
                        <td colspan="2"><h2 align="center" class="display-4" style="color:white;" >Anime</h2></td>
                        <td><a class="btn btn-danger" href="eliminar.jsp"><i class="fa fa-trash" aria-hidden="true"></i></a> </td>
                         <td><a class="btn btn-info" href="eliminar.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
                    </tr>
    
        <tr>
             
             <th><p>Pikachu</p></th>
             <th><p>Rilakkuma</p></th>
             <th><p>Miku</p></th>
             <th><p>Dango</p></th>
            </tr>
          
            <td><img src="img/pikachu.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/rilakkuma.jpg" align="center" style="width:150px;height:150px;" > </td>
            <td><img src="img/miku.jpg" align="center" style="width:150px;height:150px;" > </td>
             <td><img src="img/dango.jpg" align="center" style="width:150px;height:150px;" > </td>
     </table>
    <br>   
     
    
    </body>
</html>
