<cfinclude template="include_check_login.cfm">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>

<cfset nombre = "">
<cfset telefono = "">
<cfset otros_datos = "">

<cfif isDefined("contacto_id")>
	<cfset modo = "modificar">
    
    <cfquery datasource="AGENDA" name="get_contacto">
        SELECT *
          FROM CONTACTOS
         WHERE CONTACTO_ID = #CONTACTO_ID#
           AND USUARIO_ID = #Session.usuario_id#
    </cfquery>
    
  <cfset nombre = get_contacto.nombre>
	<cfset telefono = get_contacto.telefono>
    <cfset otros_datos = get_contacto.otros_datos>
    
<cfelse>
	<cfset modo = "insertar">
</cfif>

<form id="form1" name="form1" method="post" action="insertar_modificar_process.cfm">
  <table border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td>nombre</td>
      <td><label for="nombre"></label>
      <cfoutput>
      <input name="nombre" type="text" id="nombre" value="#nombre#" />
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td>Sexo</td>
      <td><input name="sexo" type="radio" id="sexo" value="1" checked="checked" />
          	<label for="sexo">Masculino </label>
          <input type="radio" name="sexo" id="sexo" value="0" />
          	<label for="sexo">Femenino </label>
      
      </td>
    </tr>
    <tr>
      <td>telefono</td>
      <td><label for="telefono"></label>
      <cfoutput>
      <input name="telefono" type="text" id="telefono" value="#telefono#" />
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td>Color favorito</td>
      <td><label for="color_favorito"></label>
        <select name="color_favorito" id="color_favorito">
          <option value="1" selected="selected">azul</option>
          <option value="2">Verde</option>
          <option value="3">Rojo</option>
      </select></td>
    </tr>
    <tr>
      <td>Hobbies</td>
      <td>
            <cfoutput>
            <cfif modo eq "modificar" and ListFind(get_contacto.hobbies, "1") neq 0>
            	<cfset checked = "checked=""checked""">
            <cfelse>
            	<cfset checked = "">
            </cfif>
      		<input type="checkbox" name="hobbie.1" id="hobbie.1" #checked# />Ciclismo<br />
            
            <cfif modo eq "modificar" and ListFind(get_contacto.hobbies, "2") neq 0>
            	<cfset checked = "checked=""checked""">
            <cfelse>
            	<cfset checked = "">
            </cfif>
            <input type="checkbox" name="hobbie.2" id="hobbie.2" #checked# />Basketball<br />
            
            <cfif modo eq "modificar" and ListFind(get_contacto.hobbies, "3") neq 0>
            	<cfset checked = "checked=""checked""">
            <cfelse>
            	<cfset checked = "">
            </cfif>
            <input type="checkbox" name="hobbie.3" id="hobbie.3" #checked# />Cine
            </cfoutput>
        </td>
    </tr>
    <tr>
      <td>otros datos</td>
      <td><label for="otros_datos"></label>
      <cfoutput>
      <textarea name="otros_datos" cols="30" rows="4" id="otros_datos">#otros_datos#</textarea>
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td><cfoutput><input name="modo" type="hidden" id="modo" value="#modo#" />
      	<cfif modo eq "modificar">
	        <input name="contacto_id" type="hidden" id="contacto_id" value="#contacto_id#" />
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