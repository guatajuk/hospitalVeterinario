<%-- 
    Document   : ModificarPaciente1
    Created on : Jul 16, 2014, 11:40:04 PM
    Author     : giraldo
--%>

<%@page import="Controlador.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if((!request.getParameter("propietario").equals(""))&& (!request.getParameter("nombre").equals(""))&& (!request.getParameter("especie").equals(""))&& (!request.getParameter("raza").equals(""))&&(!request.getParameter("edad").equals(""))&& (!request.getParameter("color").equals(""))&& (!request.getParameter("procedencia").equals(""))&& (!request.getParameter("sexo").equals(""))){
    Controlador.DAOpaciente paciente=new DAOpaciente();
    paciente.getP().setCodigo(request.getParameter("codigo"));
    paciente.getP().setPropietario(request.getParameter("propietario"));
    paciente.getP().setNombre(request.getParameter("nombre"));
    paciente.getP().setEspecie(Integer.parseInt(request.getParameter("especie")));
    paciente.getP().setRaza(request.getParameter("raza"));
    paciente.getP().setEdad(request.getParameter("edad"));
    paciente.getP().setColor(request.getParameter("color"));
    paciente.getP().setProcedencia(request.getParameter("procedencia"));
    paciente.getP().setSexo(request.getParameter("sexo"));
    if (paciente.modificar()) {
%>
            <script>
                alert("Paciente Modificado correctamente");
                var pag="frmModificarPaciente.jsp";
                window.location=pag;
            </script>
<%            
        } 
        else {
%>
            <script>
                alert("No se Modificó");
                window.location="frmModificarPaciente.jsp";
            </script>
<%                
        }
    }
    else {
%>
        <script>
            alert("Debe diligenciar todos los campos");
            window.location="frmModificarPropietario.jsp";
        </script>
<%
    }
%>
    </body>
</html>
