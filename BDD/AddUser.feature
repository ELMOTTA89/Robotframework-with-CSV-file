
Feature:Add user

Scenario:Admin page
    Given the user  is logged in 
    When the user click on admi icon
    Then the user should be redirected to Admin page

Scenario: Add user page
    Given the user is on admin page
    When    the user click on add button
    Then    the user should be redirected to add user page

Scenario: Successufull creating user
    Given   the user is on the add user page
    When    the user select user role
    And     the user select status
    And     the user enters Employee Name exists
    And     the user enters username doesn't exist
    And     the user enters password valid
    And     the user confirm password
    And     the user click on save button
    Then    the new user should be created
    

