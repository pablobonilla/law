<!---
See this article: http://www.stephenwithington.com/blog/index.cfm/2008/9/18/Using-ColdFusions-CFDBInfo-to-Dynamically-Output-Database-Columns-and-Tables
--->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>


<!--- this dsn is used throughout the examples --->
<cfset REQUEST.dsn="AGENDA" />

<cfdbinfo datasource="#REQUEST.dsn#" name="getColumns" type="columns" table="#URL.table_name#" />

<a href="select_table.cfm">Ver todas las tablas</a>
<br />
<br />
<cfset tabla =#URL.table_name#/>
<!---<cfdump var="#tabla#">
<cfabort>--->

<form id="form1" name="form1" Tmethod="post" action="generate_crud.cfm">
<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td>Select</td>
    <td>Columna</td>
    <td>Tipo</td>
    <td>Extras</td>
    <td>Default</td>
    <td>Primary</td>
    <td>Nombre amigable</td>
    <td>Type</td>
    <td>Qty</td>
    <td>Valores iniciales</td>
    <td>Max chars</td>
  </tr>
  <cfoutput query="getColumns">
  <tr>
    <td><input name="columna" type="checkbox" id="columna" value="#getColumns.COLUMN_NAME#" />
      <label for="columna"></label></td>
    <td>#getColumns.COLUMN_NAME#</td>
    <td>#getColumns.TYPE_NAME#</td>
    <td>#getColumns.COLUMN_SIZE#</td>
    <td>#getColumns.COLUMN_DEFAULT_VALUE#</td>
    <td><cfif getColumns.IS_PRIMARYKEY eq 1>1</cfif></td>
    <td><input name="component_display_name.#getColumns.COLUMN_NAME#" type="text" id="component_display_name" value="#getColumns.COLUMN_NAME#" size="20" maxlength="32" /></td>
    <td><label for="component_type"></label>
      <select name="component_type" id="component_type">
        <option value="#getColumns.COLUMN_NAME#.1" selected="selected">Primario (escondido)</option>
        <option value="#getColumns.COLUMN_NAME#.2">Radio Button</option>
        <option value="#getColumns.COLUMN_NAME#.3">Checkbox</option>
        <option value="#getColumns.COLUMN_NAME#.4">Linea de texto</option>
        <option value="#getColumns.COLUMN_NAME#.5">Multi-linea de texto</option>
        <option value="#getColumns.COLUMN_NAME#.6">Dropdown</option>
      </select></td>
    <td><label for="component_initial_val"></label>
      <input name="component_quantity.#getColumns.COLUMN_NAME#" type="text" id="component_quantity" value="2" size="3" maxlength="3" /></td>
    <td><label for="component_initial_val">
      <input name="component_initial_val.#getColumns.COLUMN_NAME#" type="text" id="component_initial_val" value="mujer,hombre" size="20" maxlength="32" />
    </label></td>
    <td><label for="component_max_chars"></label>
      <input name="component_max_chars.#getColumns.COLUMN_NAME#" type="text" id="component_max_chars" value="64" size="3" maxlength="3" /></td>
  </tr>
  </cfoutput>
</table>
<p>
  <input type="submit" name="button" id="button" value="Enviar" />
  <input type="hidden" name="Tabla" id="Tabla" />
</p>
</form>
<p>&nbsp;</p>
<hr />
<!---
<cfdump var="#getColumns#" />
--->
</body>
</html>