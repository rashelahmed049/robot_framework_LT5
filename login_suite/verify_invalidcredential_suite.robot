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
TC3     john    john123         Invalid credentials

*** Keywords ***
Verify InValid Credential Test
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    xpath=//span[contains(text(),'Invalid')]    ${expected_error}
