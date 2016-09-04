<!---<cfdump var="#FORM#">
<cfabort>--->

<cfif usuario_id eq 1>
	<cflocation url="1.cfm" addtoken="yes">
<cfelse>
	<cflocation url="2.cfm" addtoken="no">
</cfif>

<!---
#x#
URL.x
<cfset application.x = 3>
session.x
--->

