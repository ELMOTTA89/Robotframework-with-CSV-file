*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    XML
Variables    ../Locators/AdminPage.py
Variables    ../Locators/DashboardPage.py
Variables    ../JDD/SearchUser.py
*** Keywords ***
# il faut interoger la base de donner pour qu'on puisse comparer notre resultat aves les resultats attendu de la bases données
SearchByUsername
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${AdminPageUsername}
    Input Text    ${AdminPageUsername}    ${JDDUsernameAdmin}
    Wait Until Element Is Visible    ${SearchButon}
    Click Element    ${SearchButon}
    Wait Until Element Contains    ${SearchResultats}    ${JDDUsernameAdmin}

SearchByUserRole
     Wait Until Element Is Visible    ${AdminIcone}
     Click Element    ${AdminIcone}
     Wait Until Element Is Visible   ${AdminUserRole}
     Click Element    ${AdminUserRole}
     Run Keyword If    '${RO}' == "Admin"
     ...    Click Element    ${Admina}
     ...    
     ...  ELSE
     ...    Click Element    ${ESSA}

     Wait Until Element Is Visible    ${SearchButon}
     Click Element    ${SearchButon}
     Wait Until Element Contains    ${SearchResultats}    ${JDDUsernameAdmin}

SearchByStatus
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${StatusAdmin}
    Click Element    ${StatusAdmin}
    Run Keyword If    '${ROO}' == "Disabled"      Click Element    ${SelectEnableAdmin}
     ...       ELSE    Click Element    ${SelectDisabledAdmin}
    Wait Until Element Is Visible    ${SearchButon}
    Click Element    ${SearchButon}
    Wait Until Element Is Visible    ${VerifyDisabled}
    


