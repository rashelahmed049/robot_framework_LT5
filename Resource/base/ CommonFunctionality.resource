*** Settings ***
Documentation   this file handles browser configuration, reusable script
Library     SeleniumLibrary
*** Variables ***
${BROWSER_NAME}     chrome
${URL}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Open Browser    browser=${BROWSER_NAME}  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    ${URL}