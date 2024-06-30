*** Settings ***
Library    SeleniumLibrary
Resource    TopNav.robot


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    results for "${product_name}"

Click Product Link
    Click Element    xpath=//div[@class='rush-component s-featured-result-item ']//span[@class='a-size-medium a-color-base a-text-normal'][contains(text(),'Lloyd 1.5 Ton 3 Star Inverter Split AC (5 in 1 Con')]


    
