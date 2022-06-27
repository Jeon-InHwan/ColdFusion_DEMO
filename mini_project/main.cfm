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
                const errMsg = document.querySelector("#errMsg");
                const userInfo = document.querySelector("#userInfo");
                const userInfoData = document.querySelector("#userInfo").innerText;
                const twitInput = document.querySelector("#twitInput");
                const twitsWrapper = document.querySelector("#twitsWrapper");

                console.log(twitsWrapper.scrollTop);

                twitsWrapper.addEventListener('scroll', () => { 
                    
                    let scrollPercentage = twitsWrapper.scrollTop === 0 ? 0 : 100 * (twitsWrapper.scrollTop + twitsWrapper.clientHeight) /twitsWrapper.scrollHeight;
                    
                    console.log(scrollPercentage);
                    
                });
    
                twitInput.focus();
                
                userInfo.addEventListener( "mouseleave", () => {
                    userInfo.innerText = userInfoData;
                }) ; 

                if(successMsg !== null && successMsg !== undefined) {
                    successMsg.classList.add("alert");
            
                    timeout = setTimeout(() => {
                        successMsg.classList.remove("alert");
                    }, 3500);
                    
                    return;
                }

                if(errMsg !== null && errMsg !== undefined) {
                    errMsg.classList.add("alert");
             
                    timeout = setTimeout(() => {
                        errMsg.classList.remove("alert");
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

            const doSomething = (event) => {
                const twit_id = event.target.dataset.id;
                console.log(twit_id);
                // window.location.href = `index.cfm?twit_id=${twit_id}`;
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

            <cfif isDefined("url.errorMsg")>
                <button id="errMsg"><cfoutput>#encodeForHTML(url.errorMsg)#</cfoutput></button>
            </cfif>


            <div id="userInfoWrapper">
                <cfif structKeyExists(session, 'loggedInUser')>
                    <button onmouseenter="mouseEnter();" onclick="logout();" id="userInfo"><cfoutput>#session.loggedInUser.nickname#</cfoutput></button>
                    <cfif isUserInRole('user')>
                        <p id="userRole">Share What you're thinking!</p>
                    </cfif>
                </cfif>
            </div>
            
            <main>

                <div id="twitsWrapper">
                    <cfinclude template="loadingTwits.cfm" />
                </div>

                <form id="outerWrapper" action="twitAuth.cfm" method="POST">
          
                    <div id="twitBtnWrapper">
                        <input id="twitInput" type="text" name="twit" placeholder="Twit your idea!" maxlength="50">
                        <button type="submit" id="twitBtn">Twit</button>
                    </div>

                    <input type="hidden" name="userEmail" value=<cfoutput>#session.loggedInUser.userEmail#</cfoutput>>
                
                </form>
            
            </main>

        </body>
    
    </html>