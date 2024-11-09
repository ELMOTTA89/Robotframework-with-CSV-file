*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/DashboardPage.py
Variables    ../Locators/AdminPage.py
Variables    ../Locators/AddUserPage.py
Variables    ../JDD/AddUser.py

*** Variables ***

*** Keywords ***
Successuful AddUser
    Wait Until Element Is Visible    ${AdminIcone}
    Click Element    ${AdminIcone}
    Wait Until Element Is Visible    ${AdminAddButton}
    Click Element    ${AdminAddButton}
    Wait Until Element Is Visible    ${UserRole}
    Click Element    ${UserRole}
    Wait Until Element Is Visible    ${SelectAdmin}
    Click Element    ${SelectAdmin}
    Wait Until Element Is Visible    ${Status}
    Click Element    ${Status}
    Wait Until Element Is Visible    ${SelectEnable}
    Click Element    ${SelectEnable}
    Wait Until Element Is Visible    ${LEmployeeName}
    Input Text    ${LEmployeeName}    ${JEmployeeName}
    Wait Until Element Is Visible    ${Lusername}
    Input Text    ${Lusername}    ${JuserName}
    Wait Until Element Is Visible    ${Lpassword}
    Input Password    ${Lpassword}    ${Jpassword}
    Wait Until Element Is Visible    ${Lconfirmpassword}
    Input Password    ${Lconfirmpassword}    ${Jpassword}
    Wait Until Element Is Visible    ${Lsavebutton}
    Click Element    ${Lsavebutton}


Successuful AddtableofUsers python
    FOR    ${counter}    IN RANGE    0    ${ligne}    1

        Log    ${counter}
        Wait Until Element Is Visible    ${AdminIcone}
        Click Element    ${AdminIcone}
        Wait Until Element Is Visible    ${AdminAddButton}
        Click Element    ${AdminAddButton}
        Wait Until Element Is Visible    ${UserRole}
        Click Element    ${UserRole}
        Wait Until Element Is Visible    ${SelectAdmin}
        Click Element    ${SelectAdmin}
        Wait Until Element Is Visible    ${Status}
        Click Element    ${Status}
        Wait Until Element Is Visible    ${SelectEnable}
        Click Element    ${SelectEnable}
        Wait Until Element Is Visible    ${LEmployeeName}
        Input Text    ${LEmployeeName}    ${JEmployeeName}
        Wait Until Element Is Visible    ${Lusername}
        Input Text    ${Lusername}    ${Users[${counter}][3]}
        Wait Until Element Is Visible    ${Lpassword}
        Input Password    ${Lpassword}    ${Users[${counter}][4]}
        Wait Until Element Is Visible    ${Lconfirmpassword}
        Input Password    ${Lconfirmpassword}    ${Users[${counter}][4]}
        Wait Until Element Is Visible    ${Lsavebutton}
        Click Element    ${Lsavebutton}
        Sleep    5s
    END


Successuful AddtableofUsers Robot
   ${file} =    Get File    C:\\Users\\motal\\OneDrive\\Desktop\\automatisation\\Robotframework\\RFTest\\Ressources\\JDD\\Data.csv
   ${table} =    Evaluate    [line.split(';') for line in $file.splitlines()[1:]]
   FOR    ${row}    IN    @{table}
        ${ro} =    Set Variable    ${row}[0]
        ${sta} =   Set Variable    ${row}[1]
        ${em} =    Set Variable    ${row}[2]
        ${nuser} =    Set Variable    ${row}[3]
        ${npass} =   Set Variable    ${row}[4]
        Wait Until Element Is Visible    ${AdminIcone}
        Click Element    ${AdminIcone}
        Wait Until Element Is Visible    ${AdminAddButton}
        Click Element    ${AdminAddButton}
        Wait Until Element Is Visible    ${UserRole}
        Click Element    ${UserRole}
        Run Keyword If    '${ro}' == 'Admin'    Click Element    ${SelectAdmin}
        ...        ELSE        Click Element    ${SelectESS}
        Wait Until Element Is Visible    ${Status}
        Click Element    ${Status}
        Run Keyword If    '${sta}' == 'Enabled'    Click Element    ${SelectEnable}
        ...  ELSE      Click Element    ${SelectDisabled}
        Wait Until Element Is Visible    ${LEmployeeName}
        Input Text    ${LEmployeeName}    ${em}
        Wait Until Element Is Visible    ${Lusername}
        Input Text    ${Lusername}    ${nuser}
        Wait Until Element Is Visible    ${Lpassword}
        Input Password    ${Lpassword}    ${npass}
        Wait Until Element Is Visible    ${Lconfirmpassword}
        Input Password    ${Lconfirmpassword}    ${npass}
        Wait Until Element Is Visible    ${Lsavebutton}
        Click Element    ${Lsavebutton}
   END 