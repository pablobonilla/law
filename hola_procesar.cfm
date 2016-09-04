<cfinclude template="udf_genericos.cfm">


<cfquery datasource="AGENDA2" name="obtener_comtactos">
	SELECT * FROM CONTACTOS
</cfquery>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>



<cfif not isNUmeric(a)>
	Error 29898
    <cfabort>
</cfif>

<cfoutput>
nombre = #nombre#<br />
a = #a#<br />
b = #b#<br />
<br />
<cfset res = a * b>
res = #res#

<cfset res = sumar(a, b)>
<br />
res = #res#

<cfset res = sumar(a, b, "sumar")>
<br />
res = #res#

</cfoutput>

<hr />
<cfoutput query="obtener_comtactos">
	#obtener_comtactos.NOMBRE#, #TELEFONO#<BR />
</cfoutput>

<hr />

<cfloop query="obtener_comtactos">
	<cfoutput>#obtener_comtactos.NOMBRE#, #TELEFONO#<BR /></cfoutput>
</cfloop>

<hr />

<cfdump var="#obtener_comtactos#">

<!---<cflocation url="index.cfm">--->

</body>
</html>