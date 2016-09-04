

<cfquery datasource="AGENDA" name="agenda_sql">
	SELECT *
      FROM AGENDITA
     WHERE USUARIO_ID = #Session.usuario_id#
     ORDER BY FECHA
</cfquery


><title>Agenda</title>
<form name="form1" method="post" action="">
 <h2> <p>Agenda de<cfoutput>: #Session.nombre#</cfoutput>  -     </h2>
 <h3><a href="index.cfm">P&aacute;gina Principal</a>   </h3>
<hr />
 <p><a href="insertar_modificar_agenda.cfm">insertar nuevo Registro</a> </p>
  <table height="60" border="1">
    <tr>
      <td bgcolor="#FFFF99">Contacto </td>
      <td bgcolor="#FFFF99">Fecha</td>
      <td bgcolor="#FFFF99">Dia</td>
      <td bgcolor="#FFFF99">Texto</td>
      <td bgcolor="#FFFF99">Prioridad</td>
      <td bgcolor="#FFFF99">Accion</td>
    </tr>
    
    <cfoutput query="agenda_sql">
  <tr>
    <td>#agenda_sql.agendita_id#</td>
    <td>#FECHA#</td>
    <td>#LsDateFormat(FECHA, "dddd", "es")#</td>
    <td>#TEXTO#</td>
    <td>#PRIORIDAD#</td>
    <td><a href="borrar_process_agenda.cfm?contacto_id=#agenda_sql.agendita_id#">borrar</a> 
        - <a href="insertar_modificar_agenda.cfm?contacto_id=#agenda_sql.agendita_id#">modificar</a></td>
    
  </cfoutput>
 </table>
  <p>
    <cfinclude template="footer.cfm">
</p>
</form>
