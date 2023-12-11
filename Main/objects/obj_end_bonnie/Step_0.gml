/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_end_sam){
    if obj_end_sam.x < x image_xscale = -1 else image_xscale = 1
}



switch(state){
    case 1: 
        t++;
        
        if t > 50 && t < 100{
            if t mod 5 = 0 {
                if image_index = 4 image_index = 5 else image_index = 4;   
            }
        }
        if t > 100 && t < 150{
            if t mod 3 = 0 {
                if image_index = 2 image_index = 3 else image_index = 2;   
            }   
        }
        if t > 150 && t < 200{
            if t mod 2 = 0 {
                if image_index = 0 image_index = 1 else image_index = 0;   
            }   
        }
        
        switch(t){
            case 50:
                fnc_snd_play_onetime(snd_player_hook_recover);
                sprite_index = spr_ending_bonnie_anim;
                image_speed = 0;
                break;
            case 100: fnc_snd_play_onetime(snd_player_hook_recover);break;
            case 150: fnc_snd_play_onetime(snd_player_hook_recover);break;
            case 200:
                sprite_index = spr_npc_bonnie_idle;
                image_speed = 1;
                t = 0;
                state = 2;
                obj_ending.step+=0.5;
                break;
        }
        break;
}