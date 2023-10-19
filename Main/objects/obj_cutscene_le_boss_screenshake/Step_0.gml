/// @description Insert description here
// You can write your code in this editor


var bgr2 = layer_get_id("Background");


layer_x(bgr2, shake_x_2);
layer_y(bgr2, shake_y_2);


shake_x_1 = lerp(shake_x_1,0,0.1);
shake_y_1 = lerp(shake_y_1,0,0.1);

shake_x_2 = lerp(shake_x_2,0,0.1);
shake_y_2 = lerp(shake_y_2,0,0.1);

shake_x_3 = lerp(shake_x_3,-8,0.1);
shake_y_3 = lerp(shake_y_3,8,0.1);



if state = 1 {
    shake_x_1 = random_range(-1,1);
    shake_x_2 = random_range(-1,1);

    shake_y_1 = random_range(-1,1);
    shake_y_2 = random_range(-1,1);

    shake_x_3 = random_range(-7,-9);
    shake_y_3 = random_range(7,9);   
    state = 0;
}

