struct tint_symbol {
  float4 value : SV_Position;
};

RWTexture1D<uint4> arg_0 : register(u0, space1);

void textureDimensions_dc2dd0() {
  int tint_tmp;
  arg_0.GetDimensions(tint_tmp);
  int res = tint_tmp;
}

tint_symbol vertex_main() {
  textureDimensions_dc2dd0();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureDimensions_dc2dd0();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_dc2dd0();
  return;
}

