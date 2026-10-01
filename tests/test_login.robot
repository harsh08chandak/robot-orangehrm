*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Open OrangeHRM Browser
Suite Teardown    Close OrangeHRM Session

*** Test Cases ***
Login As Admin
    [Tags]    smoke    critical
    Login As Admin
    Capture Dashboard Screenshot
    Verify Dashboard Menu Selected

*** Comments ***
This test validates admin login and default dashboard visibility.
