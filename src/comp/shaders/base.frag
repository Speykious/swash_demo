#version 410

out vec4 frag_color;

layout(location = 0) in vec4 color;
layout(location = 1) in vec2 uv;
layout(location = 2) in float use_tex;
layout(location = 3) in float use_mask;

uniform sampler2D tex;
uniform sampler2D mask;

void main() {
  vec4 frag = color;
  if (use_tex > 0.0) {
    frag *= texture(tex, uv);
  }
  if (use_mask > 0.0) {
    frag.a *= texture(mask, uv).a;
  }
  frag_color = frag;
}