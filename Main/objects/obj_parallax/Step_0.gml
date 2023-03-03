/// @description Insert description here
// You can write your code in this editor


var near = layer_get_id("Backgrounds_1");
var middle = layer_get_id("Backgrounds_2");
var far_far = layer_get_id("Background");
var far_far_2 = layer_get_id("Backgrounds_3");
var far_far_3 = layer_get_id("Backgrounds_4");
var vertical_onplace = layer_get_id("Backgrounds_vert_onplace");
var vertical_move = layer_get_id("Backgrounds_vert_move");

layer_x(near, lerp(0,camera_get_view_x(view_camera[0]),0.5));
layer_x(far_far, lerp(0,camera_get_view_x(view_camera[0]),0.9));
layer_x(far_far_2, lerp(0,camera_get_view_x(view_camera[0]),0.9));
layer_x(middle, lerp(0,camera_get_view_x(view_camera[0]),0.75));
layer_x(far_far_3, lerp(0,camera_get_view_x(view_camera[0]),0.1));




