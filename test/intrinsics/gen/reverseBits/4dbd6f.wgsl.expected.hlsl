struct tint_symbol {
  float4 value : SV_Position;
};

void reverseBits_4dbd6f() {
  int4 res = reversebits(int4(0, 0, 0, 0));
}

tint_symbol vertex_main() {
  reverseBits_4dbd6f();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  reverseBits_4dbd6f();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  reverseBits_4dbd6f();
  return;
}

