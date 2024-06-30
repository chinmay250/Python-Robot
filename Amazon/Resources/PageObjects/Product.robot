*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Add To Cart
    Click Button    xpath=//*[@id="buy-now-button"]
Verify Page Loaded
    Wait Until Page Contains    Lloyd 1.5 Ton 3 Star Inverter Split AC
