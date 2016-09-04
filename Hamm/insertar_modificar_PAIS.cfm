<!---<cfinclude template="include_check_login.cfm">--->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>

<cfset nombre_pais = "">
<cfset idioma = "">

<cfif isDefined("pais_id")>
	<cfset modo = "modificar">
    
    <cfquery datasource="HAMMURABIX" name="get_hammurabix">
        SELECT *
          FROM Pais
         WHERE pais_id = #pais_id#

    </cfquery>
    
  <cfset nombre_pais = get_hammurabix.nombre_pais>
	<cfset idioma = get_hammurabix.idioma_id>
    
<cfelse>
	<cfset modo = "insertar">
</cfif>

<form id="form1" name="form1" method="post" action="insertar_modificar_pais_process.cfm">
  <table width="330" border="0" cellpadding="2" cellspacing="2">
    <tr>
      <td width="105">Nombre Pais </td>
      <td width="161"><label for="nombre"></label>
      <cfoutput>
      <input name="nombre_pais" type="text" id="nombre_pais" value="#nombre_pais#" />
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td>Idioma</td>
      <td><label for="idioma"></label>
      <cfoutput>
      <input name="idioma" type="text" id="idioma" value="#idioma#" />
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td><cfoutput><input name="modo" type="hidden" id="modo" value="#modo#" />
      	<cfif modo eq "modificar">
	        <input name="pais_id" type="hidden" id="pais_id" value="#pais_id#" />
        </cfif>
      </cfoutput></td>
      <td>
      
      <cfif modo eq "insertar">
      	<input name="Submit" type="submit" id="Submit" value="insertar" />
      <cfelse>
      	<input name="Submit" type="submit" id="Submit" value="modificar" />
      </cfif>
      
      </td>
    </tr>
  </table>
</form>
</body>
</html>