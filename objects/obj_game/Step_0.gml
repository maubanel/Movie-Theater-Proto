/// @description Insert description here
// You can write your code in this editor

if(global.isLive){ //game will continue as long as its live
	if(floor(game_time/60) <= 0){
		instance_create_layer(x,y,"GameOver",obj_game_over);

	}

	if(floor(game_time/60) > 0) game_time--;
}
else{
	show_debug_message("Game Object destroyed");
	instance_destroy();
}