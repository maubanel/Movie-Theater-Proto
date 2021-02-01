/// @description Insert description here
// You can write your code in this editor
if ((direction >= 315 && direction <=360) || (direction >= 0 && direction < 45))
{
	image_angle = 0;	
}

else if (direction >= 45 && direction < 135)
{
	image_angle = 90;	
}

else if (direction >= 135 && direction < 225)

{
	image_angle = 180;	
}

else if (direction >= 225 && direction < 315)
{
	image_angle = 270;	
}
