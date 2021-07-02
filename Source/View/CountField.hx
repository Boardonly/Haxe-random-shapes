package view;

import openfl.text.TextField;
import openfl.text.TextFormat;

class CountField extends TextField {
	private var times:Array<Float>;
	private var memPeak:Float = 0;

	public function new(inX:Float = 10.0, inY:Float = 10.0, inCol:Int = 0x000000) {
		super();
		this.x = inX;
		this.y = inY;
		selectable = false;
		defaultTextFormat = new TextFormat("_sans", 18, inCol);
		text = "Shapes now: ";
		width = 450;
		height = 70;
	}

	public function updateCountfield(agrCount:Int = 0, surfaceArea:Float = 0) {
		text = "Shapes now: " + agrCount + "    Shapes surface area: " + surfaceArea + "px";
	}
}
