/// @description Insert description here
// You can write your code in this editor
fnc_Collision_player(obj_block);

if state = 0
{
    if !place_meeting(x,y+1,obj_block)
    {
        vspd +=0.25   
        sprite_index = spr_player_masked_jump;
        image_speed = 0;
        if vspd > 0 image_index = 1;
        if vspd < 0 image_index = 0;
    
    } else 
    {
        vspd = 0;
        image_speed = 1;
        sprite_index = spr_player_masked_run;
    }
    image_xscale = 1;
}
    /*
    states
    0 - бег
    1 - транс
    */

#region Бег

if state = 0
{
    fspd = 2;
    if place_meeting(x,y,obj_skeleton_jump_block) vspd = -6;
    if place_meeting(x,y,obj_block_climb) 
    {
        fnc_snd_play_onetime(snd_transform);
        state = 1;
        vspd = -1;
        image_index = 9;
    }
}

#endregion

#region Транс

if state = 1
{
    fnc_msc_stop_play();
    fspd = 0;
    vspd = lerp(vspd,0,0.05); 
    t++;
    y+=vspd;
    image_speed = 0;
    if t = 60 obj_cutscene_pl1_ending_rect.start = 1;
    sprite_index = spr_player_transform;
}
#endregion