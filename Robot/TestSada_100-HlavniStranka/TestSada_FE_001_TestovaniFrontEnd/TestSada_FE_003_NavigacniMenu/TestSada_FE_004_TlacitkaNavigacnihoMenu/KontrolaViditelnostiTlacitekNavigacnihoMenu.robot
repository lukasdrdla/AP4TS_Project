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

TestCase_FE-102 – Kontrola viditelnosti tlačítek navigačního menu
    KontrolaViditelnostiTlacitekNavigacnihoMenu

Post-conditions
    Close Browser

*** Keywords ***
KontrolaViditelnostiTlacitekNavigacnihoMenu
    Wait Until Element Is Visible    ${New}
    Element Should Be Visible    ${New}
    Wait Until Element Is Visible    ${Brands}
    Element Should Be Visible    ${Brands}
    Wait Until Element Is Visible    ${MakeUp}
    Element Should Be Visible    ${MakeUp}
    Wait Until Element Is Visible    ${Skin}
    Element Should Be Visible    ${Skin}
    Wait Until Element Is Visible    ${MensWorld}
    Element Should Be Visible    ${MensWorld}
    Wait Until Element Is Visible    ${Hair}
    Element Should Be Visible    ${Hair}
    Wait Until Element Is Visible    ${Health}
    Element Should Be Visible    ${Health}
    Wait Until Element Is Visible    ${Nutrition}
    Element Should Be Visible    ${Nutrition}
    Wait Until Element Is Visible    ${Kids}
    Element Should Be Visible    ${Kids}
    Wait Until Element Is Visible    ${Home}
    Element Should Be Visible    ${Home}
    Wait Until Element Is Visible    ${Animals}
    Element Should Be Visible    ${Animals}
    Wait Until Element Is Visible    ${Photo}
    Element Should Be Visible    ${Photo}
