struct tint_symbol {
  float4 value : SV_Position;
};

Texture1D<int4> arg_0 : register(t0, space1);

void textureLoad_ddeed3() {
  int4 res = arg_0.Load(int2(1, 0));
}

tint_symbol vertex_main() {
  textureLoad_ddeed3();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureLoad_ddeed3();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_ddeed3();
  return;
}

