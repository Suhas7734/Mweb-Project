*** Settings ***
Library    AppiumLibrary

Resource    ../Utils/Common.robot

*** Variables ***

${SONY_LIV_URL}                 https://www.sonyliv.com

#Locators =>

${SUBSCRIBE_BUTTON}             //*[@id="smartHookButton"]/div/span
${SUBSCRIBE_PAGE_HEADER}        //*[@class="page_title"]
${BACK_ARROW_BUTTON}            //*[@class="back_Btn"]
${SIGN_IN_BUTTON}               //*[@class="signin_text"]


${599_PACK_BUTTON}              //*[@value="LIV_PRE_Mob_12M"]
${599_PACK_LOGGED_IN_DEVICES}   //*[@class='selected_plan subCell']/div[2]/span[text()=1]
${599_PACK_WATCH_ON_DEVICES}    //*[@class='selected_plan subCell']/div[4]/span[text()=1]
${599_PACK_MAX_VIDEO_DEVICES}   //*[@class='selected_plan subCell']/div[6]/span[text()='HD']
${599_PACK_MAX_AUDIO_DEVICES}   //*[@class='selected_plan subCell']/div[8]/span[@class='img_block']
${599_PACK_AD_FREE_EXP}         //*[@class='selected_plan subCell']/div[10]/span[text()="Except on Sports, Liv Exclusives, Reality Shows (Live & Recorded) and Interactivity"]


${699_PACK_BUTTON}              //*[@value="LIV_Pre_6M"]
${699_PACK_LOGGED_IN_DEVICES}   //*[@class='selected_plan subCell']/div[2]/span[text()=5]
${699_PACK_WATCH_ON_DEVICES}    //*[@class='selected_plan subCell']/div[4]/span[text()=2]
${699_PACK_MAX_VIDEO_DEVICES}   //*[@class='selected_plan subCell']/div[6]/span[text()='FULL HD']
${699_PACK_MAX_AUDIO_DEVICES}   //*[@class='selected_plan subCell']/div[8]/span[@class='img_block']
${699_PACK_AD_FREE_EXP}         //*[@class='selected_plan subCell']/div[10]/span[text()="Except on Sports, Liv Exclusives, Reality Shows (Live & Recorded) and Interactivity"]


${299_PACK_BUTTON}              //*[@value="LIV_Pre_1M"]
${299_PACK_LOGGED_IN_DEVICES}   //*[@class='selected_plan subCell']/div[2]/span[text()=5]
${299_PACK_WATCH_ON_DEVICES}    //*[@class='selected_plan subCell']/div[4]/span[text()=1]
${299_PACK_MAX_VIDEO_DEVICES}   //*[@class='selected_plan subCell']/div[6]/span[text()='FULL HD']
${299_PACK_MAX_AUDIO_DEVICES}   //*[@class='selected_plan subCell']/div[8]/span[@class='img_block']
${299_PACK_AD_FREE_EXP}         //*[@class='selected_plan subCell']/div[10]/span[text()="Except on Sports, Liv Exclusives, Reality Shows (Live & Recorded) and Interactivity"]

${999_PACK_BUTTON}              //*[@value="LIV_Pre_12M"]
${999_PACK_LOGGED_IN_DEVICES}   //*[@class='selected_plan subCell']/div[2]/span[text()=5]
${999_PACK_WATCH_ON_DEVICES}    //*[@class='selected_plan subCell']/div[4]/span[text()=2]
${999_PACK_MAX_VIDEO_DEVICES}   //*[@class='selected_plan subCell']/div[6]/span[text()='FULL HD']
${999_PACK_MAX_AUDIO_DEVICES}   //*[@class='selected_plan subCell']/div[8]/span[@class='img_block']
${999_PACK_AD_FREE_EXP}         //*[@class='selected_plan subCell']/div[10]/span[text()="Except on Sports, Liv Exclusives, Reality Shows (Live & Recorded) and Interactivity"]



