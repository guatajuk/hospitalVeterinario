<%@page import="Controlador.DAOpropietario"%>
<%@page import="Controlador.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
   if((!request.getParameter("propietario").equals(""))&& (!request.getParameter("nombre").equals(""))&& (!request.getParameter("especie").equals(""))&& (!request.getParameter("raza").equals(""))&&(!request.getParameter("edad").equals(""))&& (!request.getParameter("color").equals(""))&& (!request.getParameter("procedencia").equals(""))&& (!request.getParameter("sexo").equals(""))){
    Controlador.DAOpaciente dao = new DAOpaciente();
    dao.getP().setPropietario(request.getParameter("propietario"));
    dao.getP().setNombre(request.getParameter("nombre"));
    dao.getP().setEspecie(Integer.parseInt(request.getParameter("especie")));
    dao.getP().setRaza(request.getParameter("raza"));
    dao.getP().setEdad(request.getParameter("edad"));
    dao.getP().setColor(request.getParameter("color"));
    dao.getP().setProcedencia(request.getParameter("procedencia"));
    dao.getP().setSexo(request.getParameter("sexo"));
    DAOpropietario propietario = new DAOpropietario();
    propietario.getPropietario().setDni(request.getParameter("propietario"));
    if(propietario.verificar()){
    if(!dao.verificar()){
    boolean insertado=dao.insertar();
             if (insertado){
%>
<script>
    alert("Paciente insertado correctamente");
    var pag = "frmInsertarPaciente.jsp";
    window.location = pag;
</script>
<%
} else {
%>
<script>
    alert("No se insertó");
    window.location = "frmInsertarPaciente.jsp";
</script>
<%
        }
   
} else {
%>
<script>
    alert("El paciente ya se encuentra registrado");
    window.location = "frmInsertarPaciente.jsp";
</script>
<%
    }
    } else {
%>
<script>
    alert("No pertenece a un propietario existente");
    window.location = "frmInsertarPaciente.jsp";
</script>
<%
    }}
    
else {
%>
<script>
    alert("Debe diligenciar todos los datos");
    window.location = "frmInsertarPaciente.jsp";
</script>
<%
    }
    
    
%>
