*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.amazon.in/

*** Keywords ***
Begin Web Test
    Open Browser   ${url}    ${browser}
    Maximize Browser Window

Wait 5s
    Sleep    5s

End Web Test
    Close Browser