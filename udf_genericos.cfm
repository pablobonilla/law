
<cffunction name="sumar" returntype="numeric" >
  <cfargument name="number_a" type="numeric">
  <cfargument name="number_b" type="numeric">
  <cfargument name="operacion" type="string" required="no">
  
    <cfif isDefined("operacion")>
    	<cfreturn -1>
    </cfif>

	<cfset resultado = number_a + number_b>
  
  <cfreturn resultado>
</cffunction>



