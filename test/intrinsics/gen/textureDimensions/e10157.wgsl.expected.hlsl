struct tint_symbol {
  float4 value : SV_Position;
};

Texture2D<uint4> arg_0 : register(t0, space1);

void textureDimensions_e10157() {
  int2 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y);
  int2 res = tint_tmp;
}

tint_symbol vertex_main() {
  textureDimensions_e10157();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureDimensions_e10157();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_e10157();
  return;
}

