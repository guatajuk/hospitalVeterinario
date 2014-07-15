<%@page import="Controlador.DAOveterinario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Controlador.DAOveterinario veterinario=new DAOveterinario();
    veterinario.setCedula(request.getParameter("cedula"));
    veterinario.setNombre(request.getParameter("nombre"));
    veterinario.setEspecialidad(request.getParameter("especialidad"));
    if(!veterinario.getCedula().equals("") && !veterinario.getNombre().equals("") && !veterinario.getEspecialidad().equals("")){
        if (veterinario.modificar()) {
%>
            <script>
                alert("Veterinario modificado correctamente");
                var pag="frmModificarVeterinario.jsp";
                window.location=pag;
            </script>
<%            
        } else {
%>
            <script>
                alert("No se modificó");
                window.location="frmModificarVeterinario.jsp";
            </script>
<%                
        }
    } 
    else {
%>
        <script>
            alert("Debe diligenciar todos los campos");
            window.location="frmModificarVeterinario.jsp";
        </script>
<%    
    }
%>
    </body>
</html>
