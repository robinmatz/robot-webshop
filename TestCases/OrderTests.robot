*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/LoginKeywords.resource
Resource          ../Resources/OrderKeywords.resource
Test Setup        Initialize Tests
Test Teardown     Teardown Tests

*** Variables ***
${BROWSER}        chrome
${EMAIL}          r.matz@test.com
${PASSWORD}       8!BiF70Tlf55z$l
${FULL NAME}      Nathalie Schulz
${ADDRESS}        Sample Street 1
${CITY}           Sample Town, Alabama 12345
${COUNTRY}        United States
${PHONE}          1234567890

*** Test Cases ***
Order T-Shirt
    [Documentation]    Tests purchase of T-Shirt from T-Shirt product category.
    Navigate To T-Shirts
    Select T-Shirt
    Add Product To Cart
    Proceed To Checkout
    Verify Order Details    $16.51    1    $16.51    $2.00    $0.74    $19.25
    Proceed To Checkout
    Verify Delivery Address    ${FULL NAME}    ${ADDRESS}    ${CITY}    ${COUNTRY}    ${PHONE}
    Verify Billing Address    ${FULL NAME}    ${ADDRESS}    ${CITY}    ${COUNTRY}    ${PHONE}
    Proceed To Checkout
    Agree To Terms Of Service
    Proceed To Checkout
    Pay By Bank Wire
    Confirm Order

Remove Order
    [Documentation]    Tests if a selected product can be removed from shopping cart
    Navigate To T-Shirts
    Select T-Shirt
    Add Product To Cart
    Close Add To Cart Popup
    Remove Item From Shopping Cart

*** Keywords ***
Initialize Tests
    Open Homepage    ${BROWSER}
    Click Login Link
    Enter Login Email    ${EMAIL}
    Enter PASSWORD    ${PASSWORD}
    Click Login Button
    Verify Successful Login

Teardown Tests
    Logout
    Close Browser
