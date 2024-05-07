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

TestCase_FE-117 – Kontrola vyhledávání
    KontrolaVyhledavani    Zlín

Post-conditions
    Close Browser

*** Keywords ***
KontrolaVyhledavani
    [Arguments]  ${city}
    Wait Until Element Is Visible    ${StoresButton}
    Click Element    ${StoresButton}
    Wait Until Element Is Visible    ${SearchField}    timeout=20s
    Input Text    ${SearchField}    ${city}
    Press Keys    ${SearchField}    ENTER
