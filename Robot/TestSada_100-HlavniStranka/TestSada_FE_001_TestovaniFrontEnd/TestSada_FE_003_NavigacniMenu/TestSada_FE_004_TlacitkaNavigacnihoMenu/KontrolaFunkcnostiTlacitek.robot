*** Settings ***
Library    SeleniumLibrary

Resource   ../ObjectRepository/Browsers.robot
Resource   ../ObjectRepository/Buttons.robot
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

TestCase_FE-103 – Kontrola funkčnosti tlačítek (přesměrování)
    KontrolaFunkcnostiTlacitek

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFunkcnostiTlacitek
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${Brands}
    Click Element    ${Brands}
    Wait Until Element Is Visible    ${MakeUp}
    Click Element    ${MakeUp}
    Wait Until Element Is Visible    ${Skin}
    Click Element    ${Skin}
    Wait Until Element Is Visible    ${MensWorld}
    Click Element    ${MensWorld}
    Wait Until Element Is Visible    ${Hair}
    Click Element    ${Hair}
    Wait Until Element Is Visible    ${Health}
    Click Element    ${Health}
    Wait Until Element Is Visible    ${Nutrition}
    Click Element    ${Nutrition}
    Wait Until Element Is Visible    ${Kids}
    Click Element    ${Kids}
    Wait Until Element Is Visible    ${Home}
    Click Element    ${Home}
    Wait Until Element Is Visible    ${Animals}
    Click Element    ${Animals}
    Wait Until Element Is Visible    ${Photo}
    Click Element    ${Photo}

