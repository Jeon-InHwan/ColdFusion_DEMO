<!-- Looping using Lists -->

<html>

<head>
    <cfset varTitle="ColdFusion" />
    <title>
        <cfoutput>#varTitle#</cfoutput>
    </title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/SampleCode/css/styles.css">
</head>

<body>

    <main>

        <h3>Looping using Lists</h3>
        <div id="wrapper">

            <cfset secondList="1 2 3 4 5 6 7 8 9 10" />

            <cfloop list="#secondList#" item="item" delimiters=" ">
                <ul>
                    <li>
                        <cfoutput>#item#</cfoutput>
                    </li>
                </ul>
            </cfloop>

        <div>

    </main>

</body>

</html>