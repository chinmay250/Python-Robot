*** Settings ***
Documentation        This is Suite for Amazon Website testing.

Resource    ../Resources/amazonApp.robot
Resource    ../Resources/common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Logged out user can search for products
    [Tags]  1    Smoke
    amazonApp.Search For Products
    common.Wait 5s
Logged out user can view a product
    [Tags]    2    Smoke
    amazonApp.Search For Products
    amazonApp.Select Product From Search Results

Logged out user can add product to cart
    [Tags]    3    Fire
    amazonApp.Search For Products
    amazonApp.Select Product From Search Results
    amazonApp.Add Product To Cart

Logged out user must sign in to check out
    [Tags]    4    Fire
    amazonApp.Search For Products
    amazonApp.Select Product From Search Results
    amazonApp.Add Product To Cart
    amazonApp.Begin Checkout