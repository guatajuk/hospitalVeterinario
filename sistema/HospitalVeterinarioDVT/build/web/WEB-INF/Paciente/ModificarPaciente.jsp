<%@page import="Modelo.paciente"%>
<%@page import="Controlador.DAOpaciente"%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
            Controlador.DAOpaciente paciente = new DAOpaciente();
            paciente.getP().setCodigo(request.getParameter("codigo"));
            if (paciente.getP().getCodigo()!=null) {
                paciente p = paciente.consultar();
                if (p!= null) {
                     String formu="<form  action=ModificarPaciente1.jsp><label>Nombre:</label><br><input type=text required name=nombre value=\"" + p.getNombre() + "\"><br><label>Especie:</label><div id=divespecie name=divespecie></div><br><br><label>Raza:</label><br><input type=text required name=raza value=\"" + p.getRaza() + "\"><br><label>Sexo:</label><br><select type=text required name=sexo><option value=M>Macho</option><option value=H>Hembra</option></select><br><label>Edad:</label><br><input type=text required name=edad value=\"" + p.getEdad() + "\"><br><label>Color:</label><br><input type=text required name=color value=\"" + p.getColor() + "\"><br><label>Procedencia:</label><br><input name=codigo TYPE=HIDDEN value=\"" + p.getCodigo() + "\"><input type=text required name=procedencia value=\"" + p.getProcedencia() + "\"><br><label>Cédula Propietario:</label><br><input type=text required name=propietario value=\"" + p.getPropietario()+ "\"><br><input  type=submit  value=Modificar ></form><div><a href=\"../../menu.html\">Volver al Menu</a></div>";
                     request.setAttribute("form", formu);
                     request.getRequestDispatcher("../Propietario/MostrarConsultaModifica.jsp").forward(request, response);
                } else {
%>
<script>
    alert("el codigo no corresponde a un paciente existente");
    var pag = "frmModificarPaciente.jsp";
    window.location = pag;
</script>
<%
    }

} else {
%>
<script>
    alert("Debe ingresar un codigo");
    var pag = "frmModificarPaciente.jsp";
    window.location = pag;
</script>
<%
    }


%>