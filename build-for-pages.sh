#!/bin/bash

# Build and Deploy Script for Local Testing
# This script builds the Angular app with the correct base href for GitHub Pages

echo "Building Angular application for GitHub Pages..."

# Build the application with production configuration and correct base href
npm run build -- --configuration production --base-href "/niazfoundations/"

if [ $? -eq 0 ]; then
    echo "Build successful!"
    echo "Built files are in: dist/niaz-foundations-website"
    echo ""
    echo "To serve locally, run:"
    echo "npx http-server dist/niaz-foundations-website -p 8080"
    echo ""
    echo "Then visit: http://localhost:8080"
else
    echo "Build failed!"
    exit 1
fi