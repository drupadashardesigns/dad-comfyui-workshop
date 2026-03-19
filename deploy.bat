@echo off
title ComfyUI Workshop - GitHub Deployment
color 0E
echo.
echo ================================================
echo   ComfyUI Workshop - Automated Deployment
echo   D.A.D. (Drupad Ashar Designs)
echo ================================================
echo.

echo 📁 Checking repository status...
git status
echo.

echo 🔧 Adding all files to Git...
git add .
if errorlevel 1 (
    echo ❌ Failed to add files. Make sure you're in the repository folder.
    pause
    exit /b 1
)

echo 💾 Creating commit...
git commit -m "Deploy ComfyUI workshop landing page - mobile optimized with registration form"
if errorlevel 1 (
    echo ⚠️  No changes to commit or commit failed.
    echo    This might be normal if files haven't changed.
)

echo 🚀 Pushing to GitHub...
git push -u origin main
if errorlevel 1 (
    echo ❌ Failed to push to GitHub.
    echo    Check your internet connection and GitHub authentication.
    pause
    exit /b 1
)

echo.
echo ✅ SUCCESS! Your workshop is now deployed!
echo.
echo 🌐 Next steps:
echo    1. Check your Vercel dashboard - it will auto-deploy in 1-2 minutes
echo    2. Your workshop will be live at: https://[project-name].vercel.app
echo    3. Test the registration form and mobile responsiveness
echo.
echo 📧 Support: hello@dadcreatives.com
echo.
pause
