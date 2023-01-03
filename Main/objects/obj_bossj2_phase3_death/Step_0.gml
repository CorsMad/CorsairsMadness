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
        fnc_snd_play_over(snd_boss_expl);
        image_index = 1;
        instance_create_depth(x,y+18,depth-1,obj_sfx_explosion_bomb);break;   
    case 80: 
        fnc_snd_play_over(snd_boss_expl);
        image_index = 2;
        instance_create_depth(x,y+16,depth-1,obj_sfx_explosion_bomb);break;   
    case 90: 
        fnc_snd_play_over(snd_boss_expl);
        image_index = 3;
        instance_create_depth(x,y+10,depth-1,obj_sfx_explosion_bomb);break;   
    case 100: 
        fnc_snd_play_over(snd_boss_expl);
        image_index = 4;
        instance_create_depth(x,y+8,depth-1,obj_sfx_explosion_bomb);break;   
    case 110: 
        fnc_snd_play_over(snd_boss_expl);
        image_index = 5;
        instance_create_depth(x,y+8,depth-1,obj_sfx_explosion_bomb);
        if global.key_green2 = 0 instance_create_depth(x,y,depth,obj_key_green_tri);
        else instance_create_depth(x,y,0,obj_room_transition_black_screen_j1_stats); 
        instance_create_depth(x+random_range(-10,10),y+random_range(-10,10),depth-1,obj_sfx_explosion_bomb);
        break; 
    case 120:
        fnc_snd_play_over(snd_boss_death);
        instance_create_depth(x,y-2,depth-1,obj_sfx_explosion_bomb);
        instance_destroy(obj_boss2_wings);
        instance_destroy();
        break;

}


