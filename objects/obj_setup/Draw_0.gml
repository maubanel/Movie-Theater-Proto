var _u_pos = u_pos
var _vb = vb
with(obj_light){
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos,x,y);
	draw_rectangle(0,0,320,180,0);
	shader_set(shd_shadow);
	vertex_submit(_vb,pr_trianglelist,-1);
}
shader_reset();