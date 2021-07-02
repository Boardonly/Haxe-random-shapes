package view;

import openfl.display.Sprite;

class Header extends Sprite {
	public var countField:CountField;

	public function new(width:Float, height:Float) {
		super();
		graphics.beginFill(0xFFFFFF);
		graphics.lineStyle(1, 0);
		graphics.drawRect(0, 0, width, height);
		countField = new CountField(10, 10, 0x800000);
		addChild(countField);
	}

	public function update(agrCount:Int = 0, surfaceArea:Float = 0) {
		
		countField.updateCountfield(agrCount, surfaceArea);
	}
}
