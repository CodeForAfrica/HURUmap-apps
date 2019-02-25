const path = require("path")
const webpack = require('webpack')

module.exports = {
  entry: path.join(__dirname, '/frontend/src/index'), // entry point of our app. assets/js/index.js should require other js modules and dependencies it needs

  output: {
      path: path.resolve('./static/bundles/'),
      filename: "main.js",
  },
  module: {
    rules: [
      { test: /\.jsx?$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: 'babel-loader'
          }
        }, // to transform JSX into JS
    ],
  },

  resolve: {
    modules: ['node_modules', 'bower_components'],
    extensions: ['*','.js', '.jsx']
  },
}
