const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  entry: ['./src/app.js'],
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'app.bundle.js'
  },
  devtool: 'eval',
  module: {
    rules: [
      {
        test: /\.less$/,
        use: ExtractTextPlugin.extract({
          fallback: "style-loader",
          use: ["css-loader", "less-loader"],
          publicPath: "/dist"
        })
      },
      {
        test: /\.tag$/,
        enforce: "pre",
        exclude: 'node_modules',
        loader: "riotjs-loader",
        query: {
          type: 'none'
        }
      },
      {
        test: /\.js$|\.tag$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel-loader'
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin({
      filename: "styles.css",
      disable: false,
      allChunks: true
    }),
    new HtmlWebpackPlugin({
      title: 'My App',
      minify: {
        collapseWhitespace: true
      },
      hash: true,
      template: './src/index.html'
    }),
    new webpack.ProvidePlugin({
      riot: 'riot'
    }),
    new CopyWebpackPlugin([
      {
        context: 'src/data',
        from: '**/*',
        to: 'data'
      }
    ])
  ],
  devServer: {
    contentBase: path.join(__dirname, "dist"),
    compress: true,
    port: 9000
  }
};