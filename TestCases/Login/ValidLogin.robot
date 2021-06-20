*** Settings ***
Documentation     Tests for valid login.
Resource          ../../Resources/Settings.resource
Test Setup        Initialize Tests
Test Teardown     Close Browser

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Valid Login
    [Documentation]    Tests if user can login with correct login credentials.
    Enter Login Email    r.matz@test.com
    Enter Password    8!BiF70Tlf55z$l
    Click Login Button
    Verify Successful Login
    Logout

*** Keywords ***
Initialize Tests
    Open Homepage    ${BROWSER}
    Click Login Link
