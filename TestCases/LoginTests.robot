*** Settings ***
Library                 SeleniumLibrary
Resource                ../Resources/LoginKeywords.robot

Test Setup              Initialize Tests
Test Teardown           Close Browser

*** Variables ***
${BROWSER}              %{BROWSER}

*** Test Cases ***
Valid Login
    [Documentation]     Tests if user can login with correct login credentials.
    
    Enter Email         r.matz@test.com

    Enter Password      oKF5uM4vx5uOng4

    Click Login Button

    Verify Successful Login

    Logout

Login With Wrong Email
    [Documentation]     Tests if login with wrong email results in error.
    
    Enter Email         r.matz@test.de 

    Enter Password      oKF5uM4vx5uOng4

    Click Login Button

    Verify Error Message Is Displayed  Authentication failed.

Login With Wrong Password
    [Documentation]     Tests if login with wrong password results in error.

    Enter Email         r.matz@test.com

    Enter Password      ABCDE1234

    Click Login Button

    Verify Error Message Is Displayed  Authentication failed.

*** Keywords ***
Initialize Tests
    Open Homepage       ${BROWSER}

    Click Login Link