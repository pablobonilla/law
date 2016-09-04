
<cfquery datasource="AGENDA" name="agenda_sql">
	SELECT *
      FROM CONTACTOS  
      WHERE USUARIO = #USUARIO_ID#
</cfquery>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Mi Agenda</title>
</head>

<body>

<!--- 
<cfdocument format="pdf" filename="/Users/elias/Sites/WIDE/law/mi_pdf.pdf">
--->


<table border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td>ID</td>
    <td>Nombre</td>
    <td>Tel</td>
    <td>Other</td>
    <td>Usuario</td>
    
  </tr>
  
  <cfoutput>
  	En esta consulta hay #agenda_sql.RecordCount# registros<br />
  </cfoutput>
  
  <cfoutput query="agenda_sql">
  <tr>
    <td>#agenda_sql.USER_ID#</td>
    <!---<td><a href="usuario.cfm?usuario_id=#agenda_sql.USER_ID#">#USER_NAME#</a></td>--->
    <td>#USER_PHONE#</td>
    <!---<td>#USER_OTHER# <a href="accion.cfm?usuario_id=#agenda_sql.USER_ID#">algo</a></td>--->
    <td>#USER_PHONE#</td>
    <td>#USER_OTHER#</td>
    <td>#USUARIO#</td>

  </tr>
  </cfoutput>
 </table> 
  
  <hr />
  

<!---</cfdocument>--->

Done!!!

<cfinclude template="footer.cfm">

<p>&nbsp;</p>
</body>
</html>