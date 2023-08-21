#version 410

layout(location = 0) in vec4 v_pos;
layout(location = 1) in vec4 v_color;
layout(location = 2) in vec2 v_uv;

layout(location = 0) out vec4 color;
layout(location = 1) out vec2 uv;
layout(location = 2) out float use_tex;
layout(location = 3) out float use_mask;

uniform mat4 view_proj;

void main() {
    uv = v_uv;
    color = v_color;
    use_tex = 0.0;
    use_mask = 0.0;

    int flags = int(v_pos.w);

    if (flags == 1) {
        use_tex = 1.0;
    } else if (flags == 2) {
        use_mask = 1.0;
    } else if (flags == 3) {
        use_tex = 1.0;
        use_mask = 1.0;
    }

    gl_Position = vec4(v_pos.xyz, 1.0) * view_proj;
}