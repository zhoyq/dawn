[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<r32uint>;

fn textureNumLayers_2f6bb3() {
  var res : i32 = textureNumLayers(arg_0);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureNumLayers_2f6bb3();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLayers_2f6bb3();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLayers_2f6bb3();
}
