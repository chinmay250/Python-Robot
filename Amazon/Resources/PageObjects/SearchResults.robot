
*** Settings ***
Documentation    Amazon Search bar.
Library    SeleniumLibrary
Resource    TopNav.robot


*** Keywords ***
Search For Product
    Input Text    id=twotabsearchtextbox    Lloyd 1.5 Ton 3 Star
    Wait Until Page Contains    Lloyd 1.5 Ton 3 Star



    
