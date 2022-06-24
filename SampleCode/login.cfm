<html>

<head>
    <cfset varTitle="ColdFusion" />
    <title>
        <cfoutput>#varTitle#</cfoutput>
    </title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/SampleCode/css/login.css">
</head>

<body>

    <main>

        <h2>Login Form</h2>

        <cfif isDefined("url.errorMsg")>
            <span id="errorSpan">
                <cfoutput>#encodeForHTML(url.errorMsg)#</cfoutput>
            </span>
            <cfelse>
                <span id="infoSpan">Please Enter your Account Infomation</span>
        </cfif>

        <form id="formWrapper" action="auth.cfm" method="POST">
            <label for="id">ID</label>
            <input type="text" id="id" name="id" placeholder="ID" required>
            <br>
            <label for="password">password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <br>
            <input type="submit" value="submit" id="submitBtn">
        </form>
    </main>

</body>

</html>