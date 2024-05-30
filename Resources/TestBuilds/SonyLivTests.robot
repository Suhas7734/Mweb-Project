*** Settings ***
Library    AppiumLibrary

Resource    ../Resources/PO/PlansAndSubscriptions.robot


*** Variables ***


*** Keywords ***

Plans and Subscription page validation
    PlansAndSubscriptions.Open Browser
    PlansAndSubscriptions.Open SonyLiv Application
    PlansAndSubscriptions.Verify Plans and Subscriptions Page
    Common.Close SonyLiv Application