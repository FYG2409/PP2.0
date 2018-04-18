<%@page import="Model.Mascota"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>ADOPTA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../DocumentosCSS/MAdopta.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../JavaScript/MAdopta.js"></script>
        <script src="../../../JavaScript/Perros.js"></script>
    </head>
    <body>
       <header>
           <nav>
              <ul>
                  <li> <a href="../PaginaPrincipal/index.jsp">Inicio</a></li>
                  <li><a href="../RegistroMascota/RMascota.jsp">Registro</a></li>
              </ul> 
               <img id="logo" src="../Resourses/Images/logoPP.png" >
               <ul>
                   <li><a href="../Quejas/Quejas.html">Quejas y Sugerencias</a></li>
                   <li><a href="../InicioDeSesion/InicioDeSesion.html">Cerrar Sesion</a></li>
               </ul> 
           </nav> 
        </header>
        <section id="banner">
           
        </section>
        <%
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
        %>
    </body>
</html>