/// @description Insert description here
// You can write your code in this editor
if(y< other.y && global.isLive){ //making sure that the player is lower than the chair
	global.isLive = false; //indicates game is over
	global.didWin = true; //inidcate we won
	instance_create_layer(x,y,"GameOver",obj_game_over); //spawn game over sequence
}