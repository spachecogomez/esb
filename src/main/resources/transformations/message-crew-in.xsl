<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:proc="http://aerolineas-latinoamericana.com/soa/processes/crew-message/process-crew-message/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="proc #default">
	<xsl:template match="/">

		<crewPlaningChanges>
			<applyChangesOnCrewMembers><xsl:value-of select="/proc:changeCrew/applyChangesOnCrewMembers" /></applyChangesOnCrewMembers>
			<totalCrewMemberRequired><xsl:value-of select="/proc:changeCrew/totalCrewMemberRequired" /></totalCrewMemberRequired>
			<changePilot><xsl:value-of select="/proc:changeCrew/totalCrewMemberRequired" /></changePilot>
		</crewPlaningChanges>

	</xsl:template>
</xsl:stylesheet>