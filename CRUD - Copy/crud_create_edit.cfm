
<cfset sexo_val = 1>
<cfset esta_casado_val = 1>
<cfset nombre_val = "">
<cfset direccion_val = "">
<cfset color_favorito_val = 1>

<cfif isDefined("nombre_id")>
	<cfset mode = "edit">
    
    <cfquery datasource="AGENDA" name="getRecordCRUD">
        SELECT *
          FROM CRUD_TABLE
     WHERE NOMBRE_ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#nombre_id#">
    </cfquery>
    
    <cfloop query="getRecordCRUD">
    	<cfset sexo_val = trim(getRecordCRUD.SEXO)>
		<cfset esta_casado_val = trim(getRecordCRUD.ESTA_CASADO)>
        <cfset nombre_val = trim(getRecordCRUD.NOMBRE)>
        <cfset direccion_val = trim(getRecordCRUD.DIRECCION)>
        <cfset color_favorito_val = trim(getRecordCRUD.COLOR_FAVORITO)>
    </cfloop>
<cfelse>
	<cfset mode = "new">
</cfif>

<form id="form1" name="form1" method="post" action="crud_create_edit_process.cfm">
  <table width="200" border="1">
    <tr>
      <td valign="top">Sexo</td>
      <td valign="top">
        <cfoutput>
        <input name="sexo_val" type="radio" id="sexo_val1" value="1" <cfif sexo_val eq 1>checked="checked"</cfif> />
        <label for="sexo_val1">hombre</label><br />
        <input type="radio" name="sexo_val" id="sexo_val2" value="2" <cfif sexo_val eq 2>checked="checked"</cfif> />
        <label for="sexo_val2">mujer</label>
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td valign="top">Casado?</td>
      <td valign="top">
      	<cfoutput>
      	<input name="esta_casado_val" type="checkbox" id="esta_casado_val" value="true" <cfif esta_casado_val eq 1>checked="CHECKED"</cfif> />
        <label for="esta_casado_val">Es casado</label>
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td valign="top">Nombre</td>
      <td valign="top">
      	<cfoutput>
      	<label for="nombre_val"></label>
      	<input name="nombre_val" type="text" id="nombre_val" value="#nombre_val#" size="30" maxlength="64" />
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td valign="top">Direccion</td>
      <td valign="top">
      	<cfoutput>
      	<label for="direccion_val"></label>
      	<textarea name="direccion_val" cols="30" rows="3" id="direccion_val">#direccion_val#</textarea>
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td valign="top">Colore favoritos</td>
      <td valign="top">
      	<cfoutput>
      	<label for="color_favorito_val"></label>
        <select name="color_favorito_val" id="color_favorito_val">
          <option value="0" <cfif color_favorito_val eq 0>selected="selected"</cfif>>Elegir</option>
          <option value="1" <cfif color_favorito_val eq 1>selected="selected"</cfif>>rojo</option>
          <option value="2" <cfif color_favorito_val eq 2>selected="selected"</cfif>>azul</option>
          <option value="3" <cfif color_favorito_val eq 3>selected="selected"</cfif>>verde</option>
        </select>
        </cfoutput>
      </td>
    </tr>
    <tr>
      <td>
	  	  <cfoutput>
          <input name="mode" type="hidden" id="mode" value="#mode#">
		  <cfif mode eq "edit">
      		<input name="nombre_id" type="hidden" id="nombre_id" value="#nombre_id#">
          </cfif>
      	  </cfoutput>
      </td>
      <td><input type="submit" name="button" id="button" value="Enviar" /></td>
    </tr>
  </table>
</form>
