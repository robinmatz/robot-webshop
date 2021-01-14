*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/LoginKeywords.robot
Resource            ../Resources/RegistrationKeywords.robot

Test Setup          Initialize Tests
Test Teardown       Close Browser

*** Variables ***
${BROWSER}          %{BROWSER}
${FIRST NAME}       John
${LAsT NAME}        Doe
${PASSWORD}         abcd1234!

*** Test Cases ***
Valid Registration
    
    Enter Registration Email
    
    Click Register Button

    Enter Personal Information  ${FIRST NAME}  ${LAsT NAME}     ${PASSWORD}

    Enter Address Information

    Submit Registration

Valid Registration All Fields

    Enter Registration Email

    Click Register Button

    Enter Personal Information  ${FIRST NAME}  ${LAST NAME}     ${PASSWORD}

    Sign Up For Newsletter

    Sign Up For Special Offers

    Enter Full Address Information

    Submit Registration

*** Keywords ***
Initialize Tests
    Open Homepage       ${BROWSER}

    Click Login Link