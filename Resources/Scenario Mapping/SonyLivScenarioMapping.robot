*** Settings ***
Library    AppiumLibrary

Resource    ../Resources/PO/PlansAndSubscriptions.robot
Resource    ../Resources/PO/SearchContent.robot
Resource    ../Resources/PO/SearchContentContextualLogin.robot
Resource    ../Resources/PO/SearchContentKeyword.robot

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

Search Content With Keyword
    SearchContentKeyword.Open Browser
    SearchContentKeyword.Open SonyLiv Application
    SearchContentKeyword.Verify Search Content Page For A Keyword
    Common.Close SonyLiv Application
    
    
