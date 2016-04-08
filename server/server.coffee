{join} = require 'path'
express = require 'express'
app = express()
http = require('http').Server(app)

PORT = 8080

app.use express.static join(__dirname, '..', 'public'), dotfiles: 'ignore'
http.listen PORT, -> console.log "Listening on #{PORT}"
