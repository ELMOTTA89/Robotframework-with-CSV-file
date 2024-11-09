*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/AdminPage.py
Variables    ../Locators/DashboardPage.py
Variables    ../Locators/EditPage.py
Variables    ../JDD/EditUser.py
Variables    ../JDD/Reset.py

*** Keywords ***

UpdateUser
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${Editbutton}
    Click Element    ${Editbutton}
    Wait Until Element Is Visible    ${changepasswordicone}    #timeout=20
    Click Element    ${changepasswordicone}
    #Select Checkbox    ${changepasswordicone}
    Wait Until Element Is Visible    ${EditPassword}
    Input Password    ${EditPassword}    ${EdPassword}
    Wait Until Element Is Visible    ${EditPassword}
    Input Password    ${EDitConfirmpassword}    ${EdPassword}
    Wait Until Element Is Visible    ${Editsavebutton}
    Click Element    ${Editsavebutton}
    Wait Until Page Contains    Success


Resetpage
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${AdminPageUsername}
    Input Text    ${AdminPageUsername}    ${Adminreset} 
    Wait Until Element Is Visible    ${AdminUserRole} 
    Click Element    ${AdminUserRole}    
    Run Keyword If    '${Adminreset}' == 'Admin'    Click Element    ${Admina}
    ...        ELSE        Click Element    ${ESSA} 
    Wait Until Element Is Visible    ${ResetbuttonAdmin}    
    Click Element    ${ResetbuttonAdmin}
    ${Avalue}    Get Value    ${AdminPageUsername}
    ${EMevalue}    Get Value    ${EMPName}
    #Element Should Be Visible    ${selectuserRole}
    #Log    ${Sevalue}
    ${textt}    Get Text    ${selectuserRole}
    Should Be Empty    ${EMevalue}
    Should Be Empty    ${Avalue}
    Should Be Equal As Strings    ${textt}    ${selectt}
    Wait Until Element Is Visible    ${RecordsFoundAdminPage}
    

    

