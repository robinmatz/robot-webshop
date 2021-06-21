*** Settings ***
Resource          ../Resources/Settings.resource

*** Keywords ***
Navigate To Contact Form
    [Documentation]    Navigates user to contact form.
    Click Element    ${LINK_CONTACT}
    Title Should Be    ${CONTACT_PAGE_TITLE}

Choose Subject
    [Documentation]    Chooses subject heading.
    Select From List By Value    ${SUBJECT_HEADING}    1

Enter Email
    [Documentation]    Enters customer email.
    [Arguments]    ${email}
    Input Text    ${INPUT_CONTACT_EMAIL}    ${email}

Enter Order Reference
    [Documentation]    Enters order reference.
    ${order reference}=    Generate Random String    10
    Input Text    ${INPUT_ORDER_REF}    ${order reference}

Enter Message
    [Documentation]    Enters a message in the respective textarea.
    Input Text    ${TA_MESSAGE}    Sample Message

Send File
    [Documentation]    Sends a sample file for the test case.
    Choose File    ${INPUT_FILE}    ${CURDIR}${/}samplePDF.pdf
    Element Text Should Be    ${FILE_TEXT}    samplePDF.pdf

Click Send Button
    [Documentation]    Submits the contact message.
    Click Element    ${BTN_SUBMIT}
    Element Should Be Visible    ${TA_SUCCESS}
