*** Settings ***
Library    AppiumLibrary

Resource    ../Utils/Common.robot

*** Variables ***

${SONY_LIV_URL}             https://www.sonyliv.com

#Locators =>

${SEARCH_PAGE}                  //*[@class="search"]
${BACK_BUTTON}                  //*[@class="searchBox"]/div[1]
${SEARCH_BAR}                   //*[@class="searchInput"]
${SELECT_CONTENT}               //*[@class="left-bottom-gradient"]
${CONTEXTUAL_LOGIN_BACK_BTN}    //div[@class="imgdiv"]/img[@class="arrowLeft"]
${CONTEXTUAL_LOGIN_HEAD}        //div[@class="signinText"]
${PHONE_NUMBER_FIELD}           //div[@class="mobileContainer"]/label[@class="labelphone"]
${CONTEXTUAL_LOGIN_NEXT_BTN}    //button[@class="nextbtn"  and text()="Next"]
${CONTEXTUAL_LOGIN_ALR_ACC}     //div[@class="alreadyaccount"]
${CONTEXTUAL_SIGN_IN}           //div[@class="viaemail" and text()="Sign In via Email ID or Social Media" ]
${CONTENT_PAGE_SUBSCRIBE_BTN}   //button[@class="subsbutton"]
${CONTENT_TITLE}                //h1[@class="episode-title"]
${WATCH_NOW_BTN}                //div[@class="play-button-text-container columnText" ]
${CONTENT_ADD_WATCH_LIST_BTN}   //div[@class="secondary-cta-button-container" ]/img[@title="WatchList Icon"]
${CONTENT_SHARE_BTN}            //div[@class="secondary-cta-button-container" ]/img[@title="Share Icon"]
${CONTENT_DOWNLOAD_BTN}         //div[@class="secondary-cta-button-container" ]/img[@title="Download Icon"]



#Text Validations =>

${CONTEXTUAL_CONTENT_ID}          1000168742
${PHONE_NUMBER_FIELD_TEXT}        Enter your mobile number
${CONTEXTUAL_LOGIN_HEAD_TEXT}     Sign in to watch
${CONTEXTUAL_LOGIN_ALR_ACC_TEXT}  Already have an account?
${CONTEXTUAL_SIGN_IN_TEXT}        Sign In via Email ID or Social Media
${CONTENT_TITLE_TEXT}             Karishma's Swag 



*** Keywords ***

Open Browser
    Open Browser Application

Open SonyLiv Application
    Navigate to SonyLiv Application


Verify Search Content Contextual Login Page
    Go to search page
    Validate back button
    Enter content ID in the search bar 
    Select the content
    Verify Contextual Login Back Button
    Verify Contextual Login Head
    Verify Phone Number Field
    Verify Next Button 
    Verify Already Have An Account Field
    Verify Sign In Method Field
    Click Contextual Login Back Button
    Verify Content Subscribe Button
    Verify Content Title
    Verify Watch Now Button
    Verify Watch List Button
    Verify Share Button
    Verify Download Button



Go to search page
    Wait Until Element Is Visible    ${SEARCH_PAGE}
    Click Element    ${SEARCH_PAGE}

Validate back button
    Wait Until Element Is Visible    ${BACK_BUTTON}
    Page Should Contain Element    ${BACK_BUTTON}

Enter content ID in the search bar
    Wait Until Element Is Visible    ${SEARCH_BAR}
    Input Text    ${SEARCH_BAR}    ${CONTEXTUAL_CONTENT_ID}
    Sleep    5s

Select the content
    Wait Until Element Is Visible    ${SELECT_CONTENT}
    Click Element   ${SELECT_CONTENT}
    Sleep    5s

Verify Contextual Login Back Button
    Wait Until Element Is Visible     ${CONTEXTUAL_LOGIN_BACK_BTN}
    Page Should Contain Element    ${CONTEXTUAL_LOGIN_BACK_BTN}


Verify Contextual Login Head
    Wait Until Element Is Visible    ${CONTEXTUAL_LOGIN_HEAD}
    ${actual_text}=     Get Text    ${CONTEXTUAL_LOGIN_HEAD}
    Should Be Equal    ${actual_text}    ${CONTEXTUAL_LOGIN_HEAD_TEXT}


Verify Phone Number Field 
    Wait Until Element Is Visible    ${PHONE_NUMBER_FIELD}
    Page Should Contain Element    ${PHONE_NUMBER_FIELD}
    
    ${actual_text}=    Get Text    ${PHONE_NUMBER_FIELD}
    Should Be Equal    ${actual_text}    ${PHONE_NUMBER_FIELD_TEXT}

Verify Next Button
    Wait Until Element Is Visible    ${CONTEXTUAL_LOGIN_NEXT_BTN}
    Element Should Be Disabled    ${CONTEXTUAL_LOGIN_NEXT_BTN}

Verify Already Have An Account Field
    Wait Until Element Is Visible    ${CONTEXTUAL_LOGIN_ALR_ACC}
    ${actual_text}=    Get Text    ${CONTEXTUAL_LOGIN_ALR_ACC}
    Should Contain    ${actual_text}    ${CONTEXTUAL_LOGIN_ALR_ACC_TEXT}

Verify Sign In Method Field
    Wait Until Element Is Visible    ${CONTEXTUAL_SIGN_IN}
    ${actual_text}=    Get Text    ${CONTEXTUAL_SIGN_IN}
    Should Be Equal    ${actual_text}    ${CONTEXTUAL_SIGN_IN_TEXT}

Click Contextual Login Back Button

    Click Element    ${CONTEXTUAL_LOGIN_BACK_BTN}
    Sleep    5s

Verify Content Subscribe Button
    Wait Until Element Is Visible     ${CONTENT_PAGE_SUBSCRIBE_BTN}
    Page Should Contain Element    ${CONTENT_PAGE_SUBSCRIBE_BTN}
    
Verify Content Title
    Wait Until Element Is Visible     ${CONTENT_TITLE}
    ${actual_text}=    Get Text    ${CONTENT_TITLE}
    Should Be Equal    ${actual_text}      ${CONTENT_TITLE_TEXT}

Verify Watch Now Button
    Wait Until Element Is Visible    ${WATCH_NOW_BTN}
    Page Should Contain Element    ${WATCH_NOW_BTN}

Verify Watch List Button
    Wait Until Element Is Visible    ${CONTENT_ADD_WATCH_LIST_BTN}
    Page Should Contain Element    ${CONTENT_ADD_WATCH_LIST_BTN}

Verify Share Button
    Wait Until Element Is Visible    ${CONTENT_SHARE_BTN}
    Page Should Contain Element    ${CONTENT_SHARE_BTN}

Verify Download Button
    Wait Until Element Is Visible    ${CONTENT_DOWNLOAD_BTN}
    Page Should Contain Element    ${CONTENT_DOWNLOAD_BTN}


