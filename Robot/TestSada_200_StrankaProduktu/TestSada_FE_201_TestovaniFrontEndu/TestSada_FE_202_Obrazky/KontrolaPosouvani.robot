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

TestCase_FE-211 – Kontrola posouvání
    KontrolaPosouvani

Post-conditions
    Close Browser

*** Keywords ***
KontrolaPosouvani
    Wait Until Element Is Visible    ${image}   timeout=10s
    Element Should Be Visible    ${image}
    Wait Until Element Is Visible    ${NextArrow}   timeout=10s
    Click Element    ${NextArrow}



