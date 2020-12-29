*** Settings ***
Library                 SeleniumLibrary
Resource                ../Resources/LoginKeywords.robot
Resource                ../Resources/OrderKeywords.robot

Test Setup              Initialize Tests
Test Teardown           Teardown Tests

*** Variables ***
${BROWSER}              %{BROWSER}
${EMAIL}                r.matz@test.com
${PASSWORD}             oKF5uM4vx5uOng4
${FULL NAME}            Robertus Matzensis
${ADDRESS}              Sample Street 2
${CITY}                 Sample City, Iowa 56548
${COUNTRY}              United States
${PHONE}                014723123421

*** Test Cases ***
Order T-Shirt
    [Documentation]     Tests purchase of T-Shirt from T-Shirt product category.
    
    Navigate To T-Shirts

    Select T-Shirt

    Add Product To Cart 

    Proceed To Checkout

    Verify Order Details        $16.51          1               $16.51      $2.00          $0.00        $18.51

    Proceed To Checkout

    Verify Delivery Address     ${FULL NAME}    ${ADDRESS}      ${CITY}     ${COUNTRY}     ${PHONE}

    Verify Billing Address      ${FULL NAME}    ${ADDRESS}      ${CITY}     ${COUNTRY}     ${PHONE}

    Proceed To Checkout

    Agree To Terms Of Service

    Proceed To Checkout

    Pay By Bank Wire

    Confirm Order


*** Keywords ***
Initialize Tests
    Open Homepage       ${BROWSER}    
    Click Login Link    
    Enter Email         ${EMAIL}       
    Enter PASSWORD      ${PASSWORD}
    Click Login Button
    Verify Successful Login

Teardown Tests
    Logout
    Close Browser