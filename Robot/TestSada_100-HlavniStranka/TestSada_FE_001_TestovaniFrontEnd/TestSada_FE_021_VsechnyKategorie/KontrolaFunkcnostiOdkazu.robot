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

TestCase_FE-139 – Kontrola funkčnosti odkazů (přesměrování)
    KontrolaFunkcnostiOdkazu

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFunkcnostiOdkazu
    Wait Until Page Contains Element    ${Categories}    timeout=30s
    Scroll Element Into View    ${Categories}
    Element Should Be Visible    ${Categories}
    Click Element    ${CategoryDetail}