/// @description Insert description here
// You can write your code in this editor

var bgr1 = layer_get_id("Backgrounds_3");
var bgr2 = layer_get_id("Background_1");

var bgr3 = layer_get_id("Backgrounds_3_1");
var bgr4 = layer_get_id("Background");

layer_x(bgr1, shake_x_1);
layer_y(bgr1, shake_y_1);
layer_x(bgr2, shake_x_1);
layer_y(bgr2, shake_y_1);
layer_x(bgr3, shake_x_2);
layer_y(bgr3, shake_y_2);
layer_x(bgr4, shake_x_2);
layer_y(bgr4, shake_y_2);

shake_x_1 = lerp(shake_x_1,0,0.1);
shake_y_1 = lerp(shake_y_1,0,0.1);

shake_x_2 = lerp(shake_x_1,0,0.1);
shake_y_2 = lerp(shake_y_2,864,0.1);

if state = 1 {
   t++;
    if t = 10 
    {
        t = 0;
        shake_x_1 = random_range(-2,2);
        shake_x_2 = random_range(-2,2);
        shake_y_1 = random_range(-2,2);
        shake_y_2 = random_range(862,866);
    }
    
}

t_fallpart++
if t_fallpart = 25 {
	instance_create_depth(random_range(16,480-16),camera_get_view_y(view_camera[0])-32,choose(450,-1),obj_l1_r16_fallingstone); 	
	t_fallpart = 0;
}