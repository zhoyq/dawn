[[group(1), binding(0)]] var arg_0 : texture_2d_array<i32>;

fn textureDimensions_0f3c50() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureDimensions_0f3c50();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_0f3c50();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_0f3c50();
}
