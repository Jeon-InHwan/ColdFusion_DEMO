
<cfset userEmail = form.userEmail>
<cfset userPwd = form.userPwd>


<cfif #Len(userEmail)# LT 5>
    <cfset errorMsg = "Email is too short!">
    <cflocation url="join.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>

<cfif #Len(userEmail)# GT 15>
    <cfset errorMsg = "Email is too long!">
    <cflocation url="join.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>


<cfif #Len(userPwd)# LT 5>
    <cfset errorMsg = "Password is too short!">
    <cflocation url="join.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>


<cfif #Len(userPwd)# GT 15>
    <cfset errorMsg = "Password is too long!">
    <cflocation url="join.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>


<cfquery datasource="mydb">
    INSERT INTO twitter_user (email, password) VALUES ('#userEmail#', '#userPwd#');
</cfquery>

<cfset successMsg = "Account has been created successfully!">
<cflocation url="index.cfm?successMsg=#successMsg#" addtoken="false"></cflocation>



