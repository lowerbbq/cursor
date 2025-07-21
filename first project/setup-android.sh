#!/bin/bash

# 🤖 Android App Setup Script
# This script automates the setup of your Bouncing Balls Android app

echo "🚀 Setting up Android app for Bouncing Balls Game..."
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js from https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js found: $(node --version)"

# Check if npm is available
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not available. Please install Node.js with npm."
    exit 1
fi

echo "✅ npm found: $(npm --version)"

# Install dependencies
echo ""
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed successfully"

# Initialize Capacitor
echo ""
echo "⚡ Initializing Capacitor..."

# Check if Capacitor is already initialized
if [ ! -f "capacitor.config.ts" ]; then
    echo "❌ capacitor.config.ts not found. Please make sure all project files are present."
    exit 1
fi

# Add Android platform
echo ""
echo "🤖 Adding Android platform..."
npm run android:add

if [ $? -ne 0 ]; then
    echo "❌ Failed to add Android platform"
    echo "💡 Make sure Android Studio is installed and Android SDK is configured"
    exit 1
fi

echo "✅ Android platform added successfully"

# Sync assets
echo ""
echo "🔄 Syncing web assets to Android..."
npm run android:sync

if [ $? -ne 0 ]; then
    echo "❌ Failed to sync assets"
    exit 1
fi

echo "✅ Assets synced successfully"

# Success message
echo ""
echo "🎉 Android app setup completed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Generate app icons:"
echo "   - Open 'generate-android-icons.html' in your browser"
echo "   - Download all icons and place them in the correct folders"
echo ""
echo "2. Open Android Studio:"
echo "   npm run android:open"
echo ""
echo "3. Build your APK:"
echo "   - In Android Studio: Build → Build Bundle(s) / APK(s) → Build APK(s)"
echo ""
echo "4. Install on device:"
echo "   - Connect your Android device via USB"
echo "   - Enable USB Debugging in Developer Options"
echo "   - Run: npm run android:run"
echo ""
echo "📱 Your bouncing balls game is ready to become an Android app!"
echo ""
echo "🔗 For detailed instructions, see: android-build-instructions.md" 