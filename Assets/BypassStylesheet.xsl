<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="no" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="@*|node()">
	<xsl:copy>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:copy>
  </xsl:template>
  
  <xsl:template match="categories">
	<MenuInfo>
		<xsl:for-each select="//items">
			<xsl:copy>
				<category_name><xsl:value-of select="//categories/name"/></category_name>
				<category_position><xsl:value-of select="//categories/position"/></category_position>
				<category_description><xsl:value-of select="//categories/description"/></category_description>
				<category_alcohol><xsl:value-of select="//categories/alcohol"/></category_alcohol>
				<category_id><xsl:value-of select="//categories/id"/></category_id>
				<xsl:apply-templates select="@*|node()"/>
			</xsl:copy>
		</xsl:for-each>
	</MenuInfo>
  </xsl:template>
  
</xsl:stylesheet>
