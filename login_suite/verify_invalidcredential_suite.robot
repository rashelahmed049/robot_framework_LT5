*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case - TC_OH_3

Test Setup      Launch Browser
Test Teardown   Close Browser
Resource    ../Resource/base/ CommonFunctionality.resource

*** Test Cases ***
Verify InValid Credential Test
    Input Text    id=txtUsername    Rasel
    Input Password    id=txtPassword    paswd
    Click Element    id=btnLogin

    Element Text Should Be    xpath=//span[contains(text(),'Invalid')]    Invalid credentials