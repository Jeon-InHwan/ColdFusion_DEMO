<!--- delete session --->
<cfset structDelete(session, 'loggedInUser') />

<!--- Log the user out --->
<cflogout/>

<!--- go back to index.cfm --->
<cfset successMsg = "You have successfully logged out!">
<cflocation url="index.cfm?successMsg=#successMsg#" addtoken="false"></cflocation>


