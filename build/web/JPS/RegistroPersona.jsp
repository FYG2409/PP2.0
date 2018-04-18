<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>REGISTRO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/Estilos.css" TYPE="text/css" MEDIA=screen>
        <script src="../JavaScript/Registro.js"></script>
    </head>
    <body>
        <div class="contenedor">
            <form name="formulario" onSubmit="return validarPasswd()" method="post" action="../JPS/Registro.jsp">
                <center>
                    <p class="titulo"> REGÍSTRATE </p>
                    <br><br>
                    <INPUT type="text" id="noms" name="nombre" placeholder="Nombre(s)" maxlength="25" onkeyup="mayus(this);" onkeypress="letras()" required/> 
                    <INPUT type="text" id="appat" name="appat" placeholder="Apellido Paterno" maxlength="20" onkeyup="mayus(this);" onkeypress="letras()" required/>
                    <INPUT type="text" id="apmat" name="apmat" placeholder="Apellido Materno" maxlength="20" onkeyup="mayus(this);" onkeypress="letras()" required/> 
                    <br><br>

                        <%
                            ArrayList<Model.Colonia> colonias = (ArrayList<Model.Colonia>) request.getAttribute("colonias");
                            ArrayList<Model.Delegacion> delegaciones = (ArrayList<Model.Delegacion>) request.getAttribute("delegaciones");
                            
                        %>
                        <select id='delegacion' name='delegacion' onchange="getColonias(this)">
                            <%for(Model.Delegacion delegacion : delegaciones) {
                                out.println("<option value='"+delegacion.getNom_Delegacion()+"' onclick='getColonias(`"+delegacion.getIdDelegacion()+"`)')>"+delegacion.getNom_Delegacion()+"</option>");
                            }%>
                        </select>
                        
                        <select id='colonias' name='colonias'>
                            
                        </select>    
                    <br><br>
                    <INPUT type="text" id="correo" name="correo" placeholder="Correo Electrónico" maxlength="50" required/>
                    <INPUT type="text" id="cel" name="celu" placeholder="Celular" maxlength="10" minlength="10" onkeypress="nume()" required/>
                    <br><br>
                    <INPUT type="text" id="nina" name="nn" placeholder="Nick Name" maxlength="25" onkeyup="mayus(this);" required/>
                    <INPUT type="password" id="con" name="contra" placeholder="Contraseña" maxlength="20" required/>
                    <INPUT type="password" id="concom" name="contracom" placeholder="Confirma Contraseña" maxlength="20" required/>
                    <br><br><br>
                    <p align="right">
                        <INPUT type="submit" class="boton" name="bot" value="Registra" id="botreg">
                    </p>
                </center>
            </form>
        </div>
        <script>
        function getColonias(delegacionId) {
            console.log(delegacionId.selectedIndex+1)
            let colonias = [<%for(Model.Colonia colonia : colonias) {
                                out.println("{id: "+colonia.getIdColonia()+", nombre: '"+colonia.getNom_Colonia()+"', delegacion: '"+colonia.getIdDelegacion()+"'},");
                            }%>]

            let coloniasFiltradas = []
            let select = document.getElementById("colonias") 
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for(let colonia of colonias) {
                console.log(colonia)
                if(colonia.delegacion == delegacionId.selectedIndex+1) {
                    console.log('YES')
                    coloniasFiltradas.push(colonia)
                    let option = document.createElement("option")
                    option.text = colonia.nombre
                    option.value = colonia.nombre
                    select.add(option)
                }
            }
             console.log(coloniasFiltradas)
        }
    </script>
    </body>
    
</html>