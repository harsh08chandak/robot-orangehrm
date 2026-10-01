# OrangeHRM Robot Framework - Setup & Execution Guide

## Prerequisites
- Python 3.8 or higher
- Google Chrome browser
- ChromeDriver (auto-downloaded by webdriver-manager)
- VS Code (recommended)

## Installation Steps

### 1. Clone Repository
```bash
git clone https://github.com/harsh08chandak/robot-orangehrm.git
cd robot-orangehrm
```

### 2. Create Virtual Environment
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# macOS/Linux
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. VS Code Extensions (Optional but Recommended)
- Robot Framework Language Server (by Robocorp)
- Python Extension (by Microsoft)
- Pylance (by Microsoft)

## Test Cases Overview

| # | Test Case | Tags | Purpose |
|---|-----------|------|----------|
| 1 | Login as Admin | smoke, critical | Validates admin login and dashboard visibility |
| 2 | Add Multiple Job Titles | regression, critical | Adds 3 job titles using for loop |
| 3 | Conditional Employee Search | smoke, regression | Searches employee with conditional logic |
| 4 | Verify Menu Navigation | regression | Validates menu items availability |
| 5 | Logout Flow | smoke, regression | Tests logout and login form visibility |

## Execution Commands

### Run All Tests
```bash
robot --outputdir output tests
```

### Run Specific Test File
```bash
robot --outputdir output tests/test_login.robot
```

### Run Tests by Tag
```bash
# Run only smoke tests
robot --include smoke --outputdir output tests

# Run only regression tests
robot --include regression --outputdir output tests

# Run only critical tests
robot --include critical --outputdir output tests
```

### Run Tests in Parallel (3 processes)
```bash
pabot --processes 3 tests/
```

### Run with Detailed Logging
```bash
robot --loglevel DEBUG --outputdir output tests
```

### Using Execution Scripts
```bash
# Linux/macOS
chmod +x run_tests.sh
./run_tests.sh

# Windows
run_tests.bat
```

## View Test Results

After execution, open in browser:
- `output/report.html` - Visual test report
- `output/log.html` - Detailed execution log
- `output/` folder - Screenshots

Double-click report.html to view results.

## Project Structure
```
robot-orangehrm/
├── .vscode/
│   └── settings.json              # VS Code configuration
├── resources/
│   └── keywords.robot             # Reusable test keywords
├── variables/
│   └── credentials.robot          # Test data & XPath locators
├── tests/
│   ├── test_login.robot           # Login test
│   ├── test_add_job_titles.robot  # Job titles test (with for loop)
│   ├── test_search_employees.robot # Employee search (with if condition)
│   ├── test_menu_navigation.robot # Menu validation (with for loop)
│   └── test_logout.robot          # Logout test
├── output/                        # Test results & screenshots
├── requirements.txt               # Python dependencies
├── setup.py                       # Setup configuration
├── .gitignore                     # Git ignore rules
├── README.md                      # Project overview
├── SETUP_GUIDE.md                 # This file
├── run_tests.sh                   # Linux/macOS test runner
├── run_tests.bat                  # Windows test runner
└── git_commands.sh                # Git push script
```

## Key Features

✅ **5 Comprehensive Test Cases** - Full OrangeHRM workflow automation
✅ **For Loops** - Used in job titles and menu validation
✅ **If Conditions** - Used in employee search results
✅ **Tags for Execution** - smoke, regression, critical
✅ **Modular Structure** - Keywords, variables, tests separated
✅ **Suite Setup/Teardown** - Browser management
✅ **Screenshots** - Captured during test execution
✅ **Parallel Execution** - Supported with pabot

## Test Credentials
- URL: https://yakshahrm.makemylabs.in/orangehrm-5.7
- Username: Admin
- Password: Admin@1234

## Troubleshooting

### ChromeDriver Issues
If chrome driver fails, install webdriver-manager:
```bash
pip install webdriver-manager
```

### XPath Not Found
Check if OrangeHRM version matches locators in `variables/credentials.robot`

### Tests Timeout
Increase timeout in keywords.robot:
```robot
${WAIT_TIMEOUT}    30s
```

### Permission Denied (git_commands.sh)
```bash
chmod +x git_commands.sh
./git_commands.sh
```

## Git Push Instructions

```bash
chmod +x git_commands.sh
./git_commands.sh
```

## Support
- Robot Framework Docs: https://robotframework.org/
- SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
- Report Issues: GitHub Issues

---
**Last Updated:** October 2026
**Version:** 1.0.0
