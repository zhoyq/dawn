cbuffer cbuffer_x_6 : register(b1, space0) {
  uint4 x_6[3];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
cbuffer cbuffer_x_9 : register(b0, space0) {
  uint4 x_9[2];
};

void main_1() {
  float2 v0 = float2(0.0f, 0.0f);
  float2 v1 = float2(0.0f, 0.0f);
  const float x_37 = asfloat(x_6[2].x);
  v0 = float2(x_37, 3.799999952f);
  const float2 x_39 = v0;
  const float x_43 = asfloat(x_6[1].x);
  v1 = clamp((x_39 - float2(1.0f, 1.0f)), float2(0.0f, 0.0f), float2(x_43, x_43));
  const float2 x_47 = v1;
  const uint scalar_offset = ((16u * uint(0))) / 4;
  const float x_49 = asfloat(x_6[scalar_offset / 4][scalar_offset % 4]);
  const float x_51 = asfloat(x_6[1].x);
  if (all((x_47 == float2(x_49, x_51)))) {
    const uint scalar_offset_1 = ((16u * uint(0))) / 4;
    const int x_59 = asint(x_9[scalar_offset_1 / 4][scalar_offset_1 % 4]);
    const int x_62 = asint(x_9[1].x);
    const int x_65 = asint(x_9[1].x);
    const uint scalar_offset_2 = ((16u * uint(0))) / 4;
    const int x_68 = asint(x_9[scalar_offset_2 / 4][scalar_offset_2 % 4]);
    x_GLF_color = float4(float(x_59), float(x_62), float(x_65), float(x_68));
  } else {
    const int x_72 = asint(x_9[1].x);
    const float x_73 = float(x_72);
    x_GLF_color = float4(x_73, x_73, x_73, x_73);
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
  const tint_symbol tint_symbol_4 = {tint_symbol_1.x_GLF_color_1};
  return tint_symbol_4;
}
