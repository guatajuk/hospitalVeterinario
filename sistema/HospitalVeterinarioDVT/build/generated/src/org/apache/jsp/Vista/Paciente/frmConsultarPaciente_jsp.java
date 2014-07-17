package org.apache.jsp.Vista.Paciente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frmConsultarPaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Consultar Paciente</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../css/formularios.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../css/menu.css\">        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"cssmenu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"\"><spam>Inicio</spam></a>></li>\n");
      out.write("                <li class=\"active has-sub\">\n");
      out.write("                    <a href=\"#\"><spam>Gestión de Propietarios</spam></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Propietario/frmInsertarPropietario.jsp\"><spam>Insertar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Propietario/frmConsultarPropietario.jsp\"><spam>Consultar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Propietario/frmModificarPropietario.jsp\"><spam>Modificar</spam></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"active has-sub\">\n");
      out.write("                    <a href=\"#\"><spam></spam>Gestión de Pacientes</a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Paciente/frmInsertarPaciente.jsp\"><spam>Insertar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Paciente/frmConsultarPaciente.jsp\"><spam>Consultar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Paciente/frmModificarPaciente.jsp\"><spam>Modificar</spam></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"active has-sub\">\n");
      out.write("                    <a href=\"#\"><spam></spam>Gestión de Veterinarios</a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Veterinario/frmInsertarVeterinario.jsp\"><spam>Insertar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Veterinario/frmConsultarVeterinario.jsp\"><spam>Consultar</spam></a></li>\n");
      out.write("                        <li class=\"has-sub\"><a href=\"../Veterinario/frmModificarVeterinario.jsp\"><spam>Modificar</spam></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>        \n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <form action=\"ConsultarPaciente.jsp\" autocomplete=\"off\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>Consultar Paciente</legend>\n");
      out.write("                    <div><input type=\"text\" name=\"codigo\" placeholder=\"Codigo\"></div>\n");
      out.write("                    <input class=\"\" type=\"submit\" value=\"Consultar\" name=\"submit\">\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"animales\">\n");
      out.write("            <img src=\"../../Imagenes/animales.png\" alt=\"ad\">\n");
      out.write("        </div>\n");
      out.write("        <div id=\"logo\">\n");
      out.write("            <img src=\"../../Imagenes/ucaldas1.png\"> \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
