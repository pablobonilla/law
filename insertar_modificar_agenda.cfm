

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta charset="utf-8">
  <title>Agenda Personal</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
		  $(function() {
			$( "#datepicker" ).datepicker();
		  });
  </script>
  
</head>

<body>
<cfinclude template="include_check_login.cfm">

<cfset dia = "">
<cfset fecha = "">
<cfset otros_datos = "">
<cfset prioridad = "">

<cfif isDefined("contacto_id")>
	<cfset modo = "modificar">
    
    <cfquery datasource="AGENDA" name="get_contacto">
        SELECT *
          FROM AGENDITA
         WHERE AGENDITA_ID = #CONTACTO_ID#
           AND USUARIO_ID = #Session.usuario_id#
    </cfquery>
    
	<cfset fecha = get_contacto.fecha>
    <cfset otros_datos = get_contacto.texto>
    <cfset prioridad = get_contacto.prioridad>
    
    
<cfelse>
	<cfset modo = "insertar">
</cfif>

<form id="form1" name="form1" method="post" action="insertar_modificar_process_agenda.cfm">
  <table border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td>Fecha</td>
      
      <td><cfoutput>
        <!--<input name="fecha" type="text" id="fecha" value="#fecha#" />-->
        <p>Date: <input name="fecha" type="text" id="datepicker" value="#fecha#"> </p>
        
        
      </cfoutput></td>
    </tr>
    <tr>
      <td>Tarea</td>
      <td><label for="otros_datos"></label>
      <cfoutput>
      <textarea name="otros_datos" cols="30" rows="4" id="otros_datos">#otros_datos#</textarea>
      </cfoutput>
      </td>
    </tr>
    <tr>
      <td>Prioridad </td>
      <td><cfoutput>
        <input name="prioridad" type="text" id="prioridad" value="#prioridad#" />
      </cfoutput></td>
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