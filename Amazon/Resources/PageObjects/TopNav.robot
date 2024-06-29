*** Settings ***
Documentation    Amazon top navigation bar.
Library    SeleniumLibrary

*** Keywords ***
Navigation Bar
    Page Should Contain    //div[@id='nav-xshop']