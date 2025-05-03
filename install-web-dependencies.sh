#!/bin/bash
echo "Installing dependencies for Continente QR Code Reader Web..."

npm install --save react-dom react-native-web react-native-web-camera react-scripts
npm install --save-dev @types/react-dom babel-plugin-module-resolver babel-plugin-react-native-web customize-cra react-app-rewired

echo "Dependencies installed successfully!"
echo "To run the web version, use: npm run web" 