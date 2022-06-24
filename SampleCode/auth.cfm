
// ID & Password below are assumed to be from DB
<cfset varId = "anonymous">
<cfset varPassword = "1234">

<cfif form.id IS varId>
    <cfif form.password IS varPassword>
        <cflocation url="loggedIn.cfm"></cflocation>
        <cfelse>
            <cfset errorMsg = "Password is not correct">
            <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
    </cfif>
    <cfelse>
        <cfset errorMsg = "ID is not correct">
        <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>



