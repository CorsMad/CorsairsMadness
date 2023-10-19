/// @description Insert description here
// You can write your code in this editor

t++;
switch(t)
{
    case 1:
        instance_create_depth(x+random_range(-8,8),y-24,depth-1,obj_sfx_explosion);
        break;
    case 20:
        instance_create_depth(x+random_range(-8,8),y-6,depth-1,obj_sfx_explosion);
        break;
}

if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);