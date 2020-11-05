<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="no" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="*">
	<xsl:copy>
		<xsl:apply-templates select="categories"/>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:copy>
  </xsl:template>
  
  <xsl:template match="categories">
	<xsl:apply-templates select="items"/>
  </xsl:template>
  
  <xsl:template match="items">
	<xsl:copy>
		<category_name><xsl:value-of select="../name"/></category_name>
		<category_position><xsl:value-of select="../position"/></category_position>
		<category_description><xsl:value-of select="../description"/></category_description>
		<category_alcohol><xsl:value-of select="../alcohol"/></category_alcohol>
		<category_id><xsl:value-of select="../id"/></category_id>
		<tax_rate_1><xsl:value-of select="./tax_rates[1]/rate"/></tax_rate_1>
		<tax_rate_2><xsl:value-of select="./tax_rates[2]/rate"/></tax_rate_2>
		<tax_rate_3><xsl:value-of select="tax_rate"/></tax_rate_3>
		<receipt_label_1><xsl:value-of select="./tax_rates[1]/receipt_label"/></receipt_label_1>
		<receipt_label_2><xsl:value-of select="./tax_rates[2]/receipt_label"/></receipt_label_2>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:copy>
  </xsl:template>
  
  <xsl:template match="tax_rates">
  </xsl:template>
  
</xsl:stylesheet>