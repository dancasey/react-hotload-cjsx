var join = require('path').join;

module.exports = {
  debug: true,
  devtool: 'eval',
  entry: './app/index',
  module: {
    loaders: [
      {
        test: /\.cjsx$/,
        loaders: ['coffee', 'cjsx']
      }, {
        test: /\.coffee$/,
        loader: 'coffee'
      }
    ]
  },
  output: {
    path: join(__dirname, 'public'),
    filename: 'bundle.js',
    sourceMapFilename: '[file].map'
  },
  resolve: {
    extensions: ['', '.js', '.cjsx', '.coffee']
  },
  resolveLoader: {
    modulesDirectories: ['node_modules']
  }
};
