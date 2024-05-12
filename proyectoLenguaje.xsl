<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Tablas de la Base de Datos</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
            box-shadow: 0 6px 9px 0 rgba(0, 0, 0, 0.2);
             font-family: Roboto, Arial, sans-serif;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            background-color: #E6E6E6;
            text-align: center;
          }
          th {
            background-color: #E7D40A;
          }
        </style>
      </head>
      <body>
        <h1>BASE DATOS PUEBLANET </h1>
        <h2>Tabla Cliente</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Apellidos</th>
            <th>Nombre</th>
            <th>Teléfono</th>
            <th>ID Local</th>
          </tr>
          <xsl:for-each select="database/table[@name='cliente']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Tabla Direccion Cliente</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Ciudad</th>
            <th>Dirección</th>
          </tr>
          <xsl:for-each select="database/table[@name='direccioncliente']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Tabla Direccion Local</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Código Postal</th>
            <th>Teléfono</th>
          </tr>
          <xsl:for-each select="database/table[@name='local']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Tabla Dispositivos</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>ID Tipo</th>
            <th>ID Modelo</th>
            <th>Número de Serie</th>
            <th>ID Marca</th>
            <th>ID Cliente</th>
          </tr>
          <xsl:for-each select="database/table[@name='dispositivos']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Tabla Estado Herramientas</h2>
        <table>
          <tr>
            <th>ID Estado</th>
            <th>Estado</th>
          </tr>
          <xsl:for-each select="database/table[@name='estadoherramientas']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Tabla Estado Reparacion</h2>
        <table>
          <tr>
            <th>ID Estado</th>
            <th>Estado</th>
          </tr>
          <xsl:for-each select="database/table[@name='estadoreparacion']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Tabla Herramientas</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>ID Estado</th>
            <th>ID Marca</th>
            <th>ID Técnico</th>
          </tr>
          <xsl:for-each select="database/table[@name='herramientas']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Tabla Marca Material</h2>
        <table>
          <tr>
            <th>ID Marca</th>
            <th>Marca</th>
          </tr>
          <xsl:for-each select="database/table[@name='marcamaterial']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Tabla Material</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>ID Tipo</th>
            <th>ID Marca</th>
            <th>Precio</th>
            <th>Unidad</th>
          </tr>
          <xsl:for-each select="database/table[@name='material']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Tabla Reparacion</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Fecha</th>
            <th>Descripción</th>
            <th>ID Estado</th>
            <th>ID Dispositivo</th>
          </tr>
          <xsl:for-each select="database/table[@name='reparacion']">
            <tr>
              <xsl:for-each select="column">
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


