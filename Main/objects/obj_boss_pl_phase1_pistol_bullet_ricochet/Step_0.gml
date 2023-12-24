/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block)

switch(state)
{
	case 0:
		if dir = -1  {hspd = -6;}
		if dir = 1 hspd = 6;
		if place_meeting(x+sign(hspd),y,obj_block)
		{
			state = 1;
			vspd = -8;
			if dir = 1 hspd = -1 else hspd = 1;
			
			
		}
		break;
	case 1:
		if place_meeting(x,y,obj_boss_pl_light_trigger) && obj_boss_pl_light_trigger.isOn = 0{
			instance_destroy();
            fnc_snd_play_onetime(snd_bomb_selektor);
			instance_create_depth(x,y,-10,obj_sfx2)
			obj_boss_pl_light_trigger.isOn = 1;
		}
		if place_meeting(x+sign(hspd),y,obj_block) {
			instance_destroy();	
			instance_create_depth(x,y,-10,obj_sfx2)
		}
		
		if place_meeting(x,y-1,obj_block) {
            fnc_snd_play_over(snd_lava_bonnie_ricochet);
			vspd = 8; 
			
		}
		if place_meeting(x,y+1,obj_block) {
			vspd = -8;
			fnc_snd_play_over(snd_lava_bonnie_ricochet);
		}
		break;
}