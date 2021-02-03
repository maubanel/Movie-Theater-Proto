// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChooseTarget()
{
	var x_pos = -1;
	var y_pos = choose(64, 256, 448, 640, 832, 1024, 1216);
	
	switch (y_pos)
	{
		case 64:
		x_pos = irandom_range(1, 30);
		break;
		
		case 256:
		x_pos = irandom_range(2, 29);
		break;
		
		case 448:
		x_pos = irandom_range(3, 28);
		break;
		
		case 640:
		case 832:
		x_pos = irandom_range(4, 27);
		break;
		
		case 1024:
		case 1216:
		x_pos = irandom_range(5, 26);
		break;
		
	}
	x_pos *= 64;
	
	instance_create_layer(x_pos, y_pos, "TargetChair", obj_target_seat);

}