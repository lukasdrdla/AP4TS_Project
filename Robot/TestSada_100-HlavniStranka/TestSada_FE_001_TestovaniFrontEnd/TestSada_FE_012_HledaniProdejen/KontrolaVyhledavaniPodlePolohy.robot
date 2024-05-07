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

TestCase_FE-118 – Kontrola vyhledávání podle polohy
    KontrolaVyhledavaniPodlePolohy

Post-conditions
    Close Browser

*** Keywords ***
KontrolaVyhledavaniPodlePolohy
    Wait Until Element Is Visible    ${StoresButton}
    Click Element    ${StoresButton}
    Wait Until Element Is Visible    ${LocationButton}    timeout=20s
    Click Element    ${LocationButton}

