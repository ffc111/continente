@echo off
echo Installing Babel plugins...

npm install --save-dev @babel/plugin-syntax-jsx @babel/plugin-proposal-class-properties --legacy-peer-deps

echo Babel plugins installed successfully!
pause 