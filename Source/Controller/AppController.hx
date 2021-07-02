package controller;

import model.shapeModels.Circle;
import model.shapeModels.Rectangle;
import model.shapeModels.Elipse;
import model.shapeModels.Triangle;
import model.shapeModels.Pentagon;
import model.shapeModels.Hexagon;
import view.NavBar;
import view.Header;
import view.Canvas;
import openfl.events.MouseEvent;
import openfl.display.Sprite;

class AppController extends Sprite {
	var canvas:Canvas;
	var navBar:NavBar;
	var header:Header;
	var _model:model.AppModel;
	var _view:view.AppView;

	var randomX:Int;

	public var circle:Circle;
	public var rectangle:Rectangle;
	public var elipse:Elipse;
	public var triangle:Triangle;
	public var pentagon:Pentagon;
	public var hexagon:Hexagon;
	public var counter:Int = 0;

	public function new(model, view) {
		super();
		_model = model;
		_view = view;
		_view.addEventListener("ONFRAME", onFrame);
		_view.canvas.addEventListener(MouseEvent.MOUSE_DOWN, onDown);
		_view.navBtnGravityPlus.addEventListener(MouseEvent.MOUSE_DOWN, incraseGravity);
		_view.navBtnGravityMinus.addEventListener(MouseEvent.MOUSE_DOWN, decraseGravity);
		_view.navBtnShPerSecMinus.addEventListener(MouseEvent.MOUSE_DOWN, decraseShCount);
		_view.navBtnShPerSecPlus.addEventListener(MouseEvent.MOUSE_DOWN, incraseShCount);
	}

	public function decraseGravity(e:MouseEvent) {
		_model.decraseGravity();
		_view.navBar.fieldForGravity.text = "GRAVITY VALUE: " + _model.getGravity();
	}

	public function incraseGravity(e:MouseEvent) {
		_model.incraseGravity();
		_view.navBar.fieldForGravity.text = "GRAVITY VALUE: " + _model.getGravity();
	}

	public function decraseShCount(e:MouseEvent) {
		_model.decraseShCount();
		_view.navBar.fieldForShCount.text = "SHAPES PER SECOND: " + _model.getShPerSec();
	}

	public function incraseShCount(e:MouseEvent) {
		_model.incraseShCount();
		_view.navBar.fieldForShCount.text = "SHAPES PER SECOND: " + _model.getShPerSec();
	}

	public function randomShapeType() {
		return _model.shapeType[randomNumber(_model.shapeType.length)];
	}

	public function randomNumber(a:Float) {
		return Math.round(Math.random() * a);
	}

	public function createRandomShape(randomShapeType, x:Float, y:Float) {
		var color = Std.parseInt('0x' + Math.round(Math.random() * 1000000));
		var sideSize = Math.round(100 - randomNumber(50));
		if (randomShapeType == "circle") {
			circle = new Circle(x, y, sideSize, color);
			_model.addShape(circle);
			_view.addToCanvas(circle);
		} else if (randomShapeType == "rect") {
			rectangle = new Rectangle(x, y, sideSize, color);
			_model.addShape(rectangle);
			_view.addToCanvas(rectangle);
		} else if (randomShapeType == "elipse") {
			elipse = new Elipse(x, y, sideSize, color);
			_model.addShape(elipse);
			_view.addToCanvas(elipse);
		} else if (randomShapeType == "triangle") {
			triangle = new Triangle(x, y, sideSize, color);
			_model.addShape(triangle);
			_view.addToCanvas(triangle);
		} else if (randomShapeType == "pentagon") {
			pentagon = new Pentagon(x, y, sideSize, color);
			_model.addShape(pentagon);
			_view.addToCanvas(pentagon);
		} else if (randomShapeType == "hexagon") {
			hexagon = new Hexagon(x, y, sideSize, color);
			_model.addShape(hexagon);
			_view.addToCanvas(hexagon);
		}
	}

	public function onDown(e:MouseEvent) {
		if (Std.isOfType(e.target, Canvas)) {
			createRandomShape(randomShapeType(), e.localX, e.localY);
			return;
		}
		_view.removeFromCanvas(e.target);
		_model.removeShape(e.target);
	}

	public function onFrame(_) {
		counter++;
		if (counter == Math.round(_model.FPS / _model.shPerSec) || counter > 60) {
			counter = 1;
			randomX = Math.round(_model.screenWidth * Math.random());
			createRandomShape(randomShapeType(), randomX, -50);
		};
		_view.updateHeader(_model.shapes.length, _model.surfaceArea);
		_model.updateShape();
	}
}
