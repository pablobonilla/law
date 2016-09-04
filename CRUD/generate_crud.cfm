<cfdump var="#FORM#">

<cfsavecontent variable="CODIGO">
<pre>
    <%cfoutput%>	
        <cfset CRUD_TABLE = #url.tablita#>

		<%cfquery datasource="AGENDA" name="getListaCRUD"%>
            SELECT <cfoutput> #FORM.COLUMNA# </cfoutput>
            FROM <cfoutput>#CRUD_TABLE#</cfoutput>

		<%/cfquery%>
    
        <cfset fruit=#form.COLUMNA#>

		<table width="" border="1">
         <tr>
        <cfloop list="#fruit#" index="i">
         <td bgcolor="#CCCCCC"><cfoutput>#i#</cfoutput>          
        </cfloop>
        </tr>
        
        <%cfoutput query="getListaCRUD"%>
          <tr>           
            <cfloop list="#fruit#" index="i">
         	<td valign="top"><cfoutput>#i#</cfoutput>          
        	</cfloop>
        
          </tr>
          <%/cfoutput%>
        
       	</table>
        
        
	</body>
	</html>
        
    <%/cfoutput%>    
    </pre>

	</cfsavecontent>

	<cffile action = "write" 
    file = "c:/salida.cfm"
    output = "#CODIGO#"> 
        
   
