<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/bibl">
        <bibl>
        <xsl:for-each select="./node()[not(. = preceding::node())]">
            <xsl:copy-of select="."/>
            <xsl:text>
</xsl:text>
        </xsl:for-each>
        </bibl>    
    </xsl:template>
</xsl:stylesheet>