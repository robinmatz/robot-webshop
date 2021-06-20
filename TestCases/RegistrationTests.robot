*** Settings ***
Resource          ../Resources/Settings.resource
Test Setup        Initialize Tests
Test Teardown     Close Browser

*** Variables ***
${BROWSER}        chrome
${FIRST NAME}     John
${LAST NAME}      Doe
${PASSWORD}       abcd1234!

*** Test Cases ***
Valid Registration
    Enter Registration Email
    Click Register Button
    Enter Personal Information    ${FIRST NAME}    ${LAST NAME}    ${PASSWORD}
    Enter Address Information
    Submit Registration

Valid Registration All Fields
    Enter Registration Email
    Click Register Button
    Enter Personal Information    ${FIRST NAME}    ${LAST NAME}    ${PASSWORD}
    Sign Up For Newsletter
    Sign Up For Special Offers
    Enter Full Address Information
    Submit Registration

*** Keywords ***
Initialize Tests
    Open Homepage    ${BROWSER}
    Click Login Link
