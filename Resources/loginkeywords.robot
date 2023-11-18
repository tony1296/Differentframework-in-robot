*** Settings ***
Library      SeleniumLibrary
Variables    ../Pageobjects/locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}   ${Browser}
    open browser   ${SiteUrl}   ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]   ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]   ${password}
    Input Text    ${txt_password}     ${password}

Click Signin
    click button  ${btn_signIn}

Verify Succesful Login
    title should be  Dashboard / nopCommerce administration

close my browsers
    close all browsers
