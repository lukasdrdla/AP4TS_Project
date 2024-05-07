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
    Wait Until Element Is Visible    ${ClosePopUp}
    Click Element    ${ClosePopUp}

TestCase_FE-148 – Kontrola filtrování podle značky
    KontrolaFiltrovaniPodleZnacky

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFiltrovaniPodleZnacky
    Wait Until Element Is Visible    ${MensWorld}   timeout=10s
    Click Element    ${MensWorld}
    Wait Until Page Contains Element    ${Filters}    timeout=30s
    Scroll Element Into View    ${Filters}
    Element Should Be Visible    ${Filters}
    Element Should Be Visible    ${Brand}
    Click Element    ${Brand}
    Wait Until Page Contains Element   ${BrandAdidas}    timeout=10s
    Scroll Element Into View    ${BrandAdidas}
    Click Element    ${BrandAdidas}




