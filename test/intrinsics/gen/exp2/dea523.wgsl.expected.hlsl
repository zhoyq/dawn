struct tint_symbol {
  float4 value : SV_Position;
};

void exp2_dea523() {
  float res = exp2(1.0f);
}

tint_symbol vertex_main() {
  exp2_dea523();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  exp2_dea523();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  exp2_dea523();
  return;
}

