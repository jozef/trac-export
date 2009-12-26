<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
 
    <xsl:output method="text" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="h1">===== <xsl:value-of select="text()"/> =====</xsl:template>
    <xsl:template match="h2">==== <xsl:value-of select="text()"/> ====</xsl:template>
    <xsl:template match="h3">=== <xsl:value-of select="text()"/> ===</xsl:template>
    <xsl:template match="h4">== <xsl:value-of select="text()"/> ==</xsl:template>
    <xsl:template match="h5">= <xsl:value-of select="text()"/> =</xsl:template>

    <xsl:template match="br"><xsl:text>\\ </xsl:text></xsl:template>
    
    <xsl:template match="p">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ul">
        <xsl:apply-templates select="li"/>
    </xsl:template>

    <xsl:template match="li">  * <xsl:value-of select="text()"/><xsl:text>&#x0a;</xsl:text></xsl:template>

    <xsl:template match="pre">&lt;code&gt;<xsl:text>&#x0a;</xsl:text><xsl:value-of select="text()"/>&lt;/code&gt;</xsl:template>
    
</xsl:stylesheet>
