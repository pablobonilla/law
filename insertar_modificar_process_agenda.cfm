
<!--- dumpear la variable FORM que contiene todo lo que el fomrulario que llamó esta página contiene --->
<!---<cfdump var="#FORM#">
<cfabort>--->



<cfinclude template="include_check_login.cfm">


<!---<cfoutput>
#list_de_hobbies#
</cfoutput>

<cfqueryparam cfsqltype="cf_sql_integer" value="#post_id#">,
<cfqueryparam cfsqltype="cf_sql_varchar" value="#stripHTML(f_e)#">

<cfabort>--->

<cftransaction> 

	<cfif modo eq "insertar">
    
       <cfquery datasource="AGENDA" name="insertar_usuario_sql">

            INSERT
              INTO AGENDITA
                   (FECHA,
                    TEXTO,
                    PRIORIDAD,
                    USUARIO_ID
                    )
            VALUES (
                    <!--- Esto es para evitar ataques de hackers del tipo "SQL Injection" 
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#nombre#" maxlength="10">,
                    <cfqueryparam cfsqltype="cf_sql_integer" value="#sexo#">,--->
					'#DateFormat(FECHA, "yyyy-mm-dd")#',
					<!---'#FECHA#',--->
                    '#otros_datos#',
                    '#prioridad#',
                    '#Session.usuario_id#'
                    )
        </cfquery>

					
        
    <cfelseif modo eq "modificar">
    
    	<cfquery datasource="AGENDA" name="modificar_usuario_sql">
        	UPDATE AGENDITA
               SET FECHA = '#fecha#',
                   TEXTO = '#otros_datos#',
                   PRIORIDAD = '#prioridad#'                   
               WHERE AGENDITA_ID = #contacto_id#

        </cfquery>
    
    <cfelse>
    	Error 983983983
        <cfabort>
    </cfif>

</cftransaction>

<cflocation addtoken="no" url="AGENDA.cfm">