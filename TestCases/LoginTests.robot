*** Settings ***
Library                 SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${BROWSER}              %{BROWSER}
*** Test Cases ***
Valid Login
    [Documentation]     Tests if user can login with correct login credentials.
    Open Homepage       ${BROWSER}

    Click Login Link

    Enter Email         r.matz@test.com

    Enter Password      Tosca1234

    Click Login Button

    Verify Successful Login

    Logout

    Close Browser