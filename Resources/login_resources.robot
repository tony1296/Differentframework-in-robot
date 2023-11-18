*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${LOGIN URL}   https://admin-demo.nopcommerce.com
${BROWSER}     Chrome

*** Keywords ***
Open my Browser
    open browser   ${LOGIN URL}   ${Browser}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to  ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text  id:Email   ${username}

Input pwd
    [Arguments]     ${password}
    input text   id:Password   ${password}

click login button
    click element  xpath://button[text()='Log in']

click logout link
    click link  Logout

Error message should be visible
    Page Should Contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard