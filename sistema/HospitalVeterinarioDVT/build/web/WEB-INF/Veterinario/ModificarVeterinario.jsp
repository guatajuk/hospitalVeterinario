<%@page import="Controlador.DAOveterinario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Veterinario</title>
    </head>
    <body>
        <%
            String[] datos = new String[3];
            Controlador.DAOveterinario veterinario = new DAOveterinario();
            veterinario.setCedula(request.getParameter("cedula"));
            if (!veterinario.getCedula().equals("")) {
                if (veterinario.consultar() != null) {
                    datos = veterinario.consultar();
                    out.println("<form  action=ModificarVeterinario1.jsp>");
                    out.println("<label>Cedula:</label><br><input type=text required name = cedula value=\"" + datos[1].toString() + "\"><br>");
                    out.println("<label>Nombre:</label><br><input type=text required name = nombre value=\"" + datos[2].toString() + "\"><br>");
                    out.println("<label>Especialidad:</label><br><input type=text   required name = especialidad value=\"" + datos[3].toString() + "\"><br>");
                    out.println("<input  type=submit  value=Modificar >");
                    out.println("</form>");
                    out.println("<div><a href=\"../../menu.html\">Volver al Menu</a></div>");
                }
                else{
        %>
                    <script>
                        alert("La cédula no corresponde a un veterinario");
                        var pag="frmModificarVeterinario.jsp";
                        window.location=pag;
                    </script>
        <%
                }
            }
            else{
        %>
                <script>
                    alert("Debe ingresar una número de cédula");
                    var pag="frmModificarVeterinario.jsp";
                    window.location=pag;
                </script>
        <%
            }
        %>
    </body>
</html>
