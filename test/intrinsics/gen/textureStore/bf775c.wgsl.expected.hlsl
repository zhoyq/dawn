struct tint_symbol {
  float4 value : SV_Position;
};

RWTexture1D<int4> arg_0 : register(u0, space1);

void textureStore_bf775c() {
  arg_0[1] = int4(0, 0, 0, 0);
}

tint_symbol vertex_main() {
  textureStore_bf775c();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureStore_bf775c();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_bf775c();
  return;
}

