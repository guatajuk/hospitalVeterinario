<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Propietario</title>
        <link rel="stylesheet" type="text/css" href="../../css/formularios.css">
        <link rel="stylesheet" type="text/css" href="../../css/menu.css">        
    </head>
    <body>
        <div id="cssmenu">
            <ul>
                <li><a href=""><spam>Inicio</spam></a>></li>
                <li class="active has-sub">
                    <a href="#"><spam>Gestión de Propietarios</spam></a>
                    <ul>
                        <li class="has-sub"><a href="../Propietario/frmInsertarPropietario.jsp"><spam>Insertar</spam></a></li>
                        <li class="has-sub"><a href="../Propietario/frmConsultarPropietario.jsp"><spam>Consultar</spam></a></li>
                        <li class="has-sub"><a href="../Propietario/frmModificarPropietario.jsp"><spam>Modificar</spam></a></li>
                    </ul>
                </li>
                <li class="active has-sub">
                    <a href="#"><spam></spam>Gestión de Pacientes</a>
                    <ul>
                        <li class="has-sub"><a href="../Paciente/frmInsertarPaciente.jsp"><spam>Insertar</spam></a></li>
                        <li class="has-sub"><a href="../Paciente/frmConsultarPaciente.jsp"><spam>Consultar</spam></a></li>
                        <li class="has-sub"><a href="../Paciente/frmModificarPaciente.jsp"><spam>Modificar</spam></a></li>
                    </ul>
                </li>

                <li class="active has-sub">
                    <a href="#"><spam></spam>Gestión de Veterinarios</a>
                    <ul>
                        <li class="has-sub"><a href="../Veterinario/frmInsertarVeterinario.jsp"><spam>Insertar</spam></a></li>
                        <li class="has-sub"><a href="../Veterinario/frmConsultarVeterinario.jsp"><spam>Consultar</spam></a></li>
                        <li class="has-sub"><a href="../Veterinario/frmModificarVeterinario.jsp"><spam>Modificar</spam></a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div id="wrapper">
            <form  action="ConsultarPropietario.jsp">
                <fieldset>
                    <legend>Consultar Propietario</legend>
                    <div><input type="text" required name="dni" placeholder="Dni"></div>
                    <input class="" type="submit"  value="Consultar" name="submit">

                </fieldset>
            </form>
        </div>
        <div id="animales">
            <img src="../../animales.png" alt="ad">
        </div>
        <div id="logo">
            <img src="../../ucaldas1.png"> 
        </div>
    </body>
</html>
