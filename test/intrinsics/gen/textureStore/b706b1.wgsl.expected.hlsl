struct tint_symbol {
  float4 value : SV_Position;
};

RWTexture3D<int4> arg_0 : register(u0, space1);

void textureStore_b706b1() {
  arg_0[int3(0, 0, 0)] = int4(0, 0, 0, 0);
}

tint_symbol vertex_main() {
  textureStore_b706b1();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureStore_b706b1();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_b706b1();
  return;
}

