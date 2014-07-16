<%@page import="Controlador.DAOpaciente"%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Controlador.DAOpaciente paciente = new DAOpaciente();
     paciente.getPaciente().setPropietario(request.getParameter("codigo"));
     paciente.getPaciente().setPropietario(request.getParameter("propietario"));
     paciente.getPaciente().setNombre(request.getParameter("nombre"));
     paciente.getPaciente().setRaza(request.getParameter("raza"));
     paciente.getPaciente().setEspecie(request.getParameter("especie"));
     paciente.getPaciente().setColor(request.getParameter("color"));
    paciente.getPaciente().setEdad(Integer.valueOf(request.getParameter("edad")));
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