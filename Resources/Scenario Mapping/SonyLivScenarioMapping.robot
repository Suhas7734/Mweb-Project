*** Settings ***
Library    AppiumLibrary

Resource    ../Resources/PO/PlansAndSubscriptions.robot
Resource    ../Resources/PO/SearchContent.robot


*** Variables ***


*** Keywords ***

Plans and Subscription page validation
    PlansAndSubscriptions.Open Browser
    PlansAndSubscriptions.Open SonyLiv Application
    PlansAndSubscriptions.Verify Plans and Subscriptions Page
    Common.Close SonyLiv Application


Search Content Page Validation
    SearchContent.Open Browser
    SearchContent.Open SonyLiv Application
    SearchContent.Verify Search Content Page
    Common.Close SonyLiv Application
    