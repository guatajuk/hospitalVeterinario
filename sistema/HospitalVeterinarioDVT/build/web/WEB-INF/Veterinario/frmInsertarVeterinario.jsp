<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Veterinario</title>
    </head>
    <body>
        <form  action=InsertarVeterinario.jsp>
            <label>Cédula:</label><br><input type="text" required name="cedula"><br>
            <label>Nombre:</label><br><input type="text" required name="nombre"><br>
            <label>Especialidad:</label><br><input type="text" required name="especialidad"><br>
            <input class="" type="submit"  value="Insertar" >
        </form>
        <div><a href="../../menu.html">Volver al Menu</a></div>
    </body>
</html>
