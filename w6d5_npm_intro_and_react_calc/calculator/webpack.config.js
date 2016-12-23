module.exports = {
  context: __dirname,
  entry: "./app.jsx",
  output: {
    path: "./" ,
    filename: 'bundle.js'
  },
  devtool: "source-maps",
  resolve: { extensions: ['', '.js', 'jsx']},
  module: {
    loaders: [
      {
        test: [/\.jsx?$/, /\.js?$/],
        exclude: /node_modules/,
        loader: 'babel',
        query: {
          presets: ['react', 'es2015']
        }
      }
    ]
  }
};
