
<!--- Simple Loop from 1 to 5 --->

<html>

    <head>
        <cfset varTitle = "ColdFusion" />
        <title><cfoutput>#varTitle#</cfoutput></title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/SampleCode/css/styles.css">
    </head>

    <body>
        
        <main>

            <h3>Simple Loop from 1 to 10 with step option (step = 3)</h3>

            <cfloop index="i" from="1" to="10" step="3">
                <cfoutput>#i#, </cfoutput>
            </cfloop>
            <br>

        </main>

    </body>
</html>