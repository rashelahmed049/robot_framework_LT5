*** Settings ***
Documentation   this file handles browser configuration, reusable script
Library     SeleniumLibrary
*** Variables ***
${BROWSER_NAME}     chrome
${URL}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser

    IF  '${BROWSER_NAME}'=='edge'
        Set Local Variable    ${driver_name}     msedgedriver.exe
    ELSE IF  '${BROWSER_NAME}'== 'ff'
        Set Local Variable    ${driver_name}     geckodriver.exe
    ELSE
        Set Local Variable    ${driver_name}     chromedriver.exe
    END

    Open Browser    browser=${BROWSER_NAME}  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    ${URL}
    Set Screenshot Directory    ${EXECDIR}${/}screenshots