cbuffer cbuffer_x_7 : register(b0, space0) {
  uint4 x_7[1];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

int func_i1_(inout int x) {
  const int x_35 = asint(x_7[0].x);
  if ((x_35 == 1)) {
    const int x_39 = x;
    return x_39;
  }
  const int x_41 = asint(x_7[0].x);
  return x_41;
}

void main_1() {
  int param = 0;
  param = -1;
  const int x_28 = func_i1_(param);
  if ((x_28 <= 0)) {
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
