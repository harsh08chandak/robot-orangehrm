@echo off
REM OrangeHRM Robot Framework Test Execution Script for Windows

echo.
echo ==========================================
echo OrangeHRM Robot Framework Test Suite
echo ==========================================
echo.

if not exist "output" (
    mkdir output
    echo X Created output directory
)

echo Select execution mode:
echo 1. Run all tests (sequential)
echo 2. Run tests in parallel (3 processes)
echo 3. Run smoke tests only
echo 4. Run regression tests only
echo 5. Run critical tests only
echo 6. Run specific test file
echo 7. Run with debug logging
echo.

set /p choice="Enter choice (1-7): "

if "%choice%"=="1" (
    echo Running all tests...
    robot --outputdir output tests
) else if "%choice%"=="2" (
    echo Running tests in parallel (3 processes)...
    pabot --processes 3 --outputdir output tests
) else if "%choice%"=="3" (
    echo Running smoke tests...
    robot --include smoke --outputdir output tests
) else if "%choice%"=="4" (
    echo Running regression tests...
    robot --include regression --outputdir output tests
) else if "%choice%"=="5" (
    echo Running critical tests...
    robot --include critical --outputdir output tests
) else if "%choice%"=="6" (
    set /p testfile="Enter test file name (e.g., test_login.robot): "
    robot --outputdir output tests/%testfile%
) else if "%choice%"=="7" (
    echo Running with DEBUG logging...
    robot --loglevel DEBUG --outputdir output tests
) else (
    echo Invalid choice
    exit /b 1
)

echo.
echo ==========================================
echo X Test execution completed!
echo X Results saved in output/ directory
echo X Open output\report.html to view results
echo ==========================================
pause
