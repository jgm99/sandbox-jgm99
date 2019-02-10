<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
                      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
                      crossorigin="anonymous"/>

                <title>list</title>
                <style type="text/css">
                    body{
                    background-size:cover;
                    background-attachment: fixed;
                    }
                </style>
            </head>
            <body class="container"
                  background="http://s1.1zoom.me/b5050/598/France_Coast_Sunrises_484158_2880x1800.jpg">
                <div class="col-12" style="background-color:#f2f2f2;">
                <header class="row">
                    <!-- Menu -->
                    <div class="col-12">
                        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarText"
                                    aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">

                            </button>
                            <div class="collapse navbar-collapse" id="navbarText">
                                <ul class="navbar-nav mr-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">índice
                                            <span class="sr-only">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">list
                                            <span class="sr-only">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">detail
                                            <span class="sr-only">(current)</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>

                    </div>

                    <!-- /Menu -->
                </header>

                <xsl:apply-templates/>
                </div>
            </body>
        </html>
    </xsl:template>
    <!-- template -->
    <xsl:template match="//actividades/actividad">
        <br/>
        <br/>
        <div class="row" style="background-color:f2f2f2;">
            <div class="col-6 border border-dark">
                <h2>
                    <xsl:value-of select="probincia"/>
                </h2>
                <br/>
                <h3>
                    <xsl:value-of select="nombre"/>
                </h3>
                <br/>
                <p>
                    <xsl:value-of select="descripcion"/>
                </p>
                <br>
                    <p>Link para apuntarse:</p>
                    <a href="https://www.aventurasengalicia.com/aventuras_en_galicia_actividades.php?aventurasID=391">
                        <p>
                            <xsl:value-of select="link"/>
                        </p>
                    </a>

                </br>

            </div>
            <div class="col-6 border border-dark">
                <!-- Imagen -->
                <p>
                    <img height="70%" width="100%">
                        <xsl:attribute name="src">
                            <xsl:value-of select="imagen"/>
                        </xsl:attribute>
                    </img>
                </p>
                <!-- /Imagen -->

            </div>
        </div>

    </xsl:template>
    <!-- /template -->
</xsl:stylesheet>

