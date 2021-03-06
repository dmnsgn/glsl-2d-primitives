#pragma glslify: PI = require(glsl-constants/PI)
#pragma glslify: TWO_PI = require(glsl-constants/TWO_PI)
#pragma glslify: aastep = require(glsl-aastep)

float polygon(vec2 st, float radius, float sides) {
    st = st * 2.0 - 1.0;
    float angle = atan(st.x,st.y) + PI;
    float slice = TWO_PI / sides;

    return aastep(radius, cos(floor(0.5 + angle / slice ) * slice - angle) * length(st));
}

#pragma glslify: export(polygon);
