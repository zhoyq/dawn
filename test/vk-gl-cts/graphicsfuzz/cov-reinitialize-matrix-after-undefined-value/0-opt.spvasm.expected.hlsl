SKIP: FAILED

void set_float2(inout float2 vec, int idx, float val) {
  vec = (idx.xx == int2(0, 1)) ? val.xx : vec;
}

cbuffer cbuffer_x_5 : register(b0, space0) {
  uint4 x_5[4];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  float2x2 m = float2x2(0.0f, 0.0f, 0.0f, 0.0f);
  float f = 0.0f;
  int i = 0;
  int j = 0;
  const int x_36 = asint(x_5[1].x);
  if ((x_36 == 1)) {
    const float x_40 = f;
    m = float2x2(float2(x_40, 0.0f), float2(0.0f, x_40));
  }
  const int x_45 = asint(x_5[1].x);
  i = x_45;
  [loop] while (true) {
    const int x_50 = i;
    const uint scalar_offset = ((16u * uint(0))) / 4;
    const int x_52 = asint(x_5[scalar_offset / 4][scalar_offset % 4]);
    if ((x_50 < x_52)) {
    } else {
      break;
    }
    const int x_56 = asint(x_5[1].x);
    j = x_56;
    [loop] while (true) {
      const int x_61 = j;
      const uint scalar_offset_1 = ((16u * uint(0))) / 4;
      const int x_63 = asint(x_5[scalar_offset_1 / 4][scalar_offset_1 % 4]);
      if ((x_61 < x_63)) {
      } else {
        break;
      }
      const int x_66 = i;
      const int x_67 = j;
      const int x_68 = i;
      const uint scalar_offset_2 = ((16u * uint(0))) / 4;
      const int x_70 = asint(x_5[scalar_offset_2 / 4][scalar_offset_2 % 4]);
      set_float2(m[x_66], x_67, float(((x_68 * x_70) + j)));
      {
        j = (j + 1);
      }
    }
    {
      i = (i + 1);
    }
  }
  const float2x2 x_80 = m;
  const int x_82 = asint(x_5[1].x);
  const int x_85 = asint(x_5[2].x);
  const uint scalar_offset_3 = ((16u * uint(0))) / 4;
  const int x_88 = asint(x_5[scalar_offset_3 / 4][scalar_offset_3 % 4]);
  const int x_91 = asint(x_5[3].x);
  const float2x2 x_95 = float2x2(float2(float(x_82), float(x_85)), float2(float(x_88), float(x_91)));
  if ((all((x_80[0u] == x_95[0u])) & all((x_80[1u] == x_95[1u])))) {
    const int x_109 = asint(x_5[2].x);
    const int x_112 = asint(x_5[1].x);
    const int x_115 = asint(x_5[1].x);
    const int x_118 = asint(x_5[2].x);
    x_GLF_color = float4(float(x_109), float(x_112), float(x_115), float(x_118));
  } else {
    const int x_122 = asint(x_5[1].x);
    const float x_123 = float(x_122);
    x_GLF_color = float4(x_123, x_123, x_123, x_123);
  }
  return;
}

struct main_out {
  float4 x_GLF_color_1;
};
struct tint_symbol {
  float4 x_GLF_color_1 : SV_Target0;
};

main_out main_inner() {
  main_1();
  const main_out tint_symbol_2 = {x_GLF_color};
  return tint_symbol_2;
}

tint_symbol main() {
  const main_out inner_result = main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.x_GLF_color_1 = inner_result.x_GLF_color_1;
  return wrapper_result;
}
C:\src\tint\test\Shader@0x0000027B69224CC0(32,12-23): error X3531: can't unroll loops marked with loop attribute

