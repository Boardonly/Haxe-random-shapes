package model;

import model.shapeModels.Circle;
import model.shapeModels.Rectangle;
import model.shapeModels.Elipse;
import model.shapeModels.Triangle;
import model.shapeModels.Pentagon;
import model.shapeModels.Hexagon;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;

class AppModel extends Sprite {
	public var shapeType:Array<String> = ["circle", "rect", "elipse", "triangle", "pentagon", "hexagon"];

	public var screenWidth:Int = Lib.current.stage.stageWidth;
	public var screenHeight:Int = Lib.current.stage.stageHeight;
	public var sideSize:Int = 50;
	public var gravity:Float = 3;
	public var shapeCount:Int;
	public var surfaceArea:Float;
	public var counter:Int = 0;
	public var FPS:Int = 60;
	public var shPerSec:Int = 1;

	public var shapes:Array<Sprite> = [];

	public var circle:Circle;
	public var rectangle:Rectangle;
	public var elipse:Elipse;
	public var triangle:Triangle;
	public var pentagon:Pentagon;
	public var hexagon:Hexagon;

	public function new() {
		super();
	}

	public function getGravity() {
		return gravity;
	}

	public function decraseGravity() {
		if (gravity > 0) {
			gravity -= 1;
		}
	}

	public function incraseGravity() {
		gravity += 1;
	}

	public function decraseShCount() {
		if (shPerSec > 1) {
			shPerSec -= 1;
		}
	}

	public function incraseShCount() {
		if (shPerSec <= FPS) {
			shPerSec += 1;
		}
	}


	public function getShPerSec() {
		return shPerSec;
	}

	public function addShape(obj:Sprite) {
		shapes.push(obj);
	}

	public function removeShape(obj:Sprite) {
		shapes = shapes.filter(shape -> shape != obj);
	}

	public function updateShape() {
		var i:Int = 0;
		var ocupied:Float = 0;
		while (i < shapes.length) {
			var shp = shapes[i];
			shp.y += gravity;
			ocupied += Reflect.getProperty(shp, "area");
			if (shp.y - sideSize > screenHeight) {
				shapes.splice(i, 1);
				ocupied -= Reflect.getProperty(shp, "area");
			} else {
				i += 1;
			}
			surfaceArea = ocupied;
		}
	}
}
