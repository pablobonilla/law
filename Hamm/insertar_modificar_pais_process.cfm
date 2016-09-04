
<!--- dumpear la variable FORM que contiene todo lo que el fomrulario que llamó esta página contiene --->
<!---<cfdump var="#FORM#">
<cfabort>--->



<!---<cfinclude template="include_check_login.cfm">--->


<!---<cfoutput>
#list_de_hobbies#
</cfoutput>

<cfqueryparam cfsqltype="cf_sql_integer" value="#post_id#">,
<cfqueryparam cfsqltype="cf_sql_varchar" value="#stripHTML(f_e)#">

<cfabort>--->

<cftransaction> 

	<cfif modo eq "insertar">
      
    
       <cfquery datasource="HAMMURABIX" name="insertar_pais_sql">
            INSERT
              INTO PAIS
                   (NOMBRE_PAIS,
                    IDIOMA_ID
                    )
            VALUES (
                    <!--- Esto es para evitar ataques de hackers del tipo "SQL Injection" 
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#nombre#" maxlength="10">,
                    <cfqueryparam cfsqltype="cf_sql_integer" value="#sexo#">,--->
                    '#nombre_pais#',
                    #idioma#)
                    
        </cfquery>
        
    <cfelseif modo eq "modificar">
    
    	<cfquery datasource="HAMMURABIX" name="modificar_usuario_sql">
        	UPDATE PAIS
               SET NOMBRE_PAIS = '#nombre_pais#',
                   IDIOMA_ID = '#idioma#'
                   
           WHERE PAIS_ID = #pais_id#

        </cfquery>
    
    <cfelse>
    	Error 983983983
        <cfabort>
    </cfif>

</cftransaction>

<cflocation addtoken="no" url="index33.cfm">