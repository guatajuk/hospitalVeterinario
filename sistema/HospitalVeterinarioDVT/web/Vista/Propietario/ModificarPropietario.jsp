<%-- 
    Document   : ModificarPropietario1
    Created on : 
    Author     : Jenny
--%>
<%@page import="Modelo.propietario"%>
<%@page import="Controlador.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Controlador.DAOpropietario propietario = new DAOpropietario();
            propietario.getPropietario().setDni(request.getParameter("dni"));
            if (!propietario.getPropietario().getDni().equals("")) {

                propietario p = propietario.consultar();
                if (p!= null) {
                    String form = "<form  action=ModificarPropietario1.jsp><label>Nombre:</label><br><input type=text required name=nombre value=\"" + p.getNombre() + "\"><br><label>Cédula:</label><br><input type=text required name=dni value=\"" + p.getDni() + "\"><br><label>Teléfono:</label><br><input type=text   required name=telefono value=\"" + p.getTelefono() + "\"><br><label>Direccion:</label><br><input type=text  required name=direccion value=\"" + p.getDireccion() + "\"><br><input  type=submit  value=Modificar ></form><div><a href=\"../../menu.html\">Volver al Menu</a></div>";
                    request.setAttribute("form", form);
                    request.getRequestDispatcher("MostrarConsultaModifica.jsp").forward(request, response);
                } else {
        %>
        <script>
            alert("el dni no corresponde a un propietario");
            var pag = "frmModificarPropietario.jsp";
            window.location = pag;
        </script>
        <%
            }

        } else {
        %>
        <script>
            alert("Debe ingresar un dni");
            var pag = "frmModificarPropietario.jsp";
            window.location = pag;
        </script>
        <%
            }


        %>
    </body>
</html>
