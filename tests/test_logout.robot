*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Open OrangeHRM Browser
Suite Teardown    Close OrangeHRM Session

*** Test Cases ***
Logout Flow
    [Tags]    smoke    regression
    Login As Admin
    Logout From OrangeHRM
    Verify Username Field After Logout

*** Comments ***
This test performs logout and validates the login form is visible on the screen.
