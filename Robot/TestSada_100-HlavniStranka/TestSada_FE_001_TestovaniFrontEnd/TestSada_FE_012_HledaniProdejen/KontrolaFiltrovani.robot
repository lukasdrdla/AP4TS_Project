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

TestCase_FE-119 – Kontrola Filtrování
    KontrolaFiltrovani    Zlín

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFiltrovani
    [Arguments]  ${city}
    Wait Until Element Is Visible    ${StoresButton}
    Click Element    ${StoresButton}
    Wait Until Element Is Visible    ${SearchField}    timeout=20s
    Input Text    ${SearchField}    ${city}
    Press Keys    ${SearchField}    ENTER
    Wait Until Element Is Visible    ${FilterButton}
    Click Element    ${FilterButton}
    Wait Until Element Is Visible    ${OpenButton}
    Click Element    ${OpenButton}
    Wait Until Element Is Visible    ${DeliveryButton}
    Click Element    ${DeliveryButton}
    Wait Until Element Is Visible    ${DeliveryOption}
    Click Element    ${DeliveryOption}
    Wait Until Element Is Visible    ${ApplyButton}
    Click Element    ${ApplyButton}


