struct tint_symbol {
  float4 value : SV_Position;
};

void acos_489247() {
  float res = acos(1.0f);
}

tint_symbol vertex_main() {
  acos_489247();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  acos_489247();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  acos_489247();
  return;
}

