<%@page import="Modelo.DAOpaciente"%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Modelo.DAOpaciente paciente = new DAOpaciente();
    paciente.setPropietario(request.getParameter("codigo"));
    paciente.setPropietario(request.getParameter("propietario"));
    paciente.setNombre(request.getParameter("nombre"));
    paciente.setRaza(request.getParameter("raza"));
    paciente.setEspecie(request.getParameter("especie"));
    paciente.setColor(request.getParameter("color"));
    paciente.setEdad(Integer.valueOf(request.getParameter("edad")));
    if (!paciente.verificar()) {
        paciente.modificar();
%>
        <script>
            alert("Paciente modificado correctamente");
            var pag = "frmModificarPaciente.jsp";
            window.location = pag;
        </script>
<%         
    }
    else{
%>
        <script>
            alert("No se insertó");
            window.location = "frmModificarPaciente.jsp";
        </script>
<%                            
    }     
%>