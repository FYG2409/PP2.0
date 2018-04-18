<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Pet Petition</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../DocumentosCSS/EstilosPaginaPrincipal.css">
        <script>
            /*function oculta(){
                for (i = 10; i >= 0; i--){
                    setTimeout("document.getElementById('negro').style.opacity = '" + (i / 10) + "'", (10 - i) * 100);
                    setTimeout("document.getElementById('boton').style.opacity = '" + (i / 10) + "'", (10 - i) * 100);
                }
            }*/
        </script>
    </head>
    <body>
        <!--<div class="inicio" id="negro">
            <input type="button" id="boton" value="INICIAR" onclick="oculta();"> -->
        <header id="cabecera">
            <nav class="menu">
                <ul>
                    <li>ADOPCION
                        <ul>
                            <li><a href="../MenuAdopta/MAdopta.html">Adopta</a></li>
                            <li>Ofrece
                                <ul>
                                    <li><a href="../InicioDeSesion/InicioDeSesion.html">Inicia Sesion</a></li>
                                    <li><a href="/RegistroPersona">Registrate</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>CUIDADO<ul>
                            <li><a href="../BuscaServicio/index.html">Busca</a></li>
                            <li>Ofrece
                                <ul>
                                    <li><a href="../InicioDeSesion/InicioDeSesion.html">Inicia Sesion</a></li>
                                    <li><a href="/RegistroPersona">Registrate</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><a href="../Quejas/Quejas.html">CONTACTANOS</a></li>
                    <li><a href="../AmigoIdeal/Ideal.html">MASCOTA IDEAL</a></li>
                </ul>
            </nav>  
        </header>
        <a href="../Empresa/Empresa.html"><img class="logo" src="../Resourses/Images/logoPP.png" id="logo"></a>
        <p class="tit">PetPetition</p>
        <div class="contel-all" id="carrucel">
            <div class="contel-carrusel">
                <figure><img src="../Resourses/Images/img_carrucel/uno.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/dos.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/tres.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/cuatro.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/cinco.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/seis.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/siete.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/ocho.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/nueve.jpg"></figure>
                <figure><img src="../Resourses/Images/img_carrucel/diez.jpg"></figure>
            </div>
        </div>
    </body>
</html>
