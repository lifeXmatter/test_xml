<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Historical Crypto Prices</h2>
  <table border="1">
    <tr bgcolor="#FFA500">
      <th style="text-align:left">Rank</th>
      <th style="text-align:left">Name</th>
	  <th style="text-align:left">Ticker</th>
      <th style="text-align:left">Price in USD</th>
	  <th style="text-align:left">Price in BTC</th>
      <th style="text-align:left">Available Supply</th>
    </tr>
    <xsl:for-each select="cryptodata/coin">
    <tr>
      <td><xsl:value-of select="rank"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="symbol"/></td>
      <td><xsl:value-of select="priceusd"/></td>
	  <td><xsl:value-of select="marketcap"/></td>
      <td><xsl:value-of select="availablesupply"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
