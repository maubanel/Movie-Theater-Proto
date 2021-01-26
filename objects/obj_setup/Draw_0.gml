var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _vb = vb
with(obj_light){
	gpu_set_blendmode(bm_add);
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos,x,y);
	draw_rectangle(0,0,320,180,0);
	gpu_set_blendmode(bm_normal);
	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos2,x,y);
	vertex_submit(_vb,pr_trianglelist,-1);
}
shader_reset();