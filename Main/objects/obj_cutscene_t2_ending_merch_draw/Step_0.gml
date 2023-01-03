/// @description Insert description here
// You can write your code in this editor
if state > 0 fnc_Collision_player(obj_block);

if state = 0
{
    y+=vspd;
    if vspd < 2 vspd+=0.1;
    if vspd >= 0
    {
        state = 1;   
        depth = -105;
    }
    
}
    /*
    states
    0 - бег
    1 - транс
    */

if state = 1
{
    fnc_Collision_player(obj_block);  
    if !place_meeting(x,y+1,obj_block)
    {
        if vspd < 2 vspd+=0.1;  
        sprite_index = spr_merch_full_jump;
        image_speed = 0;
    
    } 
    if place_meeting(x,y+1,obj_block)
    { 
        
        state = 2;
        instance_create_depth(x,y,0,obj_txt_cutscene_t2_end2);
    }
}

if state = 2
{
    #region anim
        if t_anim < 22 t_anim++;
        switch(t_anim)
        {
            case 1:
                sprite_index = spr_merch_full_landing;
                fnc_snd_play_onetime(snd_player_landing);
                break;
            case 20:
                sprite_index = spr_merch_full_idle;
                image_speed = 1;
                break;
        }   
        #endregion
}




