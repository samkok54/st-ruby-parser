<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
    <title>PomegranatE's Book</title>
    <style>
     body {
      background-image: url("http://www.theamericanmuslimah.com/wp-content/uploads/2015/02/baby-pink-pastel-tileable-patterns-16-1024x1024.jpg");
      background-attachment: fixed;
     }

     h1{
      background-color: #FC71B6;
      font-family: "Georgia";
      color: #000000;
      font-size:350%;
      text-align: center;
    }

    table {
      border: 7px solid;
      border-color: #000000;
      background-color: #FFFFFF;
      border-collapse: collapse;
    }
   </style>
  </head>

  <body>
    <img src="bookstoreLogo.png" />
    <p><em><h1>PomegranatE's Book</h1></em></p>
    <table border="5" bordercolor="#000000" align="center">
      <tr bgcolor="#F7819F">
        <td align="center"><font size="4"><b>No.</b></font></td>
        <td align="center"><font size="4"><b>Name</b></font></td>
        <td align="center"><font size="4"><b>Author</b></font></td>
        <td align="center"><font size="4"><b>ISBN</b></font></td>
        <td align="center"><font size="4"><b>Price</b></font></td>
      </tr>
      <xsl:for-each select="book_store/book">
        <tr>
          <td><em><countNo><xsl:value-of select="position()"/></countNo></em></td>
          <td><em><xsl:value-of select="name"/></em></td>
          <td><em><xsl:value-of select="author"/></em></td>
          <td><em><xsl:value-of select="ISBN"/></em></td>
          <td align="center"><em><xsl:value-of select="price"/></em></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>