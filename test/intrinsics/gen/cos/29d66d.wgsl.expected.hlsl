struct tint_symbol {
  float4 value : SV_Position;
};

void cos_29d66d() {
  float4 res = cos(float4(0.0f, 0.0f, 0.0f, 0.0f));
}

tint_symbol vertex_main() {
  cos_29d66d();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  cos_29d66d();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  cos_29d66d();
  return;
}

