<!-- cfquery Tutorial 01 -->

<html>

<head>
    <cfset varTitle="ColdFusion" />
    <title>
        <cfoutput>#varTitle#</cfoutput>
    </title>
    <meta charset="UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/SampleCode/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

    <main>

        <cfquery datasource="mydb" name="test1">
            SELECT * FROM user_list;
        </cfquery>

        <table class="table table-hover">
            <tr>
                <th>user_id</th>
                <th>Name</th>
                <th>Nick Name</th>
                <th>Address</th>
                <th>Birthday</th>
            </tr>
            <cfoutput query="test1">
                <tr>
                    <td>#test1.user_id#</td>
                    <td>#test1.name#</td>
                    <td>#test1.nickname#</td>
                    <td>#test1.address#</td>
                    <td>#test1.birthday#</td>
                </tr>
            </cfoutput>
        </table>
        
    </main>

</body>

</html>