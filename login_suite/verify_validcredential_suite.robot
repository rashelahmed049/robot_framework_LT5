*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     credential test. Test case - TC_OH_2

Test Setup      Launch Browser
Test Teardown   Close Browser
Resource    ../Resource/base/ CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

*** Test Cases ***
Verify Valid Credential Test
    Enter Username   Admin
    Enter Password   admin123
    Click Element    id=btnLogin
    Main Page Contain       My Info     text
    Capture Page Screenshot