#Text Validations =>

${SUBSCRIBE_PAGE_HEADER_TEXT}           Subscribe to watch all content on Sony LIV


${599_PACK_LOGGED_IN_DEVICES_TEXT}      1
${599_PACK_WATCH_ON_DEVICES_TEXT}       1
${599_PACK_MAX_VIDEO_DEVICES_TEXT}      HD\n(720p)
${599_PACK_AD_FREE_EXP_TEXT}            Except On Sports, Liv Exclusives, Reality Shows (Live & Recorded) And Interactivity

${699_PACK_LOGGED_IN_DEVICES_TEXT}      5
${699_PACK_WATCH_ON_DEVICES_TEXT}       2
${699_PACK_MAX_VIDEO_DEVICES_TEXT}      FULL HD\n(1080p)
${699_PACK_AD_FREE_EXP_TEXT}            Except On Sports, Liv Exclusives, Reality Shows (Live & Recorded) And Interactivity

${299_PACK_LOGGED_IN_DEVICES_TEXT}      5
${299_PACK_WATCH_ON_DEVICES_TEXT}       1
${299_PACK_MAX_VIDEO_DEVICES_TEXT}      FULL HD\n(1080p)
${299_PACK_AD_FREE_EXP_TEXT}            Except On Sports, Liv Exclusives, Reality Shows (Live & Recorded) And Interactivity

${999_PACK_LOGGED_IN_DEVICES_TEXT}      5
${999_PACK_WATCH_ON_DEVICES_TEXT}       2
${999_PACK_MAX_VIDEO_DEVICES_TEXT}      FULL HD\n(1080p)
${999_PACK_AD_FREE_EXP_TEXT}            Except On Sports, Liv Exclusives, Reality Shows (Live & Recorded) And Interactivity


*** Keywords ***

Open Browser
    Open Browser Application

Open SonyLiv Application
    Navigate to SonyLiv Application

Verify Plans and Subscriptions Page

    Clicking on Subscribe button
    Validating heading of plans page
    Validating back arrow
    Validating sign in button

    For 599rs PACK
    Validating number of logged in devices for 599rs pack
    Validating Watch on devices at same time for 599rs pack
    Validating Max Video Quality for 599rs pack
    Validating Max Audio Quality for 599rs pack
    Validating Ad free experience for 599rs pack

    For 699rs pack
    Validating number of logged in devices for 699rs pack
    Validating Watch on devices at same time for 699rs pack
    Validating Max Video Quality for 699rs pack
    Validating Max Audio Quality for 699rs pack
    Validating Ad free experience for 699rs pack

    For 299rs pack
    Validating number of logged in devices for 299rs pack
    Validating Watch on devices at same time for 299rs pack
    Validating Max Video Quality for 299rs pack
    Validating Max Audio Quality for 299rs pack
    Validating Ad free experience for 299rs pack

    For 999rs pack
    Validating number of logged in devices for 999rs pack
    Validating Watch on devices at same time for 999rs pack
    Validating Max Video Quality for 999rs pack
    Validating Max Audio Quality for 999rs pack
    Validating Ad free experience for 999rs pack

    Validating Select a promo code
    Validating pay button
    Validating terms and conditions page
    Validating privacy policy page

    
Clicking on Subscribe button
    click element  ${SUBSCRIBE_BUTTON}
    Sleep    5s

Validating heading of plans page
    page should contain element  ${SUBSCRIBE_PAGE_HEADER}
    ${actual_text}=     get text    ${SUBSCRIBE_PAGE_HEADER}
    should be equal     ${actual_text}     ${SUBSCRIBE_PAGE_HEADER_TEXT}


Validating back arrow
    page should contain element     ${BACK_ARROW_BUTTON}


#Language drop down is not available in MWEB

Validating sign in button
    page should contain element  ${SIGN_IN_BUTTON}
