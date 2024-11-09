Feature: Authentification


Scenario: Success access to login page

    Given the user open browser
    When the user enters the url "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    Then  the user should be redirected to login page


Scenario:Success login using valid credentials
    Given the user is on login page
    When the user enters valid username 
    When the user enters valid password
    When the user click on login button 
    Then the user should be redirected to Dashbord

Scenario:UnSuccess login using valid username & invalid password 
    Given the user is on login page
    When the user enters valid username 
    When the user enters invalid password
    When the user click on login button 
    Then the user should displayed en error message "Invalid credentials"

Scenario: Unsuccess login with empty credentials
    Given   the user is on login page
    When the user click on login button 
    Then the user should displayed en error message "Invalid credentials"


    

