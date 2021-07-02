package shapeModels;

import openfl.display.Shape;
import openfl.display.Sprite;

class Pentagon extends Sprite {
	public var area:Float;
	public var id:Float;
	public function new(x:Float, y:Float, sideSize:Int, color:Int) {
		super();
		area = Math.round(3.14 * sideSize);

		var numberOfSides = 5;
		var i = 1;
		var pentagon = new Shape();

		pentagon.graphics.beginFill(color);
		pentagon.graphics.moveTo(x + sideSize * Math.cos(0), y + sideSize * Math.sin(0));

		for (i in 0...numberOfSides) {
			pentagon.graphics.lineTo(x + sideSize * Math.cos(i * 2 * Math.PI / numberOfSides), y + sideSize * Math.sin(i * 2 * Math.PI / numberOfSides));
		};
		addChild(pentagon);
	}

}
