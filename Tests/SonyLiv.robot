*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Scenario Mapping/SonyLivTests.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***

Subscription Page for Guest user
    [Documentation]    Verify the guest plans and subscription page
    [Tags]    Smoke
    SonyLivTests.Plans and Subscription page validation
