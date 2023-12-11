/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_end_sam){
    if obj_end_sam.x < x image_xscale = -1 else image_xscale = 1
}

switch(state){
	case 1:
		t++;
		
		if t > 1 && t < 100 {
			if t mod 20 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff)	
		}
		if t > 100 && t < 200 {
			if t mod 15 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff);
            if t mod 7 = 0 fnc_snd_play_onetime(snd_player_landing);
		}			
		if t > 200  {
			if t mod 10 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff);	
            if t mod 5 = 0 fnc_snd_play_onetime(snd_player_landing);
		}
		if t > 200 && t < 300 {
			if t mod 20 = 0 instance_create_depth(x+random_range(-8,8),y+random_range(-10,-4),depth-1,choose(obj_sfx_electricity1,obj_sfx_electricity2));
		}	
		
		
		switch(t){
			case 1:
				sprite_index = spr_ending_pew_anim;
				image_speed = 0.5;
				break;
			case 50:	image_speed = 1;break;
			case 100:	image_speed = 2;sprite_index = spr_ending_pew_anim;break;
			case 200:	image_speed = 3;break;
			case 350: 
				sprite_index = spr_ending_pew_idle;
				image_speed = 1;
				state = 2
				t = 0;
				break;
		}
		break;
	case 2:
		t++;
		if t = 20{
			t = 0;
			state = 3;
			obj_ending.step+=0.5;
		}
		break;
}