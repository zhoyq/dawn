[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba8unorm>;

fn textureLoad_f379e2() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureLoad_f379e2();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_f379e2();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_f379e2();
}
