<%@page import="Controlador.DAOveterinario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        Controlador.DAOveterinario veterinario= new DAOveterinario();
        veterinario.getVeterinario().setCedula(request.getParameter("cedula"));
        veterinario.getVeterinario().setNombre(request.getParameter("nombre"));
        veterinario.getVeterinario().setEspecialidad(request.getParameter("especialidad"));     
        if(!veterinario.getVeterinario().getNombre().equals("") && !veterinario.getVeterinario().getCedula().equals("") && !veterinario.getVeterinario().getEspecialidad().equals("")){
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
