<%-- 
    Document   : ModificarPropietario1
    Created on : 
    Author     : Jenny
--%>
<%@page import="Controlador.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Controlador.DAOpropietario propietario = new DAOpropietario();
    propietario.getPropietario().setDni(request.getParameter("dni"));
    propietario.getPropietario().setNombre(request.getParameter("nombre"));
    propietario.getPropietario().setDireccion(request.getParameter("direccion"));
    propietario.getPropietario().setTelefono(request.getParameter("telefono"));
    if (!propietario.getPropietario().getDni().equals("") && !propietario.getPropietario().getDireccion().equals("") && !propietario.getPropietario().getNombre().equals("") && !propietario.getPropietario().getTelefono().equals("")) {
        if (!propietario.verificar()) {
            if (propietario.insertar()) {
%>
<script>
    alert("Propietario insertado correctamente");
    var pag = "frmInsertarPropietario.jsp";
    window.location = pag;
</script>
<%
} else {
%>
<script>
    alert("No se insertó");
    window.location = "frmInsertarPropietario.jsp";
</script>
<%
    }
} else {
%>
<script>
    alert("El propietario ya existe en la base de datos");
    window.location = "frmInsertarPropietario.jsp";
</script>
<%
    }
} else {
%>
<script>
    alert("Debe diligenciar todos los campos");
    window.location = "frmInsertarPropietario.jsp";
</script>
<%
    }
%>
