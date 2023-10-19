/// @description Insert description here
// You can write your code in this editor

/*
states
0 - Прыжок
1 - остановка и начало катсцены
2 - 
*/

fnc_Collision_player(obj_block)


switch(state){
    case 0:
        fspd = 2;     
        if !place_meeting(x,y+1,obj_block){
            sprite_index = spr_player_masked_jump;
            image_speed = 0;
            image_index = 1;
        } else {
            sprite_index = spr_player_masked_run;
            image_speed = 1.25;   
        }
        if place_meeting(x,y+1,obj_block) && x > 120 {
            fspd = 0;
            state = 1;
            fnc_snd_play_onetime(snd_player_landing);
        }
        if !place_meeting(x,y+1,obj_block){
            vspd +=0.2;            
        } else vspd = 0;
        break;
    case 1:
        t++;
        sprite_index = spr_player_masked_idle;
        image_speed = 1;
        if t = 50 {
            t = 0;
            state = 2;
        }
        break;
    case 2:
        t++;
        if t < 45 vspd = -0.4; else {
            if !place_meeting(x,y+1,obj_block){
                    vspd +=0.2;            
                } else vspd = 0;   
        }
        switch(t){
            case 1:
                fnc_snd_play_onetime(snd_transform);
                sprite_index = spr_player_transform;
                image_speed = 0;
                image_index = 8;
                break;
            case 5: image_index = 7;break;
            case 10: image_index = 6;break;
            case 15: image_index = 5;break;
            case 20: image_index = 4;break;
            case 25: image_index = 3;break;
            case 30: image_index = 2;break;
            case 35: image_index = 1;break;
            case 40: image_index = 0;break;
            case 45:
                sprite_index = spr_player_idle;
                image_speed = 1;
                break;
            case 90:
                state = 3;
                t = 0;
                obj_ctscDI_merch8.state = 1;
                break;
        }
        break;
    case 4:
        if !place_meeting(x,y+1,obj_block){
            image_speed =0;
            sprite_index = spr_player_jump;   
            if vspd > 0 image_index = 0 else image_index = 1;
        } else {
            image_speed = 1;   
            sprite_index = spr_player_run;
        }
    
    if place_meeting(x,y,obj_ctscDI_merch1_boomer){
        fnc_snd_play_over(snd_ability_gain);
        instance_destroy(obj_ctscDI_merch1_boomer)
    }
        
    
    
        fspd = 2;
        if place_meeting(x,y,obj_block_climb) vspd = -5;
        if !place_meeting(x,y+1,obj_block) vspd+=0.2; else vpsd = 0;
        break;
        

}




#region граф



#endregion

if fspd!=0 image_xscale = sign(fspd);


