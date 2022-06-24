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

        <h3>ListLen()</h3>
        <div id="wrapper">
            <cfset myList="Tokyo,Bangkok,Jakarta,Manila,Bangalore,Shanghai">
                <cfset MyValue=#ListLen(myList)#>
                    <cfoutput>List : Tokyo, Bangkok, Jakarta, Manila, Bangalore, Shanghai</cfoutput> <br>
                    <cfoutput>Size of List : #MyValue#</cfoutput>
        <div>

    </main>

</body>

</html>