*** Settings ***
Documentation     Test Suite for Contact Tests.
Library           SeleniumLibrary
Resource          ../Resources/LoginKeywords.robot
Resource          ../Resources/ContactKeywords.robot
Test Setup        Open Homepage    ${BROWSER}
Test Teardown     Close Browser

*** Variables ***
${BROWSER}        chrome
${EMAIL}          r.matz@test.com

*** Test Cases ***
Send Contact Message
    [Documentation]    Tests the send contact form.
    Navigate To Contact Form
    Choose Subject
    ContactKeywords.Enter Email    ${EMAIL}
    Enter Order Reference
    Enter Message
    Click Send Button
