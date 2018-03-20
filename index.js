const express = require('express')
const bodyParser = require('body-parser')
const request = require('request')
const mongoService = require('./server/mongoService')
const Content = mongoService.Content
const htmlparser = require("htmlparser");

/*****************************************************
 *  Express
 */

var app = express()
app.use(bodyParser.json())

app.set('port', 3000)
app.listen(app.get('port'), function() {
  console.log('Express server listening on port ' + app.get('port'))
})
