<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
     <xsl:for-each select="book_store/book">
      <xsl:sort select="price"/>
        <p>Name: <xsl:value-of select="name"/>  </p>
        <p>Price: <xsl:value-of select="price"/> </p>
        <p>.................</p> 
     </xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>