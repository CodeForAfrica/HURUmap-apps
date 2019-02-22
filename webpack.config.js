const path = require("path")
const webpack = require('webpack')
//const BundleTracker = require('webpack-bundle-tracker')
//const HWP = require('html-webpack-plugin');

module.exports = {
  entry: path.join(__dirname, '/dominion_ui/src/index'), // entry point of our app. assets/js/index.js should require other js modules and dependencies it needs

  output: {
      path: path.resolve('./dominion/static/bundles/'),
      filename: "main.js",
  },

  watch: true,

  plugins: [
  //  new BundleTracker({filename: './webpack-stats.json'}),
  //  new HWP({template: path.join(__dirname,'/dominion/templates/homepage.html')})
  ],

  module: {
    rules: [
      { test: /\.jsx?$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader'
          }
        }, // to transform JSX into JS
    ],
  },

  resolve: {
    modules: ['node_modules', 'bower_components'],
    extensions: ['.js', '.jsx']
  },
}
