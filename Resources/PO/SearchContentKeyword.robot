*** Settings ***
Library    AppiumLibrary

Resource    ../Utils/Common.robot

*** Variables ***

${SONY_LIV_URL}             https://www.sonyliv.com

#Locators =>

${SEARCH_PAGE}                            //*[@class="search"]
${BACK_BUTTON}                            //*[@class="searchBox"]/div[1]
${SEARCH_BAR}                             //*[@class="searchInput"]
${SELECT_CONTENT}                         //*[@class="left-bottom-gradient"]
${CONTENT_TYPE_ALL}                       //div[@class="menuContainer"]/div/h2[text()="All"]
${CONTENT_TYPE_VIDEOS}                    //div[@class="menuContainer"]/div/h2[text()="Videos"]
${CONTENT_TYPE_SHOWS}                     //div[@class="menuContainer"]/div/h2[text()="Shows"]
${CONTENT_TYPE_MOVIES}                    //div[@class="menuContainer"]/div/h2[text()="Movies"]
${SEARCH_PAGE_CONTENT_DISPLAY}            //div[@class="tabs_content_div"]
${FIRST_SEARCH_RESULT}                    //div[@class="potraitListCards"]/div[1]
${CONTENT_PAGE_SUBSCRIBE_BTN}             //button[@class="subsbutton"]
${SEARCH_RESULT_CONTENT_TITLE}            //h1[@class="content-title"]
${SEARCH_RESULT_CONTENT_WATCH_BUTTON}     //div[@class="play-button-text-container columnText"]/span[@class="play-button-title-text"]
${CONTENT_ADD_WATCH_LIST_BTN}             //div[@class="secondary-cta-button-container" ]/img[@title="WatchList Icon"]
${CONTENT_SHARE_BTN}                      //div[@class="secondary-cta-button-container" ]/img[@title="Share Icon"]
${CONTENT_DOWNLOAD_BTN}                   //div[@class="secondary-cta-button-container" ]/img[@title="Download Icon"]
${VIEW_ALL_EPISODES}                      //*[text()="View All Episodes & Seasons"]
${ALL_EPISODES_BACK_BTN}                  //div[@class="ty-wrapper-back blackBg"]/img[@alt="arrow_back_icon"]
${CONTENT_PAGE_BACK_BTN}                  //div[@class="back-button t4"]/img[@alt="close-icon"]

#Text Validations =>

${CONTENT_KEYWORD}        Jeha

*** Keywords ***

Open Browser
    Common.Open Browser Application

Open SonyLiv Application
    Common.Navigate to SonyLiv Application

Verify Search Content Page For A Keyword
    Go to search page
    Validate back button
    Enter keyword in the search bar
    Verify the contents being displayed
    Validate all content types
    Select the first search result
    Validate the search result
    


Go to search page
    Wait Until Element Is Visible    ${SEARCH_PAGE}
    Click Element    ${SEARCH_PAGE}

Validate back button
    Wait Until Element Is Visible    ${BACK_BUTTON}
    Page Should Contain Element    ${BACK_BUTTON}

Enter keyword in the search bar
    Wait Until Element Is Visible    ${SEARCH_BAR}
    Input Text    ${SEARCH_BAR}    ${CONTENT_KEYWORD}
    Sleep    5s

Verify the contents being displayed
    Page Should Contain Element     ${SEARCH_PAGE_CONTENT_DISPLAY}


Validate all content types
    Wait Until Element Is Visible    ${CONTENT_TYPE_ALL}
    Page Should Contain Element    ${CONTENT_TYPE_ALL}

    Page Should Contain Element    ${CONTENT_TYPE_VIDEOS}
    Click Element    ${CONTENT_TYPE_VIDEOS}
    Sleep    2s

    Page Should Contain Element       ${CONTENT_TYPE_SHOWS}
    Click Element    ${CONTENT_TYPE_SHOWS}
    Sleep    2s

    Page Should Contain Element    ${CONTENT_TYPE_MOVIES}
    Click Element    ${CONTENT_TYPE_MOVIES}
    Sleep     2s

    Click Element    ${CONTENT_TYPE_ALL}


Select the first search result
    # TODO: implement keyword "Select the first search result".
    Page Should Contain Element    ${FIRST_SEARCH_RESULT}
    Click Element    ${FIRST_SEARCH_RESULT}
    Sleep    5s


Validate the search result

    Wait Until Element Is Visible  ${CONTENT_PAGE_SUBSCRIBE_BTN}
    Page Should Contain Element    ${CONTENT_PAGE_SUBSCRIBE_BTN}

    Page Should Contain Element    ${SEARCH_RESULT_CONTENT_TITLE}

    Page Should Contain Element    ${SEARCH_RESULT_CONTENT_WATCH_BUTTON}
    
    Page Should Contain Element    ${CONTENT_ADD_WATCH_LIST_BTN}

    Page Should Contain Element    ${CONTENT_SHARE_BTN}

    Page Should Contain Element    ${CONTENT_DOWNLOAD_BTN}
    Sleep     5s


    Page Should Contain Element    ${VIEW_ALL_EPISODES}
    # Click Element                  ${VIEW_ALL_EPISODES}
    Sleep     2s

    # Click Element                  ${ALL_EPISODES_BACK_BTN}
    # Sleep    2s

    Page Should Contain Element    ${CONTENT_PAGE_BACK_BTN}
    Click Element                  ${CONTENT_PAGE_BACK_BTN}


    