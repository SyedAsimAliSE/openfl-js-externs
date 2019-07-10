package;

import openfl.display.Sprite;
import src.ExternTests;

/**
 * ...
 * @author Asim
 */
class Main extends Sprite
{

	public function new()
	{
		super();

		var externTest:ExternTests = new ExternTests();
		this.addChild(externTest);
	}

}
