# 🏀 2-Player Bouncing Balls Competition

A fun, competitive mobile game where two players compete to collect bouncing balls using animated characters!

## 📱 Install on iPhone (iOS)

### Method 1: Direct PWA Installation (Recommended)

1. **Open Safari** on your iPhone (must use Safari, not Chrome)
2. **Navigate to your game URL** (where you host the files)
3. **Tap the Share button** (square with arrow up) in Safari
4. **Scroll down and tap "Add to Home Screen"**
5. **Customize the name** if desired and tap "Add"
6. **The app icon will appear** on your home screen like a native app!

### Method 2: Local Testing with iOS Simulator

If you have a Mac with Xcode:
1. Install Xcode from App Store
2. Open Simulator (Applications > Xcode > Developer Tools > Simulator)
3. Host the files locally and access via Simulator's Safari

## 🌐 Quick Setup Guide

### Step 1: Get the Files
Save these files in the same folder:
- `index.html` (main game file)
- `manifest.json` (PWA configuration)
- `sw.js` (service worker for offline support)
- `generate-icons.html` (icon generator)

### Step 2: Generate App Icons
1. Open `generate-icons.html` in your browser
2. Right-click the first icon → "Save image as..." → Save as `icon-192.png`
3. Right-click the second icon → "Save image as..." → Save as `icon-512.png`
4. Place both PNG files in the same folder as your other files

### Step 3: Host the Files
Choose one option:

**Option A: GitHub Pages (Free)**
1. Create a GitHub repository
2. Upload all files to the repository
3. Go to repository Settings → Pages
4. Select "Deploy from a branch" → "main" branch
5. Your game will be available at: `https://yourusername.github.io/repository-name`

**Option B: Local Testing**
1. Install a simple HTTP server:
   ```bash
   # Using Python (if installed)
   python -m http.server 8000
   
   # Using Node.js (if installed)
   npx http-server
   ```
2. Access at `http://localhost:8000`

**Option C: Netlify (Free)**
1. Go to [netlify.com](https://netlify.com)
2. Drag and drop your folder to deploy
3. Get an instant URL

### Step 4: Install on iPhone
1. Open the hosted URL in **Safari** on your iPhone
2. Tap Share → "Add to Home Screen"
3. Enjoy your native-like app experience!

## 🎮 Game Features

### Two Players
- **👧 Player 1 (Girl)**: Pink dress, WASD controls
- **👦 Player 2 (Boy)**: Blue shirt, Arrow key controls

### Mobile Controls
- **Touch and drag** to move characters
- **Left side of screen** controls Player 1
- **Right side of screen** controls Player 2

### Gameplay
- **Collect bouncing balls** by touching them with your character
- **Bigger balls = more points**
- **Randomized ball sizes** at each game start
- **Individual ball size controls** for custom difficulty
- **Sound effects** with volume control
- **Real-time scoring** and competition

### PWA Features
- **Works offline** after first load
- **Native app experience** when installed
- **Full-screen gameplay**
- **Touch-optimized** interface
- **Automatic updates** when you refresh

## 🔧 Technical Details

### Files Structure
```
your-game-folder/
├── index.html          # Main game file
├── manifest.json       # PWA configuration
├── sw.js              # Service worker
├── generate-icons.html # Icon generator
├── icon-192.png       # App icon (192x192)
├── icon-512.png       # App icon (512x512)
└── README.md          # This file
```

### PWA Features
- **Manifest file** for installation
- **Service worker** for offline support
- **Responsive design** for all screen sizes
- **Touch optimization** for mobile devices
- **Native app behavior** when installed

### Browser Support
- **iOS Safari**: Full PWA support
- **Android Chrome**: Full PWA support
- **Desktop Chrome/Edge**: Full PWA support
- **Firefox**: Partial PWA support

## 🚀 Installation Tips

### For iPhone Users
- **Must use Safari** - other browsers don't support PWA installation on iOS
- **iOS 11.3+** required for PWA support
- **Works offline** after installation
- **No App Store needed** for testing

### For Android Users
- **Chrome will show** an "Install" prompt automatically
- **Can be installed** from any modern browser
- **Better PWA support** than iOS

### For Desktop Users
- **Install prompt** appears in supported browsers
- **Works like a desktop app** when installed
- **Keyboard controls** work perfectly

## 🎯 Gameplay Tips

1. **Strategic ball collection**: Go for bigger balls for more points
2. **Use individual controls**: Adjust ball sizes to your advantage
3. **Block opponents**: Position yourself between opponent and valuable balls
4. **Time your touches**: Balls settle after 3 seconds of no interaction
5. **Master the controls**: WASD vs Arrow keys for each player

## 🔧 Troubleshooting

### PWA Won't Install
- Make sure you're using Safari on iOS
- Check that all files are in the same folder
- Verify icons are named correctly: `icon-192.png` and `icon-512.png`

### Game Won't Load
- Check browser console for errors
- Ensure you're serving files over HTTP/HTTPS (not file://)
- Try clearing browser cache

### Controls Not Working
- Refresh the page
- Check that touch events are enabled
- Try in landscape mode for better experience

## 📱 Best Experience

**For iPhone:**
- Install as PWA for full-screen experience
- Use landscape orientation for optimal gameplay
- Enable sound for full experience

**For Competition:**
- Use landscape mode on tablet/phone
- Two players side by side
- Set target score for matches (e.g., first to 100 points wins)

Enjoy your mobile bouncing balls competition! 🏆 