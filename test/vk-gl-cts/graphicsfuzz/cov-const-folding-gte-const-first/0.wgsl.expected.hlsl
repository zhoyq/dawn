static float4 gl_FragCoord = float4(0.0f, 0.0f, 0.0f, 0.0f);
cbuffer cbuffer_x_6 : register(b0, space0) {
  uint4 x_6[1];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  const float x_29 = gl_FragCoord.x;
  const float x_31 = asfloat(x_6[0].x);
  if ((3.0f >= clamp(x_29, 1.0f, (2.0f + x_31)))) {
    x_GLF_color = float4(1.0f, 0.0f, 0.0f, 1.0f);
  } else {
    x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
  }
  return;
}

struct main_out {
  float4 x_GLF_color_1;
};
struct tint_symbol_1 {
  float4 gl_FragCoord_param : SV_Position;
};
struct tint_symbol_2 {
  float4 x_GLF_color_1 : SV_Target0;
};

tint_symbol_2 main(tint_symbol_1 tint_symbol) {
  const float4 gl_FragCoord_param = tint_symbol.gl_FragCoord_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  const main_out tint_symbol_3 = {x_GLF_color};
  const tint_symbol_2 tint_symbol_5 = {tint_symbol_3.x_GLF_color_1};
  return tint_symbol_5;
}
