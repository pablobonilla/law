<!---<cfinclude template="../include_check_login.cfm">--->


<cfinclude template="../udf_genericos.cfm">



<!---<cfquery datasource="HAMMURABIX" name="HAMMURABIX_sql">
	SELECT *
      FROM CONTACTOS
     WHERE USUARIO_ID = #Session.usuario_id#
</cfquery>
--->
<cfquery datasource="HAMMURABIX" name="HAMMURABIX_sql">
	SELECT *
      FROM PAIS
</cfquery>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>HAMMURABIX </title>
</head>

<body>

<!---
<cfdump var="#Session#">
<cfabort>
--->

<cfoutput>
<h2>Bienvenido: <!---#Session.nombre#---></h2> 
- <a href="../logout.cfm">logout</a>
<hr />
</cfoutput>

<!--- 
<cfdocument format="pdf" filename="/Users/elias/Sites/WIDE/law/mi_pdf.pdf">
--->

<p><a href="../Hamm/insertar_modificar_pais.cfm">Insertar Nuevo Registro</a></p>


<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td bgcolor="#CCCCCC">Nombre País</td>
    <td bgcolor="#CCCCCC">Idioma</td>
    <td bgcolor="#CCCCCC">acciones</td>
  </tr>
  
  <cfoutput>
  	En esta consulta hay #HAMMURABIX_sql.RecordCount# registros<br />
  </cfoutput>
  
  <cfoutput query="HAMMURABIX_sql">
  <tr>
	<td>#NOMBRE_PAIS#</td>
    <td>#IDIOMA_ID#</td>
    <td><a href="borrar_process.cfm?pais_id=#HAMMURABIX_sql.pais_id#">borrar</a> - <a href=			"insertar_modificar_pais.cfm?pais_id=#HAMMURABIX_sql.pais_id#">modificar</a></td>
    </tr>
  </cfoutput>
</table>
<cfinclude template="../footer.cfm">

<p>&nbsp;</p>
</body>
</html>