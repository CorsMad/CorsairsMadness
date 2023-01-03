/// @description Insert description here
// You can write your code in this editor

/*
states
0 - Прыжок
1 - бег
*/

fnc_Collision_player(obj_block)

if x > 400 fnc_msc_stop_play_slow();

if !place_meeting(x,y+1,obj_block)
{
    vspd+=0.2;
    
} else vspd = 0;



if place_meeting(x,y,obj_block_climb)
{
    vspd = -5;   
}

#region граф

if !place_meeting(x,y+1,obj_block)
{
    sprite_index = spr_player_jump;   
    if vspd < 0 image_index = 0 else image_index = 1;
} else sprite_index = spr_player_run;image_speed = 1.25;

#endregion


image_xscale = sign(fspd);

