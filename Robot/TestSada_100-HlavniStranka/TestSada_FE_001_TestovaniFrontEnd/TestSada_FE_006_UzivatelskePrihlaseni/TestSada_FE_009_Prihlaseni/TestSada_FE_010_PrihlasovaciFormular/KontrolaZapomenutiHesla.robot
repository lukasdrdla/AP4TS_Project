*** Settings ***
Library    SeleniumLibrary

Resource    ObjectRepository/Browsers.robot
Resource    ObjectRepository/Buttons.robot
Resource    ObjectRepository/Cookies.robot
Resource    ObjectRepository/URLs.robot


*** Test Cases ***
Pre-Conditions
    Set Selenium Speed  0.4
    Open Browser  ${URL}  ${ProhlizecChrome}
    Maximize Browser Window
    Wait Until Location Is    ${URL}
    Wait Until Element Is Visible    ${CookieButton}    timeout=10s
    Click Element    ${CookieButton}
    Wait Until Element Is Visible    ${ClosePopUp}
    Click Element    ${ClosePopUp}

TestCase_FE-112 – Kontrola Zapomenutí hesla
    KontrolaZapomenutiHesla    kolarfranta060@gmail.com

Post-conditions
    Close Browser

*** Keywords ***
KontrolaZapomenutiHesla
    [Arguments]  ${email}
    Wait Until Element Is Visible    ${MyAccount}
    Click Element  ${MyAccount}
    Wait Until Element Is Visible    ${LoginButton}
    Click Element  ${LoginButton}
    Wait Until Element Is Visible    ${ForgotPassword}
    Click Element    ${ForgotPassword}
    Wait Until Element Is Visible    ${EmailInput}
    Input Text  ${EmailInput}    ${email}
    Click Element  ${SubmitButtonForgotPassword}
