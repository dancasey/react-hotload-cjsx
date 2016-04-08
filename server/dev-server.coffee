{join} = require 'path'
webpack = require 'webpack'
WDS = require 'webpack-dev-server'

HOST = '0.0.0.0'
PORT = 8080


# instead of a another webpack.config.js file, just put config here for dev:
config =
  debug: true
  devtool: 'eval'
  entry: [
    "webpack-dev-server/client?http://#{HOST}:#{PORT}"
    'webpack/hot/dev-server'
    './app/index'
  ]
  module:
    loaders: [
      # {test: /\.css$/, loaders: ['style', 'css']}
      {test: /\.cjsx$/, loaders: ['react-hot', 'coffee', 'cjsx']}
      {test: /\.coffee$/, loader: 'coffee'}
    ]
  output:
    path: join(__dirname, 'dist')
    filename: 'bundle.js'
    sourceMapFilename: '[file].map'
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ]
  resolve:
    extensions: ['', '.js', '.cjsx', '.coffee']
  resolveLoader:
    modulesDirectories: ['node_modules']


server = new WDS webpack(config),
  contentBase: 'public'
  hot: true
  historyApiFallback: true
  stats:
    colors: true
  watchOptions:
    aggregateTimeout: 100
    poll: 300


server.listen PORT, HOST, (err, res) ->
  return console.log err if err
  console.log "WDS listening on #{HOST}:#{PORT}"
