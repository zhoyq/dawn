void main_1() {
  float3x3 m = float3x3(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  m = float3x3(float3(1.0f, 2.0f, 3.0f), float3(4.0f, 5.0f, 6.0f), float3(7.0f, 8.0f, 9.0f));
  m[1] = float3(5.0f, 5.0f, 5.0f);
  return;
}

[numthreads(1, 1, 1)]
void main() {
  main_1();
  return;
}
