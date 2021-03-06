<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8"/>

<xsl:template match="/banner/langs">
  <xsl:apply-templates select="text"/>
</xsl:template>

<xsl:template match="text">
  <xsl:value-of select="@lang"/>
  <xsl:if test="not(position()=last())">|</xsl:if>
</xsl:template>

</xsl:stylesheet>
