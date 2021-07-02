package view;

import openfl.Lib;
import openfl.display.Sprite;

class NavBar extends Sprite {
	public var screenWidth:Int = Lib.current.stage.stageWidth;
	public var fieldForGravity:Field;
	public var fieldForShCount:Field;
	public var btnGravityMinus:Button;
	public var btnGravityPlus:Button;
	public var btnShPerSecMinus:Button;
	public var btnShPerSecPlus:Button;

	public function new(width:Float, height:Float) {
		super();

		graphics.beginFill(0xFFFFFF);
		graphics.lineStyle(1, 0);
		graphics.drawRect(0, 0, width, height);
		fieldForGravity = new Field(235, 50, 0x800000, "GRAVITY VALUE: 3");
		addChild(fieldForGravity);

		fieldForShCount = new Field(20, 50, 0x800000, "SHAPES PER SECOND: 1");
		addChild(fieldForShCount);

		btnGravityMinus = new Button(250, 5, "assets/button_minus_blue.png");
		addChild(btnGravityMinus);

		btnGravityPlus = new Button(300, 5, "assets/button_plus_blue.png");
		addChild(btnGravityPlus);

		btnShPerSecMinus = new Button(55, 5, "assets/button_minus_red.png");
		addChild(btnShPerSecMinus);

		btnShPerSecPlus = new Button(105, 5, "assets/button_plus_red.png");
		addChild(btnShPerSecPlus);
	}
}
