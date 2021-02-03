
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');


module.exports = {
    entry: './main.js',
    output: {
        path: path.join(__dirname, '/bundle'),
        filename: 'index_bundle.js'
    },
    devServer: {
        host: "0.0.0.0",
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
                    presets: ['es2017', 'react']
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
