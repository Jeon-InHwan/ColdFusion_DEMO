<!--- Generate fake data --->
<cfset data = queryNew("id,name","integer,varchar")>
<cfloop index="x" from="1" to="22">
    <cfset queryAddRow(data, {id:x,name:"User #x#"})>
</cfloop>

<cfset perpage = 10>

<cfparam name="url.start" default="1">
<cfif not isNumeric(url.start) or url.start lt 1 or url.start gt data.recordCount or round(url.start) neq url.start>
    <cfset url.start = 1>
</cfif>

<cfset totalPages = ceiling(data.recordCount / perpage)>
<cfset thisPage = ceiling(url.start / perpage)>

<h2>Random People</h2>

<cfoutput>
<p>
You are on page #thisPage# of #totalPages#.
</p>
</cfoutput>

<cfoutput query="data" startrow="#url.start#" maxrows="#perpage#">
#currentrow#) #name#<br />
</cfoutput>

<p align="right">
[
<cfif url.start gt 1>
    <cfset link = cgi.script_name & "?start=" & (url.start - perpage)>
    <cfoutput><a href="#link#">Previous Page</a></cfoutput>
<cfelse>
    Previous Page
</cfif>
/
<cfif (url.start + perpage - 1) lt data.recordCount>
    <cfset link = cgi.script_name & "?start=" & (url.start + perpage)>
    <cfoutput><a href="#link#">Next Page</a></cfoutput>
<cfelse>
    Next Page
</cfif>
]
</p>