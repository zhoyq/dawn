fn isInf_666f2a() {
  var res : vec3<bool> = isInf(vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  isInf_666f2a();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  isInf_666f2a();
}

[[stage(compute)]]
fn compute_main() {
  isInf_666f2a();
}
