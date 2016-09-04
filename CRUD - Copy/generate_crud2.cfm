<cfdump var="#FORM#">



<!---<cfoutput>
	
	<table width="" border="1">	   
     <cfset fruit=#form.COLUMNA#>
     
     <cfquery datasource="AGENDA" name="getListaCRUD">
		SELECT #fruit#
      	FROM CRUD_TABLE
  		ORDER BY NOMBRE
	</cfquery>
     
     <cfoutput query="getListaCRUD">
  <tr>
    <td valign="top">#NOMBRE_ID#</td>
    
    
  </tr>
  </cfoutput>
     --->
     
    <!---<cfloop index = "ListElement" list = #form.COLUMNA#>  
    <tr>
      <td valign="top">#ListElement#</td>
      <td valign="top">
      <cfoutput>#ListElement#</cfoutput><br>  
       </td>
    </tr>
    
    
	</cfloop>--->

    <!---<cfloop from="1" to #ListLen(fruit)# index="i">
    <!--- Write item --->
    <cfoutput> 
        names[i]
    </cfoutput>
    
    
    
        
     
 </cfoutput>--->

<cfsavecontent variable="CODIGO">
<pre>

</pre>

</cfsavecontent>



<!---<cfsavecontent variable="codigo_generado">
	<pre>
        <cfset variable = "hello">
    	<cfloop index="i" from="1" to="10">
    	mi codigo variable es #variable# en la linea #i#
        </cfloop>
    </pre>
</cfsavecontent>--->

<!---<cffile action= "write" variable="codigo_generado" destination="c:/salida.cfm">--->
<cffile action = "write" 
    file = "c:/salida.cfm"
    output = "#CODIGO#
    
    
       
    
    ">
   <!--- Date: #Form.Date#Form.Content#">--->