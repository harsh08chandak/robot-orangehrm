*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/credentials.robot

*** Variables ***
${WAIT_TIMEOUT}    15s
${BROWSER}         Chrome
${SCREENSHOT_DIR}  ${EXECDIR}/output

*** Keywords ***
Open OrangeHRM Browser
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${WAIT_TIMEOUT}

Login As Admin
    Input Text    ${USERNAME_FIELD}    ${ADMIN_USERNAME}
    Input Password    ${PASSWORD_FIELD}    ${ADMIN_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains    Dashboard    timeout=${WAIT_TIMEOUT}

Capture Dashboard Screenshot
    Create Directory    ${SCREENSHOT_DIR}
    Capture Page Screenshot    ${SCREENSHOT_DIR}/dashboard.png

Verify Dashboard Menu Selected
    Page Should Contain    Dashboard

Go To Admin Menu
    Click Element    ${ADMIN_MENU}

Go To Job Titles Page
    Click Element    ${JOB_MENU}
    Click Element    ${JOB_TITLES_OPTION}

Add Job Title
    [Arguments]    ${job_title}
    Click Button    ${ADD_JOB_TITLE_BUTTON}
    Input Text    ${JOB_TITLE_INPUT}    ${job_title}
    Click Button    ${SAVE_JOB_TITLE_BUTTON}
    Sleep    1s

Search Employee By Name
    [Arguments]    ${employee_name}
    Input Text    ${EMPLOYEE_NAME_INPUT}    ${employee_name}
    Click Button    ${SEARCH_BUTTON}

Check Employee Search Result
    [Arguments]    ${employee_name}
    ${status}=    Run Keyword And Return Status    Page Should Contain    ${employee_name}
    Run Keyword If    ${status}    Log    Employee Found    console=yes
    ...    ELSE    Log    Employee Not Found    console=yes

Validate Menu Items
    [Arguments]    @{menu_items}
    FOR    ${menu_item}    IN    @{menu_items}
        ${exists}=    Run Keyword And Return Status    Page Should Contain    ${menu_item}
        Run Keyword If    ${exists}    Log    ${menu_item} is available    console=yes
        ...    ELSE    Log    ${menu_item} is missing    console=yes
    END

Logout From OrangeHRM
    Click Element    ${USER_DROPDOWN}
    Click Element    ${LOGOUT_LINK}
    Wait Until Page Contains Element    ${LOGIN_USERNAME_FIELD}

Close OrangeHRM Session
    Close Browser

Verify Username Field After Logout
    Page Should Contain Element    ${LOGIN_USERNAME_FIELD}

Add Multiple Job Titles
    [Arguments]    @{job_titles}
    FOR    ${job_title}    IN    @{job_titles}
        Add Job Title    ${job_title}
    END
