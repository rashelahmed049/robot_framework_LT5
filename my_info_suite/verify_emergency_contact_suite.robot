*** Settings ***
Documentation      This suite handles test case related to emergency contact

Resource    ../Resource/base/ CommonFunctionality.resource
Library    DataDriver   file=../test_data/orange_data.xlsx      sheet_name=AddEmergencyContact
Test Setup      Launch Browser
Test Teardown      Close Browser
Test Template       Verify Add Emergency Contact Test

*** Test Cases ***
Verify Add Emergency Contact Test

*** Keywords ***
Verify Add Emergency Contact Test
    [Arguments]     ${username}     ${password}     ${contact_name}     ${relationship}     ${home_telephone}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    name=emgcontacts[name]    ${contact_name}
    Input Text    id=emgcontacts_relationship    ${relationship}
    Input Text    id=emgcontacts_homePhone    ${home_telephone}
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    ${contact_name}
    Table Should Contain    id=emgcontact_list    ${home_telephone}