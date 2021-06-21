*** Settings ***
Library        CryptoLibrary    password=${private_key_password}    variable_decryption=True    key_path=${EXECDIR}/keys
Library        DateTime
Library        SeleniumLibrary
Library        String
Resource       ${EXECDIR}/Resources/ContactKeywords.resource
Resource       ${EXECDIR}/Resources/LoginKeywords.resource
Resource       ${EXECDIR}/Resources/OrderKeywords.resource
Resource       ${EXECDIR}/Resources/RegistrationKeywords.resource
Variables      ${EXECDIR}/PageObjects/contact_page.py
Variables      ${EXECDIR}/PageObjects/home_page.py
Variables      ${EXECDIR}/PageObjects/locators.py
Variables      ${EXECDIR}/PageObjects/registration_page.py
