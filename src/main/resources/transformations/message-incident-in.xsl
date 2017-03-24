<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:inc="http://aerolineas-latinoamericana.com/soa/incidents-message/process-incidents-message/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="inc #default">
	<xsl:template match="/">

		<incidentReport>
			<description><xsl:value-of select="/inc:reportIncident/description" /></description>
			<summary><xsl:value-of select="/inc:reportIncident/summary" /></summary>
			<category><xsl:value-of select="/inc:reportIncident/category" /></category>
		</incidentReport>

	</xsl:template>
</xsl:stylesheet>