/// @description Insert description here
// You can write your code in this editor
var xspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * player_speed;
var yspeed = (keyboard_check(vk_down) - keyboard_check(vk_up)) * player_speed;


x = x + xspeed;
y = y + yspeed;

if (xspeed > 0)
{

	image_xscale = 1;

}

if (xspeed < 0)
{
	image_xscale = -1;

}

if (yspeed > 0)
{
	image_angle = 90;	
}

else if (yspeed < 0)
{
	image_angle = 270;	
}
else
{
	image_angle = 0;	
}


show_debug_message(yspeed);

if (keyboard_check(vk_escape))
{
	game_end()
}
//1 - 0 = 1; 5
//0 - 1 = -1; -5
