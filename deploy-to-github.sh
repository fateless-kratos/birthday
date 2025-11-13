#!/bin/bash

# 🎉 Quick Deploy to GitHub Pages Script
# This script automates the GitHub Pages deployment process

echo "🎉 Birthday Card - GitHub Pages Deployment Helper"
echo "=================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed!"
    echo "📥 Please install Git from: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Check if already a git repository
if [ -d .git ]; then
    echo "✅ Git repository already initialized"
else
    echo "📝 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
fi

# Create .gitignore if it doesn't exist
if [ ! -f .gitignore ]; then
    echo "📝 Creating .gitignore file..."
    cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/

# OS files
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/
EOF
    echo "✅ .gitignore created"
fi

echo ""
echo "📋 Pre-Deployment Checklist:"
echo "----------------------------"
echo ""

# Check for photos
echo -n "📸 Photos: "
if ls photos/*.{jpg,png,jpeg,JPG,PNG,JPEG} 1> /dev/null 2>&1; then
    photo_count=$(ls photos/*.{jpg,png,jpeg,JPG,PNG,JPEG} 2>/dev/null | wc -l | tr -d ' ')
    echo "✅ Found $photo_count photo(s)"
else
    echo "⚠️  No photos found (will use placeholders)"
fi

# Check for GIFs
echo -n "🎬 GIFs: "
if ls gifs/*.gif 1> /dev/null 2>&1; then
    gif_count=$(ls gifs/*.gif 2>/dev/null | wc -l | tr -d ' ')
    echo "✅ Found $gif_count GIF(s)"
else
    echo "⚠️  No GIFs found (will use placeholders)"
fi

# Check for messages
echo -n "💌 Messages: "
if ls messages/message*.txt 1> /dev/null 2>&1; then
    msg_count=$(ls messages/message*.txt 2>/dev/null | wc -l | tr -d ' ')
    echo "✅ Found $msg_count message(s)"
else
    echo "⚠️  No messages found"
fi

echo ""
echo "🔧 Next Steps:"
echo "--------------"
echo ""
echo "1️⃣  Create a GitHub repository:"
echo "   → Go to: https://github.com/new"
echo "   → Repository name: birthday-card (or your choice)"
echo "   → Make it Public"
echo "   → DON'T initialize with README"
echo "   → Click 'Create repository'"
echo ""

read -p "Have you created the GitHub repository? (y/n): " created_repo

if [[ $created_repo != "y" && $created_repo != "Y" ]]; then
    echo ""
    echo "👋 Please create a GitHub repository first, then run this script again!"
    exit 0
fi

echo ""
read -p "Enter your GitHub username: " github_username
read -p "Enter your repository name (default: birthday-card): " repo_name
repo_name=${repo_name:-birthday-card}

echo ""
echo "📦 Preparing files..."

# Add all files
git add .

# Check if there are changes to commit
if git diff-index --quiet HEAD --; then
    echo "ℹ️  No new changes to commit"
else
    git commit -m "Initial commit - Birthday card app"
    echo "✅ Files committed"
fi

echo ""
echo "🔗 Adding GitHub remote..."

# Remove existing origin if it exists
git remote remove origin 2>/dev/null

# Add new remote
git remote add origin "https://github.com/$github_username/$repo_name.git"

echo "✅ Remote added: https://github.com/$github_username/$repo_name.git"

echo ""
echo "🚀 Pushing to GitHub..."

# Rename branch to main if needed
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" != "main" ]; then
    git branch -M main
fi

# Push to GitHub
if git push -u origin main; then
    echo ""
    echo "🎉 SUCCESS! Your code is on GitHub!"
    echo ""
    echo "📋 Final Steps:"
    echo "--------------"
    echo ""
    echo "1️⃣  Enable GitHub Pages:"
    echo "   → Go to: https://github.com/$github_username/$repo_name/settings/pages"
    echo "   → Under 'Source', select branch: main"
    echo "   → Select folder: / (root)"
    echo "   → Click 'Save'"
    echo ""
    echo "2️⃣  Wait 2-3 minutes for deployment"
    echo ""
    echo "3️⃣  Your site will be live at:"
    echo "   🌐 https://$github_username.github.io/$repo_name/"
    echo ""
    echo "4️⃣  Share with your friend! 🎁"
    echo ""
    echo "🔐 Default password: 12311999"
    echo ""
    echo "💡 To update your site later:"
    echo "   git add ."
    echo "   git commit -m 'Updated content'"
    echo "   git push"
    echo ""
else
    echo ""
    echo "❌ Push failed!"
    echo ""
    echo "💡 Possible solutions:"
    echo "   1. Make sure you created the repository on GitHub"
    echo "   2. Check your GitHub credentials"
    echo "   3. You might need a Personal Access Token instead of password"
    echo "      → Create one at: https://github.com/settings/tokens"
    echo ""
    echo "Try running this script again after fixing the issue."
fi
