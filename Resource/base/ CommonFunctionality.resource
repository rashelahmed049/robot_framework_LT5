*** Settings ***
Documentation   this file handles browser configuration, reusable script
Library     SeleniumLibrary

*** Keywords ***
Launch Browser
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://opensource-demo.orangehrmlive.com/