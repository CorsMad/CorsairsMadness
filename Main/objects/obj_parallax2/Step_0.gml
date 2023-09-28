/// @description Insert description here
// You can write your code in this editor
var near = layer_get_id("Backgrounds_1");
var sky = layer_get_id("Backgrounds_5");
var middle = layer_get_id("Background");
var near = layer_get_id("Backgrounds_3");
var far_far = layer_get_id("Backgrounds_4");


layer_x(near, lerp(0,camera_get_view_x(view_camera[0]),0.85));
layer_x(far_far, lerp(0,camera_get_view_x(view_camera[0]),spd_far));
layer_x(middle, lerp(pyra_x,camera_get_view_x(view_camera[0])+pyra_x,spd));
layer_x(sky, lerp(0,camera_get_view_x(view_camera[0]),1));




