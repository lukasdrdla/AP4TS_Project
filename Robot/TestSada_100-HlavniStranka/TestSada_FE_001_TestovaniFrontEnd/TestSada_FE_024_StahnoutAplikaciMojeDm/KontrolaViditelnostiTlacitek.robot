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

TestCase_FE-145 – Kontrola viditelnosti tlačítek
    KontrolaViditelnostiTlacitek

Post-conditions
    Close Browser

*** Keywords ***
KontrolaViditelnostiTlacitek
    Wait Until Element Is Visible    ${About}   timeout=10s
    click element    ${About}
    Wait Until Page Contains Element    ${AppStore}    timeout=30s
    Scroll Element Into View    ${AppStore}
    Element Should Be Visible    ${AppStore}
    Element Should Be Visible    ${GoogleStore}


