<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
                xmlns:proc="http://aerolineas-latinoamericana.com/soa/business-rule-message/process-business-rule/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="proc #default">
    <xsl:template match="/">

        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:proc="http://aerolineas-latinoamericana.com/soa/business-rule-message/process-business-rule/">
            <soapenv:Header/>
            <soapenv:Body>
                <proc:evaluateBusinessRuleResponse>
                    <fuelPercentage><xsl:value-of select="/org.kie.server.api.model.ServiceResponse/result[@class='execution-results']/result[@identifier='message']/co.edu.javeriana.pica.airplanes.MaintenanceRequest/FUEL__PERCENTAGE"/></fuelPercentage>
                    <undercarriageStatus><xsl:value-of select="/org.kie.server.api.model.ServiceResponse/result[@class='execution-results']/result[@identifier='message']/co.edu.javeriana.pica.airplanes.MaintenanceRequest/UNDERCARRIAGE"/></undercarriageStatus>
                    <skipMaintenance><xsl:value-of select="/org.kie.server.api.model.ServiceResponse/result[@class='execution-results']/result[@identifier='message']/co.edu.javeriana.pica.airplanes.MaintenanceRequest/SKIP__MAINTANENCE"/></skipMaintenance>
                </proc:evaluateBusinessRuleResponse>
            </soapenv:Body>
        </soapenv:Envelope>

    </xsl:template>
</xsl:stylesheet>
