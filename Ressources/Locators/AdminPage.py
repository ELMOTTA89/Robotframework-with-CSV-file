#Add USER

AdminAddButton="xpath://button[@class='oxd-button oxd-button--medium oxd-button--secondary']"
AdminPageUsername="xpath://label[text()='Username']/following::input[@class='oxd-input oxd-input--active']"
SearchButon="xpath://button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']"
SearchResultats="xpath://i[@data-v-bddebfba and @class='oxd-icon bi-check oxd-checkbox-input-icon']/following::div[@data-v-6c07a142]"

AdminUserRole="xpath://label[text()='User Role']/following::div[@data-v-67d2aedf]"
selectuserRole="xpath://div[@data-v-67d2aedf  and @class='oxd-select-text-input' and contains(text(),'-- Select --')]" #//div[text()='-- Select --']
Admina="xpath://*[contains(text(),'Admin')]"
ESSA="xpath://*[contains(text(),'ESS')]"
Trash="xpath://*[@class='oxd-icon bi-trash']"
YesDelete="xpath://*[@class='oxd-icon bi-trash oxd-button-icon']"
EditIconeadmin="xpath://*[@class='oxd-icon bi-pencil-fill']"
EMPName="xpath://input[@placeholder='Type for hints...']"
StatusAdmin="xpath://label[text()='Status']/following::div[@data-v-67d2aedf]"
SelectEnableAdmin="xpath://*[contains(text(),'Enabled')]"
SelectDisabledAdmin="xpath://*[contains(text(),'Disabled')]"

VerifyDisabled="xpath://label[text()='Status']/following::div[@data-v-6c07a142][4]"

Editbutton="xpath://*[@class='oxd-icon bi-pencil-fill']"
ResetbuttonAdmin="xpath://button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--ghost']"
RecordsFoundAdminPage="xpath://span[@data-v-5a621acd and @class='oxd-text oxd-text--span']"





#Ro=input(str("selection ueer role"))
#if (RO=="ADMIN"):
#    clik admin 
#else :
#    click ESS
    


#Run Keyword if ${RO} == "Admin"     click element   ${locatorsRO}

#Run Keyword If    '${ro}' == 'Admin'    Click Element    ${Admina}
#    ...               ELSE    Click Element    ${ESS}