[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_3d<rgba16sint>;

fn textureLoad_a7a3c3() {
  var res : vec4<i32> = textureLoad(arg_0, vec3<i32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureLoad_a7a3c3();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_a7a3c3();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_a7a3c3();
}
