<%-- 
    Document   : ModificarPropietario1
    Created on : 
    Author     : Jenny
--%>
<%@page import="Modelo.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Modelo.DAOpropietario propietario=new DAOpropietario();
    propietario.setDni(request.getParameter("dni"));
    propietario.setNombre(request.getParameter("nombre"));
    propietario.setDireccion(request.getParameter("direccion"));
    propietario.setTelefono(request.getParameter("telefono"));
    if(!propietario.getDni().equals("")&&! propietario.getDireccion().equals("")&&!propietario.getNombre().equals("")&&!propietario.getTelefono().equals("")){
        if (propietario.insertar()) {
%>
            <script>
                alert("Propietario insertado correctamente");
                var pag="frmInsertarPropietario.jsp";
                window.location=pag;
            </script>
<%            
        } else {
%>
            <script>
                alert("No se insertó");
                window.location="frmInsertarPropietario.jsp";
            </script>
<%                
        }
    }
    else {
%>
        <script>
            alert("Debe diligenciar todos los campos");
            window.location="frmInsertarPropietario.jsp";
        </script>
<%    
    }
%>
