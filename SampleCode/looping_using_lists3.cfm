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

            <cfset thirdList="1, 2, 3, 4, 5, 6, 7, 8, 9, 10">
            <cfset ListSize=#listLen(thirdList)# />
            <cfset ListSize=#listLast(thirdList)# />

            <cfloop list="#thirdList#" index="i" item="item" delimiters=", ">

                <cfif #i# NEQ #ListSize#>
                    <cfoutput>#item#,</cfoutput>
                    <cfelse>
                        <cfoutput>#item#</cfoutput>
                </cfif>

            </cfloop>

        <div>

    </main>

</body>

</html>