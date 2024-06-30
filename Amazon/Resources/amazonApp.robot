*** Settings ***
Resource    PageObjects/TopNav.robot
Resource    PageObjects/LandingPage.robot
Resource    PageObjects/Cart.robot
Resource    PageObjects/Product.robot
Resource    PageObjects/SearchResults.robot
Resource    PageObjects/SignIn.robot

*** Keywords ***

Search For Products
    LandingPage.Verify Page Loaded
    TopNav.Search For Products
    SearchResults.Verify Search Completed

Select Product From Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product To Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout
    SignIn.Verify SignIn Page Loaded



