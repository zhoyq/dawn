struct tint_symbol {
  float4 value : SV_Position;
};

void cos_16dc15() {
  float3 res = cos(float3(0.0f, 0.0f, 0.0f));
}

tint_symbol vertex_main() {
  cos_16dc15();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  cos_16dc15();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  cos_16dc15();
  return;
}

