static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
cbuffer cbuffer_x_5 : register(b0, space0) {
  uint4 x_5[1];
};

void main_1() {
  bool x_29 = false;
  bool x_30_phi = false;
  x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
  const float x_23 = asfloat(x_5[0].x);
  const bool x_24 = (x_23 < 0.0f);
  x_30_phi = x_24;
  if (x_24) {
    const float x_28 = asfloat(x_5[0].x);
    x_29 = (x_28 < 0.0f);
    x_30_phi = x_29;
  }
  if (x_30_phi) {
    x_GLF_color = float4(1.0f, 1.0f, 1.0f, 1.0f);
  } else {
    x_GLF_color = float4(1.0f, 0.0f, 0.0f, 1.0f);
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
