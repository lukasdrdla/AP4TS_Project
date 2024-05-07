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
    KontrolaPridaniProduktuDoKosiku


TestCase_FE-132 – Kontrola změny množství produktu v košíku.
    KontrolaZmenyMnozstviProduktuVKosiku




Post-conditions
    Close Browser

*** Keywords ***
KontrolaPridaniProduktuDoKosiku
    Wait Until Element Is Visible    ${Health}    timeout=10s
    Click Element    ${Health}
    Wait Until Element Is Visible    ${Health}
    Scroll Element Into View    ${AddToCartButton}
    Click Element    ${AddToCartButton}

KontrolaZmenyMnozstviProduktuVKosiku
    Scroll Element Into View    ${Cart}
    Click Element    ${Cart}
    Wait Until Element Is Visible    ${Header}
    Scroll Element Into View    ${Scroll}
    Click Element    ${ChangeQuantity}