*** Settings ***
Library           DataDriver
Resource          ../../Resources/Settings.resource
Test Setup        Initialize Tests
Test Teardown     Close Browser
Test Template     Invalid Login

*** Variables ***
${BROWSER}        chrome
${VALID_USER}     r.matz@test.com
${VALID_PASSWORD}    8!BiF70Tlf55z$l
${INVALID_USER}    invalid
${INVALID_PASSWORD}    invalid
${EMPTY_USER}     ${EMPTY}
${EMPTY_PASSWORD}    ${EMPTY}

*** Test Cases ***
Login With "${username}" And "${password}"
    DefaultUser    DefaultPassword

*** Keywords ***
Invalid Login
    [Documentation]    Template for invalid login.
    [Arguments]    ${username}    ${password}    ${error_text}
    Enter Login Email    ${username}
    Enter Password    ${password}
    Click Login Button
    Verify Error Message Is Displayed    ${error_text}

Initialize Tests
    Open Homepage    ${BROWSER}
    Click Login Link
