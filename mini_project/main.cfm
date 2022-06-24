<html>

    <head>
        <cfset varTitle="ColdFusion Mini Project" />
        <title>
            <cfoutput>#varTitle#</cfoutput>
        </title>
        <meta charset="UTF-8">

        <script type="text/javascript">

            window.onload = function() {

                const successMsg = document.querySelector("#successMsg");
                const userInfo = document.querySelector("#userInfo");
                const userInfoData = document.querySelector("#userInfo").innerText;
                
                userInfo.addEventListener( "mouseleave", () => {
                    userInfo.innerText = userInfoData;
                }) ; 


      
                if(successMsg !== undefined) {
                    successMsg.classList.add("alert");
            
                    timeout = setTimeout(() => {
                        successMsg.classList.remove("alert");
                    }, 3500);
                    
                    return;
                }

             

            }

            const mouseEnter = () => {
                const userInfo = document.querySelector("#userInfo");
                userInfo.innerText = "Log Out";
            }

            const logout = () => {
                location.href = 'logout.cfm';
            }

            
        </script>

        <link rel="stylesheet" href="/mini_project/css/styles.css">
        <link rel="stylesheet" href="/mini_project/css/partials.css">
        <link rel="stylesheet" href="/mini_project/css/main.css">
    </head>
    
        <body>
            
            <cfinclude template="partials/icon.cfm" />

            <cfif isDefined("url.successMsg")>
                <button id="successMsg"><cfoutput>#encodeForHTML(url.successMsg)#</cfoutput></button>
            </cfif>

            <div id="userInfoWrapper">
                <cfif structKeyExists(session, 'loggedInUser')>
                    <button onmouseenter="mouseEnter();" onclick="logout();" id="userInfo"><cfoutput>#session.loggedInUser.userEmail#</cfoutput></button>
                    <cfif isUserInRole('user')>
                        <p id="userRole">You are logged in as USER!</p>
                    </cfif>
                </cfif>
            </div>
            
            <main>
                
                <div id="outerWrapper">

                    
                
                </div>
            
            </main>
        
        </body>
    
    </html>