*** Settings ***
Library    AppiumLibrary

Resource    ../Utils/Common.robot

*** Variables ***

${SONY_LIV_URL}             https://www.sonyliv.com

#Locators =>

${SEARCH_PAGE}              //*[@class="search"]
${BACK_BUTTON}              //*[@class="searchBox"]/div[1]
${SEARCH_BAR}               //*[@class="searchInput"]
${SELECT_CONTENT}           //*[@class="left-bottom-gradient"]
${TITLE_OF_THE_CONTENT}     //h1[@class="episode-title"]/a[@class="episode-title"]
${CONTENT_UI_BUTTON}        //*[@class="player-ui-main-wrapper user-inactive"]
${CONTENT_PLAYBACK_BUTTON}  //div[@class="player-middle-controls"]/img[@class="play-pause-icon footer-controls-btn hover-btn player-icon"] 
${CONTENT_FORWARD_BUTTON}   //div[@class="player-middle-controls"]/div[@class="seek-forward footer-controls-btn hover-btn player-icon"]/span[@class="seek-forward__text"]
${CONTENT_BACKWARD_BUTTON}  //div[@class="player-middle-controls"]/div[@class="seek-backward footer-controls-btn hover-btn player-icon"]/span[@class="seek-backward__text"]
${CONTENT_MUTE_BUTTON}      //div[@class="player-footer"]/div[@class="player-footer-controls"]/img[@class="mwebVolume-icon"]
${CONTENT_EPISODES}         //h3[text()="Episodes"]
${CONTENT_SETTINGS}         //*[@class="setting-icon"]
${CONTENT_MAXIMIZE}         //*[@class="mwebFullscreen-icon"]


#Text Validations =>

${CONTENT_ID}               1000210415
${TITLE_TEXT}               E3700. Tapu Ka Style
${CONTENT_EPISODES_TEXT}    Episodes


*** Keywords ***

Open Browser
    Open Browser Application

Open SonyLiv Application
    Navigate to SonyLiv Application


Verify Search Content Page
    Go to search page
    Validate back button
    Enter content ID in the search bar
    Select the content
    Validate title of the content 
    Verify content playback play and pause button
    Verify Forward and Rewind Playback
    Verify Content Mute and Unmute
    Verify Episodes Text

    #Next episode and Subtitles sections not available in MWeb

    #Commenting below scenarios because they were not available 
    # Verify Settings Button 
    # Verify Maximize button


Go to search page
    Wait Until Element Is Visible    ${SEARCH_PAGE}
    Click Element    ${SEARCH_PAGE}

Validate back button
    Wait Until Element Is Visible    ${BACK_BUTTON}
    Page Should Contain Element    ${BACK_BUTTON}

Enter content ID in the search bar
    Wait Until Element Is Visible    ${SEARCH_BAR}
    Input Text    ${SEARCH_BAR}    ${CONTENT_ID}
    Sleep    5s

Select the content
    Wait Until Element Is Visible    ${SELECT_CONTENT}
    Click Element   ${SELECT_CONTENT}
    Sleep    30s

Validate title of the content
    Wait Until Element Is Visible    ${TITLE_OF_THE_CONTENT}
    ${actual_text}=     Get Text    ${TITLE_OF_THE_CONTENT}
    Should Be Equal    ${actual_text}    ${TITLE_TEXT}


Click Content UI
    Wait Until Element Is Visible    ${CONTENT_UI_BUTTON}
    Click Element    ${CONTENT_UI_BUTTON}


Verify content playback play and pause button

    Click Content UI

    Wait Until Element Is Visible    ${CONTENT_PLAYBACK_BUTTON}
    Page Should Contain Element      ${CONTENT_PLAYBACK_BUTTON}

    Click Element        ${CONTENT_PLAYBACK_BUTTON}
    Sleep    3s
    Click Element        ${CONTENT_PLAYBACK_BUTTON}  
    Sleep     5s


Verify Forward and Rewind Playback

    Click Content UI
    
    Wait Until Element Is Visible    ${CONTENT_FORWARD_BUTTON}
    Wait Until Element Is Visible    ${CONTENT_BACKWARD_BUTTON}

    Page Should Contain Element    ${CONTENT_FORWARD_BUTTON}
    Page Should Contain Element    ${CONTENT_BACKWARD_BUTTON}

    Click Element    ${CONTENT_FORWARD_BUTTON}
    Sleep     2s
    Click Content UI
    Click Element    ${CONTENT_BACKWARD_BUTTON}

Verify Content Mute and Unmute 

    Click Content UI

    Click Element        ${CONTENT_PLAYBACK_BUTTON}

    Wait Until Element Is Visible    ${CONTENT_MUTE_BUTTON}
    Page Should Contain Element    ${CONTENT_MUTE_BUTTON}

    Click Element        ${CONTENT_MUTE_BUTTON}
    Click Element    ${CONTENT_MUTE_BUTTON}
    
    
Verify Episodes Text
    
    Wait Until Element Is Visible    ${CONTENT_EPISODES}
    ${actual_text}    Get Text    ${CONTENT_EPISODES}
    Should Be Equal    ${actual_text}    ${CONTENT_EPISODES_TEXT}

Verify Settings Button    

    Click Content UI
    Click Element        ${CONTENT_PLAYBACK_BUTTON}

    Wait Until Element Is Visible    ${CONTENT_SETTINGS}
    Page Should Contain Element      ${CONTENT_SETTINGS}

Verify Maximize button
    
    Click Content UI
    Click Element        ${CONTENT_PLAYBACK_BUTTON}

    Wait Until Element Is Visible    ${CONTENT_MAXIMIZE}
    Page Should Contain Element      ${CONTENT_MAXIMIZE}
    Click Element        ${CONTENT_MAXIMIZE}

