// Server example
import Ws;
class Server {
    static function main():Void {
        var wss = new WebSocketServer({port: 8888});
        wss.on("connection", function(ws){
            ws.on('message', function incoming(message) {
                trace('received: ' + message);
            });

            ws.send('something');
        });
    }
}