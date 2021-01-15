*** Settings ***
Library             SeleniumLibrary
Library             DateTime
Variables           ../PageObjects/home_page.py
Variables           ../PageObjects/locators.py
Variables           ../PageObjects/registration_page.py

*** Keywords ***
Enter Registration Email
    [Documentation]     Enters a randomized e-mail for registration.
    ${timestamp}=       Get Current Date    time_zone=UTC   result_format=%Y%m%d%H%M%S%f
    ${email}=           Catenate    SEPARATOR=  ${timestamp}    @example.com           
    Input Text          ${INPUT_REGISTER_EMAIL}     ${email}

Click Register Button
    [Documentation]     Clicks the registration button.
    Click Element       ${BTN_CREATE}

Enter Personal Information
    [Documentation]     Enters the provided information in the registration form.
    [Arguments]         ${first name}   ${last name}    ${password}
    Wait Until Page Contains Element    ${BTN_MR}
    Click Element       ${BTN_MR}
    Input Text          ${INPUT_FIRST_NAME}     ${first name}
    Input Text          ${INPUT_LAST_NAME}      ${last name}
    Input Text          ${INPUT_PASSWORD}       ${password}
    Select From List By Value   ${SELECT_DAYS}      1
    Select From List By Value   ${SELECT_MONTHS}    1
    Select From List By Value   ${SELECT_YEARS}     2005

Sign Up For Newsletter
    [Documentation]     Selects the sign up for newsletter option.
    Click Element       ${INPUT_NEWSLETTER}

Sign Up For Special Offers
    [Documentation]     Selects the opt in option.
    Click Element       ${INPUT_OPTIN}

Enter Address Information
    [Documentation]     Provides user address information.         
    Input Text          ${ADR_ADR1}     Sample Street 1
    Input Text          ${ADR_CITY}     Sample Town 
    Select From List By Value   ${ADR_STATE}    36
    Input Text          ${ADR_POSTCODE}         12345
    Select From List By Value   ${ADR_COUNTRY}  21
    Input Text          ${ADR_MOBILE}   0123456789

Enter Full Address Information
    [Documentation]     Provides user address information.
    Input Text          ${ADR_COMPANY}  Sample Inc.         
    Input Text          ${ADR_ADR1}     Sample Street 1
    Input Text          ${ADR_ADR2}     Backyard
    Input Text          ${ADR_CITY}     Sample Town 
    Select From List By Value   ${ADR_STATE}    36
    Input Text          ${ADR_POSTCODE}         12345
    Select From List By Value   ${ADR_COUNTRY}  21
    Input Text          ${TA_INFORMATION}   Additional Info
    Input Text          ${ADR_PHONE}    0123456788
    Input Text          ${ADR_MOBILE}   0123456789

Submit Registration
    [Documentation]     Submits the provided registration data.
    Click Element       ${BTN_REGISTER_SUBMIT}
    Title Should Be     ${MY_ACCOUNT_TITLE}
