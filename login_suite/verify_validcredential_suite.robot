*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     credential test. Test case - TC_OH_2

Test Setup      Launch Browser and Navigate to url
Test Teardown   Close Browser
Resource    ../Resource/base/ CommonFunctionality.resource

*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Capture Page Screenshot