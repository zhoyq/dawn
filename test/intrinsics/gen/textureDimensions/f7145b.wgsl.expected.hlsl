struct tint_symbol {
  float4 value : SV_Position;
};

Texture2D<uint4> arg_0 : register(t0, space1);

void textureDimensions_f7145b() {
  int3 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int2 res = tint_tmp.xy;
}

tint_symbol vertex_main() {
  textureDimensions_f7145b();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureDimensions_f7145b();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_f7145b();
  return;
}

