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

TestCase_FE-109 – Kontrola Registrace
    KontrolaRegistrace    Pepa    Zdepa    15    5    1990    pepa.zdepa@email.com     ToJeSranda123!

Post-conditions
    Close Browser

*** Keywords ***
KontrolaRegistrace
    [Arguments]  ${firstName}    ${lastName}    ${day}    ${month}    ${year}    ${email}    ${password}
    Wait Until Element Is Visible    ${MyAccount}
    Click Element  ${MyAccount}
    Wait Until Element Is Visible    ${RegisterButton}
    Click Element  ${RegisterButton}
    Wait Until Element Is Visible    ${RegistrationForm}
    Element Should Be Visible    ${RegistrationForm}
    Click Element    ${Salutation}
    Input Text    ${FirstNameField}  ${firstName}
    Input Text    ${LastNameField}  ${lastName}
    Input Text    ${DayField}  ${day}
    Input Text    ${MonthField}  ${month}
    Input Text    ${YearField}  ${year}
    Input Text    ${EmailAdressField}  ${email}
    Input Text    ${PasswordField}  ${password}
    Click Element    ${SubmitButton}
