u_pos = shader_get_uniform(shd_light,"u_pos");

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();