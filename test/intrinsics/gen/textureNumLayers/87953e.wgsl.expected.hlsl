struct tint_symbol {
  float4 value : SV_Position;
};

Texture2DArray<uint4> arg_0 : register(t0, space1);

void textureNumLayers_87953e() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int res = tint_tmp.z;
}

tint_symbol vertex_main() {
  textureNumLayers_87953e();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureNumLayers_87953e();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureNumLayers_87953e();
  return;
}

