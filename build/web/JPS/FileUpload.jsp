<%-- 
    Document   : FileUpload
    Created on : Apr 15, 2018, 11:47:25 AM
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EJEMPLO SUBIDA DE ARCHIVO</title>
    </head>
    <body>
        <form method="POST" action="/FileUpload" enctype="multipart/form-data">
            <input type="file" name="data" />
            <input type="submit" value="Subir" />
        </form>
    </body>
</html>
