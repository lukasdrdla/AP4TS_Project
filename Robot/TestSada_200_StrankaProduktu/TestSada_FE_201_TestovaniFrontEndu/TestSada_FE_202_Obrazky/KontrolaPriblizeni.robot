*** Settings ***
Library    SeleniumLibrary

Resource    ObjectRepository/Browsers.robot
Resource    ObjectRepository/URLs.robot
Resource    ObjectRepository/Buttons.robot
Resource    ObjectRepository/Cookies.robot


*** Test Cases ***
Pre-Conditions
    Set Selenium Speed  0.4
    Open Browser  ${URL}  ${ProhlizecChrome}
    Maximize Browser Window
    Wait Until Location Is    ${URL}
    Wait Until Element Is Visible    ${CookieButton}    timeout=10s
    Click Element    ${CookieButton}
    Wait Until Element Is Visible    ${ClosePopup}    5s
    Click Element    ${ClosePopup}






TestCase_FE-212 – Kontrola přiblížení
    KontrolaPriblizeni

Post-conditions
    Close Browser

*** Keywords ***
KontrolaPriblizeni
    Wait Until Element Is Visible    ${image}   timeout=10s
    Element Should Be Visible    ${image}
    Click Element    ${image}



