<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable" %>
<%@page import="com.itextpdf.text.Document" %>
<%@page import="com.itextpdf.text.Paragraph" %>
<%@page import="com.itextpdf.text.pdf.PdfWriter" %>
<%@page import="java.io.FileOutputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="com.itextpdf.text.*" %>
<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con=null;
                Statement sta= null;
                ResultSet r = null;
            try
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con= DriverManager.getConnection("jdbc:mysql://localhost/PP","root","n0m3l0");
                    sta= con.createStatement();
                }
                catch(SQLException error) {
                    out.print(error.toString());
                }
            
          try{
              Document documento = new Document();
              FileOutputStream ficheropdf = new FileOutputStream("F:\\reporte.pdf");
              int cuentas = 0;
              PdfWriter.getInstance(documento, ficheropdf).setInitialLeading(20);
              documento.open();
              documento.add(new Paragraph("Hola"));
              PdfPTable tabla = new PdfPTable(3);
              for (int i = 0; i < 10; i++) {
                      tabla.addCell("La vas");
                      tabla.addCell("A matar ");
                      tabla.addCell(" PERROOOOOOO x" +i);
                      ++cuentas;
                      if(cuentas >= 5){
                          documento.newPage();
                          cuentas = 0;
                      }
                  }
              documento.add(tabla);
              documento.close();
          }  
          catch(Exception e){
            out.print("El error es: " + e.getMessage());
        }
          out.println("<script>alert('Generado');</Script>");
        %>
    </body>
</html>