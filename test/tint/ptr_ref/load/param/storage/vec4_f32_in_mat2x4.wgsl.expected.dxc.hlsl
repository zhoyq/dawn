ByteAddressBuffer S : register(t0, space0);

float4 func_S_X(uint pointer[1]) {
  return asfloat(S.Load4((16u * pointer[0])));
}

[numthreads(1, 1, 1)]
void main() {
  const uint tint_symbol_1[1] = {1u};
  const float4 r = func_S_X(tint_symbol_1);
  return;
}