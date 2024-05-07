*** Settings ***
Library    SeleniumLibrary

Resource    ObjectRepository/Browsers.robot
Resource    ObjectRepository/Cookies.robot
Resource    ObjectRepository/URLs.robot


*** Test Cases ***
Pre-Conditions
    Set Selenium Speed  0.4
    Open Browser  ${URL}  ${ProhlizecChrome}
    Maximize Browser Window
    Wait Until Location Is    ${URL}

TestCase_FE-101 – Kontrola funkčnosti tlačítek cookies
    KontrolaFunkcnostiTlacitekCookies

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFunkcnostiTlacitekCookies
    Wait Until Element Is Visible    ${CookieButton}    timeout=10s
    Element Should Be Visible    ${CookieButton}
    Click Element    ${CookieButton}
