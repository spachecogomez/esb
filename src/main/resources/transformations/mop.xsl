<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
                xmlns:mop="http://aerolineas-latinoamericana.com/soa/mop-message/mop-rule/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mop #default">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <mop>
            <undercarriageStatus><xsl:value-of select="/mop:mopEvent/undercarriageStatus"/></undercarriageStatus>
            <fuelPercentage><xsl:value-of select="/mop:mopEvent/fuelPercentage"/></fuelPercentage>
                
        </mop>

    </xsl:template>
</xsl:stylesheet>
