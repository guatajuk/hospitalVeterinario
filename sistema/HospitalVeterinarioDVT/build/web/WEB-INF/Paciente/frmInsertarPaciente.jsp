<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../../css/formularios.css">
        <link rel="stylesheet" type="text/css" href="../../css/menu.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../../js/jquery-ui.js"></script>
        <script src="../../js/jquery-1.10.2.js"></script>
        <script src="../../js/utilidades.js"></script>
        
        <title>Insertar Paciente</title>
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
        <div id="wrapper">
            <form  action=InsertarPaciente.jsp>
                <fieldset>
                    <legend>Insertar Paciente</legend>
                    <div><input type="text" required name="nombre" placeholder="Nombre"></div>
                    <div id="divespecie" name="divespecie"></div>
                    <br>
                    <div><input type="text" required name="raza" placeholder="Raza"></div>
                    <div><select type="text" required name="sexo"><option value="M">Macho</option><option value="H">Hembra</option></select></div>
                    <br>
                    <div><input type="text" required name="edad" placeholder="Edad"></div>
                    <div><input type="text" required name="color" placeholder="Color"></div>
                    <div><input type="text" required name="procedencia" placeholder=Procedencia""></div>
                    <div><input type="text" required name="propietario" placeholder="Propietario"></div>
                    <input class="" type="submit"  value="Insertar" name="submit" >
                </fieldset>

            </form>

        </div>
        <div id="animales">
            <img src="../../Imagenes/animales.png" alt="ad">
        </div>
        <div id="logo">
            <img src="../../Imagenes/ucaldas1.png"> 
        </div>
    </body>
</html>
