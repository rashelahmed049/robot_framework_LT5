*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case - TC_OH_3

Test Setup      Launch Browser
Test Teardown   Close Browser
Resource    ../Resource/base/ CommonFunctionality.resource
Test Template    Verify InValid Credential Test

*** Test Cases ***
TC1     Rasel   rasel123        Invalid credentials
TC2     Smith   smith34         Invalid credentials
TC3     ${EMPTY}    admin123    Username cannot be empty
TC4     Admin       ${EMPTY}    Password cannot be empty

*** Keywords ***
Verify InValid Credential Test
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    ${expected_error}
