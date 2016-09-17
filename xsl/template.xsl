<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
   <body>
     <h2>POMEGRANATE SHOP</h2>
     <xsl:apply-templates/> 
   </body>
  </html>
</xsl:template>

<xsl:template match="book">
  <p>
  <xsl:apply-templates select="name"/>
  <xsl:apply-templates select="author"/>
  </p>
</xsl:template>

<xsl:template match="name">
  Name: <span style="color:#F7819F">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="author">
  Author: <span style="color:#04B486">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>