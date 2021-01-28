
x = obj_movie_player.x;
y = obj_movie_player.y;
image_angle = obj_movie_player.image_angle;


surface_set_target(surface);
draw_clear_alpha(c_black,0.5); //this makes things dark
gpu_set_blendmode(bm_subtract);

spr_light.image_angle = obj_movie_player.image_angle;


draw_sprite(spr_light,1,obj_movie_player.x,obj_movie_player.y); //this makes the sprite
gpu_set_blendmode(bm_normal);
surface_reset_target();
