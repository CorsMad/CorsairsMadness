/// @description Insert description here
// You can write your code in this editor


t++;

switch(t)
{
    case 5: instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);break;   
    case 20: instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);break;   
    case 35: instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);break;   
    case 50: instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);break;   
    case 70: 
        image_index = 1;
        instance_create_depth(x,y+18,depth-1,obj_sfx_explosion_bomb);break;   
    case 80: 
        image_index = 2;
        instance_create_depth(x,y+16,depth-1,obj_sfx_explosion_bomb);break;   
    case 90: 
        image_index = 3;
        instance_create_depth(x,y+10,depth-1,obj_sfx_explosion_bomb);break;   
    case 100: 
        image_index = 4;
        instance_create_depth(x,y+8,depth-1,obj_sfx_explosion_bomb);break;   
    case 110: 
        image_index = 5;
        instance_create_depth(x,y+8,depth-1,obj_sfx_explosion_bomb);
        obj_endurance_jungle.state = 3.2;
        obj_endurance_jungle.t = 0;
        instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);
        break; 
    case 120:
        instance_create_depth(x,y-2,depth-1,obj_sfx_explosion_bomb);
        instance_destroy(obj_boss2_wings);
        instance_destroy();
        break;

}


