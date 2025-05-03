# Continente QR Code Voice Reader - Prototype

This is a prototype implementation of the QR Code Voice Reader accessibility feature for Continente's mobile app. The prototype demonstrates how the app can scan QR codes and read product information aloud, enhancing accessibility for visually impaired users.

## Features

- Simulated QR code scanning
- Automatic retrieval of product information (mocked data)
- Text-to-speech product description in Portuguese
- Accessible UI with VoiceOver/TalkBack support
- Replay button for repeating the audio description

## Prerequisites

- Node.js (v16 or newer)
- npm or yarn
- React Native development environment
  - For Android: Android Studio and Android SDK
  - For iOS: Xcode (Mac only)
- Physical device or emulator with camera support

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/continente/qr-code-reader-prototype.git
   cd qr-code-reader-prototype
   ```

2. Install dependencies:
   ```
   npm install
   # or
   yarn install
   ```

3. Install iOS dependencies (Mac only):
   ```
   cd ios && pod install && cd ..
   ```

## Running the App

### Android

```
npm run android
# or
yarn android
```

### iOS (Mac only)

```
npm run ios
# or
yarn ios
```

## Project Structure

```
/continente-qr-reader/
├── app/                        # Main application folder
│   ├── components/             # React components
│   ├── screens/                # App screens
│   ├── services/               # Helper services
│   ├── assets/                 # Static assets
│   ├── styles/                 # Styling
│   └── App.js                  # Main App component
├── package.json                # Dependencies
├── babel.config.js             # Babel configuration
└── app.json                    # App configuration
```

## Usage Flow

1. Launch the app
2. On the home screen, press "Iniciar Leitura de QR Code"
3. The camera will appear (simulated in this prototype)
4. After 5 seconds, a loading screen will appear with "A obter informações do produto..."
5. After another 5 seconds, product information will display and be read aloud
6. Press "Repetir Descrição" to hear the information again

## Accessibility

This app has been designed with accessibility in mind:
- All UI elements have proper accessibility labels
- Text-to-speech reads product information automatically
- High contrast design for better visibility
- Support for screen readers (VoiceOver on iOS, TalkBack on Android)

## Notes for Production Version

For a production version, the following would need to be implemented:
- Real QR code scanning functionality
- API integration for product data
- Error handling for failed scans or network issues
- Performance optimizations
- Additional testing on various devices

## License

Proprietary - Continente 