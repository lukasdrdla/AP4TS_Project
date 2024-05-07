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

TestCase_FE-143 – Kontrola přesměrování produktu (na detailnější stránku)
    KontrolaPresmerovaniProduktu

Post-conditions
    Close Browser

*** Keywords ***
KontrolaPresmerovaniProduktu
    Wait Until Page Contains Element    ${NewInSort}    timeout=30s
    Scroll Element Into View    ${NewInSort}
    Element Should Be Visible    ${NewInSort}
    Click Element    ${ProductDetail}