*** Settings ***
Library    SeleniumLibrary

Resource    ../ObjectRepository/Browsers.robot
Resource    ../ObjectRepository/Buttons.robot
Resource    ../ObjectRepository/Cookies.robot
Resource    ../ObjectRepository/URLs.robot


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

TestCase_FE-105 – Kontrola funkčnosti vyhledávacího pole
    KontrolaFunkcnostiVyhledavacihoPole    sprochový gel

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFunkcnostiVyhledavacihoPole
    [Arguments]  ${item}
    Wait Until Element Is Visible    ${SearchField}
    Element Should Be Visible    ${SearchField}
    Input Text  ${SearchField}    ${item}
    Click Element    ${SearchButton}