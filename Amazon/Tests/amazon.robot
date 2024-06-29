
*** Settings ***
Documentation        This is Suite for Amazon testing

Resource    Resources/amazonApp.robot
Resource    Resources/common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
User Must Sign In to Check Out
    Begin Web Test
    Open Amazon.com
    Search For Product
    Select Product From Search
#    Add Product To Cart
#    Begin Checkout
    Wait 5s
    End Web Test
