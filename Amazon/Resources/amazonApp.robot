*** Settings ***
Documentation    This is Amazon app suite

Resource    PageObjects/TopNav.robot
Resource    PageObjects/Cart.robot
Resource    PageObjects/Product.robot
Resource    PageObjects/SearchResults.robot
Resource    PageObjects/SignIn.robot
Resource    PageObjects/TopNav.robot


*** Keywords ***
Open Amazon.com
    Go To    https://www.amazon.in/
    Wait Until Page Contains    Navigation Bar


