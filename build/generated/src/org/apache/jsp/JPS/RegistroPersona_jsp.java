package org.apache.jsp.JPS;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class RegistroPersona_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>REGISTRO</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <LINK REL=StyleSheet HREF=\"../DocumentosCSS/ERegistroPersona.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("        <script src=\"../JavaScript/Registro.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"contenedor\">\r\n");
      out.write("            <form name=\"formulario\" onSubmit=\"return validarPasswd()\" method=\"post\" action=\"../JPS/Registro.jsp\">\r\n");
      out.write("                <center>\r\n");
      out.write("                    <p class=\"titulo\"> REGÍSTRATE </p>\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <INPUT type=\"text\" id=\"noms\" name=\"nombre\" placeholder=\"Nombre(s)\" maxlength=\"25\" onkeyup=\"mayus(this);\" onkeypress=\"letras()\" required/> \r\n");
      out.write("                    <INPUT type=\"text\" id=\"appat\" name=\"appat\" placeholder=\"Apellido Paterno\" maxlength=\"20\" onkeyup=\"mayus(this);\" onkeypress=\"letras()\" required/>\r\n");
      out.write("                    <INPUT type=\"text\" id=\"apmat\" name=\"apmat\" placeholder=\"Apellido Materno\" maxlength=\"20\" onkeyup=\"mayus(this);\" onkeypress=\"letras()\" required/> \r\n");
      out.write("                    <br><br>\r\n");
      out.write("\r\n");
      out.write("                        ");

                            ArrayList<Model.Colonia> colonias = (ArrayList<Model.Colonia>) request.getAttribute("colonias");
                            ArrayList<Model.Delegacion> delegaciones = (ArrayList<Model.Delegacion>) request.getAttribute("delegaciones");
                            
                        
      out.write("\r\n");
      out.write("                        <select id='delegacion' name='delegacion' onchange=\"getColonias(this)\">\r\n");
      out.write("                            ");
for(Model.Delegacion delegacion : delegaciones) {
                                out.println("<option value='"+delegacion.getNom_Delegacion()+"' onclick='getColonias(`"+delegacion.getIdDelegacion()+"`)')>"+delegacion.getNom_Delegacion()+"</option>");
                            }
      out.write("\r\n");
      out.write("                        </select>\r\n");
      out.write("                        \r\n");
      out.write("                        <select id='colonias' name='colonias'>\r\n");
      out.write("                            \r\n");
      out.write("                        </select>    \r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <INPUT type=\"text\" id=\"correo\" name=\"correo\" placeholder=\"Correo Electrónico\" maxlength=\"50\" required/>\r\n");
      out.write("                    <INPUT type=\"text\" id=\"cel\" name=\"celu\" placeholder=\"Celular\" maxlength=\"10\" minlength=\"10\" onkeypress=\"nume()\" required/>\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <INPUT type=\"text\" id=\"nina\" name=\"nn\" placeholder=\"Nick Name\" maxlength=\"25\" onkeyup=\"mayus(this);\" required/>\r\n");
      out.write("                    <INPUT type=\"password\" id=\"con\" name=\"contra\" placeholder=\"Contraseña\" maxlength=\"20\" required/>\r\n");
      out.write("                    <INPUT type=\"password\" id=\"concom\" name=\"contracom\" placeholder=\"Confirma Contraseña\" maxlength=\"20\" required/>\r\n");
      out.write("                    <br><br><br>\r\n");
      out.write("                    <p align=\"right\">\r\n");
      out.write("                        <INPUT type=\"submit\" class=\"boton\" name=\"bot\" value=\"Registra\" id=\"botreg\">\r\n");
      out.write("                    </p>\r\n");
      out.write("                </center>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script>\r\n");
      out.write("        function getColonias(delegacionId) {\r\n");
      out.write("            console.log(delegacionId.selectedIndex+1)\r\n");
      out.write("            let colonias = [");
for(Model.Colonia colonia : colonias) {
                                out.println("{id: "+colonia.getIdColonia()+", nombre: '"+colonia.getNom_Colonia()+"', delegacion: '"+colonia.getIdDelegacion()+"'},");
                            }
      out.write("]\r\n");
      out.write("\r\n");
      out.write("            let coloniasFiltradas = []\r\n");
      out.write("            let select = document.getElementById(\"colonias\") \r\n");
      out.write("            for (i = 0; i < select.options.length; i++) {\r\n");
      out.write("                select.remove(i)\r\n");
      out.write("            }\r\n");
      out.write("            for(let colonia of colonias) {\r\n");
      out.write("                console.log(colonia)\r\n");
      out.write("                if(colonia.delegacion == delegacionId.selectedIndex+1) {\r\n");
      out.write("                    console.log('YES')\r\n");
      out.write("                    coloniasFiltradas.push(colonia)\r\n");
      out.write("                    let option = document.createElement(\"option\")\r\n");
      out.write("                    option.text = colonia.nombre\r\n");
      out.write("                    option.value = colonia.nombre\r\n");
      out.write("                    select.add(option)\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("             console.log(coloniasFiltradas)\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("    </body>\r\n");
      out.write("    \r\n");
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
