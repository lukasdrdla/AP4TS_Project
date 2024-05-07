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


TestCase_FE-121 – Kontrola úpravy osobních údajů
    KontrolaUpravyOsobnichUdaju    Franta    Kolar

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

KontrolaUpravyOsobnichUdaju
    [Arguments]  ${firstName}  ${lastName}
    Wait Until Element Is Visible    ${MyAccount}
    Click Element    ${MyAccount}
    Wait Until Element Is Visible    ${MyProfil}
    Click Element    ${My Profil}
    Wait Until Element Is Visible    ${MyPersonalInformation}
    Click Element    ${MyPersonalInformation}
    Wait Until Element Is Visible    ${EditPersonalInfo}
    Click Element    ${EditPersonalInfo}
    Wait Until Element Is Visible    ${FirstNameInput}
    Input Text    ${FirstNameInput}    ${firstName}
    Input Text    ${LastNameInput}    ${lastName}
    Click Element    ${SaveButtonPI}
