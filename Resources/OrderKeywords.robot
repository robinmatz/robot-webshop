*** Settings ***
Library                 SeleniumLibrary
Variables               ../PageObjects/locators.py

*** Keywords ***
Navigate To T-Shirts
    [Documentation]     Naivates user to T-Shirt product category.
    Click Element       ${LINK_T_SHIRTS}

Select T-Shirt
    [Documentation]     Selects T-Shirt.
    Click Element       ${LINK_T_SHIRT}

Add Product To Cart
    [Documentation]     Adds product to shopping cart.
    Click Element       ${BTN_ADD_TO_CART}
    Element Should Be Visible  ${SUCCESS_ICON}

Proceed To Checkout
    [Documentation]     Clicks on proceed to checkout button.
    Click Element           ${BTN_PROCEED}   

Verify Order Details
    [Documentation]     Performs validations on order details table.
    [Arguments]                 ${unit price}           ${quantity}     ${sub total}     ${shipping}     ${tax}      ${total}
    Element Text Should Be      ${CELL_UNIT_PRICE}      ${unit price}
    Textfield Value Should Be   ${CELL_QUANTITY}        ${quantity}
    Element Text Should Be      ${CELL_SUB_TOTAL}       ${sub total}
    Element Text Should Be      ${CELL_TOTAL_PRODUCT}   ${sub total}
    Element Text Should Be      ${CELL_TOTAL_SHIPPING}  ${shipping}
    Element Text Should Be      ${CELL_TAX}             ${tax}
    Element Text Should Be      ${CELL_TOTAL}           ${total}           

Verify Delivery Address
    [Documentation]     Verifies delivery address details.
    [Arguments]         ${fullName}     ${address}      ${city}     ${country}      ${phone}
    Element Text Should Be  ${DA_FIRST_NAME_LAST_NAME}  ${fullName}
    Element Text Should Be  ${DA_ADDRESS}   ${address}
    Element Text Should Be  ${DA_ADDRESS_CITY}      ${city}
    Element Text Should Be  ${DA_ADDRESS_COUNTRY}   ${country}
    Element Text Should Be  ${DA_ADDRESS_PHONE}     ${phone}

Verify Billing Address 
    [Documentation]     Verifies billing address details.
    [Arguments]         ${fullName}     ${address}      ${city}     ${country}      ${phone}
    Element Text Should Be  ${BA_FIRST_NAME_LAST_NAME}  ${fullName}
    Element Text Should Be  ${BA_ADDRESS}   ${address}
    Element Text Should Be  ${BA_ADDRESS_CITY}      ${city}
    Element Text Should Be  ${BA_ADDRESS_COUNTRY}   ${country}
    Element Text Should Be  ${BA_ADDRESS_PHONE}     ${phone}

Agree To Terms Of Service
    [Documentation]     Selects agree to terms of conditions check box.
    Click Element       ${CB_TERMS}

Pay By Bank Wire
    [Documentation]     Selects pay by bank wire payment option.
    Click Element       ${LINK_BANKWIRE}
    Element Should Be Visible   ${MSG_BANKWIRE}

Confirm Order
    [Documentation]     Clicks on confirm order button.
    Click Element       ${BTN_CONFIRM_ORDER}
    Element Should Be Visible   ${ORDER_SUCCESSFUL}