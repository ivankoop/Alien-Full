package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.math.FlxPoint;
import flixel.FlxObject;

class EnemyOne extends FlxSprite 
{

	//var jumpHeight:Int = -600;
	var speed:Int = 200;
	var distance_moved:Int = 0;
	var swaped:Bool = false;
	public function new() 
	{
		super();
		this.loadGraphic("assets/images/Spritesheets/spritesheet_enemies.png", true, 128, 128);
		this.acceleration.y = 1000;

		this.animation.add("move", [16,8], 10, false);

		/*this.loadGraphic("assets/images/Spritesheets/spritesheet_aliens.png", true, 126, 172);	
		
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		
		this.acceleration.y = this.gravity;
		this.drag.x = 11600;
		this.facing = FlxObject.RIGHT;
		
		this.animation.add("walk", [1, 2], 15, false);
		this.animation.add("idle", [0], 15, false);
		this.animation.add("jump", [3], 15, false);
		this.animation.add("duck", [4], 15, false);*/
	}

	override public function update(elapsed:Float):Void
	{
		//movement(elapsed);
		move(elapsed);
		super.update(elapsed);
		
	}


	public function move(elapsed):Void {
		
		animation.play("move");

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
		trace(distance_moved);


		//trace(elapsed);
	}

}