*** Settings ***
Documentation      This is the Suite for Sauce Lab automation testing.
Library            SeleniumLibrary

*** Variables ***
${browser}    chrome
${website}    https://www.saucedemo.com/


*** Test Cases ***
Sauce lab buyout
    [Documentation]        Login in Saucelab
    [Tags]                 1     login     smoke

    # Initialize selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s

    # open browser
    Log             starting test case
    Open Browser    about:blank    ${browser}
    Maximize Browser Window
    Go To    ${website}
    Page Should Contain      Swag Labs

    Input Text     id=user-name    standard_user
    Input Text    id=password       secret_sauce
    Click Button    id=login-button
    Wait Until Page Contains    Products
    log        successfully login
    Click Element        xpath = //div[normalize-space()='Sauce Labs Bolt T-Shirt']
    Wait Until Page Contains             Sauce Labs Bolt T-Shirt
    Click Element        xpath= //button[@id='add-to-cart']
    Click Element    xpath= //a[@class='shopping_cart_link']
    Wait Until Page Contains    Your Cart
    Click Button    id=checkout
    
    Input Text    id=first-name    mitchel
    Input Text    id=last-name    johnson
    Input Text    id=postal-code    20134
    Click Button    id=continue

    Page Should Contain    Checkout: Overview
    Click Button    id=finish
    Page Should Contain        Thank you for your order!
    Log    Order is Successful
    
   
    
    Sleep    5s
    
    Close Browser

