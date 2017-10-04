package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/level11.oel", "assets/data/level11.oel");
			type.set ("assets/data/level11.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/map0.oel", "assets/data/map0.oel");
			type.set ("assets/data/map0.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/map0.oep", "assets/data/map0.oep");
			type.set ("assets/data/map0.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/superMario.oep", "assets/data/superMario.oep");
			type.set ("assets/data/superMario.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Backgrounds/blue_desert.png", "assets/images/Backgrounds/blue_desert.png");
			type.set ("assets/images/Backgrounds/blue_desert.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/blue_grass.png", "assets/images/Backgrounds/blue_grass.png");
			type.set ("assets/images/Backgrounds/blue_grass.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/blue_land.png", "assets/images/Backgrounds/blue_land.png");
			type.set ("assets/images/Backgrounds/blue_land.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/blue_shroom.png", "assets/images/Backgrounds/blue_shroom.png");
			type.set ("assets/images/Backgrounds/blue_shroom.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/colored_desert.png", "assets/images/Backgrounds/colored_desert.png");
			type.set ("assets/images/Backgrounds/colored_desert.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/colored_grass.png", "assets/images/Backgrounds/colored_grass.png");
			type.set ("assets/images/Backgrounds/colored_grass.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/colored_land.png", "assets/images/Backgrounds/colored_land.png");
			type.set ("assets/images/Backgrounds/colored_land.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Backgrounds/colored_shroom.png", "assets/images/Backgrounds/colored_shroom.png");
			type.set ("assets/images/Backgrounds/colored_shroom.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_aliens.png", "assets/images/Spritesheets/spritesheet_aliens.png");
			type.set ("assets/images/Spritesheets/spritesheet_aliens.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_complete.png", "assets/images/Spritesheets/spritesheet_complete.png");
			type.set ("assets/images/Spritesheets/spritesheet_complete.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_complete.xml", "assets/images/Spritesheets/spritesheet_complete.xml");
			type.set ("assets/images/Spritesheets/spritesheet_complete.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_enemies.png", "assets/images/Spritesheets/spritesheet_enemies.png");
			type.set ("assets/images/Spritesheets/spritesheet_enemies.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_enemies.xml", "assets/images/Spritesheets/spritesheet_enemies.xml");
			type.set ("assets/images/Spritesheets/spritesheet_enemies.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_ground.png", "assets/images/Spritesheets/spritesheet_ground.png");
			type.set ("assets/images/Spritesheets/spritesheet_ground.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_ground.xml", "assets/images/Spritesheets/spritesheet_ground.xml");
			type.set ("assets/images/Spritesheets/spritesheet_ground.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_hud.png", "assets/images/Spritesheets/spritesheet_hud.png");
			type.set ("assets/images/Spritesheets/spritesheet_hud.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_hud.xml", "assets/images/Spritesheets/spritesheet_hud.xml");
			type.set ("assets/images/Spritesheets/spritesheet_hud.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_items.png", "assets/images/Spritesheets/spritesheet_items.png");
			type.set ("assets/images/Spritesheets/spritesheet_items.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_items.xml", "assets/images/Spritesheets/spritesheet_items.xml");
			type.set ("assets/images/Spritesheets/spritesheet_items.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_players.png", "assets/images/Spritesheets/spritesheet_players.png");
			type.set ("assets/images/Spritesheets/spritesheet_players.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_players.xml", "assets/images/Spritesheets/spritesheet_players.xml");
			type.set ("assets/images/Spritesheets/spritesheet_players.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_tiles.png", "assets/images/Spritesheets/spritesheet_tiles.png");
			type.set ("assets/images/Spritesheets/spritesheet_tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Spritesheets/spritesheet_tiles.xml", "assets/images/Spritesheets/spritesheet_tiles.xml");
			type.set ("assets/images/Spritesheets/spritesheet_tiles.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/images/logo/default.png", "flixel/images/logo/default.png");
			type.set ("flixel/images/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
