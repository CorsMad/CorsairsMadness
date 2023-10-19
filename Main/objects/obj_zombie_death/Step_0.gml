/// @description Insert description here
// You can write your code in this editor
t++;

switch(t)
{
    case 1:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx2);
        break;
    case 5:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx_weapon_slash);
        break;
    case 10:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx2);
        break;
    case 15:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx_weapon_slash);
        break;
    case 18:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx_explosion_bomb);
        break;
    case 20:
        instance_create_depth(x+irandom_range(-16,16),y+random_range(-8,-24),depth-1,obj_sfx2);
        instance_destroy();
        break;
}
if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);
