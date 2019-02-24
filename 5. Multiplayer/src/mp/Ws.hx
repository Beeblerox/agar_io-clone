package mp;

import js.node.events.EventEmitter;

@:jsRequire('ws')
extern class WebSocket extends EventEmitter<WebSocket> {
	function new(url:String, ?config:Dynamic);
	
	function send(data:String):Void;
}

@:jsRequire('ws','Server')
extern class WebSocketServer extends EventEmitter<WebSocketServer> {
	function new(?config:Dynamic);
}