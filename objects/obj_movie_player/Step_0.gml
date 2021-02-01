var bbox_side;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

hsp = (key_right - key_left) * 4;
vsp = (key_down - key_up) * 4;

// Horizontal Collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0 || (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0))

{
	if (hsp > 0) x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x); 
	hsp = 0;
}

x += hsp;


// Vertical Collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0 || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0))

{
	if (vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y); 
	vsp = 0;
}


y += vsp;

if (key_left)
{
	image_angle = 180;	
}

if (key_right)
{
	image_angle = 0;	
}

if (key_up)
{
	image_angle = 90;	
}

if (key_down)
{
	image_angle = 270;	
}

if (key_left && key_up)
{
	image_angle = 135;	
}

if (key_left && key_down)
{
	image_angle = 225;	
}

if (key_right &&  key_up)
{
	image_angle = 45;	
}

if (key_right && key_down)
{
	image_angle = 325;	
}