
<!-- Looping using Lists -->

<html>

    <head>
        <cfset varTitle = "ColdFusion" />
        <title><cfoutput>#varTitle#</cfoutput></title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/SampleCode/css/styles.css">
    </head>

    <body>
        
        <main>

            <h3>Looping using Lists</h3>
            <div id="wrapper">

            <cfset firstList = "item 1,item 2,item 3,item 4,item 5,item 6,item 7" />

            <cfloop list="#firstList#" item="item" delimiters=",">
                <ul>
                    <li>
                        <cfoutput>#item#</cfoutput>
                    </li>
                </ul>
            </cfloop>

        </div>
                
        </main>

    </body>
</html>