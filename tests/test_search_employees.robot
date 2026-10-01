*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Open OrangeHRM Browser
Suite Teardown    Close OrangeHRM Session

*** Test Cases ***
Conditional Employee Search
    [Tags]    smoke    regression
    Login As Admin
    Go To Admin Menu
    Search Employee By Name    Paul Collings
    Check Employee Search Result    Paul Collings

*** Comments ***
This test checks employee availability and logs Employee Found or Employee Not Found using an if condition.
