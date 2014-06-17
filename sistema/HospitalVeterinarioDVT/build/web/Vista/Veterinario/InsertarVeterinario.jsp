<%@page import="Modelo.DAOveterinario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        Modelo.DAOveterinario veterinario= new DAOveterinario();
        veterinario.setCedula(request.getParameter("cedula"));
        veterinario.setNombre(request.getParameter("nombre"));
        veterinario.setEspecialidad(request.getParameter("especialidad"));     
        if(!veterinario.getNombre().equals("") && !veterinario.getCedula().equals("") && !veterinario.getEspecialidad().equals("")){
            if (veterinario.insertar()) {
    %>
                <script>
                    alert("Veterinario insertado correctamente");
                    var pag="frmInsertarVeterinario.jsp";
                    window.location=pag;
                </script>
    <%            
            } else {
    %>
                <script>
                    alert("No se insertó");
                    window.location="frmInsertarVeterinario.jsp";
                </script>
    <%      
            }
        } else {
    %>
            <script>
                alert("Debe diligenciar todos los campos");
                window.location="frmInsertarVeterinario.jsp";
            </script>
    <%    
        }
    %>
