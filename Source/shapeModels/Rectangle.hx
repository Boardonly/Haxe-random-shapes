package shapeModels;

import openfl.display.Sprite;

class Rectangle extends Sprite {
	public var area:Float;
	public var id:Float;

	public function new(x:Float, y:Float, sideSize:Int, color:Int) {
		super();
		area = Math.round(sideSize * sideSize);

		graphics.beginFill(color);
		graphics.lineStyle(1, 0x000000);
		graphics.drawRect(x - sideSize, y - (sideSize / 2), (sideSize * 2), sideSize);
		area = (sideSize * sideSize);
		graphics.endFill();
	}
}
