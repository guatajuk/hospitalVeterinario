<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Paciente</title>
    </head>
    <body>
        <form action="InsertarPaciente.jsp">
            <label>Codigo:</label> <br><input type="text" name="codigo"><br>
            <label>Propietario:</label><br><input type="text" name="propietario"><br>
            <label>Nombre:</label><br><input type="text" name="nombre"><br>
            <label>Especie:</label><br><input type="text" name="especie"><br>
            <label>Raza:</label><br><input type="text" name="raza"><br>
            <label>Edad:</label><br><input   type="number" name="edad"><br>
            <label>Color:</label><br><input type="text" name="color"><br>
            <input type="hidden"  name="operacion" value="insertar">
            <input class="btn btn-1" type="submit" value="Insertar">
        </form>
    </body>
</html>
