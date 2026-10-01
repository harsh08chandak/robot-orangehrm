*** Variables ***
${BASE_URL}                      https://yakshahrm.makemylabs.in/orangehrm-5.7
${ADMIN_USERNAME}                Admin
${ADMIN_PASSWORD}                Admin@1234

${USERNAME_FIELD}               //*[@id='txtUsername']
${PASSWORD_FIELD}               //*[@id='txtPassword']
${LOGIN_BUTTON}                 //*[@id='btnLogin']
${LOGIN_USERNAME_FIELD}         //*[@id='txtUsername']
${ADMIN_MENU}                   //a[@id='menu_admin_viewAdminModule']
${JOB_MENU}                     //a[@id='menu_admin_Job']
${JOB_TITLES_OPTION}            //a[@id='menu_admin_viewJobTitleList']
${ADD_JOB_TITLE_BUTTON}         //input[@id='btnAdd']
${JOB_TITLE_INPUT}              //input[@id='jobTitle_name']
${SAVE_JOB_TITLE_BUTTON}        //input[@id='btnSave']
${EMPLOYEE_NAME_INPUT}          //input[@placeholder='Type for hints...']
${SEARCH_BUTTON}                //input[@type='submit' and @value='Search']
${USER_DROPDOWN}                //a[@id='welcome']
${LOGOUT_LINK}                  //a[contains(@href,'logout')]

@{JOB_TITLES}                  AI Specialist    Data Engineer    Cloud Architect
@{MENU_ITEMS_TO_VALIDATE}      Admin    PIM    Leave
