package view; // view

import openfl.display.Sprite;

class Canvas extends Sprite {
	public function new(width:Float, height:Float) {
		super();
		graphics.beginFill(0xcbe8f5);
		graphics.lineStyle(1, 0);
		graphics.drawRect(0, 0, width, height);
	}

	public function addObject(obj:Sprite) {
		addChildAt(obj, 0);
	}

	public function removeObject(obj:Sprite) {
		removeChild(obj);
	}
}
