*** Settings ***
Library                 SeleniumLibrary
Variables               ../PageObjects/locators.py


*** Keywords ***
Open Homepage
    [Documentation]     Opens Homepage.
    [Arguments]         ${browser}
    Open Browser        ${homePageUrl}          ${browser}
    Title Should Be     ${homePageTitle}

Click Login Link
    [Documentation]     Clicks link to login page.
    Click Element       ${linkSignIn}
    Title Should Be     ${loginPageTitle}

Enter Email
    [Documentation]     Enters user email.
    [Arguments]         ${userEmail}
    Input Text          ${inputEmail}       ${userEmail}

Enter Password
    [Documentation]     Enters user password.
    [Arguments]         ${userPassword}
    Input Text          ${inputPassword}    ${userPassword}

Click Login Button
    [Documentation]     Clicks the login button.
    Click Element       ${btnLogin}

Verify Successful Login
    [Documentation]     Verifies successful login. Login is successful when user is on 'My Account' page.
    Title Should Be     ${myAccountTitle}

Verify Error Message Is Displayed
    [Documentation]     Verifies if error message is displayed.
    [Arguments]         ${expected}
    Element Text Should Be  ${liErrorMessage}   ${expected}

Logout
    [Documentation]     Loggs out user. After logout verifies if sign in link is present.
    Click Element       ${linkSignOut}
    Element Should Be Visible   ${linkSignIn}