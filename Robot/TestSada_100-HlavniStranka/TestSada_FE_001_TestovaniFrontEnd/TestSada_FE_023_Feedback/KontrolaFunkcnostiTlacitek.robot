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

TestCase_FE-144 – Kontrola funkčnosti tlačítek (smajlíků)
    KontrolaFunkcnostiTlacitek

Post-conditions
    Close Browser

*** Keywords ***
KontrolaFunkcnostiTlacitek
    Wait Until Page Contains Element  ${Page}    timeout=30s
    Click Element    ${Page}
    Wait Until Page Contains Element    ${Feedback}    timeout=30s
    Scroll Element Into View    ${Feedback}
    Element Should Be Visible    ${Feedback}
    Click Element    ${SmileButton}