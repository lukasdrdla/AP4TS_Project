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


TestCase_FE-124 – Kontrola úpravy existující adresy
    KontrolaUpravyExistujiciAdresy    Kralovska 1    11000    Praha

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

KontrolaUpravyExistujiciAdresy
    [Arguments]  ${streetadress}    ${postalcode}    ${city}
    Wait Until Element Is Visible    ${MyAccount}    timeout=20s
    Click Element    ${MyAccount}
    Wait Until Element Is Visible    ${MyProfil}
    Click Element    ${MyProfil}
    Wait Until Element Is Visible    ${MyAdresses}
    Click Element    ${MyAdresses}
    Wait Until Element Is Visible    ${EditButton}
    Click Element    ${EditButton}
    Wait Until Element Is Visible    ${StreetAdressInput}
    Press Keys    ${StreetAdressInput}    CTRL+Delete
    Input Text    ${StreetAdressInput}    ${streetadress}
    Press Keys    ${PostalCodeInput}    CTRL+Delete
    Input Text    ${PostalCodeInput}    ${postalcode}
    Press Keys    ${CityInput}    CTRL+Delete
    Input Text    ${CityInput}    ${city}
    Click Element    ${SubmitButtonAdress}