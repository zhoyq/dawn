cbuffer cbuffer_x_6 : register(b0, space0) {
  uint4 x_6[1];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  float f = 0.0f;
  bool x_38 = false;
  bool x_39_phi = false;
  f = sinh(724.322021484f);
  const bool x_30 = isinf(f);
  x_39_phi = x_30;
  if (!(x_30)) {
    const float x_35 = asfloat(x_6[0].x);
    const float x_37 = asfloat(x_6[0].y);
    x_38 = (x_35 < x_37);
    x_39_phi = x_38;
  }
  if (x_39_phi) {
    x_GLF_color = float4(1.0f, 0.0f, 0.0f, 1.0f);
  } else {
    x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
  }
  return;
}

struct main_out {
  float4 x_GLF_color_1;
};
struct tint_symbol {
  float4 x_GLF_color_1 : SV_Target0;
};

tint_symbol main() {
  main_1();
  const main_out tint_symbol_1 = {x_GLF_color};
  const tint_symbol tint_symbol_3 = {tint_symbol_1.x_GLF_color_1};
  return tint_symbol_3;
}
