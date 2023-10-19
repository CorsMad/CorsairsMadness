/// @description Insert description here
// You can write your code in this editor

t++;
switch(t)
{
    case 1:
        instance_create_depth(x+random_range(-8,8),y-8,depth-1,obj_sfx_explosion);
        break;
    case 20:
        instance_create_depth(x+random_range(-8,8),y+8,depth-1,obj_sfx_explosion);
        break;
    case 21: instance_destroy();break;
}
if t mod 10 = 0 instance_create_depth(x,y,depth-1,obj_sfx_sparkle_1);








