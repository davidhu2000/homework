module.exports = {
  entry: "./index.jsx",
  output: {
    filename: './bundle.js'
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['', '.js', 'jsx']
  },
  module: {
    loaders: [
      { test: [/\.js$/, /\.jsx$/],
        exclude: /node_modules/,
        loader: 'babel',
      }
    ]
  }
};
