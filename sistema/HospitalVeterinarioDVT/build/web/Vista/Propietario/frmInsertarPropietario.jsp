<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form  action="InsertarPropietario.jsp">
            
            <label>Nombre:</label><br><input type="text" required name="nombre"><br>
            <label>Dni:</label><br><input type="text" required name="dni"><br>
            <label>Teléfono:</label><br><input type="text"   required name="telefono"><br>
             <label>Direccion:</label><br><input type="text"  required name="direccion"><br>

             <input class="" type="submit"  value="Insertar" >
        
        </form>
       
    </body>
</html>
