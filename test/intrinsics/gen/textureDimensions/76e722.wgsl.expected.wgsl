[[group(1), binding(0)]] var arg_0 : texture_depth_cube;

fn textureDimensions_76e722() {
  var res : vec3<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() -> [[builtin(position)]] vec4<f32> {
  textureDimensions_76e722();
  return vec4<f32>();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_76e722();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_76e722();
}
