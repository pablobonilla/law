<!---<cfinclude template="include_check_login.cfm">--->

<cftransaction>

    <cfquery datasource="HAMMURABIX" name="borrar_Pais">
        DELETE
          FROM Pais
         WHERE PAIS_ID = #pais_id#
<!---           AND USUARIO_ID = #Session.usuario_id#--->
    </cfquery>

</cftransaction>

<cflocation addtoken="no" url="index33.cfm">