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

TestCase_FE-142 – Kontrola posouvání produktů
    KontrolaPosouvaniProduktu

Post-conditions
    Close Browser

*** Keywords ***
KontrolaPosouvaniProduktu
    Wait Until Page Contains Element    ${NextArrow}    timeout=30s
    Scroll Element Into View    ${NextArrow}
    Element Should Be Visible    ${NextArrow}
    Click Element    ${NextArrow}