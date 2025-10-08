@echo off
REM Build and Deploy Script for Local Testing (Windows)
REM This script builds the Angular app with the correct base href for GitHub Pages

echo Building Angular application for GitHub Pages...

REM Build the application with production configuration and correct base href
call npm run build -- --configuration production --base-href "/niazfoundations/"

if %errorlevel% equ 0 (
    echo Build successful!
    echo Built files are in: dist/niaz-foundations-website
    echo.
    echo To serve locally, run:
    echo npx http-server dist/niaz-foundations-website -p 8080
    echo.
    echo Then visit: http://localhost:8080
) else (
    echo Build failed!
    exit /b 1
)