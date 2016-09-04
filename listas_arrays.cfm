

<cfset frutas = "naranja,guineo,pera,kiwi,uva,piña,mango">

<cfoutput>
	#(ListGetAt(frutas,2))#<br>
    
    
    <cfloop list="#frutas#" index="i">
    	#UCase(i)#<br>
    </cfloop>
    
    
    <cfset tabla = ArrayNew(2)>
    
    <cfset tabla[1][1] = "hola">
    <cfset tabla[1][2] = "hello">
    <cfset tabla[2][1] = "fine">
    <cfset tabla[2][2] = "thanks">
    <cfset tabla[2][3] = "WOW">
    
    <cfdump var="#tabla#">
    
</cfoutput>