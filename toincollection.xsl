<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="article[child::booktitle]|book[child::booktitle]">
        <incollection>
                <xsl:copy-of select="child::*"/>
                <xsl:text>
</xsl:text>
        </incollection>    
    </xsl:template>
</xsl:stylesheet>