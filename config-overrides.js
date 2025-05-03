const path = require('path');
const { override, addBabelPlugins, addWebpackAlias, babelInclude } = require('customize-cra');

module.exports = override(
  ...addBabelPlugins(
    'react-native-web',
    ['module-resolver', {
      alias: {
        '^react-native$': 'react-native-web',
        'app/(.+)': './app/\\1'
      }
    }],
    '@babel/plugin-syntax-jsx',
    '@babel/plugin-proposal-class-properties'
  ),
  babelInclude([
    path.resolve(__dirname, 'src'),
    path.resolve(__dirname, 'node_modules/react-native-vector-icons')
  ]),
  addWebpackAlias({
    'react-native$': 'react-native-web',
    'react-native-camera$': path.resolve(__dirname, 'src/mocks/react-native-camera.js'),
    'react-native-tts$': path.resolve(__dirname, 'app/services/webTts.js'),
    'app': path.resolve(__dirname, 'app/'),
    'react-native-vector-icons': 'react-native-vector-icons/dist/lib'
  })
); 