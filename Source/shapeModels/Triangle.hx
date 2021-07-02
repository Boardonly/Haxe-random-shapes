package shapeModels;

import openfl.display.Shape;
import openfl.display.Sprite;

class Triangle extends Sprite {
	public var area:Float;
	public var id:Float;
	public function new(x:Float, y:Float, sideSize:Int, color:Int) {
		super();
		area = Math.round(sideSize/2 * sideSize);

		var triangle = new Shape();

		triangle.graphics.beginFill(color);
		triangle.graphics.moveTo(x - sideSize, y + sideSize);
		triangle.graphics.lineTo(x, y - sideSize);
		triangle.graphics.lineTo(x + sideSize, y + sideSize);
		triangle.graphics.lineTo(x - sideSize, y + sideSize);

		this.addChild(triangle);
	}

}
