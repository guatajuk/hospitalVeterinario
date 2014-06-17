<%@page import="Modelo.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        Modelo.DAOpaciente paciente= new DAOpaciente();
        paciente.setPropietario(request.getParameter("dni"));
        paciente.setNombre(request.getParameter("nombre"));
        paciente.setEspecie(request.getParameter("especie"));
        paciente.setRaza(request.getParameter("raza"));
        paciente.setEdad(request.getParameter("edad"));
        paciente.setColor(request.getParameter("color"));
        paciente.setSexo(request.getParameter("sexo"));
        if(!paciente.getPropietario().equals("") && !paciente.getNombre().equals("") && !paciente.getEspecie().equals("") && !paciente.getRaza().equals("") && !paciente.getEdad().equals("") && !paciente.getColor().equals("") && !paciente.getSexo().equals("")){
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
