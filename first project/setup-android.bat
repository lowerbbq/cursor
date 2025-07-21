@echo off
echo 🚀 Setting up Android app for Bouncing Balls Game...
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js found
node --version

REM Check if npm is available
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ npm is not available. Please install Node.js with npm.
    pause
    exit /b 1
)

echo ✅ npm found
npm --version

REM Install dependencies
echo.
echo 📦 Installing dependencies...
call npm install

if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)

echo ✅ Dependencies installed successfully

REM Initialize Capacitor
echo.
echo ⚡ Initializing Capacitor...

REM Check if Capacitor config exists
if not exist "capacitor.config.ts" (
    echo ❌ capacitor.config.ts not found. Please make sure all project files are present.
    pause
    exit /b 1
)

REM Add Android platform
echo.
echo 🤖 Adding Android platform...
call npm run android:add

if %errorlevel% neq 0 (
    echo ❌ Failed to add Android platform
    echo 💡 Make sure Android Studio is installed and Android SDK is configured
    pause
    exit /b 1
)

echo ✅ Android platform added successfully

REM Sync assets
echo.
echo 🔄 Syncing web assets to Android...
call npm run android:sync

if %errorlevel% neq 0 (
    echo ❌ Failed to sync assets
    pause
    exit /b 1
)

echo ✅ Assets synced successfully

REM Success message
echo.
echo 🎉 Android app setup completed successfully!
echo.
echo 📋 Next steps:
echo 1. Generate app icons:
echo    - Open 'generate-android-icons.html' in your browser
echo    - Download all icons and place them in the correct folders
echo.
echo 2. Open Android Studio:
echo    npm run android:open
echo.
echo 3. Build your APK:
echo    - In Android Studio: Build → Build Bundle(s) / APK(s) → Build APK(s)
echo.
echo 4. Install on device:
echo    - Connect your Android device via USB
echo    - Enable USB Debugging in Developer Options
echo    - Run: npm run android:run
echo.
echo 📱 Your bouncing balls game is ready to become an Android app!
echo.
echo 🔗 For detailed instructions, see: android-build-instructions.md
echo.
pause 