
<html>

    <head>
        <cfset varTitle="ColdFusion Mini Project" />
        <title>
            <cfoutput>#varTitle#</cfoutput>
        </title>
        <meta charset="UTF-8">

        <script type="text/javascript">

            window.onload = function() {

                const errMsg = document.querySelector("#errMsg");
                
                if(errMsg !== undefined) {
                    errMsg.classList.add("alert");
             
                    timeout = setTimeout(() => {
                        errMsg.classList.remove("alert");
                    }, 3500);
                    
                    return;
                }
            }

        </script>

        <!--- Type It Code --->

        <script src="https://unpkg.com/typeit@8.6.0/dist/index.umd.js"></script>

        <style>
            :root {
                --ti-cursor-margin-left: 0.1em;
            }
        </style>

        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', () => {
                new TypeIt("#mainTitle")
                .options({speed: 100})
                .go();
            })
        </script>

        <link rel="stylesheet" href="/mini_project/css/styles.css">
        <link rel="stylesheet" href="/mini_project/css/partials.css">
        <link rel="stylesheet" href="/mini_project/css/join.css">
    </head>
    
        <body>
            
            <cfinclude template="partials/icon.cfm" />
            
            <cfif isDefined("url.errorMsg")>
                <button id="errMsg"><cfoutput>#encodeForHTML(url.errorMsg)#</cfoutput></button>
            </cfif>
            
            <main>
                
                <div id="outerWrapper">

                    <h1 id="mainTitle">アカウントを作成</h1>

                    <form id="innerWapper" action="joinAuth.cfm" method="POST">
                        <input type="email" name="userEmail" minlength="5" maxlength="40" placeholder="Email">
                        <input type="text" name="nickname" minlength="5" maxlength="25" placeholder="Nick Name">
                        <input type="password" name="userPwd" minlength="5" maxlength="40" placeholder="Password"> 
                        <div id="whiteLine">――――――――――――――――――――――――――――――――――――――――――</div>
                        <input id="submitBtn" type="submit" value="JOIN">
                    </form>

                </div>
            
            </main>
        
        </body>
    
    </html>