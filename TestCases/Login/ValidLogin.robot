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
    Enter Password    crypt:CeuBeHtFIW81i/XICA+7xtce43pCQL0aQtjgXfx85GsfM8yQEr5ja1r7nY+GRbo68TdAIklHQfNuWV1K
    Click Login Button
    Verify Successful Login
    Logout

*** Keywords ***
Initialize Tests
    Open Homepage    ${BROWSER}
    Click Login Link
