package org.apache.jsp.Vista.Paciente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frmInsertarPaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Insertar Paciente</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <form action=\"InsertarPaciente.jsp\">\r\n");
      out.write("            <label>Propietario:</label><br><input type=\"text\" name=\"dni\"><br>\r\n");
      out.write("            <label>Nombre:</label><br><input type=\"text\" name=\"nombre\"><br>\r\n");
      out.write("            <label>Especie:</label><br><input type=\"text\" name=\"especie\"><br>\r\n");
      out.write("            <label>Raza:</label><br><input type=\"text\" name=\"raza\"><br>\r\n");
      out.write("            <label>Edad:</label><br><input   type=\"number\" name=\"edad\"><br>\r\n");
      out.write("            <label>Sexo:</label><br><input   type=\"text\" name=\"sexo\"><br>\r\n");
      out.write("            <label>Procedencia:</label><br><input   type=\"text\" name=\"procedencia\"><br>\r\n");
      out.write("            <label>Color:</label><br><input type=\"text\" name=\"color\"><br>\r\n");
      out.write("            <input type=\"hidden\"  name=\"operacion\" value=\"insertar\">\r\n");
      out.write("            <input class=\"btn btn-1\" type=\"submit\" value=\"Insertar\">\r\n");
      out.write("        </form>\r\n");
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
