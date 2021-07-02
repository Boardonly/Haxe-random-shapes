package;

import controller.AppController;
import model.AppModel;
import openfl.display.Sprite;
import view.AppView;

class Main extends Sprite {
	var model:AppModel;
	var view:AppView;
	var controller:AppController;

	public function new() {
		super();
		view = new AppView();
		model = new AppModel();
		controller = new AppController(model, view);
		addChild(view);
		addChild(controller);
		addChild(model);
	}

}
