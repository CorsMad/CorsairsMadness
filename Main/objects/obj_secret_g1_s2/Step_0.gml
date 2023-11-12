/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 0:
        y+=vspd;
        vspd = lerp(vspd,0,0.05);
        t++;
        if t = 40  {
            t = 0;
            state = 1;
        }
        break;
    case 1:
        if instance_exists(obj_Player){
            if point_distance(x, y, obj_Player.x, obj_Player.y-16) > 1
            {
                move_towards_point(obj_Player.x, obj_Player.y-16, spd);
            }    
        }
        if spd < 3 spd+=0.05;
        
        
        
        if place_meeting(x,y,obj_Player)
        {
            fnc_snd_play_over(snd_secrets_gain);
        	instance_create_depth(x,y,depth-1,obj_sfx2);
        	global.secrets_g1_s2 = 1;
        	global.secrets +=1;
        	instance_destroy();
        }
        
        break;
}


t_anim++;
if t_anim = t_max
{
	t_anim = 0;
	instance_create_depth(x+random_range(-8,8), y+random_range(-8,8),depth-1,obj_sfx3);
}


