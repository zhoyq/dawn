[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba16uint>;

fn textureLoad_127e12() {
  var res : vec4<u32> = textureLoad(arg_0, vec2<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureLoad_127e12();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_127e12();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_127e12();
}
