<cfinclude template="include_check_login.cfm">


<cfinclude template="udf_genericos.cfm">



<cfquery datasource="AGENDA" name="agenda_sql">
	SELECT *
      FROM CONTACTOS
     WHERE USUARIO_ID = #Session.usuario_id#
</cfquery>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Mi Agenda</title>
</head>

<body>

<!---
<cfdump var="#Session#">
<cfabort>
--->

<cfoutput>
<h3>Bienvenidos #Session.nombre#</h3> 
- <a href="logout.cfm">logout</a>
<hr />
</cfoutput>

<!--- 
<cfdocument format="pdf" filename="/Users/elias/Sites/WIDE/law/mi_pdf.pdf">
--->

<p>Hola!!! la fecha ahora es 

<cfoutput>
<cfset todayDate = Now()>
#DateFormat(todayDate, "mmm-dd-yyyy")#

</cfoutput><br />
  <br />
  <cfset x = 2>
  <cfset y = 3>
  <cfset z = x * y>
  
  <cfoutput>
    La multiplicacion de #x# * #y# = #z#>
  </cfoutput>
  
</p>
<p><a href="insertar_modificar.cfm">insertar nuevo contacto</a></p>
<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td bgcolor="#CCCCCC">ID</td>
    <td bgcolor="#CCCCCC">Nombre</td>
    <td bgcolor="#CCCCCC">Sexo</td>
    <td bgcolor="#CCCCCC">Tel</td>
    <td bgcolor="#CCCCCC">Color Favorito</td>
    <td bgcolor="#CCCCCC">Hobbies</td>
    <td bgcolor="#CCCCCC">acciones</td>
  </tr>
  
  <cfoutput>
  	En esta consulta hay #agenda_sql.RecordCount# registros<br />
  </cfoutput>
  
  <cfoutput query="agenda_sql">
  <tr>
    <td>#agenda_sql.contacto_id#</td>
    <td><a href="usuario.cfm?contacto_id=#agenda_sql.contacto_id#">#NOMBRE#</a></td>
    <td><cfif SEXO eq 1>M<cfelse>F</cfif></td>
    <td>#TELEFONO#</td>
    <td>#COLOR_FAVORITO#</td>
    <td>#HOBBIES#</td>
    <td><a href="borrar_process.cfm?contacto_id=#agenda_sql.contacto_id#">borrar</a> 
        - <a href="insertar_modificar.cfm?contacto_id=#agenda_sql.contacto_id#">modificar</a></td>
    </tr>
  </cfoutput>
 </table> 
  
  <!---<hr />
  <br />
  <table border="0" cellspacing="2" cellpadding="2">
  
  <cfoutput>
      <cfloop query="agenda_sql">
          
          <tr>
            <td>#agenda_sql.usuario_id#</td>
            <td>#USER_NAME#</td>
            <td>#USER_PHONE#</td>
            <td>#USER_OTHER#</td>
          </tr>
          
      </cfloop>
  </cfoutput>
  
  
</table>--->

<!---</cfdocument>--->

<cfset x = 3>
<cfset y = 4>

<cfset res = sumar(x, y)>

<cfoutput>
El res = #res#<br />
El res = #(sumar(x, y, "multiplicar"))#<br />
</cfoutput>

Done!!!

<cfinclude template="footer.cfm">

<p>&nbsp;</p>
</body>
</html>