[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba8snorm>;

fn textureStore_2ed2a3() {
  textureStore(arg_0, 1, vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureStore_2ed2a3();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_2ed2a3();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_2ed2a3();
}
