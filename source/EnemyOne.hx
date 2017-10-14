package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.math.FlxPoint;
import flixel.FlxObject;


class EnemyOne extends FlxSprite 
{

	var speed:Int = 200;
	var distance_moved:Int = 0;
	var swaped:Bool = false;
	public function new(x:Int, y:Int) 
	{
		super(x,y);
		this.loadGraphic("assets/images/Spritesheets/spritesheet_enemies.png", true, 128, 128);
		this.acceleration.y = 1000;
		
	
	}

	override public function update(elapsed:Float):Void
	{
		move(elapsed);
		super.update(elapsed);
		
	}


	private function move(elapsed):Void {

		if (distance_moved < 100 && !swaped) {
			velocity.x = this.speed;
			distance_moved += 1;
		} else {
			swaped = true;
			velocity.x = -this.speed;
			distance_moved -= 1;

			if(distance_moved == 0) {
				swaped = false;
			}
		}
	
	}



}