/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 10 == 0
{
	instance_create_depth(x+440+random_range(-30,30),y+100+random_range(-40,+40),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
    instance_create_depth(random_range(422,462),random_range(96,136),depth-1,obj_boss1_d1_spiritdeath);
	instance_create_depth(x+440+random_range(-30,30),y+100+random_range(-40,+40),depth-1,obj_sfx2);
}



switch(t)
{
    case 50:  image_index = 1;break;   
    case 100: image_index = 2;break;   
    case 150: image_index = 3;break;   
    case 200: image_index = 4;break;   
    case 250: image_index = 5;break; 
    case 300: image_index = 6;image_blend = c_red;break; 
    case 350: 
                if global.key_yellow1 = 0 instance_create_depth(x,y,depth,obj_key_yellow_sq);
                else instance_create_depth(x,y,0,obj_room_transition_black_screen_j1_stats);
                instance_destroy();
}