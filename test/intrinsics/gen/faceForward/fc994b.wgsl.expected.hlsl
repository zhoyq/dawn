struct tint_symbol {
  float4 value : SV_Position;
};

void faceForward_fc994b() {
  float res = faceforward(1.0f, 1.0f, 1.0f);
}

tint_symbol vertex_main() {
  faceForward_fc994b();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  faceForward_fc994b();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  faceForward_fc994b();
  return;
}

