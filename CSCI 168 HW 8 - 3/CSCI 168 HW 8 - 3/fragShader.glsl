#version 430

out vec4 color;

uniform mat4 mv_matrix;
uniform mat4 proj_matrix;

void main(void){
  if(gl_FragCoord.x < 1 & gl_FragCoord.y < 1) color = vec4(1.0, 0.0, 0.0, 1.0);
  else if(gl_FragCoord.x < 1 & gl_FragCoord.y > 1) color = vec4(0.0, 0.0, 1.0, 1.0);
  else if(gl_FragCoord.x > 1 & gl_FragCoord.y < 1) color = vec4(0.0, 1.0, 1.0, 0.0);
  else if(gl_FragCoord.x > 1 & gl_FragCoord.y > 1) color = vec4(1.0, 1.0, 0.0, .0);
}
