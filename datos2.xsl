<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <ite>
            <nombre><xsl:value-of select="/ite/@nombre"/></nombre>
            <contacto>
                <web><xsl:value-of select="/ite/@web"/></web>
                <telefono><xsl:value-of select="/ite/telefono"/></telefono>
            </contacto>
            <personal>




            </personal>
            <profesores>
            <xsl:for-each select="/ite/profesores/profesor">
                <profesor>
                    <xsl:attribute name="id">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                </profesor>
            </xsl:for-each>
            </profesores>
            <ciclos>
                <xsl:for-each select="/ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="tipo_grado">
                        <xsl:value-of select="grado"/>
                    </xsl:attribute>
                    <id>
                        <xsl:value-of select="@id"/>
                    </id>
                    <nombre>
                        <xsl:value-of select="nombre"/>
                    </nombre>
                    <año_decreto>
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </año_decreto>
                </ciclo>
            </xsl:for-each>

            </ciclos>
        </ite>
    </xsl:template>

</xsl:stylesheet>