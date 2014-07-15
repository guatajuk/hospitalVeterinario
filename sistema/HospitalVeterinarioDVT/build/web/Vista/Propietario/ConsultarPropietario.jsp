<%@page import="Modelo.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Propietario</title>
    </head>
    <body>
        <%
            String[] datos = new String[5];
            String dni=request.getParameter("dni");
            Modelo.DAOpropietario propietario = new DAOpropietario();
            if(!dni.equals("")){
               propietario.getPropietario().setDni(dni);
                    if ((datos = propietario.consultar())!= null) {
                    out.println("<form>");
                    out.println("<label>Nombre:</label><br><input type=text  readonly  name=nombre value=\"" + datos[1].toString() + "\"><br>");
                    out.println("<label>Dni:</label><br><input type=text  readonly  name=dni value=\"" + datos[2].toString() + "\"><br>");
                    out.println("<label>Teléfono:</label><br><input type=text readonly   name=telefono value=\"" + datos[3].toString() + "\"><br>");
                    out.println("<label>Direccion:</label><br><input type=text readonly  name=direccion value=\"" + datos[4].toString() + "\"><br>");
                    out.println("</form>");
                    out.println("<div><a href=\"../../menu.html\">Volver al Menu</a></div>");
               

                }
                else{
          %>
        <script>
            alert("el dni no corresponde a un propietario");
            var pag="frmConsultarPropietario.jsp";
            window.location=pag;
        </script>
        <%
                }

            }
            else{
            %>
        <script>
            alert("Debe ingresar un dni");
            var pag="frmConsultarPropietario.jsp";
            window.location=pag;
        </script>
        <%
            
            }


        %>
    </body>
</html>
