<%@page import="Modelo.propietario"%>
<%@page import="Controlador.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Propietario</title>
    </head>
    <body>
        <%
            String dni=request.getParameter("dni");
             if(!dni.equals("")){
               Controlador.DAOpropietario propietario = new DAOpropietario();
               propietario.getPropietario().setDni(dni);
               propietario r=propietario.consultar();
                    if (r!= null) {
                    String form="<form><label>Nombre:</label><br><input type=text  readonly  name=nombre value=\"" + r.getNombre() + "\"><br><label>Dni:</label><br><input type=text  readonly  name=dni value=\"" +  r.getDni() + "\"><br><label>Teléfono:</label><br><input type=text readonly   name=telefono value=\"" + r.getTelefono() + "\"><br><label>Direccion:</label><br><input type=text readonly  name=direccion value=\"" +  r.getDireccion() + "\"><br></form><div><a href=\"../../menu.html\">Volver al Menu</a></div>";
                     request.setAttribute("form", form);
                     request.getRequestDispatcher("MostrarConsultaPropietario.jsp").forward(request, response);
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
