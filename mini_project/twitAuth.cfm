
<cfset userEmail = form.userEmail>
<cfset twit = form.twit>




<cfif #Len(twit)# LT 5>
    <cfset errorMsg = "Twit is too short!">
    <cflocation url="main.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>

<cfif #Len(twit)# GT 50>
    <cfset errorMsg = "Twit is too long!">
    <cflocation url="main.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>

<cfquery datasource="mydb">
    INSERT INTO twit (email, twit) VALUES ('#userEmail#', '#twit#');
</cfquery>

<cfset successMsg = "Twit has been created successfully!">
<cflocation url="main.cfm?successMsg=#successMsg#" addtoken="false"></cflocation>



