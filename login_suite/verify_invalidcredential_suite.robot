*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case - TC_OH_3


Test Teardown   Close Browser
Resource    ../Resource/base/ CommonFunctionality.resource

*** Test Cases ***
Verify InValid Credential Test
    Launch Browser
    Input Text    id=txtUsername    Rasel
    Input Password    id=txtPassword    paswd
    Click Element    id=btnLogin
    #Page Should Contain    My Info
    Element Text Should Be    xpath=//span[contains(text(),'Invalid')]    Invalid credentials