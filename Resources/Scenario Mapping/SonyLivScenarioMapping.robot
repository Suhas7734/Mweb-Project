*** Settings ***
Library    AppiumLibrary

Resource    ../Resources/PO/PlansAndSubscriptions.robot
Resource    ../Resources/PO/SearchContent.robot
Resource    ../Resources/PO/SearchContentContextualLogin.robot

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

Search Content Contextual Page Validation
    SearchContentContextualLogin.Open Browser
    SearchContentContextualLogin.Open SonyLiv Application
    SearchContentContextualLogin.Verify Search Content Contextual Login Page
    Common.Close SonyLiv Application
    
