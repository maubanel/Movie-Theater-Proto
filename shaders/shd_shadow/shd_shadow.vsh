//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)


void main()
{
	vec2 pos = in_Position.xy;
	if(in_Position.z > 0.){
		pos += 64.;
	}
    vec4 object_space_pos = vec4( pos.x, pos.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
