*** Settings ***
Library    SeleniumLibrary

Resource    ../../ObjectRepository/Browsers.robot
Resource    ../../ObjectRepository/Buttons.robot
Resource    ../../ObjectRepository/Cookies.robot
Resource    ../../ObjectRepository/URLs.robot


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


TestCase_FE-122 – Kontrola vložení nové adresy
    KontrolaVlozeniNoveAdresy    Franta Kolar    Ulice 1    12345    Praha

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

KontrolaVlozeniNoveAdresy
    [Arguments]  ${recipient}  ${streetadress}    ${postalcode}    ${city}
    Wait Until Element Is Visible    ${MyAccount}    timeout=20s
    Click Element    ${MyAccount}
    Wait Until Element Is Visible    ${MyProfil}
    Click Element    ${MyProfil}
    Wait Until Element Is Visible    ${MyAdresses}
    Click Element    ${MyAdresses}
    Wait Until Element Is Visible    ${AddNewAdress}
    Click Element    ${AddNewAdress}
    Wait Until Element Is Visible    ${RecipientInput}
    Input Text    ${RecipientInput}    ${recipient}
    Input Text    ${StreetAdressInput}    ${streetadress}
    Input Text    ${PostalCodeInput}    ${postalcode}
    Input Text    ${CityInput}    ${city}
    Click Element    ${SubmitButtonAdress}