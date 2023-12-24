/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > 4 
    {
        obj_cutscene_intro_player_draw.state = 3;               
        instance_destroy();   
    } 
}

#endregion

if scr_t = 3
{
    obj_cutscene_intro_player_draw.state = 22;
}

