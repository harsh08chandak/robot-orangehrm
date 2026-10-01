*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Open OrangeHRM Browser
Suite Teardown    Close OrangeHRM Session

*** Test Cases ***
Verify Menu Navigation
    [Tags]    regression
    Login As Admin
    Validate Menu Items    @{MENU_ITEMS_TO_VALIDATE}

*** Comments ***
This test validates that the Admin, PIM, and Leave menu options are present.
