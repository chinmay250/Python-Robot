*** Settings ***
Documentation      This is the Suite for Sauce Lab automation testing.
Library            SeleniumLibrary

*** Variables ***



*** Test Cases ***
Login Page
    [Documentation]        Login in Saucelab
    [Tags]                 1 login smoke

    # Initialize selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s

    # open browser
    Log             starting test case
    Open Browser    https://www.saucedemo.com/    chrome
    Page Should Contain      Swag Labs

    Input Text     id=user-name    standard_user
    Input Text    id=password       secret_sauce
    Click Button    id=login-button
    Wait Until Page Contains    Products
    log        successfully login
    Sleep    5s
    Close Browser

