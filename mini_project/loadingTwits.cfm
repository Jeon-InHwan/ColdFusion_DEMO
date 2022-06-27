
<cfquery datasource="mydb" name="twits">
    SELECT A.nickname, B.id, B.twit, TO_CHAR(B.indate, 'yyyy-mm-dd HH:MM:SS') AS indate FROM twitter_user AS A JOIN twit AS B ON A.email = B.email WHERE B.status = 1 ORDER BY B.id DESC;
</cfquery>


<cfoutput query="twits">
    <div class="oneTwit" data-id="#twits.id#" onclick="doSomething(event);">
        <div class="innerWrapper" data-id="#twits.id#" onclick="doSomething(event);">
            <span class="nickname" data-id="#twits.id#" onclick="doSomething(event);">#twits.nickname#</span>
            <span class="indate" data-id="#twits.id#" onclick="doSomething(event);">#twits.indate#</span>
        </div>
        <span class="twit" data-id="#twits.id#">#twits.twit#</span>
    </div>
   
</cfoutput>


