
<cfquery datasource="AGENDA" name="agenda_sql">
	SELECT *
      FROM CONTACTOS
      WHERE CONTACTO_ID = 2
     <!---WHERE USUARIO_ID = #Session.usuario_id#--->
</cfquery>



<cfset nombre = agenda_sql.nombre>

	<cfset X = agenda_sql.foto>
	<cfset y ="../images/flores.png">
 <cfoutput>#x# #nombre#</cfoutput>
 
<cfoutput query="agenda_sql">
<table width="338" border="1">
  <tr>
    <td width="4">&nbsp;</td>
    <td width="252">&nbsp;</td>
    <td width="60">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td> <img src="../images/#agenda_sql.foto#" height="196"></td>
        
    
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</cfoutput>