package;

import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmoLoader;
import flixel.tile.FlxTilemap;
import flixel.FlxG;

import flixel.ui.FlxButton;

class PlayState extends FlxState
{
	var currentBackground:Background;
	var currentMap:MapLoader;
	var currentPlayer:Player;
	var enemy:EnemyOne;

	var enemies:Array<EnemyOne>;
 
	override public function create():Void
	{
		super.create();
		//hola george me dejas contribuir?
		currentBackground = new Background("blueGrass");
		this.add(currentBackground);
		
		currentMap = new MapLoader("firstTiles", "firstGround");
		for (maps in currentMap.load())
		{
			add(maps);
		}
		
		enemies = [new EnemyOne(100,650),
				   new EnemyOne(1000,650),
				   new EnemyOne(2000, 650)];
		

		currentPlayer = new Player();
		//trace(enemies);
		for (enemy in enemies) {
			add(enemy);
		}
		add(currentPlayer);
	}

	override public function update(elapsed:Float):Void
	{
		FlxG.camera.follow(currentPlayer, PLATFORMER, 1);
		FlxG.collide(currentPlayer, currentMap.load()[1]);
		FlxG.collide(currentPlayer, currentMap.load()[0]);

		for (enemy in enemies){
			FlxG.collide(enemy, currentMap.load()[1]);
			FlxG.collide(enemy, currentMap.load()[0]);
		}

		super.update(elapsed);
	}
}
