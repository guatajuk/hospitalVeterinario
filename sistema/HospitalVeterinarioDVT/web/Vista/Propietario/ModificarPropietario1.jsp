<%-- 
    Document   : ModificarPropietario1
    Created on : 
    Author     : Jenny
--%>

<%@page import="Controlador.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Controlador.DAOpropietario propietario=new DAOpropietario();
    propietario.getPropietario().setDni(request.getParameter("dni"));
    propietario.getPropietario().setNombre(request.getParameter("nombre"));
    propietario.getPropietario().setDireccion(request.getParameter("direccion"));
    propietario.getPropietario().setTelefono(request.getParameter("telefono"));
    if(!propietario.getPropietario().getDni().equals("")&&! propietario.getPropietario().getDireccion().equals("")&&!propietario.getPropietario().getNombre().equals("")&&!propietario.getPropietario().getTelefono().equals("")){
        if (propietario.modificar()) {
%>
            <script>
                alert("Propietario Modificado correctamente");
                var pag="frmModificarPropietario.jsp";
                window.location=pag;
            </script>
<%            
        } 
        else {
%>
            <script>
                alert("No se Modificó");
                window.location="frmModificarPropietario.jsp";
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
