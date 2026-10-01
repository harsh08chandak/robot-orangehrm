*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Open OrangeHRM Browser
Suite Teardown    Close OrangeHRM Session

*** Test Cases ***
Add Multiple Job Titles
    [Tags]    regression    critical
    Login As Admin
    Go To Admin Menu
    Go To Job Titles Page
    Add Multiple Job Titles    @{JOB_TITLES}
    Logout From OrangeHRM
    Verify Username Field After Logout

*** Comments ***
This test adds three job titles using a for loop and verifies logout action.
