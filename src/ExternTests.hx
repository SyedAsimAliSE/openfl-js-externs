package src;
import openfl.display.Sprite;
import openfl.text.TextField;

/**
 * ...
 * @author Asim
 */
class ExternTests extends Sprite
{

	public function new()
	{
		super();
		var txt:TextField = new TextField();
		txt.width = 200;
		txt.height = 600;
		txt.multiline = true;
		txt.textColor = 0x000000;

		txt.text = "Externs Test in OpenFL \n";
		trace("Externs Test in OpenFL");

		trace ("ExternTests.SOME_PROP: " + MyJSClass.SOME_PROP); // 42 (Answer to The Ultimate Question of Life, the Universe, and Everything)
		trace ("ExternTests.someFunc(): " + MyJSClass.someFunc()); // hello

		txt.appendText("ExternTests.SOME_PROP: "+Std.string(MyJSClass.SOME_PROP)+" \n");
		txt.appendText("ExternTests.someFunc(): "+MyJSClass.someFunc()+" \n");

		var _js = new MyJSClass();
		trace ("myProp: " + _js.myProp); // null
		txt.appendText("myProp: " + Std.string(_js.myProp)+" \n");

		_js.myFunc("Haxe Externs");
		trace ("myProp: " + _js.myProp); // Haxe Externs
		txt.appendText("myProp: " + _js.myProp+" \n");

		this.addChild(txt);

	}

}