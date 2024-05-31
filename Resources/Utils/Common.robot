*** Settings ***
Library     AppiumLibrary

*** Variables ***
${REMOTE_URL}       http://localhost:4723
${PLATFORM_NAME}    Android
${DEVICE_NAME}      emulator-5554
${AUTOMATION_NAME}      Uiautomator2
${BROWSER}      Chrome
${SONY_LIV_URL}     https://www.sonyliv.com

*** Keywords ***
Open Browser Application
    Open Application    ${REMOTE_URL}  	platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}       browserName=${BROWSER}

Navigate to SonyLiv Application
    go to url  ${SONY_LIV_URL}

    # wait until element is visible  //*[@title="close-icon"]
    # click element  //*[@title="close-icon"]
    
    Sleep    10s

    ${present}=    Run Keyword And Return Status    Element Should Be Visible     //*[@title="close-icon"]

    Run Keyword If     ${present}    click element     //*[@title="close-icon"]



    wait until element is visible  //*[@id="wzrk-cancel"]
    click element  //*[@id="wzrk-cancel"]

    sleep  5s



Close SonyLiv Application
    Close Application