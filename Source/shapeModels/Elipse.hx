package shapeModels;

import openfl.display.Sprite;

class Elipse extends Sprite {
	public var area:Float;
	public var id:Float;

	public function new(x:Float, y:Float, sideSize:Int, color:Int) {
		super();
		area = Math.round(3.14 * sideSize);

		graphics.beginFill(color);
		graphics.lineStyle(1, 0x000000);
		graphics.drawEllipse(x - sideSize, y - (sideSize / 2), (sideSize * 2), sideSize);
		area = (3.14 * sideSize);
		graphics.endFill();
	}
}
