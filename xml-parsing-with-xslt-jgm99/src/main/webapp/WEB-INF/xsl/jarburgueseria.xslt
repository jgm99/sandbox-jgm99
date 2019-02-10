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

                <title>jarburgueseria</title>

            </head>
            <body class="container"
                  background="http://sevilla.abc.es/contenidopromocionado/wp-content/uploads/sites/2/2017/09/1996x1206-hamburguesas.jpg">
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//pedido">
        <br/>
        <br/>
        <div class="row">
            <!-- INFO PEDIDO -->
            <div class="col-6 border border-dark" style="background-color:f2f2f2;">
                <xsl:value-of select="restaurante"/>
                <br/>
                <xsl:value-of select="direcion"/>
                <br/>
                <xsl:value-of select="idpedido"/>
                <br/>
            </div>
            <div class="col-12 border border-dark" style="background-color:f2f2f2;">
                <!-- /INFO PEDIDO -->
                <!-- PEDIDO CONTENIDO -->
                <p>HAMBURGESA :
                    <xsl:value-of select="hamburgesa"/>
                </p>
                <p>CANTIDAD :
                    <xsl:value-of select="cantidad"/>
                </p>
                <p>PRECIO :
                    <xsl:value-of select="precio"/>
                </p>

                <!-- /PEDIDO CONTENIDO -->
                <!-- TOTAL PEDIDO-->
            </div>
            <!-- TOTAL PEDIDO-->
        </div>
        <div class="col-3 border border-dark float-right" style="background-color:f2f2f2;">
            <p>TOTAL :
                <xsl:value-of select="cantidad*precio"/>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>


