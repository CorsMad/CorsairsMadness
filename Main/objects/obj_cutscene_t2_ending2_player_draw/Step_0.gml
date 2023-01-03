/// @description Insert description here
// You can write your code in this editor
fnc_Collision_player(obj_block);

if state = 0
{
    if !place_meeting(x,y+1,obj_block)
    {
        vspd +=0.25   
        sprite_index = spr_player_jump;
        image_speed = 0;
        if vspd > 0 image_index = 1;
        if vspd < 0 image_index = 0;
    
    } else 
    {
        vspd = 0;
        image_speed = 1.25;
        sprite_index = spr_player_run;
    }
    image_xscale = -1;
}
    /*
    states
    0 - бег
    1 - транс
    */

#region Бег

if state = 0
{
    fspd = -2;
    if place_meeting(x,y,obj_skeleton_jump_block) vspd = -6;
    if place_meeting(x,y,obj_block_climb) 
    {
        sprite_index = spr_player_idle;
        state = 1;
        fspd = 0;
    }
}

#endregion

#region остановка
if state = 1
{
    t++;  
    if t = 10
    {
        instance_create_depth(x,y,depth,obj_txt_cutscene_t2_end1);
        state = 1.5;
        t = 0;
    }
}
#endregion

#region Ожидание разговора

#endregion
