/// @description Insert description here
// You can write your code in this editor
global.isLive = false;
show_debug_message("Game Over created");
goMessage = "";
if(global.didWin){
	goMessage = "You Win!";
}
else{
	goMessage = "Game Over!";
}

goMessage += @"
Press R to restart!";