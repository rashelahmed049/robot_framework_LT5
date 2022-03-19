*** Settings ***
Documentation   this file handles all menu in orange hrm
Resource    ../base/ CommonFunctionality.resource
*** Variables ***
${MYINFO_LOCATOR}   id=menu_pim_viewMyDetails


*** Keywords ***
Click on MyInfo
    Click Element    ${MYINFO_LOCATOR}
Main Page Contain
    [Arguments]     ${text1}    ${text2}
    Page Should Contain    ${text1}
    Page Should Contain    ${text2}
