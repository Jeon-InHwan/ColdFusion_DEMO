<html>

<head>
    <cfset varTitle="ColdFusion" />
    <title>
        <cfoutput>#varTitle#</cfoutput>
    </title>
    <meta charset="UTF-8">

    <script type="text/javascript">
        window.onload = function() {
            console.log("Working!");
        }

        const doThings = () => {
            console.log("Click!");
            const Target = document.querySelector("#target");
            Target.innerText = "What!";
        }
    </script>

    <link rel="stylesheet" href="/SampleCode/css/style.css">

</head>

<body>
    <main>
        <cfset varNum1=12345678 />
        <cfoutput>The Length of #varNum1# is #Len(varNum1)#</cfoutput>

        <button onclick="doThings();">Click Me!</button>

        <h3 id="target">Change Me!</h3>
    </main>
</body>

</html>

<cfset></cfset>