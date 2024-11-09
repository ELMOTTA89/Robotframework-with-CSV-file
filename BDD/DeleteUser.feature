Feature: Delete User

Scenario:Deleting message

Given the user find the username that he wants to Delete
When the user click on Delete Icone
Then  a message ask the user to confirm or cancel action of Delete

Scenario:confirm deleting

Given   the message ask the user to confirm or cancel action of Delete
When    the user click on yes Delete button
Then    a message apears confirmed the deleting



