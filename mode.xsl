<xsl:stylesheet version = '2.0' 
     xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

<!-- With modes an element can be processed multiple times, 
	 each time producing a different result -->
<xsl:template match="/"> 
     <xsl:apply-templates select="//CCC" mode="red"/> 
     <xsl:apply-templates select="//CCC" mode="blue"/> 
	 <!-- if the mode does not exist, it is not matched -->
     <xsl:apply-templates select="//CCC" mode="yellow"/> 
</xsl:template>

<xsl:template match="CCC" mode="red"> 
     <div style="color:red"> 
          <xsl:value-of select="name()"/> 
          <xsl:text> id=</xsl:text> 
          <xsl:value-of select="@id"/> 
     </div> 
</xsl:template>

<xsl:template match="CCC" mode="blue"> 
     <div style="color:blue"> 
          <xsl:value-of select="name()"/> 
          <xsl:text> id=</xsl:text> 
          <xsl:value-of select="@id"/> 
     </div> 
</xsl:template>

<xsl:template match="CCC"> 
     <div style="color:purple"> 
          <xsl:value-of select="name()"/> 
          <xsl:text> id=</xsl:text> 
          <xsl:value-of select="@id"/> 
     </div> 
</xsl:template>


</xsl:stylesheet>
