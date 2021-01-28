varying vec2 pos;

uniform vec2 u_pos; //position of the light source

const float zz = 20.;

void main()
{
	vec2 dis = pos - u_pos;
	float str = .5/(sqrt(dis.x*dis.x + dis.y*dis.y +  zz*zz) - zz); //strength of light apparently
    gl_FragColor = vec4(vec3(str),1.);
}
