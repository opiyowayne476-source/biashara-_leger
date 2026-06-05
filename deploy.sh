#!/bin/bash
# BiasharaLedger Deployment Script

echo "🚀 BiasharaLedger Production Deployer"
echo "======================================"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if in the right directory
if [ ! -f "app.py" ]; then
    echo "❌ app.py not found. Please run this script from the project root."
    exit 1
fi

echo ""
echo "Step 1: Initializing Git repository..."
git init
git add .
git commit -m "Production-ready BiasharaLedger"

echo ""
echo "Step 2: GitHub Setup"
echo "   1. Go to https://github.com/new"
echo "   2. Create a new repository named 'biashara-ledger'"
echo "   3. Make it Public"
echo "   4. Copy the repository URL"
echo ""
read -p "Enter your GitHub repository URL: " repo_url

git branch -M main
git remote add origin $repo_url
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "Step 3: Deploy to Render"
echo "   1. Go to https://dashboard.render.com"
echo "   2. Sign up with GitHub"
echo "   3. Click 'New +' → 'Web Service'"
echo "   4. Select your 'biashara-ledger' repository"
echo "   5. Render will auto-detect settings from render.yaml"
echo "   6. Click 'Create Web Service'"
echo ""
echo "🎉 Your app will be live in 2-3 minutes!"
echo "   URL: https://biashara-ledger.onrender.com"
