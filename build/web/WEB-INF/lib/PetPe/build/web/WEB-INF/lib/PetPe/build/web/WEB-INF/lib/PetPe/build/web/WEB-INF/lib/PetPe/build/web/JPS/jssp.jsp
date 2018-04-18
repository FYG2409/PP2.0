<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/Estilos.css" TYPE="text/css" MEDIA=screen> 
        <title>DATOS</title>
    </head>
    <body>
        <%
            String boton=request.getParameter("bot");
            String appat="";
            String apmat="";
            String nombre="";
            String matri="";
            String nn="";
            String correo="";
            String fecha="";
            String celu="";
            String contra="";

            if(boton!= null){
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                nombre = request.getParameter("nombre");
                fecha = request.getParameter("date");
                matri = request.getParameter("matri");
                nn = request.getParameter("nn");
                correo = request.getParameter("correo");
                celu = request.getParameter("celu");
                contra = request.getParameter("contra");
            }
        %>
        <table>
            <tr>
                <td>Apellido Paterno</td>
                <td><%out.println(appat);%></td>
            </tr>
            <tr>
                <td>Apellido Materno</td>
                <td><%out.println(apmat);%></td>
            </tr>
            <tr>
                <td>Nombre(s)</td>
                <td><%out.println(nombre);%></td>
            </tr>
            <tr>
                <td>Fecha de nacimiento</td>
                <td><%out.println(fecha);%></td>
            </tr>
            <tr>
                <td>Matricula</td>
                <td><%out.println(matri);%></td>
            </tr>
            <tr>
                <td>Nick Name</td>
                <td><%out.println(nn);%></td>
            </tr>
            <tr>
                <td>Correo</td>
                <td><%out.println(correo);%></td>
            </tr>
            <tr>
                <td>Celular</td>
                <td><%out.println(celu);%></td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td><%out.println(contra);%></td>
            </tr>
        </table>
  
    </body>
</html>

