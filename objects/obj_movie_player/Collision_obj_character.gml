/// @description Insert description here
// You can write your code in this editor
var new_direction = point_direction(x, y, other.x, other.y);

//new_direction -= 100;

//x += lengthdir_x(128, new_direction);
//y += lengthdir_x(128, new_direction);

//direction = point_direction(other.x, other.y, x , y);
//speed = 6
//motion_add(90, 3)

if other.x>x {hdirection=1}else{hdirection=-1}

	if (!instance_place(x + hdirection * 6 * room_speed, y -2 * room_speed, obj_character))
	{
		hspeed = hdirection*6
		vspeed = -2
	}	
alarm[0] = room_speed * 1



if (!collide) {
	var random_sound=(choose(Sound2, Sound3, Sound4));
	audio_play_sound(random_sound, 1, false);
	 collide = true;
	 alarm[0] = room_speed * 1
}
