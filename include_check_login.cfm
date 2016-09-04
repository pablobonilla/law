<cfif isDefined("Session.usuario_logueado") and Session.usuario_logueado eq true>
	<!--- todo bien --->
<cfelse>
	<cflocation url="login.cfm" addtoken="no">
</cfif>