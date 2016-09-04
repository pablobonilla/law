<cfinclude template="include_check_login.cfm">

<cfquery datasource="AGENDA" name="agenda_sql">
	SELECT *
      FROM CONTACTOS
     <!---WHERE CONTACTO_ID = #CONTACTO_ID#
       AND USUARIO_ID = #Session.usuario_id#--->
</cfquery>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Mi Agenda</title>
</head>

<body>


  
<a href="index.cfm">
</p>
menu principal</a><br />
<br />
<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td>ID</td>
    <td>Nombre</td>
    <td>Tel</td>
    <td>Other</td>
  </tr>
  
  <cfoutput>
  	En esta consulta hay #agenda_sql.RecordCount# registros<br />
  </cfoutput>
  
  <cfoutput query="agenda_sql">
	<cfif CurrentRow MOD 2 IS 1>
    <cfset bgcolor="##00FF66">
    <cfelse>
    <cfset bgcolor="White">
    </cfif>
  <tr bgcolor="#bgcolor#">
    <td>#agenda_sql.contacto_id#</td>
    <td><H3>#NOMBRE#</H3></td>
    <td>#TELEFONO#</td>
    <td>#OTROS_DATOS# <a href="accion.cfm?usuario_id=#agenda_sql.usuario_id#">algo</a></td>
  </tr>
  </cfoutput>
 </table> 
  
  

<cfinclude template="footer.cfm">

</body>
</html>