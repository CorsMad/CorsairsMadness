/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 5 = 0
{
    var i = instance_create_depth(x+8,y,depth,obj_boss_d2_eath_proj)   
    i.hspd = random_range(-3,-1);
    i.vspd = random_range(0,2);
}

switch(t)
{
    case 20:    image_index = 1;break;   
    case 40:    image_index = 2;break;   
    case 60:    instance_destroy();break;   
}