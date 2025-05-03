@echo off
echo Installing dependencies for Continente QR Code Reader Web...

rem First ensure correct TypeScript version to avoid conflicts with react-scripts
npm install --save-dev typescript@4.9.5

rem Install dependencies with legacy-peer-deps to avoid issues
npm install --legacy-peer-deps

rem Install additional dev dependencies needed for web
npm install --save-dev @types/react-dom babel-plugin-module-resolver babel-plugin-react-native-web customize-cra react-app-rewired --legacy-peer-deps

echo Dependencies installed successfully!
echo To run the web version, use: npm run web 