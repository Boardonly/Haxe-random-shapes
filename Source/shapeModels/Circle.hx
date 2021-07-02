package shapeModels;

import openfl.display.Sprite;

class Circle extends Sprite {
	public var area:Float;
	public var id:Float;

	public function new(x:Float, y:Float, sideSize:Int, color:Int) {
		super();
		area = Math.round(3.14 * sideSize);

		graphics.beginFill(color);
		graphics.lineStyle(1, 0x000000);
		graphics.drawCircle(x, y, sideSize);
		graphics.endFill();
	}
}
