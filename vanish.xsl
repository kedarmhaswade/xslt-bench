<xsl:stylesheet version = '2.0' 
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

  <xsl:template match="/">
		  <!-- once this becomes a current node, nothing else matches -->
		  <!-- so, since we are not outputting anything once this matches -->
  </xsl:template>
  <xsl:template match="firstName"> 
  </xsl:template>

  <xsl:template match="surname"> 
    <i> 
      <xsl:value-of select="."/> 
    </i> 
  </xsl:template>


</xsl:stylesheet>
