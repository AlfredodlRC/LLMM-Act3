<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 3</title>
            <link rel="stylesheet" href="estilo.css" />
        </head>    
        <body>
            <header>
            <h1><xsl:value-of select="/ite/@nombre"/></h1>
        </header>
            <main>
                <h2>Personal</h2>
                <ul>
                    <li>
                        <h3>Director</h3>
                        <p>Oficina : 
                            <xsl:value-of select="/ite/director/despacho"/>
                            </p>
                            <p>nombre : 
                        <xsl:value-of select="/ite/director/nombre"/>
                        </p>
                    </li>
                    <li>
                        <h3>Jefe estudio</h3>
                        <p>Oficina : 
                            <xsl:value-of select="/ite/jefe_estudios/despacho"/>
                        </p>
                        <p>nombre : 
                            <xsl:value-of select="/ite/jefe_estudios/nombre"/>
                        </p>
                    </li>
                </ul>
                <table id="profesores">
                <tr><th class="Cabecera" colspan="2">Profesores</th></tr>
                <tr>
                <th class="CabeceraColumna">Identificador</th>
                <th class="CabeceraColumna">Nombre</th>
                </tr>
                <xsl:for-each select="/ite/profesores/profesor">
                <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="nombre"/></td>
                </tr>
                </xsl:for-each>
            </table>
            <h2>Oferta formativa</h2>
            <table>
                <tr><th class="Cabecera" colspan="4">Ciclos</th></tr>
                <tr>
                    <th class="CabeceraColumna">Nombre</th>
                    <th class="CabeceraColumna">Denominación</th>
                    <th class="CabeceraColumna">Tipo grado</th>
                    <th class="CabeceraColumna">Año decreto</th>
                </tr>
                <xsl:for-each select="/ite/ciclos/ciclo">
                <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="grado"/></td>
                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                </tr>
                </xsl:for-each>  
            </table>
        </main>
        <aside>
            <h2>Forma de Contacto</h2>
            <ul>
                    <li>
                        <p>Página WEB:
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="/ite/@web"/>
                             </xsl:attribute>
                            <xsl:value-of select="/ite/@web"/>
                        </a>
                    </p>
                    </li>
                    <li>
                        <p>Télefono:
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="/ite/telefono"/>
                             </xsl:attribute>
                            <xsl:value-of select="/ite/telefono"/>
                        </a>
                    </p>
                    </li>                
                </ul>
                <form>
                    <label>Nombre:</label>
                    <input class="dato" type="text" id="fname" name="fname"></input>
                    <label>Correo:</label>
                    <input class="dato" type="email" id="email" name="email"></input>
                    <label>Petición información:</label>
                    <textarea></textarea>
                    <input class="boton" type="reset" value="Reset"></input>
                    <input class="boton" type="submit" value="Submit"></input>
                </form>
            </aside>    
        <footer>XML: Felix el profesor, Transformación: Alfredo de los Rios</footer>
        </body>
    </html>
    </xsl:template>

</xsl:stylesheet>