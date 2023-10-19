/// @description Insert description here
// You can write your code in this editor


t++;

switch(t)
{
    case 1:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(8,24),depth-1,obj_sfx_explosion);
        break;
    case 5:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(8,24),depth-1,obj_sfx_explosion);
        break;
    case 10:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(8,24),depth-1,obj_sfx_explosion);
        break;
    case 15:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(8,24),depth-1,obj_sfx_explosion);
        break;
    case 20:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(8,24),depth-1,obj_sfx_explosion);
        instance_destroy();
        break;
}

if t mod 5 = 0 instance_create_depth(x,y,depth-1,obj_sfx_sparkle_1);