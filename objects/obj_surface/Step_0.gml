x = obj_movie_player.x;
y = obj_movie_player.y;

surface_set_target(surface);
draw_clear_alpha(c_black,0.9); //this makes things dark
gpu_set_blendmode(bm_subtract);

draw_sprite_ext(spr_light,1,obj_movie_player.x,obj_movie_player.y,1,1,obj_movie_player.image_angle,c_white,1);
gpu_set_blendmode(bm_normal);
surface_reset_target();
