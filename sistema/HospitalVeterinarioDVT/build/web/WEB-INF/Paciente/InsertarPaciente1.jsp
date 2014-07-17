<%@page import="Controlador.DAOpaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
   if((!request.getParameter("dni").equals(""))&& (!request.getParameter("nombre").equals(""))&& (!request.getParameter("especie").equals(""))&& (!request.getParameter("raza").equals(""))&&(!request.getParameter("edad").equals(""))&& (!request.getParameter("color").equals(""))&& (!request.getParameter("procedencia").equals(""))&& (!request.getParameter("sexo").equals(""))){
    Controlador.DAOpaciente dao = new DAOpaciente();
    dao.getPaciente().setPropietario(request.getParameter("dni"));
    dao.getPaciente().setNombre(request.getParameter("nombre"));
    dao.getPaciente().setEspecie(Integer.parseInt(request.getParameter("especie")));
    dao.getPaciente().setRaza(request.getParameter("raza"));
    dao.getPaciente().setEdad(request.getParameter("edad"));
    dao.getPaciente().setColor(request.getParameter("color"));
    dao.getPaciente().setProcedencia(request.getParameter("procedencia"));
    dao.getPaciente().setSexo(request.getParameter("sexo"));
    out.print("propietario : "+dao.getPaciente().getPropietario());
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
    alert("Debe diligenciar todos los campos");
    window.location = "frmInsertarPaciente.jsp";
</script>
<%
    }
    
    
%>
