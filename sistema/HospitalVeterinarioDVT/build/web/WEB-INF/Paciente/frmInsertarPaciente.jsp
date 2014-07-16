<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../../js/jquery-1.10.2.js"></script>
        <script src="../../js/jquery-ui.js"></script>
        <script src="../../js/utilidades.js"></script>
         <script src="../../js/jquery.url.js"></script>
        <title>Insertar Paciente</title>
    </head>
    <body>
        <form action="InsertarPaciente.jsp">
            <label>Propietario:</label><br><input type="text" id="dni" name="dni"><br>
            <label>Nombre:</label><br><input type="text" name="nombre"><br>
            <div id="especie" name="especie">
                <label>Especie:</label><br>
                <!--<select  id="especie" name="especie"></select><br> -->
            </div>
            <label>Raza:</label><br><input type="text" name="raza"><br>
            <label>Edad:</label><br><input   type="number" name="edad"><br>
            <label>Sexo:</label><br><input   type="text" name="sexo"><br>
            <label>Procedencia:</label><br><input   type="text" name="procedencia"><br>
            <label>Color:</label><br><input type="text" name="color"><br>
            <input class="btn btn-1" type="submit" value="Insertar">
        </form>
    </body>
</html>
