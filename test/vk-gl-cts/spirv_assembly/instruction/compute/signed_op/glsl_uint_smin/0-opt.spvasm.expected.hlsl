static uint3 x_3 = uint3(0u, 0u, 0u);
RWByteAddressBuffer x_6 : register(u0, space0);
RWByteAddressBuffer x_7 : register(u1, space0);
RWByteAddressBuffer x_8 : register(u2, space0);

void main_1() {
  const uint x_21 = x_3.x;
  const uint x_23 = x_6.Load((4u * x_21));
  const uint x_25 = x_7.Load((4u * x_21));
  x_8.Store((4u * x_21), asuint(asuint(min(asint(x_23), asint(x_25)))));
  return;
}

struct tint_symbol_1 {
  uint3 x_3_param : SV_DispatchThreadID;
};

[numthreads(1, 1, 1)]
void main(tint_symbol_1 tint_symbol) {
  const uint3 x_3_param = tint_symbol.x_3_param;
  x_3 = x_3_param;
  main_1();
  return;
}
