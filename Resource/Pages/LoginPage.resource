*** Settings ***
Library    SeleniumLibrary

Documentation   This file handles all operation in the login page
Resource    ../base/ CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword
${CLICK_LOCATOR}        id=btnLogin
${ERROR_LOCATOR}        id=spanMessage
*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text      ${USERNAME_LOCATOR}     ${username}
Enter Password
    [Arguments]     ${password}
    Input Text    ${PASSWORD_LOCATOR}       ${password}
Click on Login
    Click Element    ${CLICK_LOCATOR}
Validate Error Message
    [Arguments]     ${experted_error}
    Element Text Should Be    ${ERROR_LOCATOR}   ${experted_error}