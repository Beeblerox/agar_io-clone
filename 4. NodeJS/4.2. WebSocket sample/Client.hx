// Sending and receiving text data
import Ws;
class Client {
    static function main():Void {
        var ws = new WebSocket('ws://127.0.0.1:8888'); //127.0.0.1 is the localhost ip address, 8888 is the port we specified in Server.hx
        ws.on('open', function open() {
            ws.send('something');
        });

        ws.on('message', function incoming(data) {
            trace(data);
        });
    }
}