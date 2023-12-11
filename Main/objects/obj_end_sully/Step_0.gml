/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_end_sam){
    if obj_end_sam.x < x image_xscale = -1 else image_xscale = 1
}

switch(state){
	case 1:
		t++;
		switch(t){
			case 1:
				sprite_index = spr_ending_sully_anim;
				image_index = 0;
				image_speed = 0;
				break;
			case 5:	image_index = 1;
                with(obj_end_sam){
                    sprite_index = spr_player_sully_interaction;
                    image_index = 0;
                    image_speed = 0;
                }
            break;
			case 50: image_index = 2;break;            
			case 55: image_index = 3;
                fnc_snd_play_onetime(snd_end_sully);
                var expl = instance_create_depth(x+36,y-26,depth-10,obj_sfx3);
                expl.image_xscale = 2;
                expl.image_yscale = 2;
                with(obj_end_sam){
                    image_index = 1;
                }
            break;
			case 110: image_index = 2;
                with(obj_end_sam){
                    sprite_index = spr_player_idle;
                    image_speed = 1;
                }
            break;
			case 140:
				sprite_index = spr_ending_sully_idle;
				image_speed = 1;
				obj_ending.step+=0.5;
				break;
				
		}
		break;
}