package view;

import openfl.text.TextField;
import openfl.text.TextFormat;

class Field extends TextField {
	public function new(inX:Float = 10.0, inY:Float = 10.0, inCol:Int = 0x000000, text:String) {
		super();
		this.x = inX;
		this.y = inY;
		selectable = false;
		defaultTextFormat = new TextFormat("_sans", 14, inCol);
		this.text = text;
		width = 450;
		height = 70;
	}
	
}
