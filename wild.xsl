<xsl:stylesheet version = '2.0' 
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

<xsl:template match="*"> 
     <div> 
          <xsl:text>[template: </xsl:text> 
          <xsl:value-of select="name()"/> 
          <xsl:text> outputs </xsl:text> 
		  <!-- if the apply-templates below is commented out -->
          <xsl:apply-templates/> 
		  <!-- then only the source node will match and nothing else -->
          <xsl:text> ]</xsl:text> 
     </div> 
</xsl:template>


</xsl:stylesheet>
