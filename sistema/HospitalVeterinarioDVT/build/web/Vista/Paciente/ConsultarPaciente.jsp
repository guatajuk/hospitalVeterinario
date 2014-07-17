<%@page import="Modelo.paciente"%>
<%@page import="Controlador.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Paciente</title>
    </head>
    <body>
        <%
            String codigo=request.getParameter("codigo");
             if(!codigo.equals("")){
               Controlador.DAOpaciente paciente = new DAOpaciente();
               paciente.getP().setCodigo(codigo);
               paciente p=paciente.consultar();
                    if (p!= null) {
                     String formu="<form><label>Nombre:</label><br><input type=text readonly name=nombre value=\"" + p.getNombre() + "\"><br><label>Especie:</label><br><input name  readonly especie value=\"" + p.getEspecie() + "\"><br><label>Raza:</label><br><input type=text readonly name=raza value=\"" + p.getRaza() + "\"><br><label>Sexo:</label><br><input type=text readonly name=sexo value=\"" + p.getSexo() + "\"><br><label>Edad:</label><br><input type=text readonly name=edad value=\"" + p.getEdad() + "\"><br><label>Color:</label><br><input type=text readonly name=color value=\"" + p.getColor() + "\"><br><label>Procedencia:</label><br><input type=text readonly name=procedencia value=\"" + p.getProcedencia() + "\"><br><label>Cédula Propietario:</label><br><input type=text readonly name=propietario value=\"" + p.getPropietario()+ "\"><br></form><div><a href=\"../../menu.html\">Volver al Menu</a></div>";
                     request.setAttribute("form", formu);
                     request.getRequestDispatcher("MostrarConsultaPaciente.jsp").forward(request, response);
                }
                else{
          %>
        <script>
            alert("el codigo no corresponde a un paciente registrado");
            var pag="frmConsultarPaciente.jsp";
            window.location=pag;
        </script>
        <%
                }

            }
            else{
            %>
        <script>
            alert("Debe ingresar un codigo");
            var pag="frmConsultarPaciente.jsp";
            window.location=pag;
        </script>
        <%
            
            }


        %>
    </body>
</html>
