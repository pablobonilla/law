<!---<cfinclude template="../include_check_login.cfm">--->


<cfinclude template="../udf_genericos.cfm">



<cfquery datasource="HAMMURABIX" name="HAMMURABIX_sql">
	SELECT *
      FROM CONTACTOS
     WHERE USUARIO_ID = #Session.usuario_id#
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
<h2>Bienvenido: #Session.nombre#</h2> 
- <a href="../logout.cfm">logout</a>
<hr />
</cfoutput>

<!--- 
<cfdocument format="pdf" filename="/Users/elias/Sites/WIDE/law/mi_pdf.pdf">
--->

<p><a href="../insertar_modificar.cfm">insertar nuevo contacto</a></p>


<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td bgcolor="#CCCCCC">Nombre País</td>
    <td bgcolor="#CCCCCC">Idioma</td>
  </tr>
  
  <cfoutput>
  	En esta consulta hay #HAMMURABIX_sql.RecordCount# registros<br />
  </cfoutput>
  
  <cfoutput query="HAMMURABIX_sql">
  <tr>
    <td><a href="../usuario.cfm?contacto_id=#HAMMURABIX_sql.contacto_id#">#NOMBRE#</a></td>
    <td>#TELEFONO#</td>
    </tr>
  </cfoutput>
</table>
<p><!---<hr />
  <br />
  <table border="0" cellspacing="2" cellpadding="2">
  
  <cfoutput>
      <cfloop query="HAMMURABIX_sql">
          
          <tr>
            <td>#HAMMURABIX_sql.usuario_id#</td>
            <td>#USER_NAME#</td>
            <td>#USER_PHONE#</td>
            <td>#USER_OTHER#</td>
          </tr>
          
      </cfloop>
  </cfoutput>
  
  
</table>--->
    
  <!---</cfdocument>--->
    
  
  <cfoutput></cfoutput></p>
<cfinclude template="../footer.cfm">

<p>&nbsp;</p>
</body>
</html>