struct tint_symbol {
  float4 value : SV_Position;
};

void clamp_1a32e3() {
  int4 res = clamp(int4(0, 0, 0, 0), int4(0, 0, 0, 0), int4(0, 0, 0, 0));
}

tint_symbol vertex_main() {
  clamp_1a32e3();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  clamp_1a32e3();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  clamp_1a32e3();
  return;
}

