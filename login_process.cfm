

<cfquery datasource="AGENDA" name="getUsuario">
	SELECT *
      FROM USUARIOS
     WHERE USUARIO = '#email#'
</cfquery>

<cfif getUsuario.RecordCount eq 0>
	<cflocation addtoken="no" url="login.cfm">
</cfif>

<cfif getUsuario.clave eq Hash(clave)>
	<cfset Session.usuario_logueado = true>
    <cfset Session.usuario_id = getUsuario.usuario_id>
	<cfset Session.usuario = getUsuario.usuario>
    <cfset Session.nombre = getUsuario.nombre>
    
    <cflocation url="index.cfm" addtoken="no">
<cfelse>
	<cflocation addtoken="no" url="login.cfm">
</cfif>