#    click element  //*[@class="signin_text"]
#    sleep   2s
#    click element  //*[@class="imgdiv"]

    sleep   5S
For 599rs PACK
    #for 599 pack
    click element  ${599_PACK_BUTTON}

    #validating number of logged in devices
Validating number of logged in devices for 599rs pack
    page should contain element  ${599_PACK_LOGGED_IN_DEVICES}
    ${actual_text}=     get text  ${599_PACK_LOGGED_IN_DEVICES}
    should be equal     ${actual_text}      ${599_PACK_LOGGED_IN_DEVICES_TEXT}

Validating Watch on devices at same time for 599rs pack
    #validating Watch on devices at same time
    page should contain element  ${599_PACK_WATCH_ON_DEVICES}
    ${actual_text}=     get text    ${599_PACK_WATCH_ON_DEVICES}
    should be equal     ${actual_text}      ${599_PACK_WATCH_ON_DEVICES_TEXT}


Validating Max Video Quality for 599rs pack
    #validating Max Video Quality
    page should contain element  ${599_PACK_MAX_VIDEO_DEVICES}
    ${actual_text}=     get text    ${599_PACK_MAX_VIDEO_DEVICES}
    should be equal     ${actual_text}      ${599_PACK_MAX_VIDEO_DEVICES_TEXT}

Validating Max Audio Quality for 599rs pack
    #validating Max Audio Quality
    page should contain element  ${599_PACK_MAX_AUDIO_DEVICES}
    ${actual_text}=     get text    ${599_PACK_MAX_AUDIO_DEVICES}
#    log     ${actual_text}
    #not able to assert , as the Max Audio Quality is not text but a img tag

Validating Ad free experience for 599rs pack
    #validating Ad free experience
    page should contain element  ${599_PACK_AD_FREE_EXP}
    ${actual_text}=     get text   ${599_PACK_AD_FREE_EXP}
    should be equal     ${actual_text}      ${599_PACK_AD_FREE_EXP_TEXT}


For 699rs pack
    click element  ${699_PACK_BUTTON}

Validating number of logged in devices for 699rs pack
    page should contain element  ${699_PACK_LOGGED_IN_DEVICES}
    ${actual_text}=    get text  ${699_PACK_LOGGED_IN_DEVICES}
    should be equal     ${actual_text}      ${699_PACK_LOGGED_IN_DEVICES_TEXT}

Validating Watch on devices at same time for 699rs pack
    page should contain element  ${699_PACK_WATCH_ON_DEVICES}
    ${actual_text}=    get text  ${699_PACK_WATCH_ON_DEVICES}
    should be equal     ${actual_text}      ${699_PACK_WATCH_ON_DEVICES_TEXT}

Validating Max Video Quality for 699rs pack
    page should contain element  ${699_PACK_MAX_VIDEO_DEVICES}
    ${actual_text}=    get text  ${699_PACK_MAX_VIDEO_DEVICES}
    should be equal     ${actual_text}      ${699_PACK_MAX_VIDEO_DEVICES_TEXT}

Validating Max Audio Quality for 699rs pack
    page should contain element  ${699_PACK_MAX_AUDIO_DEVICES}
    ${actual_text}=     get text    ${699_PACK_MAX_AUDIO_DEVICES}
#    log     ${actual_text}
    #not able to assert , as the Max Audio Quality is not text but a img tag

Validating Ad free experience for 699rs pack
    page should contain element  ${699_PACK_AD_FREE_EXP}
    ${actual_text}=     get text   ${699_PACK_AD_FREE_EXP}
    should be equal     ${actual_text}      ${699_PACK_AD_FREE_EXP_TEXT}



For 299rs pack
    click Element   ${299_PACK_BUTTON}


Validating number of logged in devices for 299rs pack
    page should contain element  ${299_PACK_LOGGED_IN_DEVICES}
    ${actual_text}=    get text  ${299_PACK_LOGGED_IN_DEVICES}
    should be equal     ${actual_text}      ${299_PACK_LOGGED_IN_DEVICES_TEXT}

