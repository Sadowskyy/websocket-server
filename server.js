const WebSocketServer = require('ws').Server
wss = new WebSocketServer({ port: 8080 });

wss.on('connection', function connection(websocket)
{
    console.log('Client connected...')
});

var static = require('node-static');
var fileServer = new static.Server('/root');

require('http').createServer(function (request, response)
{
    request.addListener('end', function ()
    {
        fileServer.serve(request, response);
    }).resume();
}).listen(80);
