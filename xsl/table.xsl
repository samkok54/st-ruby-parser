<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>PomegranatE's Book</title>
  </head>

  <body>
    <h1>PomegranatE's Shop</h1>

    <table border="5" bordercolor="#000000">
      <tr bgcolor="#F7819F">
        <th>No.</th>
        <th>Name</th>
        <th>Author</th>
        <th>ISBN</th>
        <th>Price</th>
      </tr>
<xsl:for-each select="book_store/book">
        <tr>
          <td><countNo>
              <xsl:value-of select="position()"/>   </countNo></td>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="author"/></td>
          <td><xsl:value-of select="ISBN"/></td>
          <td align="center"><xsl:value-of select="price"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>