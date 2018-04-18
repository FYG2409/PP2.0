package org.apache.jsp.PaginaPrincipal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Pet Petition</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../DocumentosCSS/EstilosPaginaPrincipal.css\">\r\n");
      out.write("        <script>\r\n");
      out.write("            /*function oculta(){\r\n");
      out.write("                for (i = 10; i >= 0; i--){\r\n");
      out.write("                    setTimeout(\"document.getElementById('negro').style.opacity = '\" + (i / 10) + \"'\", (10 - i) * 100);\r\n");
      out.write("                    setTimeout(\"document.getElementById('boton').style.opacity = '\" + (i / 10) + \"'\", (10 - i) * 100);\r\n");
      out.write("                }\r\n");
      out.write("            }*/\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--<div class=\"inicio\" id=\"negro\">\r\n");
      out.write("            <input type=\"button\" id=\"boton\" value=\"INICIAR\" onclick=\"oculta();\"> -->\r\n");
      out.write("        <header id=\"cabecera\">\r\n");
      out.write("            <nav class=\"menu\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li>ADOPCION\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"../MenuAdopta/MAdopta.html\">Adopta</a></li>\r\n");
      out.write("                            <li>Ofrece\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"../InicioDeSesion/InicioDeSesion.html\">Inicia Sesion</a></li>\r\n");
      out.write("                                    <li><a href=\"/RegistroPersona\">Registrate</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>CUIDADO<ul>\r\n");
      out.write("                            <li><a href=\"../BuscaServicio/index.html\">Busca</a></li>\r\n");
      out.write("                            <li>Ofrece\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"../InicioDeSesion/InicioDeSesion.html\">Inicia Sesion</a></li>\r\n");
      out.write("                                    <li><a href=\"/RegistroPersona\">Registrate</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"../Quejas/Quejas.html\">CONTACTANOS</a></li>\r\n");
      out.write("                    <li><a href=\"../AmigoIdeal/Ideal.html\">MASCOTA IDEAL</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </nav>  \r\n");
      out.write("        </header>\r\n");
      out.write("        <a href=\"../empresa/sapphirus.html\"><img class=\"logo\" src=\"../Resourses/Images/logoPP.png\" id=\"logo\"></a>\r\n");
      out.write("        <p class=\"tit\">PetPetition</p>\r\n");
      out.write("        <div class=\"contel-all\" id=\"carrucel\">\r\n");
      out.write("            <div class=\"contel-carrusel\">\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/uno.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/dos.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/tres.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/cuatro.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/cinco.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/seis.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/siete.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/ocho.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/nueve.jpg\"></figure>\r\n");
      out.write("                <figure><img src=\"../Resourses/Images/img_carrucel/diez.jpg\"></figure>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
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
