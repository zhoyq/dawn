[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_3d<r32float>;

fn textureStore_eb702f() {
  textureStore(arg_0, vec3<i32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureStore_eb702f();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_eb702f();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_eb702f();
}
