/// @description Insert description here
// You can write your code in this editor

t++;
if t mod 10 == 0
{
	instance_create_depth(x+random_range(-16,16),y+random_range(-8,+8),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
	instance_create_depth(x+random_range(-16,16),y+random_range(-8,+8),depth-1,obj_sfx2);
}

switch(t)
{
     case 30:       image_index = 1;break;
     case 60:       image_index = 2;break;
     case 90:       image_index = 3;break;
     case 120:      image_blend = c_red;break;
     case 150:      
            if global.key_yellow2 = 0 instance_create_depth(x,y,depth,obj_key_yellow_tri);
            else instance_create_depth(x,y,0,obj_room_transition_black_screen_d1_stats);
            instance_destroy();
            break;
     
}