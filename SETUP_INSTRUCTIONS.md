# Setup Instructions for Continente QR Code Reader

This document provides detailed instructions for setting up and running the Continente QR Code Reader prototype on different platforms.

## Prerequisites

- [Node.js](https://nodejs.org/) (v16 or newer)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- For web development:
  - Modern web browser (Chrome, Firefox, Safari, Edge)
- For mobile development:
  - [React Native environment](https://reactnative.dev/docs/environment-setup)
  - For Android: Android Studio and Android SDK
  - For iOS: Xcode (Mac only)
  - Physical device or emulator with camera support

## Setup Process

### Step 1: Clone or download the project

If you have Git installed:

```bash
git clone https://github.com/continente/qr-code-reader-prototype.git
cd qr-code-reader-prototype
```

Alternatively, download and extract the ZIP file from GitHub.

### Step 2: Install dependencies

To install dependencies for all platforms:

```bash
npm install
```

To install web-specific dependencies:

```bash
# For Windows (requires administrator privileges in PowerShell):
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
npm install --save react-dom react-native-web react-scripts
npm install --save-dev @types/react-dom babel-plugin-module-resolver babel-plugin-react-native-web customize-cra react-app-rewired

# For Mac/Linux:
npm install --save react-dom react-native-web react-scripts
npm install --save-dev @types/react-dom babel-plugin-module-resolver babel-plugin-react-native-web customize-cra react-app-rewired
```

For iOS development on Mac:

```bash
cd ios && pod install && cd ..
```

### Step 3: Running the application

#### Web version

The easiest way to demo the application is through the web version:

```bash
npm run web
```

This will start a development server and open the application in your default browser at http://localhost:3000.

#### Android version

Make sure you have an Android emulator running or a physical device connected:

```bash
npm run android
```

#### iOS version (Mac only)

Make sure you have an iOS simulator running or a physical device connected:

```bash
npm run ios
```

## Troubleshooting

### PowerShell Execution Policy

If you encounter the error "cannot be loaded because running scripts is disabled on this system":

1. Open PowerShell as Administrator
2. Run: `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
3. Try running the npm command again

### Web Build Issues

If you encounter issues with the web build:

1. Delete the `node_modules` folder
2. Delete `package-lock.json` or `yarn.lock`
3. Run `npm install` or `yarn install`
4. Try running `npm run web` again

### Camera Access on Web

For the web version, make sure:
1. You're using HTTPS or localhost (camera access requires secure context)
2. You grant camera permissions when prompted by the browser
3. Your browser supports the getUserMedia API

## Demonstration Tips

### Web Demonstration

1. Open the web version (most accessible for demos)
2. Show the home screen with the feature description
3. Click "Iniciar Leitura de QR Code" to start the simulated scanner
4. After 5 seconds, it will automatically simulate finding a product
5. Another 5 seconds later, it will display the product info and read it aloud
6. Click "Repetir Descrição" to demonstrate the replay functionality

### Accessibility Demonstration

1. Enable screen reader (VoiceOver on iOS, TalkBack on Android, or browser screen reader)
2. Navigate through the app
3. Show how all elements have proper accessibility labels
4. Demonstrate how the product information is automatically read aloud

## Project Structure Overview

- `app/`: Main application code
- `public/`: Web assets
- `src/`: Web-specific entry point
- Configuration files at the root level

## Next Steps after Demo

After successful demonstration, potential next steps include:
1. Gathering user feedback
2. Planning integration with real API endpoints
3. Implementing actual QR code scanning
4. Adding more product information and features 