import openfl.display.FPS;
import openfl.display.Sprite;
import openfl.geom.Point;
import openfl.events.Event;
import openfl.events.MouseEvent;
import game.*;

using Lambda;

class Main extends Sprite 
{
	var world:World;
	var state:GameState;
	var connected = false;
	var id:Null<Int> = null;
	
	public function new() 
	{
		super();

		world = new World();
		id = world.createPlayer().id;
		
		openfl.Lib.current.addChild(new FPS(10, 10, 0xffffff));
		
		stage.addEventListener(Event.ENTER_FRAME, update);
		stage.addEventListener(MouseEvent.MOUSE_DOWN, onmousedown);
		stage.addEventListener(MouseEvent.MOUSE_MOVE, onmousemove);
		stage.addEventListener(MouseEvent.MOUSE_UP, onmouseup);
	}
	
	var sprites = new Map();

	function update(_) 
	{
		state = world.update();

		// handle move
		var player = state.objects.find(function(o) return o.id == id);
		if (player != null) 
		{
			// move player
			if (touched) 
			{
				var dir = Math.atan2(cursor.y - stage.stageHeight / 2, cursor.x - stage.stageWidth / 2);
				player.speed = 3;
				player.dir = dir;
			} 
			else 
			{
				player.speed = 0;
			}

			// update camera
			var scale = 40 / player.size;
			this.scaleX = scale;
			this.scaleY = scale;
			this.x = stage.stageWidth / 2 - player.x * scale;
			this.y = stage.stageHeight / 2 - player.y * scale;
		}

		for (object in state.objects) 
		{
			if (!sprites.exists(object)) 
			{
				var sprite = new Sprite();
				sprites.set(object, sprite);
				sprite.graphics.beginFill(object.color);
				sprite.graphics.drawCircle(0, 0, 100);
				sprite.graphics.endFill();
				addChild(sprite);
			}

			var sprite = sprites.get(object);
			sprite.scaleX = sprite.scaleY = object.size / 100;
			sprite.x = object.x;
			sprite.y = object.y;
		}
		
		for (object in sprites.keys()) 
		{
			if (!state.objects.exists(function(obj) return obj == object)) 
			{
				removeChild(sprites.get(object));
				sprites.remove(object);
			}
		}
	}

	var touched:Bool = false;
	var cursor = new Point();

	function onmousedown(e:MouseEvent) 
	{
		touched = true;
		cursor.setTo(e.stageX, e.stageY);
	}
	
	function onmousemove(e:MouseEvent) 
	{
		cursor.setTo(e.stageX, e.stageY);
	}

	function onmouseup(_) 
	{
		touched = false;
	}
}
