package view;


import openfl.display.Bitmap;
import openfl.Assets;
import openfl.display.Sprite;

class Button extends Sprite {
	public var bmp:Bitmap;

	public function new(x:Int, y:Int, path:String) {
		super();
		bmp = new Bitmap(Assets.getBitmapData(path));
		bmp.x = x;
		bmp.y = y;
		addChild(bmp);
	}
}
