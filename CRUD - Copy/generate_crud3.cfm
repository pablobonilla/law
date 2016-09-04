<cfdump var="#FORM#">



<cfsavecontent variable="CODIGO">
<pre>
<cfquery datasource="AGENDA" name="getListaCRUD">
	SELECT *
      FROM CRUD_TABLE
  ORDER BY NOMBRE
</cfquery>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
</head>

<body>
<p><a href="crud_create_edit.cfm">Crear registro</a></p>
<table width="" border="1">
  <tr>
    <td bgcolor="#CCCCCC">ID</td>
    <td bgcolor="#CCCCCC">Sexo</td>
    <td bgcolor="#CCCCCC">Casado?</td>
    <td bgcolor="#CCCCCC">Nombre</td>
    <td bgcolor="#CCCCCC">Direccion</td>
    <td bgcolor="#CCCCCC">Color Favorito</td>
    <td bgcolor="#CCCCCC">Acciones</td>
  </tr>
  <cfoutput query="getListaCRUD">
  <tr>
    <td valign="top">##NOMBRE_ID##</td>
    <td valign="top">##SEXO##</td>
    <td valign="top">##ESTA_CASADO##</td>
    <td valign="top">##NOMBRE##</td>
    <td valign="top">##DIRECCION##</td>
    <td valign="top">##COLOR_FAVORITO##</td>
    <td valign="top"><a href="crud_create_edit.cfm?nombre_id=##NOMBRE_ID##">Editar</a></td>
  </tr>
  </cfoutput>
</table>
</body>
</html>


</pre>

</cfsavecontent>



<!---<cfsavecontent variable="codigo_generado">
	<pre>
        <cfset variable = "hello">
    	<cfloop index="i" from="1" to="10">
    	mi codigo variable es ##variable## en la linea #i#
        </cfloop>
    </pre>
</cfsavecontent>--->

<!---<cffile action= "write" variable="codigo_generado" destination="c:/salida.cfm">--->
<cffile action = "write" 
    file = "c:/salida.cfm"
    output = "#CODIGO#
    
    
       
    
    ">
   <!--- Date: #Form.Date#  
    #Form.Content#">--->