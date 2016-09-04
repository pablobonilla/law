
<!--- dumpear la variable FORM que contiene todo lo que el fomrulario que llamó esta página contiene --->
<!---<cfdump var="#FORM#">
<cfabort>--->



<cfinclude template="include_check_login.cfm">

<cfset list_de_hobbies = "">
<cfloop list="#FIELDNAMES#" index="i">
	
    
   <cfif Left(i, 6) eq "HOBBIE">
   		<cfset hobby_id = ListGetAt(i, 2, ".")>
<!---		<cfoutput>#hobby_id#</cfoutput><br />--->
        <cfset list_de_hobbies = ListAppend(list_de_hobbies, hobby_id)>
   </cfif>
    
</cfloop>

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
              INTO CONTACTOS
                   (NOMBRE,
                    SEXO,
                    TELEFONO,
                    COLOR_FAVORITO,
                    HOBBIES,
                    OTROS_DATOS,
                    USUARIO_ID)
            VALUES (
                    <!--- Esto es para evitar ataques de hackers del tipo "SQL Injection" --->
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#nombre#" maxlength="10">,
                    <cfqueryparam cfsqltype="cf_sql_integer" value="#sexo#">,
                    '#telefono#',
                    #color_favorito#,
                    '#list_de_hobbies#',
                    '#otros_datos#',
                    #Session.usuario_id#)
        </cfquery>
        
    <cfelseif modo eq "modificar">
    
    	<cfquery datasource="AGENDA" name="modificar_usuario_sql">
        	UPDATE CONTACTOS
               SET NOMBRE = '#nombre#',
                   SEXO = '#sexo#',
                   TELEFONO = '#telefono#',
                   COLOR_FAVORITO = #color_favorito#,
                   HOBBIES = '#list_de_hobbies#',
                   OTROS_DATOS = '#otros_datos#'
           WHERE CONTACTO_ID = #contacto_id#
              AND USUARIO_ID = #Session.usuario_id#
        </cfquery>
    
    <cfelse>
    	Error 983983983
        <cfabort>
    </cfif>

</cftransaction>

<cflocation addtoken="no" url="index.cfm">