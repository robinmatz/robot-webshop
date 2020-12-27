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

    Enter Password      Tosca1234!

    Click Login Button

    Verify Successful Login

    Logout

    Close Browser

Login With Wrong Email
    [Documentation]     Tests if login with wrong email results in error.
    Open Homepage       ${BROWSER}

    Click Login Link

    Enter Email         r.matz@test.de 

    Enter Password      Tosca1234!

    Click Login Button

    Verify Error Message Is Displayed  Authentication failed.

    Close Browser

Login With Wrong Password
    [Documentation]     Tests if login with wrong password results in error.
    Open Homepage       ${BROWSER}

    Click Login Link

    Enter Email         r.matz@test.com

    Enter Password      Tosca1234

    Click Login Button

    Verify Error Message Is Displayed  Authentication failed.

    Close Browser