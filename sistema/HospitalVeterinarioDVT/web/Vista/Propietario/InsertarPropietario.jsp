<%@page import="modelo.DAOpropietario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
           modelo.DAOpropietario propietario=new DAOpropietario();
           propietario.setCedula(request.getParameter("cedula"));
           propietario.setNombre(request.getParameter("nombre"));
           propietario.setDireccion(request.getParameter("direccion"));
           propietario.setTelefono(request.getParameter("telefono"));
           
           
            if (propietario.insertar()) {
        %>
        <script>
            alert("Propietario insertado correctamente");
            var pag="frmpropietario.jsp";
            window.location=pag;
        </script>
        <%            } else {
        %>
        <script>
            alert("No se insertó");
            window.location="frmpropietario.jsp";
        </script>
        <%                }
        %>
