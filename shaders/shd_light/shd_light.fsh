varying vec2 pos; //current pixel position

uniform vec2 u_pos; //light source position

const float zz = 300.; //larger zz, larger light

void main()
{
	vec2 dis = pos - u_pos;
	float str = 1./(sqrt(dis.x*dis.x + dis.y*dis.y +  zz*zz) - zz);
    gl_FragColor = vec4(vec3(str),1.);
}
