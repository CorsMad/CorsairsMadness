/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd+=0.1;
t++;
if t mod 5 = 0 {
    instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx_explosion);  
    if image_blend = c_white image_blend = c_red else image_blend = c_white;
}

if vspd > 0 image_alpha = 0.4;