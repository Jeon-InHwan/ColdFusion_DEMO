
<html>
    <head>
        <cfset varTitle = "ColdFusion" />
        <title><cfoutput>#varTitle#</cfoutput></title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/SampleCode/css/styles.css">
    </head>

    <body>
        
        <main>

            <h3>ListLast()</h3>
            <div id="wrapper">
                <cfset myList = "One, Two, Three">
                <cfset MyValue = #ListLast(myList)#>
                <cfoutput>List : One, Two, Three </cfoutput><br>
                <cfoutput>Last element of list : #MyValue#</cfoutput>
            <div>
                
        </main>

    </body>
</html>


<!--- <cfset myList = "one hundred, two hundred, three hundred">
<cfset MyValue = #trim(ListLast(myList))#>
<cfoutput>#MyValue#</cfoutput> --->