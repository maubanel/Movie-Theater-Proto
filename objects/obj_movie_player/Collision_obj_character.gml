/// @description Insert description here
// You can write your code in this editor

// Get angle between player and character
var new_direction = point_direction(x, y, other.x, other.y);

// reverses direction
new_direction -= 180;

x += lengthdir_x(192, new_direction);
y += lengthdir_x(192, new_direction);


show_debug_message(new_direction);