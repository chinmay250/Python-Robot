*** Settings ***
Documentation    Amazon top navigation bar.
Library    SeleniumLibrary

*** Variables ***
${product_name}    Lloyd 1.5 Ton 3 Star


*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search


Enter Search Term
    Input Text    id=twotabsearchtextbox    ${product_name}


Submit Search
    Click Button    id=nav-search-submit-button
