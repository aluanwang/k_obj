
uniform sampler2D tex_1;
uniform sampler2D tex_2;

void main (void)
{

 vec2 uv = gl_FragCoord.xy/vec2(512.0,512.0);
 vec4 color_1 = texture2D(tex_1, uv);
 vec4 color_2 = texture2D(tex_2, uv);
 float lum = (color_2.r*0.2126)+ (color_2.g*0.7152)+ (color_2.b*0.0722);

 gl_FragColor = vec4(color_1.rgb,1.0-lum);
 //gl_FragColor = vec4(1.0,1.0,0.0,1.0);
}
