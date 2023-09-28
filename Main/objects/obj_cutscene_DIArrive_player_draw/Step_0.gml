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
        if !place_meeting(x,y+1,obj_block) vspd+=0.2
        if place_meeting(x,y+1,obj_block){
            fspd = 0;
            state = 1;
            obj_ctsc_DI_intro_controller.state = 1;
        }
        break;
    case 1:sprite_index = spr_player_idle;
        image_speed = 1.25;
        break;
    case 2:
        sprite_index = spr_player_run;
        image_speed = 1;
        fspd = 2;
        if place_meeting(x,y,obj_ctscDI_merch1_boots){
            fnc_snd_play_over(snd_ability_gain);
            instance_destroy(obj_ctscDI_merch1_boots);
        }
        break;
        
}




if place_meeting(x,y,obj_block_climb)
{
    vspd = -5;   
}

#region граф

if !place_meeting(x,y+1,obj_block)
{
    sprite_index = spr_player_jump;   
    if vspd < 0 image_index = 0 else image_index = 1;
}

#endregion


image_xscale = 1

