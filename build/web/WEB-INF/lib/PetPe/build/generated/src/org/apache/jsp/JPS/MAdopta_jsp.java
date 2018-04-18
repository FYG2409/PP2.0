package org.apache.jsp.JPS;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Mascota;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class MAdopta_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>ADOPTA</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../DocumentosCSS/MAdopta.css\">\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"../JavaScript/MAdopta.js\"></script>\r\n");
      out.write("        <script src=\"../../../JavaScript/Perros.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("       <header>\r\n");
      out.write("           <nav>\r\n");
      out.write("              <ul>\r\n");
      out.write("                  <li> <a href=\"../PaginaPrincipal/index.jsp\">Inicio</a></li>\r\n");
      out.write("                  <li><a href=\"../RegistroMascota/RMascota.jsp\">Registro</a></li>\r\n");
      out.write("              </ul> \r\n");
      out.write("               <img id=\"logo\" src=\"../Resourses/Images/logoPP.png\" >\r\n");
      out.write("               <ul>\r\n");
      out.write("                   <li><a href=\"../Quejas/Quejas.html\">Quejas y Sugerencias</a></li>\r\n");
      out.write("                   <li><a href=\"../InicioDeSesion/InicioDeSesion.html\">Cerrar Sesion</a></li>\r\n");
      out.write("               </ul> \r\n");
      out.write("           </nav> \r\n");
      out.write("        </header>\r\n");
      out.write("        <section id=\"banner\">\r\n");
      out.write("           \r\n");
      out.write("        </section>\r\n");
      out.write("        ");

        ArrayList<Mascota> mascotas = (ArrayList) request.getAttribute("mascotas");
        
        out.println("<div id='conteframe'>"); 
        
            for(Mascota mascota : mascotas) {
              out.println("<a href='#openModal'> <figure><img src='../data/"+mascota.getImagen()+"'></figure> </a>");
                out.println("<div id='openModal' class='algo'>");
              out.println("<div>");
                      out.println("<a href='#close' title='Close' class='close' onclick='close();'><div style='float: left'></div><div class='tache'><img src='../Resourses/Images/close.svg' width=30 height=20></div></a>"); 
                    out.println("<div class='title'> ");
                        out.println("<h1><b>"+mascota.getNombre()+"</b></h1></div>");
                        out.println("<br>");
                        out.println("<p>"+mascota.getRaza()+"</p>");
                        out.println("<br>");
                        out.println("<p> "+mascota.getEdad()+" AÑOS </p>");
                      out.println("<br>");
                      out.println("<img src='../data/"+mascota.getImagen()+"' width=50% height=50% class='ABC'>");
                        out.println("<br>");
                        out.println("<p>"+mascota.getDescripcion()+"</p>");
                  out.println("</div>");
              out.println("</div>");  
            }
           
            
        out.println("</div>");
        
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
