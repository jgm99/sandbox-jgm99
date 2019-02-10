<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <!-- This allows generation of <!DOCTYPE html SYSTEM "about:legacy-compat"> for HTML5 -->
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>XML Data parsing</title>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet"
                      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            </head>
            <body>
                <div class="container">
                    <h1>XML Data parsed with XSLT</h1>
                    <xsl:apply-templates/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="note">
        <h2>
            <xsl:value-of select="heading"/>
        </h2>
        <p>
            <xsl:value-of select="body"/>
        </p>
        <ul class="list-group">
            <xsl:for-each select="nodes/link">
                <li class="list-group-item">
                    <xsl:variable name="link" select="."/>
                    <a href="{$link}"><xsl:value-of select="."/></a>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>
</xsl:stylesheet>