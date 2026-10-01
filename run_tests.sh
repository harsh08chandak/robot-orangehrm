#!/bin/bash

# OrangeHRM Robot Framework Test Execution Script

echo "=========================================="
echo "OrangeHRM Robot Framework Test Suite"
echo "=========================================="
echo ""

# Check if output directory exists
if [ ! -d "output" ]; then
    mkdir output
    echo "✓ Created output directory"
fi

# Display menu
echo "Select execution mode:"
echo "1. Run all tests (sequential)"
echo "2. Run tests in parallel (3 processes)"
echo "3. Run smoke tests only"
echo "4. Run regression tests only"
echo "5. Run critical tests only"
echo "6. Run specific test file"
echo "7. Run with debug logging"
echo ""
read -p "Enter choice (1-7): " choice

case $choice in
    1)
        echo "Running all tests..."
        robot --outputdir output tests
        ;;
    2)
        echo "Running tests in parallel (3 processes)..."
        pabot --processes 3 --outputdir output tests
        ;;
    3)
        echo "Running smoke tests..."
        robot --include smoke --outputdir output tests
        ;;
    4)
        echo "Running regression tests..."
        robot --include regression --outputdir output tests
        ;;
    5)
        echo "Running critical tests..."
        robot --include critical --outputdir output tests
        ;;
    6)
        read -p "Enter test file name (e.g., test_login.robot): " testfile
        robot --outputdir output tests/$testfile
        ;;
    7)
        echo "Running with DEBUG logging..."
        robot --loglevel DEBUG --outputdir output tests
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "=========================================="
echo "✓ Test execution completed!"
echo "✓ Results saved in output/ directory"
echo "✓ Open output/report.html to view results"
echo "=========================================="
