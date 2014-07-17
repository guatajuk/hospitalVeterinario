package org.apache.jsp.Vista.Propietario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.propietario;
import Controlador.DAOpropietario;

public final class ModificarPropietario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        ");

            Controlador.DAOpropietario propietario = new DAOpropietario();
            propietario.getPropietario().setDni(request.getParameter("cedula"));
            if (!propietario.getPropietario().getDni().equals("")) {
                propietario p = propietario.consultar();
                if (p!= null) {
                    String form = "<div id=wrapper><form  action=ModificarPropietario1.jsp><fieldset><legend>Modifica Propietario</legend><div><input type=text required name=nombre value=\"" + p.getNombre() + "\" placeholder=Nombre></div><div><input type=text readonly name=cedula value=\"" + p.getDni() + "\" placeholder=Cedula></div><div><input type=text   required name=telefono value=\"" + p.getTelefono() + "\" placeholder=Telefono></div><div><input type=text  required name=direccion value=\"" + p.getDireccion() + "\" placeholder=Direccion></div><input  type=submit  value=Modificar name=submit></fieldset></form></div>";
                    request.setAttribute("form", form);
                    request.getRequestDispatcher("MostrarConsultaModifica.jsp").forward(request, response);
                } else {
        
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            alert(\"el dni no corresponde a un propietario\");\r\n");
      out.write("            var pag = \"frmModificarPropietario.jsp\";\r\n");
      out.write("            window.location = pag;\r\n");
      out.write("        </script>\r\n");
      out.write("        ");

            }

        } else {
        
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            alert(\"Debe ingresar un dni\");\r\n");
      out.write("            var pag = \"frmModificarPropietario.jsp\";\r\n");
      out.write("            window.location = pag;\r\n");
      out.write("        </script>\r\n");
      out.write("        ");

            }


        
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
