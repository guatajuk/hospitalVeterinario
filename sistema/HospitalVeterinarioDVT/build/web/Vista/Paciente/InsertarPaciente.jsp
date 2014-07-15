<%@page import="Modelo.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        Modelo.DAOpaciente paciente= new DAOpaciente();
        paciente.getPaciente().setPropietario(request.getParameter("dni"));
         paciente.getPaciente().setNombre(request.getParameter("nombre"));
         paciente.getPaciente().setEspecie(request.getParameter("especie"));
         paciente.getPaciente().setRaza(request.getParameter("raza"));
         paciente.getPaciente().setEdad(request.getParameter("edad"));
         paciente.getPaciente().setColor(request.getParameter("color"));
         paciente.getPaciente().setSexo(request.getParameter("sexo"));
        if(! paciente.getPaciente().getPropietario().equals("") && ! paciente.getPaciente().getNombre().equals("") && ! paciente.getPaciente().getEspecie().equals("") && ! paciente.getPaciente().getRaza().equals("") && ! paciente.getPaciente().getEdad().equals("") && ! paciente.getPaciente().getColor().equals("") && ! paciente.getPaciente().getSexo().equals("")){
            if (paciente.insertar()) {
    %>
                <script>
                    alert("Paciente insertado correctamente");
                    var pag="frmInsertarPaciente.jsp";
                    window.location=pag;
                </script>
    <%            
            } else {
    %>
                <script>
                    alert("No se insertó");
                    window.location="frmInsertarPaciente.jsp";
                </script>
    <%      
            }
        } else {
    %>
            <script>
                alert("Debe diligenciar todos los campos");
                window.location="frmInsertarPaciente.jsp";
            </script>
    <%    
        }
    %>
