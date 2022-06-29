
<cfquery datasource="mydb" name="twits">
    SELECT A.nickname, B.id, B.twit, TO_CHAR(B.indate, 'yyyy-mm-dd HH:MM:SS') AS indate FROM twitter_user AS A JOIN twit AS B ON A.email = B.email WHERE B.status = 1 ORDER BY B.id DESC;
</cfquery>

    <cfset perpage = 7>

    <cfparam name="url.start" default="1">
    <cfif not isNumeric(url.start) or url.start lt 1 or url.start gt twits.recordCount 
        or round(url.start) neq url.start>
        <cfset url.start = 1>
    </cfif>

    <cfset totalPages = ceiling(twits.recordCount / perpage)>
    <cfset thisPage = ceiling(url.start / perpage)>

    <cfoutput query="twits" startrow="#url.start#" maxrows="#perpage#">
        <div class="oneTwit" data-id="#twits.id#" onclick="doSomething(event);">
            <div class="innerWrapper" data-id="#twits.id#" onclick="doSomething(event);">
                <span class="nickname" data-id="#twits.id#" onclick="doSomething(event);">#twits.nickname#</span>
                <span class="indate" data-id="#twits.id#" onclick="doSomething(event);">#twits.indate#</span>
            </div>
            <span class="twit" data-id="#twits.id#">#twits.twit#</span>
        </div>

    <div id="displayNone">
        <p align="right">
        [
        <cfif url.start gt 1>
            <cfset link = cgi.script_name & "?start=" & (url.start - perpage)>
            <cfoutput><a id="prevPage" href="#link#">Previous Page</a></cfoutput>
        <cfelse>
            Previous Page
        </cfif>
        /
        <cfif (url.start + perpage - 1) lt twits.recordCount>
            <cfset link = cgi.script_name & "?start=" & (url.start + perpage)>
            <cfoutput><a id="nextPage" href="#link#">Next Page</a></cfoutput>
        <cfelse>
            Next Page
        </cfif>
        ]
        </p>
    </div>
   
</cfoutput>


