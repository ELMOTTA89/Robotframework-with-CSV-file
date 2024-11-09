*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/LoginPage.py
Variables    ../JDD/Authentification.py
*** Variables ***
*** Keywords ***
Successful login with valid credentials
    Wait Until Element Is Visible    ${LocatorUsername}
    Input Text    ${LocatorUsername}    ${JDDvalidUsername}
    Wait Until Element Is Visible    ${LocatorPassword}
    Input Password    ${LocatorPassword}    ${JDDvalidpassword}
    Wait Until Element Is Visible    ${LocatorLoginButton}
    Click Element    ${LocatorLoginButton}
   # Wait Until Page Contains    Dashboard

Usuccessful login with valid username & Password invalid
      Wait Until Element Is Visible    ${LocatorUsername}
    Input Text    ${LocatorUsername}    ${JDDinvalidUsername}
    Wait Until Element Is Visible    ${LocatorPassword}
    Input Password    ${LocatorPassword}    ${JDDinvalidpassword}
    Wait Until Element Is Visible    ${LocatorLoginButton}
    Click Element    ${LocatorLoginButton}
    Wait Until Page Contains    Invalid credentials

Usuccessful login with empty credentials
 
    Wait Until Element Is Visible    ${LocatorLoginButton}
    Click Element    ${LocatorLoginButton}
    Wait Until Page Contains    Login

