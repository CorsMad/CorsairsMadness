/// @description Insert description here
// You can write your code in this editor
x+=hspd;
if image_alpha < 1
{
    image_alpha +=0.5;
}   

image_xscale = sign(hspd);

if (hspd < 0 && x <= 32) 
{
    var d = instance_create_depth(x,y,101,obj_boss_d2_proj_down_wave_death);
    d.sprite_index = spr_boss_l1_1_projectile_down_wave;
    d.image_index = image_index;
    d.image_xscale = image_xscale;
    instance_destroy();
}
if (hspd > 0 && x >= 480-32) 
{
    var d = instance_create_depth(x,y,101,obj_boss_d2_proj_down_wave_death);
    d.sprite_index = spr_boss_l1_1_projectile_down_wave;
    d.image_index = image_index;
    d.image_xscale = image_xscale;
    instance_destroy();
}