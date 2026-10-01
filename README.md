# OrangeHRM Robot Framework Automation Suite

A comprehensive Robot Framework automation suite for testing OrangeHRM 5.7 application with 5 complete test cases covering login, job title management, employee search, menu navigation, and logout flows.

## 🚀 Features

✅ **5 Complete Test Cases**
- Login as Admin with screenshot capture
- Add Multiple Job Titles using For Loops
- Conditional Employee Search with If Conditions
- Menu Navigation Validation
- Logout Flow Verification

✅ **Advanced Robot Framework Concepts**
- For Loops for iterating over data
- If Conditions for conditional logic
- Suite Setup & Teardown for browser management
- Tags for selective test execution (smoke, regression, critical)

✅ **Modular Project Structure**
- Separated keywords, variables, and test files
- Reusable keyword library
- Centralized credentials and locators
- Independent executable test cases

✅ **Parallel Execution Support**
- Use `pabot` for running tests in parallel
- 3-process configuration ready

✅ **Complete Test Reporting**
- Automatic screenshots during execution
- HTML reports (report.html, log.html)
- Console logging for test status

## 📋 Project Structure

```
robot-orangehrm/
├── .vscode/
│   └── settings.json              # VS Code Robot Framework settings
├── resources/
│   └── keywords.robot             # Reusable automation keywords
├── variables/
│   └── credentials.robot          # Test credentials & XPath locators
├── tests/
│   ├── test_login.robot           # Test Case 1: Admin Login
│   ├── test_add_job_titles.robot  # Test Case 2: Add Job Titles (For Loop)
│   ├── test_search_employees.robot # Test Case 3: Employee Search (If Condition)
│   ├── test_menu_navigation.robot # Test Case 4: Menu Navigation (For Loop)
│   └── test_logout.robot          # Test Case 5: Logout
├── output/                        # Test results & screenshots
├── requirements.txt               # Python dependencies
├── setup.py                       # Package configuration
├── .gitignore                     # Git ignore rules
├── README.md                      # This file
├── SETUP_GUIDE.md                 # Detailed setup instructions
├── run_tests.sh                   # Linux/macOS test runner
├── run_tests.bat                  # Windows test runner
└── git_commands.sh                # Git push script
```

## ⚙️ Installation

### Prerequisites
- Python 3.8+
- Google Chrome browser
- Git

### Quick Start

```bash
# Clone repository
git clone https://github.com/harsh08chandak/robot-orangehrm.git
cd robot-orangehrm

# Create virtual environment
python -m venv venv
source venv/bin/activate    # Linux/macOS
# or
venv\Scripts\activate       # Windows

# Install dependencies
pip install -r requirements.txt
```

## 🧪 Test Cases

### Test Case 1: Login as Admin
- **Tags:** `smoke`, `critical`
- **Description:** Login to OrangeHRM with admin credentials and verify dashboard
- **Steps:**
  1. Login with Admin/Admin@1234
  2. Capture screenshot
  3. Verify Dashboard is displayed

### Test Case 2: Add Multiple Job Titles
- **Tags:** `regression`, `critical`
- **Description:** Add 3 job titles using a for loop
- **Steps:**
  1. Login as Admin
  2. Navigate to Admin > Job > Job Titles
  3. Add "AI Specialist", "Data Engineer", "Cloud Architect" (using For Loop)
  4. Logout and verify login form

### Test Case 3: Conditional Employee Search
- **Tags:** `smoke`, `regression`
- **Description:** Search for employee with conditional logic
- **Steps:**
  1. Login as Admin
  2. Navigate to Admin
  3. Search for "Paul Collings"
  4. Log "Employee Found" or "Employee Not Found" (using If Condition)

### Test Case 4: Verify Menu Navigation
- **Tags:** `regression`
- **Description:** Validate menu items availability using for loop
- **Steps:**
  1. Login as Admin
  2. Validate Admin, PIM, Leave menus are present (using For Loop)

### Test Case 5: Logout Flow
- **Tags:** `smoke`, `regression`
- **Description:** Test logout functionality
- **Steps:**
  1. Login as Admin
  2. Perform Logout
  3. Verify login form is visible

## 🏃 Running Tests

### Run All Tests
```bash
robot --outputdir output tests
```

### Run Specific Test
```bash
robot --outputdir output tests/test_login.robot
```

### Run by Tags
```bash
# Smoke tests
robot --include smoke --outputdir output tests

# Regression tests
robot --include regression --outputdir output tests

# Critical tests
robot --include critical --outputdir output tests
```

### Parallel Execution
```bash
pabot --processes 3 tests/
```

### Debug Mode
```bash
robot --loglevel DEBUG --outputdir output tests
```

### Using Execution Scripts

**Linux/macOS:**
```bash
chmod +x run_tests.sh
./run_tests.sh
```

**Windows:**
```bash
run_tests.bat
```

## 📊 View Results

After test execution, results are saved in `output/` directory:

```bash
# Open HTML report
open output/report.html        # macOS
xdg-open output/report.html    # Linux
start output/report.html       # Windows
```

## 🔧 Test Environment

- **URL:** https://yakshahrm.makemylabs.in/orangehrm-5.7
- **Username:** Admin
- **Password:** Admin@1234
- **Browser:** Chrome
- **Wait Timeout:** 15 seconds

## 📦 Dependencies

```
robotframework==7.0.1
robotframework-seleniumlibrary==6.1.3
robotframework-pabot==2.18.0
selenium==4.15.2
webdriver-manager==4.0.1
```

## 🛠️ VS Code Setup

Install extensions for better experience:
1. **Robot Framework Language Server** (by Robocorp)
2. **Python** (by Microsoft)
3. **Pylance** (by Microsoft)

## 📝 Git Operations

```bash
# Push to GitHub
chmod +x git_commands.sh
./git_commands.sh
```

## 🐛 Troubleshooting

### ChromeDriver Issues
```bash
pip install webdriver-manager
```

### Timeout Issues
Update `${WAIT_TIMEOUT}` in `resources/keywords.robot` to a higher value (e.g., 30s)

### XPath Not Found
Verify OrangeHRM version and update locators in `variables/credentials.robot`

## 📚 Additional Resources

- [Robot Framework Documentation](https://robotframework.org/)
- [SeleniumLibrary Documentation](https://github.com/robotframework/SeleniumLibrary)
- [Pabot Documentation](https://github.com/mkorpela/pabot)

## 👤 Author

hash08chandak

## 📄 License

This project is open source.

---

**Version:** 1.0.0  
**Last Updated:** October 2026
