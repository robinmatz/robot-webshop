*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/LoginKeywords.robot
Resource        ../Resources/ContactKeywords.robot

Test Setup      Initialize Tests
Test Teardown   Close Browser

*** Variables ***
${BROWSER}      %{BROWSER}
${EMAIL}        r.matz@test.com 

*** Test Cases ***
Send Contact Message
    
    Navigate To Contact Form

    Choose Subject

    ContactKeywords.Enter Email     ${EMAIL}

    Enter Order Reference

    Enter Message

    Click Send Button

*** Keywords ***
Initialize Tests
    Open Homepage   ${BROWSER}