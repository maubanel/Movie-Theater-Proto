attribute vec3 in_Position;                  // (x,y,z)

uniform vec2 u_pos;
uniform float u_z;

void main()
{
	vec2 pos = in_Position.xy;
	if(in_Position.z > 0.){
		vec2 dis = pos - u_pos;
		pos += dis/sqrt(dis.x*dis.x + dis.y*dis.y) * 100000.;
	}
    vec4 object_space_pos = vec4( pos.x, pos.y, u_z-0.5, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
