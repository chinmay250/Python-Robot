*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser} = chrome


*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${browser}
    Maximize Browser Window

Wait 5s
    Sleep    5s

End Web Test
    Close Browser