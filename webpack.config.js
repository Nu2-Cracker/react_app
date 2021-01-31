// const path = require('path');
const path = require('path');
// const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');

// module.exports = {
module.exports = {
    //    entry: './main.js',
    entry: './main.js',
//    output: {
    output: {
        path: path.join(__dirname, '/bundle'),
        filename: 'index_bundle.js'
    },
//       path: path.join(__dirname, '/bundle'),
//       filename: 'index_bundle.js'
//    },
//    devServer: {
    devServer: {
        inline: true,
        port: 8001
    },

    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /node_modules/,
                loader: 'babel-loader',
                query: {
                    presets: ['es2015', 'react']
                }
            }
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: './index.html'
        })
    ]
}
