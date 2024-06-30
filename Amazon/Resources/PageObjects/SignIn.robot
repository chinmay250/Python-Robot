*** Settings ***
Documentation    Amazon Sign In
Library    SeleniumLibrary

*** Keywords ***
Verify SignIn Page Loaded
    Page Should Contain    Sign in
