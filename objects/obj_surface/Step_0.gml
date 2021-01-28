x = obj_movie_player.x;
y = obj_movie_player.y;

surface_set_target(surface);
draw_clear_alpha(c_black,0.5); //this makes things dark
gpu_set_blendmode(bm_subtract);

//commented out code is deprecated

//draw_set_blend_mode(bm_subtract);

draw_sprite(spr_light,1,obj_movie_player.x,obj_movie_player.y); //this makes the sprite
gpu_set_blendmode(bm_normal);
//draw_set_blend_mode(bm_normal);
surface_reset_target();
