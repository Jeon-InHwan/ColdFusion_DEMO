<!--- Conditional Loop --->

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

        <h3>Conditional Loop</h3>

        <cfset myVar=false />
        <cfset i=0 />

        <cfloop condition="myVar eq false">
            <cfset i=i + 1 />
            <cfoutput>
                <p>
                    i = <b>#i#</b> & myVar = <b>#myVar#</b>
                </p>
            </cfoutput>
            <cfif i eq 10>
                <cfset myVar=true />
            </cfif>
        </cfloop>
        <b> [ After Loop ] </b> <br>
        <cfoutput> i = <b>#i#</b> </cfoutput> <br>
        <cfoutput> myVar = <b>#myVar#</b> </cfoutput>

    </main>

</body>

</html>