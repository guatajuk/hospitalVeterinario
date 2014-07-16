<%-- 
    Document   : cargarcombo
    Created on : Jul 16, 2014, 1:30:01 PM
    Author     : giraldo
--%>

<%@page import="Controlador.DAOpaciente"%>
<% 
 DAOpaciente paciente=new DAOpaciente();
    
           StringBuffer sbfr = paciente.generarCmbEspecie();
           String combo = "";
            if(sbfr != null){
               combo = sbfr.toString();
            }
            out.print(combo);
          
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
