cbuffer cbuffer_x_5 : register(b0, space0) {
  uint4 x_5[1];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  bool x_36 = false;
  bool x_37_phi = false;
  const float x_23 = asfloat(x_5[0].x);
  const float x_25 = asfloat(x_5[0].x);
  const bool x_27 = (clamp(1.0f, x_23, x_25) > 42.0f);
  x_37_phi = x_27;
  if (!(x_27)) {
    const float x_32 = asfloat(x_5[0].x);
    const float x_34 = asfloat(x_5[0].x);
    x_36 = (clamp(1.0f, x_32, x_34) < 42.0f);
    x_37_phi = x_36;
  }
  if (x_37_phi) {
    x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
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
