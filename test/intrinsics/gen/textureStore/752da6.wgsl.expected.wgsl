[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<rgba32sint>;

fn textureStore_752da6() {
  textureStore(arg_0, vec2<i32>(), vec4<i32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureStore_752da6();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_752da6();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_752da6();
}
