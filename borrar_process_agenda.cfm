<!---<cfinclude template="include_check_login.cfm">--->

<cftransaction>

    <cfquery datasource="AGENDA" name="borrar_usuario">
        DELETE
          FROM AGENDITA
         WHERE AGENDITA_ID = #CONTACTO_ID#
<!---           AND USUARIO_ID = #Session.usuario_id#--->
    </cfquery>

</cftransaction>

<cflocation addtoken="no" url="agenda.cfm">