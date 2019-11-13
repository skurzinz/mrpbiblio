<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="/bibl/*">
        <xsl:variable name="nodename" select="node-name(.)"/>
        <xsl:text>
@</xsl:text><xsl:value-of select="$nodename"/><xsl:text>{</xsl:text><xsl:number/><xsl:text>,
        </xsl:text>
        <xsl:apply-templates/><xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="article|book|incollection">
        <xsl:variable name="nodename" select="node-name(.)"/>
        <xsl:value-of select="$nodename"/><xsl:text> = {</xsl:text><xsl:apply-templates select="."/><xsl:text>},
        </xsl:text>
    </xsl:template>
    <xsl:template match="*[not(self::bibl or self::article or self::book or self::incollection)]">
        <xsl:variable name="nodename" select="node-name(.)"/>
        <xsl:value-of select="$nodename"/><xsl:text> = {</xsl:text><xsl:value-of select="."/><xsl:text>},
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>