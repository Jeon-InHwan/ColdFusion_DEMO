<html>

    <head>
        <cfset varTitle="ColdFusion Mini Project" />
        <title>
            <cfoutput>#varTitle#</cfoutput>
        </title>
        <meta charset="UTF-8">
        <script src="https://unpkg.com/typeit@8.6.0/dist/index.umd.js"></script>
        <script type="text/javascript">

            window.onload = function() {

                const successMsg = document.querySelector("#successMsg");
                
                if(successMsg !== undefined) {
                    successMsg.classList.add("alert");
            
                    timeout = setTimeout(() => {
                        successMsg.classList.remove("alert");
                    }, 3500);
                    
                    return;
                }
            }

            const goJoinPage = () => {
                location.href = 'join.cfm';
            }

            const goLoginPage = () => {
                location.href = 'login.cfm';
            }

        </script>

        <!--- Type It Code --->

        <style>
            :root {
                --ti-cursor-margin-left: 0.1em;
            }
        </style>

        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', () => {
                new TypeIt("#mainTitle")
                .options({speed: 350})
                .pause(500)
                .options({speed: 400})
                .delete(4, {delay: 600})
                .options({speed: 200})
                .type("Twitterに。")
                .go();
            })
        </script>

        <link rel="stylesheet" href="/mini_project/css/styles.css">
        <link rel="stylesheet" href="/mini_project/css/partials.css">
        <link rel="stylesheet" href="/mini_project/css/index.css">
    </head>
    
        <body>
            
            <cfinclude template="partials/icon.cfm" />

            <cfif isDefined("url.successMsg")>
                <button id="successMsg"><cfoutput>#encodeForHTML(url.successMsg)#</cfoutput></button>
            </cfif>
            
            <main>
                
                <div id="outerWrapper">

                    <h1 id="mainTitle">すべての話題が、ここに。</h1>

                    <div id="joinWrapper">
                        <button onclick="goJoinPage();">Emailで会員登録</button>
                    </div>

                    <div id="guideDiv">
                        <span id="whiteLine">―――――</span>
                        <h1 id="loginGuide"> アカウントをお持ちの場合 </h1>
                        <span id="whiteLine">―――――</span>
                    </div>

                    <div id="loginWrapper">
                        <button onclick="goLoginPage();">ログイン</button>
                    </div>

                </div>
            
            </main>
        
        </body>
    
    </html>