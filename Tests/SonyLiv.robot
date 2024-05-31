*** Settings ***
Library     AppiumLibrary   timeout=10s     run_on_failure=Capture Page Screenshot
Resource    ../Resources/Scenario Mapping/SonyLivScenarioMapping.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***

Subscription Page for Guest user
    [Documentation]    Verify the guest plans and subscription page
    [Tags]    Sanity
    SonyLivScenarioMapping.Plans and Subscription page validation

Search Page for Guest user
    [Documentation]    Verify the search content for guest user
    [Tags]    Sanity
    SonyLivScenarioMapping.Search Content Page Validation