fn isInf_a46d6f() {
  var res : vec2<bool> = isInf(vec2<f32>());
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  isInf_a46d6f();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  isInf_a46d6f();
}

[[stage(compute)]]
fn compute_main() {
  isInf_a46d6f();
}
