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
            propietario.getPropietario().setDni(request.getParameter("cedula"));
            if (!propietario.getPropietario().getDni().equals("")) {
                propietario p = propietario.consultar();
                if (p!= null) {
                    String form = "<div id=wrapper><form  action=ModificarPropietario1.jsp><fieldset><legend>Modifica Propietario</legend><div><input type=text required name=nombre value=\"" + p.getNombre() + "\" placeholder=Nombre></div><div><input type=text readonly name=cedula value=\"" + p.getDni() + "\" placeholder=Cedula></div><div><input type=text   required name=telefono value=\"" + p.getTelefono() + "\" placeholder=Telefono></div><div><input type=text  required name=direccion value=\"" + p.getDireccion() + "\" placeholder=Direccion></div><input  type=submit  value=Modificar name=submit></fieldset></form></div>";
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
