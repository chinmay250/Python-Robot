*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Cart

Proceed To Checkout
    Click Link    id=proceed-to-checkout-action