@group(1) @binding(0) var arg_0 : texture_multisampled_2d<f32>;

fn textureLoad_2e09aa() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<u32>(), 1u);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureLoad_2e09aa();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureLoad_2e09aa();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureLoad_2e09aa();
}