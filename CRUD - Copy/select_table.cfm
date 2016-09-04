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


<!--- tables --->
<h4>Todas las tablas</h4>
<cfdbinfo datasource="#REQUEST.dsn#" name="getTables" type="tables" />
<!---<cfdump var="#getTables#" />--->

<table border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td>Table</td>
  </tr>
  <cfoutput query="getTables">
  <tr>
    <td><a href="select_table_process.cfm?table_name=#getTables.TABLE_NAME#">#getTables.TABLE_NAME#</a></td>
    </tr>
  </cfoutput>
</table>


</body>
</html>