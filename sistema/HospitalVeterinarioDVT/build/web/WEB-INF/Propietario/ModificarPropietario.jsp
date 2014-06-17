<%-- 
    Document   : ModificarPropietario1
    Created on : 
    Author     : Jenny
--%>
<%@page import="Modelo.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String[] datos = new String[4];
            Modelo.DAOpropietario propietario = new DAOpropietario();
            propietario.setDni(request.getParameter("dni"));
            if (!propietario.getDni().equals("")) {
                if (propietario.consultar() != null) {
                    datos = propietario.consultar();
                    out.println("<form  action=ModificarPropietario1.jsp>");
                    out.println("<label>Nombre:</label><br><input type=text required name=nombre value=\"" + datos[1].toString() + "\"><br>");
                    out.println("<label>Dni:</label><br><input type=text required name=dni value=\"" + datos[2].toString() + "\"><br>");
                    out.println("<label>Teléfono:</label><br><input type=text   required name=telefono value=\"" + datos[3].toString() + "\"><br>");
                    out.println("<label>Direccion:</label><br><input type=text  required name=direccion value=\"" + datos[4].toString() + "\"><br>");
                    out.println("<input  type=submit  value=Modificar >");
                    out.println("</form>");
                    out.println("<div><a href=\"../../menu.html\">Volver al Menu</a></div>");

                }
                else{
          %>
        <script>
            alert("el dni no corresponde a un propietario");
            var pag="frmModificarPropietario.jsp";
            window.location=pag;
        </script>
        <%
                }

            }
            else{
            %>
        <script>
            alert("Debe ingresar un dni");
            var pag="frmModificarPropietario.jsp";
            window.location=pag;
        </script>
        <%
            
            }


        %>
    </body>
</html>
