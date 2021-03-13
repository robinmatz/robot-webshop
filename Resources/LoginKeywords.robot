*** Settings ***
Library                 SeleniumLibrary
Variables               ../PageObjects/home_page.py
Variables               ../PageObjects/locators.py


*** Keywords ***
Open Homepage
    [Documentation]     Opens Homepage.
    [Arguments]         ${BROWSER}
    Open Browser        ${HOME_PAGE_URL}     ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait  30 Seconds
    Title Should Be     ${HOME_PAGE_TITLE}

Click Login Link
    [Documentation]     Clicks link to login page.
    Click Element       ${LINK_SIGN_IN}
    Title Should Be     ${LOGIN_PAGE_TITLE}

Enter Email
    [Documentation]     Enters user email.
    [Arguments]         ${user email}
    Log Source
    Input Text          ${INPUT_EMAIL}      ${user email}
    Log Source

Enter Password
    [Documentation]     Enters user password.
    [Arguments]         ${user password}
    Input Text          ${INPUT_PASSWORD}   ${user password}

Click Login Button
    [Documentation]     Clicks the login button.
    Click Element       ${BTN_LOGIN}

Verify Successful Login
    [Documentation]     Verifies successful login. Login is successful when user is on 'My Account' page.
    Title Should Be     ${MY_ACCOUNT_TITLE}

Verify Error Message Is Displayed
    [Documentation]     Verifies if error message is displayed.
    [Arguments]         ${expected}
    Element Text Should Be  ${LI_ERROR_MESSAGE}   ${expected}

Logout
    [Documentation]     Loggs out user. After logout verifies if sign in link is present.
    Click Element       ${LINK_SIGN_OUT}
    Element Should Be Visible   ${LINK_SIGN_IN}