Validating Watch on devices at same time for 299rs pack
    Page Should Contain Element    ${299_PACK_WATCH_ON_DEVICES}
    ${actual_text}=     get text   ${299_PACK_WATCH_ON_DEVICES}
    Should Be Equal    ${actual_text}    ${299_PACK_WATCH_ON_DEVICES_TEXT}

Validating Max Video Quality for 299rs pack
    page should contain element  ${299_PACK_MAX_VIDEO_DEVICES}
    ${actual_text}=    get text  ${299_PACK_MAX_VIDEO_DEVICES}
    should be equal     ${actual_text}      ${299_PACK_MAX_VIDEO_DEVICES_TEXT}

Validating Max Audio Quality for 299rs pack
    page should contain element  ${299_PACK_MAX_AUDIO_DEVICES}
    ${actual_text}=     get text    ${299_PACK_MAX_AUDIO_DEVICES}
#    log     ${actual_text}

Validating Ad free experience for 299rs pack
    page should contain element  ${299_PACK_AD_FREE_EXP}
    ${actual_text}=     get text   ${299_PACK_AD_FREE_EXP}
    should be equal     ${actual_text}      ${299_PACK_AD_FREE_EXP_TEXT}


For 999rs pack
    Click Element    ${999_PACK_BUTTON}

Validating number of logged in devices for 999rs pack
    page should contain element  ${999_PACK_LOGGED_IN_DEVICES}
    ${actual_text}=    get text  ${999_PACK_LOGGED_IN_DEVICES}
    should be equal     ${actual_text}      ${999_PACK_LOGGED_IN_DEVICES_TEXT}

Validating Watch on devices at same time for 999rs pack
    page should contain element  ${999_PACK_WATCH_ON_DEVICES}
    ${actual_text}=    get text  ${999_PACK_WATCH_ON_DEVICES}
    should be equal     ${actual_text}      ${999_PACK_WATCH_ON_DEVICES_TEXT}

Validating Max Video Quality for 999rs pack
    page should contain element  ${999_PACK_MAX_VIDEO_DEVICES}
    ${actual_text}=    get text  ${999_PACK_MAX_VIDEO_DEVICES}
    should be equal     ${actual_text}      ${999_PACK_MAX_VIDEO_DEVICES_TEXT}


Validating Max Audio Quality for 999rs pack
    page should contain element  ${999_PACK_MAX_AUDIO_DEVICES}
    ${actual_text}=     get text    ${999_PACK_MAX_AUDIO_DEVICES}
#    log     ${actual_text}

Validating Ad free experience for 999rs pack
    page should contain element  ${999_PACK_AD_FREE_EXP}
    ${actual_text}=     get text   ${999_PACK_AD_FREE_EXP}
    should be equal     ${actual_text}      ${999_PACK_AD_FREE_EXP_TEXT}


Validating Select a promo code
    #validating Select a promo code
    Page Should Contain Element    //*[@class="btn_promo"]
    click element   //*[@class="btn_promo"]
    sleep   2s
    click element  //*[@class="offerModelClose"]
    #closing
#    click element  //img[@class='Modal-close' and @alt='close' and @title='close']




Validating pay button
#    validating pay button
    page should contain element  //*[@class="pay_Btn"]
#   commenting below code because when pressed back , app returns to browser homepage
#    click element  //*[@class="pay_Btn"]
#    sleep   2s
#    click element  //*[@class="imgdiv"]
    #back arrow


Validating terms and conditions page
    page should contain element     //*[text()="Terms and Conditions"]
    click element       //*[text()="Terms and Conditions"]
    sleep  2s
    click element   //*[@class="BackButton"]


Validating privacy policy page
    page should contain element  //*[text()="Privacy Policy"]
    click element  //*[text()="Privacy Policy"]
    sleep  2s
    click element  //*[@class="BackButton"]
    
