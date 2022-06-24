
<cfset userEmail = form.userEmail>
<cfset userPwd = form.userPwd>


<cfif #Len(userEmail)# LT 5>
    <cfset errorMsg = "Email is too short!">
    <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>

<cfif #Len(userEmail)# GT 15>
    <cfset errorMsg = "Email is too long!">
    <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>


<cfif #Len(userPwd)# LT 5>
    <cfset errorMsg = "Password is too short!">
    <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>


<cfif #Len(userPwd)# GT 15>
    <cfset errorMsg = "Password is too long!">
    <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>



<cfquery datasource="mydb" name="dbUser">
    SELECT * FROM twitter_user WHERE email LIKE '#userEmail#' AND password LIKE '#userPwd#';
</cfquery>


<cfif #dbUser.RecordCount()# IS 0>
    <cfset errorMsg = "Failed to find an Account that you're trying to login!">
    <cflocation url="login.cfm?errorMsg=#errorMsg#" addtoken="false"></cflocation>
</cfif>

 <!--- Log the user in --->
 <cflogin>
    <cfloginuser name="#dbUser.email#" password="#dbUser.password#" roles="user"></cfloginuser>
</cflogin>

<!--- Save user data in session scope --->
<cfset session.loggedInUser = {
    'userEmail' = dbUser.email
} />
<cfset successMsg = "Login Success!">
<cflocation url="main.cfm?successMsg=#successMsg#" addtoken="false"></cflocation>









