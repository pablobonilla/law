<!---
Name: process1.cfm
Author: Ben Forta (ben@forta.com)
Description: Basic server-side validation
Created: 01/01/2010
--->
<html>
<head>
<title>Orange Whip Studios - Intranet</title>
</head>
<body>
<!--- Page header --->

<!--- Make sure LoginID is not empty --->
<cfif Len(Trim(LoginID)) IS 0>
<h1>ERROR! ID can’t be left blank!</h1>
<cfabort>
</cfif>
<!--- Make sure LoginID is a number --->
<cfif IsNumeric(LoginID) IS "No">
<h1>ERROR! Invalid ID specified!</h1>
<cfabort>
</cfif>
<!--- Make sure LoginPassword is not empty --->
<cfif Len(Trim(LoginPassword)) IS 0>
<h1>ERROR! Password can’t be left blank!</h1>
<cfabort>
</cfif>
<p align="center">
<h1>Intranet</h1>
</p>
Intranet would go here.
</body>
</html>