[[group(1), binding(0)]] var arg_0 : texture_depth_2d_array;

[[group(1), binding(1)]] var arg_1 : sampler;

fn textureSampleLevel_1bf73e() {
  var res : f32 = textureSampleLevel(arg_0, arg_1, vec2<f32>(), 1, 1);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureSampleLevel_1bf73e();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureSampleLevel_1bf73e();
}

[[stage(compute)]]
fn compute_main() {
  textureSampleLevel_1bf73e();
}
