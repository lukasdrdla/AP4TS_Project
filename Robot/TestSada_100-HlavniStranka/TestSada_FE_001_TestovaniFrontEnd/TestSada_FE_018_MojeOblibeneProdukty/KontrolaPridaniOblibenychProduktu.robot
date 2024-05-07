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
    Prihlasit    kolarfranta060@gmail.com    kolarfranta060


TestCase_FE-127 – Kontrola přidání oblíbených produktů
    KontrolaPridaniOblibenychProduktu

Post-conditions
    Close Browser

*** Keywords ***
Prihlasit
    [Arguments]  ${email}  ${password}
    Wait Until Element Is Visible    ${MyAccount}
    Click Element  ${MyAccount}
    Wait Until Element Is Visible    ${LoginButton}
    Click Element  ${LoginButton}
    Wait Until Element Is Visible    ${LoginForm}
    Element Should Be Visible    ${LoginForm}
    Input Text  ${EmailInput}    ${email}
    Input Text  ${PasswordInput}    ${password}
    Click Element  ${SubmitButton}

KontrolaPridaniOblibenychProduktu
    Wait Until Element Is Visible    ${NavButton}    timeout=20s
    Click Element  ${NavButton}
    Wait Until Element Is Visible    ${NavButton}
    Scroll Element Into View    ${AddToFavouriteButton}
    Wait Until Element Is Visible    ${AddToFavouriteButton}
    Click Element  ${AddToFavouriteButton}

