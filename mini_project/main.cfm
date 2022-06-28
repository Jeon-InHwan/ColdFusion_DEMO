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
                const nextPage = document.querySelector("#nextPage");
                const prevPage = document.querySelector("#prevPage");
                const prevBtn = document.querySelector("#prevBtn");
                const nextBtn = document.querySelector("#nextBtn");
                
                let flag = false;
                let scrollUp = false;
                let scrollDown = false;

                twitsWrapper.scrollTop = 5;

                twitsWrapper.addEventListener("mousewheel", e => {
                    e.deltaY > 0 ? scrollDown = true : scrollUp = true;
                    e.deltaY > 0 ? scrollUp = false : scrollDown = false;
                });

                twitsWrapper.addEventListener('scroll', () => { 
                    flag = true;
                    let scrollPercentage = twitsWrapper.scrollTop === 0 ? 0 : 100 * (twitsWrapper.scrollTop + twitsWrapper.clientHeight) /twitsWrapper.scrollHeight;
                    console.log(scrollPercentage);
                    if(scrollPercentage == 100 && scrollDown == true && scrollUp == false) {
                        prevBtn.style.display = 'none';
                        nextBtn.style.display = 'block';
                    }
                    if(flag == true && scrollPercentage == 0 && scrollDown == false && scrollUp == true) {
                        prevBtn.style.display = 'block';
                        nextBtn.style.display = 'none';
                    }
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

            const goPrevPage = () => {
                const twitsWrapper = document.querySelector("#twitsWrapper");
                const prevPage = document.querySelector("#prevPage");
                prevPage.click();
            }

            const goNextPage = () => {
                const nextPage = document.querySelector("#nextPage");
                const twitsWrapper = document.querySelector("#twitsWrapper");
                nextPage.click();
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

            <div id="btnWrapper">
                <button id="prevBtn" onclick="goPrevPage();">prevPage</button>
                <button id="nextBtn" onclick="goNextPage();">nextPage</button>
            </div>

        </body>
    
    </html>