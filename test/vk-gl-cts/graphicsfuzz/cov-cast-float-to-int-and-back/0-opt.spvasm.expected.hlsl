static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
cbuffer cbuffer_x_6 : register(b0, space0) {
  uint4 x_6[2];
};

void main_1() {
  float f = 0.0f;
  f = 142.699996948f;
  if ((float(int(f)) > 100.0f)) {
    const int x_33 = asint(x_6[1].x);
    const uint scalar_offset = ((16u * uint(0))) / 4;
    const int x_36 = asint(x_6[scalar_offset / 4][scalar_offset % 4]);
    const uint scalar_offset_1 = ((16u * uint(0))) / 4;
    const int x_39 = asint(x_6[scalar_offset_1 / 4][scalar_offset_1 % 4]);
    const int x_42 = asint(x_6[1].x);
    x_GLF_color = float4(float(x_33), float(x_36), float(x_39), float(x_42));
  } else {
    const uint scalar_offset_2 = ((16u * uint(0))) / 4;
    const int x_46 = asint(x_6[scalar_offset_2 / 4][scalar_offset_2 % 4]);
    const float x_47 = float(x_46);
    x_GLF_color = float4(x_47, x_47, x_47, x_47);
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
