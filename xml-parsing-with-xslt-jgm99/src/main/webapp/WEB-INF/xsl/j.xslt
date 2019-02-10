<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xmlnes="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
            <body>
              <h2>RECIBO</h2>
                <xsl:for-each select="pedido">
                    <xsl:value-of select="hamburgesa"/>
                    <xsl:value-of select="cantidad"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>