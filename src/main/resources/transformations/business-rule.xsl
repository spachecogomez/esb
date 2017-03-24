<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
                xmlns:proc="http://aerolineas-latinoamericana.com/soa/business-rule-message/process-business-rule/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="proc #default">
    <xsl:template match="/">

        <batch-execution lookup="defaultKieSession">
            <insert out-identifier="message" return-object="true" entry-point="DEFAULT">
                <co.edu.javeriana.pica.airplanes.MaintenanceRequest>
                    <UNDERCARRIAGE><xsl:value-of select="/soapenv:Envelope/soapenv:Body/proc:evaluateBusinessRule/undercarriageStatus"/></UNDERCARRIAGE>
                    <FUEL_PERCENTAGE><xsl:value-of select="/soapenv:Envelope/soapenv:Body/proc:evaluateBusinessRule/fuelPercentage"/></FUEL_PERCENTAGE>
                </co.edu.javeriana.pica.airplanes.MaintenanceRequest>
            </insert>
            <fire-all-rules/>
        </batch-execution>

    </xsl:template>
</xsl:stylesheet>
