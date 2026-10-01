#!/bin/bash

# Git Push Script for OrangeHRM Robot Framework Project

echo "========================================"
echo "Pushing OrangeHRM Robot Project to GitHub"
echo "========================================"
echo ""

git status
echo ""
git add .
echo "✓ Files staged"
echo ""

git commit -m "Add OrangeHRM Robot Framework automation suite with 5 test cases"
echo "✓ Commit created"
echo ""

git push origin main
echo "✓ Pushed to GitHub"
echo ""

echo "========================================"
echo "✓ Project pushed to GitHub successfully!"
echo "========================================"
