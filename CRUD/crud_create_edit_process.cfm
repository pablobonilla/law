<cfdump var="#FORM#">



<!--- Checkboxes si no son chequeados no son enviados --->
<cfif isDefined("esta_casado_val")>
	<cfset esta_casado_val = 1>
<cfelse>
	<cfset esta_casado_val = 0>
</cfif>

<cfif mode eq "new">

    <cfquery datasource="AGENDA" name="insertCRUD">
        INSERT 
          INTO CRUD_TABLE
              (
                SEXO,
                ESTA_CASADO,
                NOMBRE,
                DIRECCION,
                COLOR_FAVORITO
               )
       VALUES (
               <cfqueryparam cfsqltype="cf_sql_integer" value="#sexo_val#">,
               <cfqueryparam cfsqltype="cf_sql_integer" value="#esta_casado_val#">,
               <cfqueryparam cfsqltype="cf_sql_varchar" value="#nombre_val#">,
               <cfqueryparam cfsqltype="cf_sql_varchar" value="#direccion_val#">,
               <cfqueryparam cfsqltype="cf_sql_integer" value="#color_favorito_val#">
              )
    </cfquery>
    
<cfelseif mode eq "edit">

	    <cfquery datasource="AGENDA" name="updateCRUD">
            UPDATE CRUD_TABLE
               SET SEXO = <cfqueryparam cfsqltype="cf_sql_integer" value="#sexo_val#">,
                   ESTA_CASADO = <cfqueryparam cfsqltype="cf_sql_integer" value="#esta_casado_val#">,
                   NOMBRE = <cfqueryparam cfsqltype="cf_sql_varchar" value="#nombre_val#">,
                   DIRECCION = <cfqueryparam cfsqltype="cf_sql_varchar" value="#direccion_val#">,
                   COLOR_FAVORITO = <cfqueryparam cfsqltype="cf_sql_integer" value="#color_favorito_val#">
              WHERE NOMBRE_ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#nombre_id#">
        </cfquery>
        
<cfelse>
	ERROR 92898982
    <cfabort>
</cfif>


<cflocation addtoken="no" url="crud_list.cfm">