<html>
<head>
<title>Orange Whip Studios - Movie List</title>
</head>
<body>
<h1>Movie List</h1>
<!--- Display movie list --->
<table>
<cfoutput query="movies">
<!--- What color should this row be? --->
<cfif CurrentRow MOD 2 IS 1>
<cfset bgcolor="MediumSeaGreen">
<cfelse>
<cfset bgcolor="White">
</cfif>
<tr bgcolor="#bgcolor#">
<td>#MovieTitle#</td>
<td>#PitchText#</td>
</tr>
</cfoutput>
</table>
</body>
</html>