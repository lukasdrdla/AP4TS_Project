*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

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

TestCase_FE-114 – Kontrola Přihlášení pro neexistující účet
    KontrolaPrihlaseniProNeexistujiciUcet    pp123@email.com    SSSasdasdasdasdasdasd.

Post-conditions
    Close Browser

*** Keywords ***
KontrolaPrihlaseniProNeexistujiciUcet
    [Arguments]  ${email}  ${password}
    Wait Until Element Is Visible    ${MyAccount}
    Click Element  ${MyAccount}
    Wait Until Element Is Visible    ${LoginButton}
    Click Element  ${LoginButton}
    Wait Until Element Is Visible    ${LoginForm}
    Element Should Be Visible    ${LoginForm}
    Input Text  ${EmailInput}    ${email}
    Input Text  ${PasswordInput}    ${password}
    Click Element  ${SubmitButton}
    Wait Until Element Is Visible    ${ErrorForNEC}
    Element Should Be Visible     ${ErrorForNEC}
