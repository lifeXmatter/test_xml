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
      <th style="text-align:left">Volume</th>
    </tr>
    <xsl:for-each select="cryptoprices/Sheet1">
    <tr>
      <td><xsl:value-of select="Rank"/></td>
      <td><xsl:value-of select="Name"/></td>
      <td><xsl:value-of select="Symbol"/></td>
      <td><xsl:value-of select="Price_Usd"/></td>
	  <td><xsl:value-of select="Price_Btc"/></td>
      <td><xsl:value-of select="24h_Volume_Usd"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>