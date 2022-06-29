*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${BROWSER}  Chrome
${BASE_URL}     https://app.hubspot.com/login
${USERNAME}     jkdave1991@gmail.com
${PASSWORD}     Selenium@12345
${LOGIN_BUTTON}     loginBtn

*** Test Cases ***
LoginTest
    open browser    ${BASE_URL}     ${BROWSER}
    input text  id:username     ${USERNAME}
    input text  id:password     ${PASSWORD}
    click element   id:${LOGIN_BUTTON}
    close browser

*** Keywords ***
