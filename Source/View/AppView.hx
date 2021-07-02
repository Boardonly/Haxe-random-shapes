package view;

import openfl.Lib;
import openfl.events.Event;
import openfl.display.Sprite;

class AppView extends Sprite {
	var screenWidth:Int = Lib.current.stage.stageWidth;
	var screenHeight:Int = Lib.current.stage.stageHeight;

	public var header:Header;
	public var navBar:NavBar;

	public var canvas:Canvas;

	public var navBtnGravityPlus:Button;
	public var navBtnGravityMinus:Button;
	public var navBtnShPerSecPlus:Button;
	public var navBtnShPerSecMinus:Button;

	public function new() {
		super();
		addEventListener(Event.ENTER_FRAME, frame);

		canvas = new Canvas(screenWidth, screenHeight - 125);
		canvas.y = 50;
		addChild(canvas);

		header = new Header(screenWidth, 50);
		header.y = 0;
		addChild(header);

		navBar = new NavBar(screenWidth, 75);
		navBar.y = screenHeight - 75;
		addChild(navBar);

		navBtnGravityPlus = navBar.btnGravityPlus;
		navBtnGravityMinus = navBar.btnGravityMinus;
		navBtnShPerSecPlus = navBar.btnShPerSecPlus;
		navBtnShPerSecMinus = navBar.btnShPerSecMinus;
	}

	public function frame(_) {
		dispatchEvent(new Event("ONFRAME"));
	}

	public function addToCanvas(obj) {
		canvas.addObject(obj);
	}

	public function removeFromCanvas(obj) {
		canvas.removeObject(obj);
	}

	public function updateHeader(agrCount, surfaceArea) {
		header.update(agrCount, surfaceArea);
	}
}
